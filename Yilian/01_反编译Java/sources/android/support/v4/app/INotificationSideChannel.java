package android.support.v4.app;

/* loaded from: classes.dex */
public interface INotificationSideChannel extends android.os.IInterface {

    public static class Default implements android.support.v4.app.INotificationSideChannel {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(java.lang.String str, int i, java.lang.String str2) {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(java.lang.String str) {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(java.lang.String str, int i, java.lang.String str2, android.app.Notification notification) {
        }
    }

    public static abstract class Stub extends android.os.Binder implements android.support.v4.app.INotificationSideChannel {
        public static final java.lang.String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
        public static final int TRANSACTION_cancel = 2;
        public static final int TRANSACTION_cancelAll = 3;
        public static final int TRANSACTION_notify = 1;

        public static class Proxy implements android.support.v4.app.INotificationSideChannel {
            public static android.support.v4.app.INotificationSideChannel sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancel(java.lang.String str, int i, java.lang.String str2) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(android.support.v4.app.INotificationSideChannel.Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || android.support.v4.app.INotificationSideChannel.Stub.getDefaultImpl() == null) {
                        return;
                    }
                    android.support.v4.app.INotificationSideChannel.Stub.getDefaultImpl().cancel(str, i, str2);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancelAll(java.lang.String str) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(android.support.v4.app.INotificationSideChannel.Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || android.support.v4.app.INotificationSideChannel.Stub.getDefaultImpl() == null) {
                        return;
                    }
                    android.support.v4.app.INotificationSideChannel.Stub.getDefaultImpl().cancelAll(str);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return android.support.v4.app.INotificationSideChannel.Stub.DESCRIPTOR;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void notify(java.lang.String str, int i, java.lang.String str2, android.app.Notification notification) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(android.support.v4.app.INotificationSideChannel.Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || android.support.v4.app.INotificationSideChannel.Stub.getDefaultImpl() == null) {
                        return;
                    }
                    android.support.v4.app.INotificationSideChannel.Stub.getDefaultImpl().notify(str, i, str2, notification);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static android.support.v4.app.INotificationSideChannel asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof android.support.v4.app.INotificationSideChannel)) ? new android.support.v4.app.INotificationSideChannel.Stub.Proxy(iBinder) : (android.support.v4.app.INotificationSideChannel) iInterfaceQueryLocalInterface;
        }

        public static android.support.v4.app.INotificationSideChannel getDefaultImpl() {
            return android.support.v4.app.INotificationSideChannel.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(android.support.v4.app.INotificationSideChannel iNotificationSideChannel) {
            if (android.support.v4.app.INotificationSideChannel.Stub.Proxy.sDefaultImpl != null) {
                throw new java.lang.IllegalStateException("setDefaultImpl() called twice");
            }
            if (iNotificationSideChannel == null) {
                return false;
            }
            android.support.v4.app.INotificationSideChannel.Stub.Proxy.sDefaultImpl = iNotificationSideChannel;
            return true;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (android.app.Notification) android.app.Notification.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                cancelAll(parcel.readString());
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void cancel(java.lang.String str, int i, java.lang.String str2);

    void cancelAll(java.lang.String str);

    void notify(java.lang.String str, int i, java.lang.String str2, android.app.Notification notification);
}
