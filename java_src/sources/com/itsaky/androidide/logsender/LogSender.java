package com.itsaky.androidide.logsender;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.itsaky.androidide.logsender.utils.LogReader;
import com.itsaky.androidide.logsender.utils.Logger;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class LogSender extends ILogSender.Stub implements ServiceConnection {
    public static final String PACKAGE_ANDROIDIDE = "com.itsaky.androidide";
    public static final String PACKAGE_UNKNOWN = "<unknown-package-name>";
    public static final String SERVICE_ACTION = "com.itsaky.androidide.LOG_SERVICE_ACTION";
    private Context context;
    private String packageName;
    private LogReader reader;
    private ILogReceiver receiver;
    private final AtomicBoolean isBinding = new AtomicBoolean(false);
    private final AtomicBoolean isConnected = new AtomicBoolean(false);
    private final String senderId = UUID.randomUUID().toString();

    LogSender() {
    }

    @Override // com.itsaky.androidide.logsender.ILogSender
    public String getId() {
        return this.senderId;
    }

    @Override // com.itsaky.androidide.logsender.ILogSender
    public String getPackageName() {
        if (this.packageName == null) {
            return PACKAGE_UNKNOWN;
        }
        return this.packageName;
    }

    @Override // com.itsaky.androidide.logsender.ILogSender
    public int getPid() {
        return Process.myPid();
    }

    @Override // com.itsaky.androidide.logsender.ILogSender
    public void onDisconnect() {
        tryDisconnect(false);
        tryUnbind(this.context);
        try {
            this.context.stopService(new Intent(this.context, (Class<?>) LogSenderService.class));
        } catch (Exception err) {
            Logger.error("Failed to stop LogSenderService", err);
        }
        this.context = null;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        this.receiver = ILogReceiver.Stub.asInterface(service);
        if (this.receiver == null) {
            Logger.error("Failed to get log receiver instance");
            destroy(this.context);
            return;
        }
        try {
            this.receiver.connect(this);
            Logger.info("Connecting to log receiver");
            this.isConnected.set(true);
        } catch (RemoteException e) {
            Logger.error("Failed to connect to log receiver", e);
            destroy(this.context);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
        tryDisconnect(true);
        if (this.context != null) {
            tryUnbind(this.context);
            this.context = null;
        }
    }

    @Override // com.itsaky.androidide.logsender.ILogSender
    public void ping() {
        Log.d("LogSender", "ping: Received a ping request");
    }

    @Override // com.itsaky.androidide.logsender.ILogSender
    public void startReader(int port) {
        if (this.reader != null && this.reader.isAlive()) {
            Logger.warn("LogReader has already been started");
        } else {
            this.reader = new LogReader(getId(), getPackageName(), port);
            this.reader.start();
        }
    }

    boolean bind(Context context) {
        if (isConnected()) {
            Logger.warn("LogSender is already installed");
            return true;
        }
        if (isBinding()) {
            Logger.warn("LogSender is already being installed");
            return true;
        }
        this.packageName = context.getPackageName();
        if (PACKAGE_ANDROIDIDE.equals(this.packageName)) {
            return false;
        }
        Intent intent = new Intent(SERVICE_ACTION);
        intent.setPackage(PACKAGE_ANDROIDIDE);
        this.isBinding.set(context.bindService(intent, this, 65));
        if (isBinding()) {
            Logger.info("Binding to log receiver");
            this.context = context;
        } else {
            Logger.error("Failed to bind to log receiver");
        }
        return isBinding();
    }

    void destroy(Context context) {
        tryDisconnect(true);
        tryUnbind(context);
        this.context = null;
    }

    boolean isBinding() {
        return this.isBinding.get();
    }

    boolean isConnected() {
        return this.isConnected.get();
    }

    private boolean isReceiverAlive(ILogReceiver receiver) {
        if (receiver == null) {
            return false;
        }
        try {
            receiver.ping();
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }

    private void tryDisconnect(boolean notifyReceiver) {
        Logger.info("Disconnecting from log receiver...");
        if (this.reader != null) {
            this.reader.cancel();
        }
        if (notifyReceiver && isReceiverAlive(this.receiver)) {
            try {
                this.receiver.disconnect(getPackageName(), getId());
            } catch (Exception err) {
                Logger.error("Failed to disconnect from log receiver service", err);
            }
        }
        this.receiver = null;
        this.reader = null;
        this.isBinding.set(false);
        this.isConnected.set(false);
    }

    private void tryUnbind(Context context) {
        try {
            context.unbindService(this);
        } catch (Exception err) {
            Logger.error("Failed to unbind from the the log receiver service", err);
        }
    }
}
