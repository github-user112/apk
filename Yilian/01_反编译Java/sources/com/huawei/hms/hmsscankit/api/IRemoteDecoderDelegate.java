package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IRemoteDecoderDelegate extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
        public com.huawei.hms.feature.dynamic.IObjectWrapper buildBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
        public void buildBitmapLog(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
        public com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
        public com.huawei.hms.feature.dynamic.IObjectWrapper queryDeepLinkInfo(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
            return null;
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate";
        public static final int TRANSACTION_buildBitmap = 3;
        public static final int TRANSACTION_buildBitmapLog = 2;
        public static final int TRANSACTION_decodeWithBitmap = 1;
        public static final int TRANSACTION_queryDeepLinkInfo = 4;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate {
            public static com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
            public com.huawei.hms.feature.dynamic.IObjectWrapper buildBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
                com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iObjectWrapperAsInterface = com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iObjectWrapperAsInterface = com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl().buildBitmap(iObjectWrapper);
                    }
                    return iObjectWrapperAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
            public void buildBitmapLog(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl().buildBitmapLog(iObjectWrapper);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
            public com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeWithBitmap;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        hmsScanArrDecodeWithBitmap = (com.huawei.hms.ml.scan.HmsScan[]) parcelObtain2.createTypedArray(com.huawei.hms.ml.scan.HmsScan.CREATOR);
                    } else {
                        hmsScanArrDecodeWithBitmap = com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl().decodeWithBitmap(iObjectWrapper, iObjectWrapper2);
                    }
                    return hmsScanArrDecodeWithBitmap;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.DESCRIPTOR;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
            public com.huawei.hms.feature.dynamic.IObjectWrapper queryDeepLinkInfo(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
                com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iObjectWrapperAsInterface = com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iObjectWrapperAsInterface = com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.getDefaultImpl().queryDeepLinkInfo(iObjectWrapper);
                    }
                    return iObjectWrapperAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate)) ? new com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate iRemoteDecoderDelegate) {
            if (com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.Proxy.sDefaultImpl != null || iRemoteDecoderDelegate == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub.Proxy.sDefaultImpl = iRemoteDecoderDelegate;
            return true;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeWithBitmap = decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeTypedArray(hmsScanArrDecodeWithBitmap, 1);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                buildBitmapLog(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperBuildBitmap = buildBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeStrongBinder(iObjectWrapperBuildBitmap != null ? iObjectWrapperBuildBitmap.asBinder() : null);
                return true;
            }
            if (i != 4) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperQueryDeepLinkInfo = queryDeepLinkInfo(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iObjectWrapperQueryDeepLinkInfo != null ? iObjectWrapperQueryDeepLinkInfo.asBinder() : null);
            return true;
        }
    }

    com.huawei.hms.feature.dynamic.IObjectWrapper buildBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper);

    void buildBitmapLog(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper);

    com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2);

    com.huawei.hms.feature.dynamic.IObjectWrapper queryDeepLinkInfo(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper);
}
