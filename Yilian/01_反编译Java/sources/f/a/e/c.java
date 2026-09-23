package f.a.e;

/* loaded from: classes.dex */
public class c extends java.util.TimerTask {
    public boolean a = false;
    public final /* synthetic */ java.util.LinkedHashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ java.util.LinkedHashMap f2845c;

    public c(java.util.LinkedHashMap linkedHashMap, java.util.LinkedHashMap linkedHashMap2) {
        this.b = linkedHashMap;
        this.f2845c = linkedHashMap2;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        boolean z = !this.a;
        this.a = z;
        this.b.put("dummay", java.lang.String.valueOf(z));
        d.s.y.j.setText(this.b);
        this.f2845c.put("dummay", java.lang.String.valueOf(this.a));
        d.s.y.i.setText(this.f2845c);
        d.s.y.h.cancel();
    }
}
