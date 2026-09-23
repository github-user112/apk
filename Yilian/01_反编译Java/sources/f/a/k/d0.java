package f.a.k;

/* loaded from: classes.dex */
public abstract class d0 implements android.view.View.OnClickListener {
    public long a;
    public long b;

    public d0() {
        this.a = 0L;
        this.b = 1000L;
    }

    public d0(long j) {
        this.a = 0L;
        this.b = 1000L;
        this.b = j;
    }

    public abstract void a(android.view.View view);

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        long j = this.a;
        if (jCurrentTimeMillis - j > this.b || jCurrentTimeMillis - j < 0) {
            a(view);
            this.a = jCurrentTimeMillis;
        }
    }
}
