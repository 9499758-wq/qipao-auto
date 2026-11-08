package com.itsaky.androidide.logsender;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface ILogSender extends IInterface {
    public static final String DESCRIPTOR = "com.itsaky.androidide.logsender.ILogSender";

    String getId() throws RemoteException;

    String getPackageName() throws RemoteException;

    int getPid() throws RemoteException;

    void onDisconnect() throws RemoteException;

    void ping() throws RemoteException;

    void startReader(int i) throws RemoteException;

    public static class Default implements ILogSender {
        @Override // com.itsaky.androidide.logsender.ILogSender
        public void ping() throws RemoteException {
        }

        @Override // com.itsaky.androidide.logsender.ILogSender
        public void startReader(int port) throws RemoteException {
        }

        @Override // com.itsaky.androidide.logsender.ILogSender
        public int getPid() throws RemoteException {
            return 0;
        }

        @Override // com.itsaky.androidide.logsender.ILogSender
        public String getPackageName() throws RemoteException {
            return null;
        }

        @Override // com.itsaky.androidide.logsender.ILogSender
        public String getId() throws RemoteException {
            return null;
        }

        @Override // com.itsaky.androidide.logsender.ILogSender
        public void onDisconnect() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ILogSender {
        static final int TRANSACTION_getId = 5;
        static final int TRANSACTION_getPackageName = 4;
        static final int TRANSACTION_getPid = 3;
        static final int TRANSACTION_onDisconnect = 6;
        static final int TRANSACTION_ping = 1;
        static final int TRANSACTION_startReader = 2;

        public Stub() {
            attachInterface(this, ILogSender.DESCRIPTOR);
        }

        public static ILogSender asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ILogSender.DESCRIPTOR);
            if (iin != null && (iin instanceof ILogSender)) {
                return (ILogSender) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(ILogSender.DESCRIPTOR);
            }
            if (code == 1598968902) {
                reply.writeString(ILogSender.DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    ping();
                    reply.writeNoException();
                    return true;
                case 2:
                    int _arg0 = data.readInt();
                    startReader(_arg0);
                    reply.writeNoException();
                    return true;
                case 3:
                    int _result = getPid();
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 4:
                    String _result2 = getPackageName();
                    reply.writeNoException();
                    reply.writeString(_result2);
                    return true;
                case 5:
                    String _result3 = getId();
                    reply.writeNoException();
                    reply.writeString(_result3);
                    return true;
                case 6:
                    onDisconnect();
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements ILogSender {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ILogSender.DESCRIPTOR;
            }

            @Override // com.itsaky.androidide.logsender.ILogSender
            public void ping() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILogSender.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.itsaky.androidide.logsender.ILogSender
            public void startReader(int port) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILogSender.DESCRIPTOR);
                    _data.writeInt(port);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.itsaky.androidide.logsender.ILogSender
            public int getPid() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILogSender.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.itsaky.androidide.logsender.ILogSender
            public String getPackageName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILogSender.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.itsaky.androidide.logsender.ILogSender
            public String getId() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILogSender.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.itsaky.androidide.logsender.ILogSender
            public void onDisconnect() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILogSender.DESCRIPTOR);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
