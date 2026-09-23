package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public interface a extends android.os.IInterface {

    /* renamed from: com.umeng.analytics.pro.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0012a extends android.os.Binder implements com.umeng.analytics.pro.a {
        public static final int a = 1;
        public static final int b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final int f1209c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final java.lang.String f1210d = "com.samsung.android.deviceidservice.IDeviceIdService";

        /* renamed from: com.umeng.analytics.pro.a$a$a, reason: collision with other inner class name */
        public static class C0013a implements com.umeng.analytics.pro.a {
            public android.os.IBinder a;

            public C0013a(android.os.IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.umeng.analytics.pro.a
            public java.lang.String a() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.umeng.analytics.pro.a.AbstractBinderC0012a.f1210d);
                    this.a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.umeng.analytics.pro.a
            public java.lang.String a(java.lang.String str) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.umeng.analytics.pro.a.AbstractBinderC0012a.f1210d);
                    parcelObtain.writeString(str);
                    this.a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.a;
            }

            public java.lang.String b() {
                return com.umeng.analytics.pro.a.AbstractBinderC0012a.f1210d;
            }

            @Override // com.umeng.analytics.pro.a
            public java.lang.String b(java.lang.String str) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.umeng.analytics.pro.a.AbstractBinderC0012a.f1210d);
                    parcelObtain.writeString(str);
                    this.a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0012a() {
            attachInterface(this, f1210d);
        }

        public static com.umeng.analytics.pro.a a(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f1210d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.umeng.analytics.pro.a)) ? new com.umeng.analytics.pro.a.AbstractBinderC0012a.C0013a(iBinder) : (com.umeng.analytics.pro.a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            java.lang.String strA;
            if (i == 1) {
                parcel.enforceInterface(f1210d);
                strA = a();
            } else if (i == 2) {
                parcel.enforceInterface(f1210d);
                strA = a(parcel.readString());
            } else {
                if (i != 3) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString(f1210d);
                    return true;
                }
                parcel.enforceInterface(f1210d);
                strA = b(parcel.readString());
            }
            parcel2.writeNoException();
            parcel2.writeString(strA);
            return true;
        }
    }

    java.lang.String a();

    java.lang.String a(java.lang.String str);

    java.lang.String b(java.lang.String str);
}
