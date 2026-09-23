package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ca, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0126ca {
    public long a = 1800000;
    public long b = 30000;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f685c = false;

    /* renamed from: d, reason: collision with root package name */
    public volatile long f686d = 0;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.scankit.p.C0126ca.a f687e = null;

    /* renamed from: com.huawei.hms.scankit.p.ca$a */
    public class a {
        public java.lang.String a = java.util.UUID.randomUUID().toString().replace("-", "");
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public long f688c;

        public a(long j) {
            this.a += "_" + j;
            this.f688c = j;
            this.b = true;
            com.huawei.hms.scankit.p.C0126ca.this.f685c = false;
        }

        private boolean a(long j, long j2) {
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            calendar.setTimeInMillis(j);
            java.util.Calendar calendar2 = java.util.Calendar.getInstance();
            calendar2.setTimeInMillis(j2);
            return (calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) ? false : true;
        }

        private void b(long j) {
            com.huawei.hms.scankit.p.T.b("SessionWrapper", "getNewSession() session is flush!");
            java.lang.String string = java.util.UUID.randomUUID().toString();
            this.a = string;
            this.a = string.replace("-", "");
            this.a += "_" + j;
            this.f688c = j;
            this.b = true;
        }

        private boolean b(long j, long j2) {
            return j2 - j >= com.huawei.hms.scankit.p.C0126ca.this.a;
        }

        public void a(long j) {
            if (com.huawei.hms.scankit.p.C0126ca.this.f685c) {
                com.huawei.hms.scankit.p.C0126ca.this.f685c = false;
                b(j);
            } else if (b(this.f688c, j) || a(this.f688c, j)) {
                b(j);
            } else {
                this.f688c = j;
                this.b = false;
            }
        }
    }

    public java.lang.String a() {
        com.huawei.hms.scankit.p.C0126ca.a aVar = this.f687e;
        if (aVar != null) {
            return aVar.a;
        }
        com.huawei.hms.scankit.p.T.c("SessionWrapper", "getSessionName(): session not prepared. onEvent() must be called first.");
        return "";
    }

    public void a(long j) {
        com.huawei.hms.scankit.p.C0126ca.a aVar = this.f687e;
        if (aVar != null) {
            aVar.a(j);
        } else {
            com.huawei.hms.scankit.p.T.b("SessionWrapper", "Session is first flush");
            this.f687e = new com.huawei.hms.scankit.p.C0126ca.a(j);
        }
    }

    public boolean b() {
        com.huawei.hms.scankit.p.C0126ca.a aVar = this.f687e;
        if (aVar != null) {
            return aVar.b;
        }
        com.huawei.hms.scankit.p.T.c("SessionWrapper", "isFirstEvent(): session not prepared. onEvent() must be called first.");
        return false;
    }
}
