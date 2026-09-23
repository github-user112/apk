package d.b.k;

/* loaded from: classes.dex */
public class t {

    /* renamed from: d, reason: collision with root package name */
    public static d.b.k.t f1650d;
    public final android.content.Context a;
    public final android.location.LocationManager b;

    /* renamed from: c, reason: collision with root package name */
    public final d.b.k.t.a f1651c = new d.b.k.t.a();

    public static class a {
        public boolean a;
        public long b;
    }

    public t(android.content.Context context, android.location.LocationManager locationManager) {
        this.a = context;
        this.b = locationManager;
    }

    public final android.location.Location a(java.lang.String str) {
        try {
            if (this.b.isProviderEnabled(str)) {
                return this.b.getLastKnownLocation(str);
            }
            return null;
        } catch (java.lang.Exception e2) {
            android.util.Log.d("TwilightManager", "Failed to get last known location", e2);
            return null;
        }
    }
}
