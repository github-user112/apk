package g.a.a.a.a;

/* loaded from: classes.dex */
public interface a extends android.os.IInterface {

    /* renamed from: g.a.a.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0092a extends android.os.Binder implements g.a.a.a.a.a {

        /* renamed from: g.a.a.a.a.a$a$a, reason: collision with other inner class name */
        public static class C0093a implements g.a.a.a.a.a {
            public android.os.IBinder a;

            public C0093a(android.os.IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.a;
            }
        }

        public static g.a.a.a.a.a a(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof g.a.a.a.a.a)) ? new g.a.a.a.a.a.AbstractBinderC0092a.C0093a(iBinder) : (g.a.a.a.a.a) iInterfaceQueryLocalInterface;
        }
    }

    public class b {
        public g.a.a.a.a.a a = null;
        public java.lang.String b = null;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f3118c = null;

        /* renamed from: d, reason: collision with root package name */
        public final java.lang.Object f3119d = new java.lang.Object();

        /* renamed from: e, reason: collision with root package name */
        public android.content.ServiceConnection f3120e = new g.a.a.a.a.a.b.ServiceConnectionC0094a();

        /* renamed from: g.a.a.a.a.a$b$a, reason: collision with other inner class name */
        public class ServiceConnectionC0094a implements android.content.ServiceConnection {
            public ServiceConnectionC0094a() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
                g.a.a.a.a.a.b.this.a = g.a.a.a.a.a.AbstractBinderC0092a.a(iBinder);
                synchronized (g.a.a.a.a.a.b.this.f3119d) {
                    g.a.a.a.a.a.b.this.f3119d.notify();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(android.content.ComponentName componentName) {
                g.a.a.a.a.a.b.this.a = null;
            }
        }

        /* renamed from: g.a.a.a.a.a$b$b, reason: collision with other inner class name */
        public static class C0095b {
            public static final g.a.a.a.a.a.b a = new g.a.a.a.a.a.b();
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String a(android.content.Context r9, java.lang.String r10) throws java.security.NoSuchAlgorithmException {
            /*
                r8 = this;
                java.lang.String r0 = r8.b
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 == 0) goto Le
                java.lang.String r0 = r9.getPackageName()
                r8.b = r0
            Le:
                java.lang.String r0 = r8.f3118c
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                r1 = 0
                r2 = 1
                r3 = 0
                if (r0 == 0) goto L6e
                java.lang.String r0 = r8.b
                android.content.pm.PackageManager r9 = r9.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L28
                r4 = 64
                android.content.pm.PackageInfo r9 = r9.getPackageInfo(r0, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L28
                android.content.pm.Signature[] r9 = r9.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L28
                goto L2d
            L28:
                r9 = move-exception
                r9.printStackTrace()
                r9 = r3
            L2d:
                if (r9 == 0) goto L6b
                int r0 = r9.length
                if (r0 <= 0) goto L6b
                r9 = r9[r1]
                java.lang.String r0 = "SHA1"
                byte[] r9 = r9.toByteArray()
                java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch: java.security.NoSuchAlgorithmException -> L67
                if (r0 == 0) goto L6b
                byte[] r9 = r0.digest(r9)     // Catch: java.security.NoSuchAlgorithmException -> L67
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.security.NoSuchAlgorithmException -> L67
                r0.<init>()     // Catch: java.security.NoSuchAlgorithmException -> L67
                int r4 = r9.length     // Catch: java.security.NoSuchAlgorithmException -> L67
                r5 = 0
            L4b:
                if (r5 >= r4) goto L62
                r6 = r9[r5]     // Catch: java.security.NoSuchAlgorithmException -> L67
                r6 = r6 & 255(0xff, float:3.57E-43)
                r6 = r6 | 256(0x100, float:3.59E-43)
                java.lang.String r6 = java.lang.Integer.toHexString(r6)     // Catch: java.security.NoSuchAlgorithmException -> L67
                r7 = 3
                java.lang.String r6 = r6.substring(r2, r7)     // Catch: java.security.NoSuchAlgorithmException -> L67
                r0.append(r6)     // Catch: java.security.NoSuchAlgorithmException -> L67
                int r5 = r5 + 1
                goto L4b
            L62:
                java.lang.String r9 = r0.toString()     // Catch: java.security.NoSuchAlgorithmException -> L67
                goto L6c
            L67:
                r9 = move-exception
                r9.printStackTrace()
            L6b:
                r9 = r3
            L6c:
                r8.f3118c = r9
            L6e:
                g.a.a.a.a.a r9 = r8.a
                java.lang.String r0 = r8.b
                java.lang.String r4 = r8.f3118c
                g.a.a.a.a.a$a$a r9 = (g.a.a.a.a.a.AbstractBinderC0092a.C0093a) r9
                if (r9 == 0) goto Lb1
                android.os.Parcel r3 = android.os.Parcel.obtain()
                android.os.Parcel r5 = android.os.Parcel.obtain()
                java.lang.String r6 = "com.heytap.openid.IOpenID"
                r3.writeInterfaceToken(r6)     // Catch: java.lang.Throwable -> La9
                r3.writeString(r0)     // Catch: java.lang.Throwable -> La9
                r3.writeString(r4)     // Catch: java.lang.Throwable -> La9
                r3.writeString(r10)     // Catch: java.lang.Throwable -> La9
                android.os.IBinder r9 = r9.a     // Catch: java.lang.Throwable -> La9
                r9.transact(r2, r3, r5, r1)     // Catch: java.lang.Throwable -> La9
                r5.readException()     // Catch: java.lang.Throwable -> La9
                java.lang.String r9 = r5.readString()     // Catch: java.lang.Throwable -> La9
                r5.recycle()
                r3.recycle()
                boolean r10 = android.text.TextUtils.isEmpty(r9)
                if (r10 == 0) goto La8
                java.lang.String r9 = ""
            La8:
                return r9
            La9:
                r9 = move-exception
                r5.recycle()
                r3.recycle()
                throw r9
            Lb1:
                goto Lb3
            Lb2:
                throw r3
            Lb3:
                goto Lb2
            */
            throw new UnsupportedOperationException("Method not decompiled: g.a.a.a.a.a.b.a(android.content.Context, java.lang.String):java.lang.String");
        }
    }
}
