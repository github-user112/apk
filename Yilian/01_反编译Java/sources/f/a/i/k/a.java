package f.a.i.k;

/* loaded from: classes.dex */
public abstract class a {
    public final long a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public long f2925c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2926d = false;

    /* renamed from: e, reason: collision with root package name */
    public android.os.Handler f2927e = new f.a.i.k.a.HandlerC0084a();

    /* renamed from: f.a.i.k.a$a, reason: collision with other inner class name */
    public class HandlerC0084a extends android.os.Handler {
        public HandlerC0084a() {
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            long j;
            synchronized (f.a.i.k.a.this) {
                if (f.a.i.k.a.this.f2926d) {
                    return;
                }
                long jElapsedRealtime = f.a.i.k.a.this.f2925c - android.os.SystemClock.elapsedRealtime();
                long j2 = 0;
                if (jElapsedRealtime <= 0) {
                    f.a.i.k.b.a aVar = f.a.i.k.b.this.b;
                    if (aVar != null) {
                        aVar.b();
                    }
                } else {
                    long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
                    f.a.i.k.a.this.a(jElapsedRealtime);
                    long jElapsedRealtime3 = android.os.SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    if (jElapsedRealtime < f.a.i.k.a.this.b) {
                        j = jElapsedRealtime - jElapsedRealtime3;
                        if (j < 0) {
                        }
                        sendMessageDelayed(obtainMessage(1), j2);
                    } else {
                        j = f.a.i.k.a.this.b - jElapsedRealtime3;
                        while (j < 0) {
                            j += f.a.i.k.a.this.b;
                        }
                    }
                    j2 = j;
                    sendMessageDelayed(obtainMessage(1), j2);
                }
            }
        }
    }

    public a(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public abstract void a(long j);
}
