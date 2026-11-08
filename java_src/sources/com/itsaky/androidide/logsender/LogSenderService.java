package com.itsaky.androidide.logsender;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.IBinder;
import android.widget.Toast;
import com.itsaky.androidide.logsender.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public class LogSenderService extends Service {
    public static final String ACTION_START_SERVICE = "ide.logsender.service.start";
    public static final String ACTION_STOP_SERVICE = "ide.logsender.service.stop";
    private static final String NOTIFICATION_CHANNEL_ID = "ide.logsender.service";
    private static final int NOTIFICATION_ID = 644;
    private final LogSender logSender = new LogSender();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Logger.debug("Unexpected request to bind.", intent);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        Logger.debug("[LogSenderService] onCreate()");
        super.onCreate();
        setupNotificationChannel();
        startForeground(NOTIFICATION_ID, buildNotification());
    }

    @Override // android.app.Service
    public void onDestroy() {
        Logger.debug("[LogSenderService] [onDestroy]");
        if (!this.logSender.isConnected() && !this.logSender.isBinding()) {
            Logger.debug("Not bound to Code On The Go. Ignored.");
        } else {
            Logger.warn("Service is being destroyed. Destroying log sender...");
            this.logSender.destroy(getApplicationContext());
        }
        super.onDestroy();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Logger.debug("onStartCommand", intent, Integer.valueOf(flags), Integer.valueOf(startId));
        if (intent == null || intent.getAction() == null) {
            Logger.warn("LogSenderService started with null intent: " + intent);
            stopSelf();
            return 2;
        }
        switch (intent.getAction()) {
            case "ide.logsender.service.start":
                actionStartService();
                return 2;
            case "ide.logsender.service.stop":
                actionStopService();
                return 2;
            default:
                Logger.error("Unknown service action:", intent.getAction());
                return 2;
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        Logger.debug("[LogSenderService] [onTaskRemoved]", rootIntent);
        if (!this.logSender.isConnected() && !this.logSender.isBinding()) {
            Logger.debug("Not bound to Code On The Go. Ignored.");
            return;
        }
        Logger.warn("Task removed. Destroying log sender...");
        this.logSender.destroy(getApplicationContext());
        stopSelf();
    }

    private void actionStartService() {
        Logger.info("Starting log sender service...");
        boolean result = false;
        try {
            result = this.logSender.bind(getApplicationContext());
            Logger.debug("Bind to Code On The Go:", Boolean.valueOf(result));
        } catch (Exception err) {
            Logger.error(getString(R.string.msg_bind_service_failed), err);
        }
        if (!result) {
            Toast.makeText(this, getString(R.string.msg_bind_service_failed), 0).show();
            actionStopService();
        }
    }

    private void actionStopService() {
        Logger.info("Stopping log sender service...");
        stopSelf();
    }

    private Notification buildNotification() {
        Resources res = getResources();
        Notification.Builder builder = new Notification.Builder(this);
        String title = getString(R.string.notification_title);
        String text = getString(R.string.notification_text);
        builder.setContentTitle(title);
        builder.setContentText(text);
        builder.setStyle(new Notification.BigTextStyle().bigText(text));
        builder.setPriority(-1);
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setChannelId(NOTIFICATION_CHANNEL_ID);
        }
        builder.setShowWhen(false);
        builder.setSmallIcon(R.drawable.ic_androidide_log);
        builder.setColor(-10453621);
        builder.setOngoing(true);
        Intent exitIntent = new Intent(this, (Class<?>) LogSenderService.class).setAction(ACTION_STOP_SERVICE);
        builder.addAction(android.R.drawable.ic_delete, res.getString(R.string.notification_action_exit), PendingIntent.getService(this, 0, exitIntent, 67108864));
        return builder.build();
    }

    private void setupNotificationChannel() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        NotificationChannel channel = new NotificationChannel(NOTIFICATION_CHANNEL_ID, getString(R.string.notification_channel_name), 2);
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(channel);
        }
    }
}
