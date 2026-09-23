package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public interface IDynamicInstall extends android.os.IInterface {

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.feature.dynamic.IDynamicInstall {
        public static final int a = 1;
        public static final java.lang.String b = "com.huawei.hms.feature.dynamic.IDynamicInstall";

        public static class Proxy implements com.huawei.hms.feature.dynamic.IDynamicInstall {
            public android.os.IBinder a;

            public Proxy(android.os.IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.a;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.feature.dynamic.IDynamicInstall.Stub.b;
            }

            @Override // com.huawei.hms.feature.dynamic.IDynamicInstall
            public android.os.Bundle install(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, android.os.Bundle bundle) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.feature.dynamic.IDynamicInstall.Stub.b);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, b);
        }

        public static com.huawei.hms.feature.dynamic.IDynamicInstall asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(b);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.feature.dynamic.IDynamicInstall)) ? new com.huawei.hms.feature.dynamic.IDynamicInstall.Stub.Proxy(iBinder) : (com.huawei.hms.feature.dynamic.IDynamicInstall) iInterfaceQueryLocalInterface;
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
            android.os.Bundle bundleInstall = install(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            if (bundleInstall != null) {
                parcel2.writeInt(1);
                bundleInstall.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    android.os.Bundle install(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, android.os.Bundle bundle);
}
