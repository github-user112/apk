package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ab implements com.umeng.analytics.pro.y {
    public static final java.lang.String a = "com.uodis.opendevice.aidl.OpenDeviceIdentifierService";
    public static final int b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f1211c = 2;

    public static final class a implements android.content.ServiceConnection {
        public boolean a;
        public final java.util.concurrent.LinkedBlockingQueue<android.os.IBinder> b;

        public a() {
            this.a = false;
            this.b = new java.util.concurrent.LinkedBlockingQueue<>();
        }

        public android.os.IBinder a() {
            if (this.a) {
                throw new java.lang.IllegalStateException();
            }
            this.a = true;
            return this.b.poll(5L, java.util.concurrent.TimeUnit.SECONDS);
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

    public static final class b implements android.os.IInterface {
        public android.os.IBinder a;

        public b(android.os.IBinder iBinder) {
            this.a = iBinder;
        }

        public java.lang.String a() {
            android.os.Parcel parcelObtain = android.os.Parcel.obtain();
            android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken(com.umeng.analytics.pro.ab.a);
                this.a.transact(1, parcelObtain, parcelObtain2, 0);
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

        public boolean b() {
            android.os.Parcel parcelObtain = android.os.Parcel.obtain();
            android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken(com.umeng.analytics.pro.ab.a);
                this.a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    @Override // com.umeng.analytics.pro.y
    public java.lang.String a(android.content.Context context) {
        com.umeng.analytics.pro.ab.a aVar = new com.umeng.analytics.pro.ab.a();
        android.content.Intent intent = new android.content.Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        if (context.bindService(intent, aVar, 1)) {
            try {
                return new com.umeng.analytics.pro.ab.b(aVar.a()).a();
            } catch (java.lang.Exception unused) {
            } finally {
                context.unbindService(aVar);
            }
        }
        return null;
    }
}
