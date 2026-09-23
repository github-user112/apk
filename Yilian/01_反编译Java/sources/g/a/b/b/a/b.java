package g.a.b.b.a;

/* loaded from: classes.dex */
public final class b extends android.os.Handler {
    public b(android.os.Looper looper) {
        super(looper);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleMessage(android.os.Message r10) {
        /*
            r9 = this;
            int r0 = r10.what
            r1 = 11
            if (r0 != r1) goto L86
            android.os.Bundle r0 = r10.getData()
            java.lang.String r1 = "type"
            int r0 = r0.getInt(r1)
            android.os.Bundle r10 = r10.getData()
            java.lang.String r1 = "appid"
            java.lang.String r10 = r10.getString(r1)
            g.a.b.b.a.a r1 = g.a.b.b.a.c.j
            r2 = 0
            if (r1 == 0) goto L85
            if (r0 == 0) goto L43
            r3 = 1
            if (r0 == r3) goto L37
            r3 = 2
            if (r0 == r3) goto L2f
            r10 = 4
            if (r0 == r10) goto L2c
            r4 = r2
            goto L4a
        L2c:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS"
            goto L45
        L2f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"
            goto L3e
        L37:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"
        L3e:
            java.lang.String r10 = e.a.c.a.a.j(r0, r3, r10)
            goto L45
        L43:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"
        L45:
            android.net.Uri r10 = android.net.Uri.parse(r10)
            r4 = r10
        L4a:
            android.content.Context r10 = r1.a
            android.content.ContentResolver r3 = r10.getContentResolver()
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r10 = r3.query(r4, r5, r6, r7, r8)
            if (r10 == 0) goto L6f
            boolean r0 = r10.moveToNext()
            if (r0 == 0) goto L6b
            java.lang.String r0 = "value"
            int r0 = r10.getColumnIndex(r0)
            java.lang.String r0 = r10.getString(r0)
            r2 = r0
        L6b:
            r10.close()
            goto L76
        L6f:
            java.lang.String r10 = "VMS_IDLG_SDK_DB"
            java.lang.String r0 = "return cursor is null,return"
            android.util.Log.d(r10, r0)
        L76:
            g.a.b.b.a.c.f3126g = r2
            java.lang.Object r10 = g.a.b.b.a.c.f3123d
            monitor-enter(r10)
            java.lang.Object r0 = g.a.b.b.a.c.f3123d     // Catch: java.lang.Throwable -> L82
            r0.notify()     // Catch: java.lang.Throwable -> L82
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L82
            goto L8d
        L82:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L82
            throw r0
        L85:
            throw r2
        L86:
            java.lang.String r10 = "VMS_IDLG_SDK_Client"
            java.lang.String r0 = "message type valid"
            android.util.Log.e(r10, r0)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.b.b.a.b.handleMessage(android.os.Message):void");
    }
}
