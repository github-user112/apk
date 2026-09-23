package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IOnLightCallback extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IOnLightCallback {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IOnLightCallback
        public void onVisibleChanged(boolean z) {
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IOnLightCallback {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IOnLightCallback";
        public static final int TRANSACTION_onVisibleChanged = 1;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IOnLightCallback {
            public static com.huawei.hms.hmsscankit.api.IOnLightCallback sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.DESCRIPTOR;
            }

            @Override // com.huawei.hms.hmsscankit.api.IOnLightCallback
            public void onVisibleChanged(boolean z) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.getDefaultImpl().onVisibleChanged(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IOnLightCallback asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IOnLightCallback)) ? new com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IOnLightCallback) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IOnLightCallback getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback) {
            if (com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.Proxy.sDefaultImpl != null || iOnLightCallback == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.Proxy.sDefaultImpl = iOnLightCallback;
            return true;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onVisibleChanged(parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    void onVisibleChanged(boolean z);
}
