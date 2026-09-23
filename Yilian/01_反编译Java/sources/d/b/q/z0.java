package d.b.q;

/* loaded from: classes.dex */
public class z0 {
    public final android.content.Context a;
    public final android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final android.widget.TextView f1863c;

    /* renamed from: d, reason: collision with root package name */
    public final android.view.WindowManager.LayoutParams f1864d = new android.view.WindowManager.LayoutParams();

    /* renamed from: e, reason: collision with root package name */
    public final android.graphics.Rect f1865e = new android.graphics.Rect();

    /* renamed from: f, reason: collision with root package name */
    public final int[] f1866f = new int[2];

    /* renamed from: g, reason: collision with root package name */
    public final int[] f1867g = new int[2];

    public z0(android.content.Context context) {
        this.a = context;
        android.view.View viewInflate = android.view.LayoutInflater.from(context).inflate(d.b.g.abc_tooltip, (android.view.ViewGroup) null);
        this.b = viewInflate;
        this.f1863c = (android.widget.TextView) viewInflate.findViewById(d.b.f.message);
        this.f1864d.setTitle(d.b.q.z0.class.getSimpleName());
        this.f1864d.packageName = this.a.getPackageName();
        android.view.WindowManager.LayoutParams layoutParams = this.f1864d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = d.b.i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public void a() {
        if (this.b.getParent() != null) {
            ((android.view.WindowManager) this.a.getSystemService("window")).removeView(this.b);
        }
    }
}
