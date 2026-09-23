package e.d.a.a.b;

/* loaded from: classes.dex */
public class a extends e.d.a.a.a {

    /* renamed from: c, reason: collision with root package name */
    public final android.content.Context f2804c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.String f2805d;

    /* renamed from: e, reason: collision with root package name */
    public volatile e.d.a.a.b.b f2806e;

    /* renamed from: f, reason: collision with root package name */
    public final java.lang.Object f2807f = new java.lang.Object();

    public a(android.content.Context context, java.lang.String str) {
        this.f2804c = context;
        this.f2805d = str;
    }

    @Override // e.d.a.a.a
    public java.lang.String b(java.lang.String str) {
        if (str == null) {
            throw new java.lang.NullPointerException("path must not be null.");
        }
        if (this.f2806e == null) {
            synchronized (this.f2807f) {
                if (this.f2806e == null) {
                    this.f2806e = new e.d.a.a.b.e(this.f2804c, this.f2805d);
                }
            }
        }
        int i = 0;
        if (str.length() > 0) {
            while (str.charAt(i) == '/') {
                i++;
            }
        }
        return this.f2806e.a(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH + str.substring(i), null);
    }
}
