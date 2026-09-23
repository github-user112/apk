package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public class a {

    /* renamed from: com.umeng.commonsdk.statistics.common.a$a, reason: collision with other inner class name */
    public static final class C0021a {
        public final java.lang.String a;
        public final boolean b;

        public C0021a(java.lang.String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public java.lang.String b() {
            return this.a;
        }

        public boolean a() {
            return this.b;
        }
    }

    public static final class b implements android.content.ServiceConnection {
        public boolean a;
        public final java.util.concurrent.LinkedBlockingQueue<android.os.IBinder> b;

        public b() {
            this.a = false;
            this.b = new java.util.concurrent.LinkedBlockingQueue<>(1);
        }

        public android.os.IBinder a() {
            if (this.a) {
                throw new java.lang.IllegalStateException();
            }
            this.a = true;
            return this.b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) throws java.lang.InterruptedException {
            try {
                this.b.put(iBinder);
            } catch (java.lang.InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
        }
    }

    public static final class c implements android.os.IInterface {
        public android.os.IBinder a;

        public c(android.os.IBinder iBinder) {
            this.a = iBinder;
        }

        public java.lang.String a() {
            android.os.Parcel parcelObtain = android.os.Parcel.obtain();
            android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        public boolean a(boolean z) {
            android.os.Parcel parcelObtain = android.os.Parcel.obtain();
            android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z ? 1 : 0);
                this.a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this.a;
        }
    }

    public static java.lang.String a(android.content.Context context) {
        try {
            com.umeng.commonsdk.statistics.common.a.C0021a c0021aC = c(context);
            if (c0021aC != null && !c0021aC.a()) {
                return c0021aC.b();
            }
        } catch (java.lang.Exception unused) {
        }
        return null;
    }

    public static java.lang.String b(android.content.Context context) {
        try {
            com.umeng.commonsdk.statistics.common.a.C0021a c0021aC = c(context);
            if (c0021aC == null) {
                return null;
            }
            return c0021aC.b();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static com.umeng.commonsdk.statistics.common.a.C0021a c(android.content.Context context) throws java.lang.Exception {
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
            return null;
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            com.umeng.commonsdk.statistics.common.a.b bVar = new com.umeng.commonsdk.statistics.common.a.b();
            android.content.Intent intent = new android.content.Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (!context.bindService(intent, bVar, 1)) {
                throw new java.io.IOException("Google Play connection failed");
            }
            try {
                try {
                    com.umeng.commonsdk.statistics.common.a.c cVar = new com.umeng.commonsdk.statistics.common.a.c(bVar.a());
                    boolean zA = cVar.a(true);
                    return new com.umeng.commonsdk.statistics.common.a.C0021a(zA ? "" : cVar.a(), zA);
                } catch (java.lang.Exception e2) {
                    throw e2;
                }
            } finally {
                context.unbindService(bVar);
            }
        } catch (java.lang.Exception e3) {
            throw e3;
        }
    }
}
