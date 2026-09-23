package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IRemoteDecoderCreator extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator
        public com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate newRemoteFrameDecoderDelegate() {
            return null;
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator";
        public static final int TRANSACTION_newRemoteFrameDecoderDelegate = 1;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator {
            public static com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.DESCRIPTOR;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator
            public com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate newRemoteFrameDecoderDelegate() {
                com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate iRemoteFrameDecoderDelegateAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iRemoteFrameDecoderDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iRemoteFrameDecoderDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.getDefaultImpl().newRemoteFrameDecoderDelegate();
                    }
                    return iRemoteFrameDecoderDelegateAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator)) ? new com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator iRemoteDecoderCreator) {
            if (com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.Proxy.sDefaultImpl != null || iRemoteDecoderCreator == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.Proxy.sDefaultImpl = iRemoteDecoderCreator;
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
            com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate iRemoteFrameDecoderDelegateNewRemoteFrameDecoderDelegate = newRemoteFrameDecoderDelegate();
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iRemoteFrameDecoderDelegateNewRemoteFrameDecoderDelegate != null ? iRemoteFrameDecoderDelegateNewRemoteFrameDecoderDelegate.asBinder() : null);
            return true;
        }
    }

    com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate newRemoteFrameDecoderDelegate();
}
