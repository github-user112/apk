package e.e.a;

/* loaded from: classes.dex */
public class a implements e.e.a.d {

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f2825e = java.lang.System.getProperty("line.separator");
    public final java.util.Date a;
    public final java.text.SimpleDateFormat b;

    /* renamed from: c, reason: collision with root package name */
    public final e.e.a.f f2826c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.String f2827d;

    public static final class b {
        public java.util.Date a;
        public java.text.SimpleDateFormat b;

        /* renamed from: c, reason: collision with root package name */
        public e.e.a.f f2828c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f2829d = "PRETTY_LOGGER";

        public b(e.e.a.a.C0077a c0077a) {
        }

        public e.e.a.a a() {
            if (this.a == null) {
                this.a = new java.util.Date();
            }
            if (this.b == null) {
                this.b = new java.text.SimpleDateFormat("yyyy.MM.dd HH:mm:ss.SSS", java.util.Locale.UK);
            }
            if (this.f2828c == null) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o(android.os.Environment.getExternalStorageDirectory().getAbsolutePath());
                sbO.append(java.io.File.separatorChar);
                sbO.append("logger");
                java.lang.String string = sbO.toString();
                android.os.HandlerThread handlerThread = new android.os.HandlerThread(e.a.c.a.a.e("AndroidFileLogger.", string));
                handlerThread.start();
                this.f2828c = new e.e.a.c(new e.e.a.c.a(handlerThread.getLooper(), string, 512000));
            }
            return new e.e.a.a(this, null);
        }

        public e.e.a.a.b b(java.lang.String str) {
            this.f2829d = str;
            return this;
        }
    }

    public a(e.e.a.a.b bVar, e.e.a.a.C0077a c0077a) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.f2826c = bVar.f2828c;
        this.f2827d = bVar.f2829d;
    }

    public static e.e.a.a.b b() {
        return new e.e.a.a.b(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    @Override // e.e.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            r0 = 0
            if (r8 == 0) goto Lc5
            r1 = 1
            r2 = 0
            if (r7 == 0) goto L10
            int r3 = r7.length()
            if (r3 != 0) goto Le
            goto L10
        Le:
            r3 = 0
            goto L11
        L10:
            r3 = 1
        L11:
            if (r3 != 0) goto L45
            java.lang.String r3 = r5.f2827d
            if (r3 != r7) goto L18
            goto L2c
        L18:
            if (r3 == 0) goto L2b
            if (r7 == 0) goto L2b
            int r1 = r3.length()
            int r4 = r7.length()
            if (r1 != r4) goto L2b
            boolean r1 = r3.equals(r7)
            goto L2c
        L2b:
            r1 = 0
        L2c:
            if (r1 != 0) goto L45
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r5.f2827d
            r1.append(r2)
            java.lang.String r2 = "-"
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            goto L47
        L45:
            java.lang.String r7 = r5.f2827d
        L47:
            java.util.Date r1 = r5.a
            long r2 = java.lang.System.currentTimeMillis()
            r1.setTime(r2)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.util.Date r2 = r5.a
            long r2 = r2.getTime()
            java.lang.String r2 = java.lang.Long.toString(r2)
            r1.append(r2)
            java.lang.String r2 = ","
            r1.append(r2)
            java.text.SimpleDateFormat r3 = r5.b
            java.util.Date r4 = r5.a
            java.lang.String r3 = r3.format(r4)
            r1.append(r3)
            r1.append(r2)
            switch(r6) {
                case 2: goto L8a;
                case 3: goto L87;
                case 4: goto L84;
                case 5: goto L81;
                case 6: goto L7e;
                case 7: goto L7b;
                default: goto L78;
            }
        L78:
            java.lang.String r3 = "UNKNOWN"
            goto L8c
        L7b:
            java.lang.String r3 = "ASSERT"
            goto L8c
        L7e:
            java.lang.String r3 = "ERROR"
            goto L8c
        L81:
            java.lang.String r3 = "WARN"
            goto L8c
        L84:
            java.lang.String r3 = "INFO"
            goto L8c
        L87:
            java.lang.String r3 = "DEBUG"
            goto L8c
        L8a:
            java.lang.String r3 = "VERBOSE"
        L8c:
            r1.append(r3)
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = e.e.a.a.f2825e
            boolean r7 = r8.contains(r7)
            if (r7 == 0) goto La5
            java.lang.String r7 = e.e.a.a.f2825e
            java.lang.String r3 = " <br> "
            java.lang.String r8 = r8.replaceAll(r7, r3)
        La5:
            r1.append(r2)
            r1.append(r8)
            java.lang.String r7 = e.e.a.a.f2825e
            r1.append(r7)
            e.e.a.f r7 = r5.f2826c
            java.lang.String r8 = r1.toString()
            e.e.a.c r7 = (e.e.a.c) r7
            if (r8 == 0) goto Lc4
            android.os.Handler r7 = r7.a
            android.os.Message r6 = r7.obtainMessage(r6, r8)
            r7.sendMessage(r6)
            return
        Lc4:
            throw r0
        Lc5:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.e.a.a.a(int, java.lang.String, java.lang.String):void");
    }
}
