package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IRemoteHmsDecoderDelegate extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate
        public com.huawei.hms.ml.scan.HmsScan[] decodeInBitmap(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate
        public com.huawei.hms.ml.scan.HmsScan[] detectWithByteBuffer(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
            return null;
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate";
        public static final int TRANSACTION_decodeInBitmap = 1;
        public static final int TRANSACTION_detectWithByteBuffer = 2;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate {
            public static com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate
            public com.huawei.hms.ml.scan.HmsScan[] decodeInBitmap(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeInBitmap;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.DESCRIPTOR);
                    if (detailRect != null) {
                        parcelObtain.writeInt(1);
                        detailRect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        hmsScanArrDecodeInBitmap = (com.huawei.hms.ml.scan.HmsScan[]) parcelObtain2.createTypedArray(com.huawei.hms.ml.scan.HmsScan.CREATOR);
                    } else {
                        hmsScanArrDecodeInBitmap = com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.getDefaultImpl().decodeInBitmap(detailRect, iObjectWrapper, iObjectWrapper2);
                    }
                    return hmsScanArrDecodeInBitmap;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate
            public com.huawei.hms.ml.scan.HmsScan[] detectWithByteBuffer(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDetectWithByteBuffer;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.DESCRIPTOR);
                    if (detailRect != null) {
                        parcelObtain.writeInt(1);
                        detailRect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        hmsScanArrDetectWithByteBuffer = (com.huawei.hms.ml.scan.HmsScan[]) parcelObtain2.createTypedArray(com.huawei.hms.ml.scan.HmsScan.CREATOR);
                    } else {
                        hmsScanArrDetectWithByteBuffer = com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.getDefaultImpl().detectWithByteBuffer(detailRect, iObjectWrapper, iObjectWrapper2);
                    }
                    return hmsScanArrDetectWithByteBuffer;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate)) ? new com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate iRemoteHmsDecoderDelegate) {
            if (com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.Proxy.sDefaultImpl != null || iRemoteHmsDecoderDelegate == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub.Proxy.sDefaultImpl = iRemoteHmsDecoderDelegate;
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
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeInBitmap = decodeInBitmap(parcel.readInt() != 0 ? com.huawei.hms.hmsscankit.DetailRect.CREATOR.createFromParcel(parcel) : null, com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeTypedArray(hmsScanArrDecodeInBitmap, 1);
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDetectWithByteBuffer = detectWithByteBuffer(parcel.readInt() != 0 ? com.huawei.hms.hmsscankit.DetailRect.CREATOR.createFromParcel(parcel) : null, com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeTypedArray(hmsScanArrDetectWithByteBuffer, 1);
            return true;
        }
    }

    com.huawei.hms.ml.scan.HmsScan[] decodeInBitmap(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2);

    com.huawei.hms.ml.scan.HmsScan[] detectWithByteBuffer(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2);
}
