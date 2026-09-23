package d.g.f.b;

/* loaded from: classes.dex */
public final class b {
    public final android.graphics.Shader a;
    public final android.content.res.ColorStateList b;

    /* renamed from: c, reason: collision with root package name */
    public int f1940c;

    public b(android.graphics.Shader shader, android.content.res.ColorStateList colorStateList, int i) {
        this.a = shader;
        this.b = colorStateList;
        this.f1940c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x014f, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r2.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d.g.f.b.b a(android.content.res.Resources r26, int r27, android.content.res.Resources.Theme r28) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.f.b.b.a(android.content.res.Resources, int, android.content.res.Resources$Theme):d.g.f.b.b");
    }

    public boolean b() {
        return this.a != null;
    }

    public boolean c() {
        android.content.res.ColorStateList colorStateList;
        return this.a == null && (colorStateList = this.b) != null && colorStateList.isStateful();
    }

    public boolean d(int[] iArr) {
        if (c()) {
            android.content.res.ColorStateList colorStateList = this.b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f1940c) {
                this.f1940c = colorForState;
                return true;
            }
        }
        return false;
    }
}
