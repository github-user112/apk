package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IRemoteFrameDecoderDelegate extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate
        public com.huawei.hms.scankit.aiscan.common.x[] decode(byte[] bArr, int i, int i2, int i3, int i4, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
            return null;
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate";
        public static final int TRANSACTION_decode = 1;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate {
            public static com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate
            public com.huawei.hms.scankit.aiscan.common.x[] decode(byte[] bArr, int i, int i2, int i3, int i4, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) throws java.lang.Throwable {
                com.huawei.hms.scankit.aiscan.common.x[] xVarArrDecode;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    try {
                        if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.getDefaultImpl() == null) {
                            parcelObtain2.readException();
                            xVarArrDecode = (com.huawei.hms.scankit.aiscan.common.x[]) parcelObtain2.createTypedArray(com.huawei.hms.scankit.aiscan.common.x.CREATOR);
                        } else {
                            xVarArrDecode = com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.getDefaultImpl().decode(bArr, i, i2, i3, i4, iObjectWrapper);
                        }
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return xVarArrDecode;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate)) ? new com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate iRemoteFrameDecoderDelegate) {
            if (com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.Proxy.sDefaultImpl != null || iRemoteFrameDecoderDelegate == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate.Stub.Proxy.sDefaultImpl = iRemoteFrameDecoderDelegate;
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
            com.huawei.hms.scankit.aiscan.common.x[] xVarArrDecode = decode(parcel.createByteArray(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeTypedArray(xVarArrDecode, 1);
            return true;
        }
    }

    com.huawei.hms.scankit.aiscan.common.x[] decode(byte[] bArr, int i, int i2, int i3, int i4, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper);
}
