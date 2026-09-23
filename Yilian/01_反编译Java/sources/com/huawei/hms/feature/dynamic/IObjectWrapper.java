package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public interface IObjectWrapper extends android.os.IInterface {

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.feature.dynamic.IObjectWrapper {
        public static final java.lang.String a = "com.huawei.hms.feature.dynamic.IObjectWrapper";

        public static class Proxy implements com.huawei.hms.feature.dynamic.IObjectWrapper {
            public android.os.IBinder a;

            public Proxy(android.os.IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.a;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.a;
            }
        }

        public Stub() {
            attachInterface(this, a);
        }

        public static com.huawei.hms.feature.dynamic.IObjectWrapper asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.feature.dynamic.IObjectWrapper)) ? new com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.Proxy(iBinder) : (com.huawei.hms.feature.dynamic.IObjectWrapper) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(a);
            return true;
        }
    }
}
