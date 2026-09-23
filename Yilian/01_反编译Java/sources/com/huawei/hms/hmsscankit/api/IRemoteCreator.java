package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IRemoteCreator extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IRemoteCreator {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
        public com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate newRemoteDecoderDelegate() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
        public com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate newRemoteHmsDecoderDelegate() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
        public com.huawei.hms.hmsscankit.api.IRemoteViewDelegate newRemoteViewDelegate(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
            return null;
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IRemoteCreator {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IRemoteCreator";
        public static final int TRANSACTION_newRemoteDecoderDelegate = 2;
        public static final int TRANSACTION_newRemoteHmsDecoderDelegate = 3;
        public static final int TRANSACTION_newRemoteViewDelegate = 1;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IRemoteCreator {
            public static com.huawei.hms.hmsscankit.api.IRemoteCreator sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.DESCRIPTOR;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
            public com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate newRemoteDecoderDelegate() {
                com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate iRemoteDecoderDelegateAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iRemoteDecoderDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iRemoteDecoderDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.getDefaultImpl().newRemoteDecoderDelegate();
                    }
                    return iRemoteDecoderDelegateAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
            public com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate newRemoteHmsDecoderDelegate() {
                com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate iRemoteHmsDecoderDelegateAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iRemoteHmsDecoderDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iRemoteHmsDecoderDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.getDefaultImpl().newRemoteHmsDecoderDelegate();
                    }
                    return iRemoteHmsDecoderDelegateAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
            public com.huawei.hms.hmsscankit.api.IRemoteViewDelegate newRemoteViewDelegate(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
                com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegateAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iRemoteViewDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iRemoteViewDelegateAsInterface = com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.getDefaultImpl().newRemoteViewDelegate(iObjectWrapper, iObjectWrapper2);
                    }
                    return iRemoteViewDelegateAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteCreator asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IRemoteCreator)) ? new com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IRemoteCreator) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteCreator getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IRemoteCreator iRemoteCreator) {
            if (com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.Proxy.sDefaultImpl != null || iRemoteCreator == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.Proxy.sDefaultImpl = iRemoteCreator;
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
                com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegateNewRemoteViewDelegate = newRemoteViewDelegate(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeStrongBinder(iRemoteViewDelegateNewRemoteViewDelegate != null ? iRemoteViewDelegateNewRemoteViewDelegate.asBinder() : null);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate iRemoteDecoderDelegateNewRemoteDecoderDelegate = newRemoteDecoderDelegate();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(iRemoteDecoderDelegateNewRemoteDecoderDelegate != null ? iRemoteDecoderDelegateNewRemoteDecoderDelegate.asBinder() : null);
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate iRemoteHmsDecoderDelegateNewRemoteHmsDecoderDelegate = newRemoteHmsDecoderDelegate();
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iRemoteHmsDecoderDelegateNewRemoteHmsDecoderDelegate != null ? iRemoteHmsDecoderDelegateNewRemoteHmsDecoderDelegate.asBinder() : null);
            return true;
        }
    }

    com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate newRemoteDecoderDelegate();

    com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate newRemoteHmsDecoderDelegate();

    com.huawei.hms.hmsscankit.api.IRemoteViewDelegate newRemoteViewDelegate(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2);
}
