package f.a.e;

/* loaded from: classes.dex */
public class b extends java.lang.Thread {

    /* renamed from: g, reason: collision with root package name */
    public static int f2840g = 47000;
    public static int h = 7000;
    public android.content.Context a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public f.a.e.b.a f2841c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.SharedPreferences f2842d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2843e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2844f;

    public interface a {
    }

    public b(android.content.Context context, java.lang.String str, f.a.e.b.a aVar) {
        super("DMRWorkThread");
        this.f2843e = false;
        this.f2844f = false;
        android.content.Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = str;
        this.f2841c = aVar;
        this.f2842d = android.preference.PreferenceManager.getDefaultSharedPreferences(applicationContext);
    }

    public boolean a() {
        e.e.a.g.a("stopEngine closeMDNS andr stopMediaRender");
        synchronized (d.s.y.class) {
            e.e.a.g.c("closeMDNS ", new java.lang.Object[0]);
            if (d.s.y.k != null) {
                d.s.y.k.unregisterAllServices();
                try {
                    d.s.y.k.close();
                    d.s.y.k = null;
                } catch (java.io.IOException unused) {
                }
            }
            if (d.s.y.h != null) {
                d.s.y.h.cancel();
            }
        }
        net.easyconn.jni.PlatinumJniProxy.stopMediaRender();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03f2  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.e.b.run():void");
    }
}
