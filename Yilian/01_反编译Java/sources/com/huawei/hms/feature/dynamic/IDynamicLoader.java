package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public interface IDynamicLoader extends android.os.IInterface {

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.feature.dynamic.IDynamicLoader {
        public static final int a = 1;
        public static final java.lang.String b = "com.huawei.hms.feature.dynamic.IDynamicLoader";

        public static class Proxy implements com.huawei.hms.feature.dynamic.IDynamicLoader {
            public android.os.IBinder a;

            public Proxy(android.os.IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.a;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.feature.dynamic.IDynamicLoader.Stub.b;
            }

            @Override // com.huawei.hms.feature.dynamic.IDynamicLoader
            public com.huawei.hms.feature.dynamic.IObjectWrapper load(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, java.lang.String str, int i, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.feature.dynamic.IDynamicLoader.Stub.b);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    this.a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, b);
        }

        public static com.huawei.hms.feature.dynamic.IDynamicLoader asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(b);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.feature.dynamic.IDynamicLoader)) ? new com.huawei.hms.feature.dynamic.IDynamicLoader.Stub.Proxy(iBinder) : (com.huawei.hms.feature.dynamic.IDynamicLoader) iInterfaceQueryLocalInterface;
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
                parcel2.writeString(b);
                return true;
            }
            parcel.enforceInterface(b);
            com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperLoad = load(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iObjectWrapperLoad != null ? iObjectWrapperLoad.asBinder() : null);
            return true;
        }
    }

    com.huawei.hms.feature.dynamic.IObjectWrapper load(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, java.lang.String str, int i, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2);
}
