package f.a.i.k;

/* loaded from: classes.dex */
public class b {
    public f.a.i.k.b.C0085b a = new f.a.i.k.b.C0085b(300000, 1000);
    public f.a.i.k.b.a b;

    public interface a {
        void a(java.lang.String str);

        void b();
    }

    /* renamed from: f.a.i.k.b$b, reason: collision with other inner class name */
    public class C0085b extends f.a.i.k.a {
        public C0085b(long j, long j2) {
            super(j, j2);
        }

        @Override // f.a.i.k.a
        public void a(long j) {
            java.lang.StringBuilder sb;
            java.lang.StringBuilder sb2;
            java.lang.String string;
            double d2 = j;
            java.lang.Double.isNaN(d2);
            double dRound = java.lang.Math.round(d2 / 1000.0d);
            f.a.i.k.b bVar = f.a.i.k.b.this;
            f.a.i.k.b.a aVar = bVar.b;
            if (aVar != null) {
                if (bVar == null) {
                    throw null;
                }
                java.lang.Double.isNaN(dRound);
                int i = (int) (dRound / 60.0d);
                java.lang.Double.isNaN(dRound);
                int i2 = (int) (dRound % 60.0d);
                if (i < 10) {
                    if (i2 < 10) {
                        sb2 = new java.lang.StringBuilder();
                        sb2.append("0");
                        sb2.append(i);
                        sb2.append(":0");
                        sb2.append(i2);
                        string = sb2.toString();
                    } else {
                        sb = new java.lang.StringBuilder();
                        sb.append("0");
                        sb.append(i);
                        sb.append(":");
                        sb.append(i2);
                        string = sb.toString();
                    }
                } else if (i2 < 10) {
                    sb2 = new java.lang.StringBuilder();
                    sb2.append(i);
                    sb2.append(":0");
                    sb2.append(i2);
                    string = sb2.toString();
                } else {
                    sb = new java.lang.StringBuilder();
                    sb.append(i);
                    sb.append(":");
                    sb.append(i2);
                    string = sb.toString();
                }
                aVar.a(string);
            }
        }
    }

    public b(android.content.Context context) {
    }

    public void a(f.a.i.k.b.a aVar) {
        this.b = aVar;
    }

    public void b() {
        f.a.i.k.b.C0085b c0085b = this.a;
        if (c0085b != null) {
            synchronized (c0085b) {
                c0085b.f2926d = false;
                if (c0085b.a <= 0) {
                    f.a.i.k.b.a aVar = f.a.i.k.b.this.b;
                    if (aVar != null) {
                        aVar.b();
                    }
                } else {
                    c0085b.f2925c = android.os.SystemClock.elapsedRealtime() + c0085b.a;
                    c0085b.f2927e.sendMessage(c0085b.f2927e.obtainMessage(1));
                }
            }
        }
    }

    public void c() {
        f.a.i.k.b.C0085b c0085b = this.a;
        if (c0085b != null) {
            synchronized (c0085b) {
                c0085b.f2926d = true;
                c0085b.f2927e.removeMessages(1);
            }
        }
    }

    public void d() {
        this.b = null;
    }
}
