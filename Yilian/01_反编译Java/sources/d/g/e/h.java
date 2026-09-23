package d.g.e;

/* loaded from: classes.dex */
public class h {
    public android.content.Context a;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f1931e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f1932f;

    /* renamed from: g, reason: collision with root package name */
    public android.app.PendingIntent f1933g;
    public android.graphics.Bitmap h;
    public int i;
    public d.g.e.i k;
    public int l;
    public int m;
    public boolean n;
    public android.os.Bundle p;
    public android.widget.RemoteViews s;
    public java.lang.String t;
    public boolean w;
    public android.app.Notification x;

    @java.lang.Deprecated
    public java.util.ArrayList<java.lang.String> y;
    public java.util.ArrayList<d.g.e.f> b = new java.util.ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public java.util.ArrayList<d.g.e.l> f1929c = new java.util.ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public java.util.ArrayList<d.g.e.f> f1930d = new java.util.ArrayList<>();
    public boolean j = true;
    public boolean o = false;
    public int q = 0;
    public int r = 0;
    public int u = 0;
    public int v = 0;

    public h(android.content.Context context, java.lang.String str) {
        android.app.Notification notification = new android.app.Notification();
        this.x = notification;
        this.a = context;
        this.t = str;
        notification.when = java.lang.System.currentTimeMillis();
        this.x.audioStreamType = -1;
        this.i = 0;
        this.y = new java.util.ArrayList<>();
        this.w = true;
    }

    public static java.lang.CharSequence b(java.lang.CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0176 A[PHI: r3 r4
  0x0176: PHI (r3v3 android.app.Notification) = (r3v2 android.app.Notification), (r3v8 android.app.Notification) binds: [B:102:0x0174, B:87:0x0126] A[DONT_GENERATE, DONT_INLINE]
  0x0176: PHI (r4v9 android.widget.RemoteViews) = (r4v8 android.widget.RemoteViews), (r4v12 android.widget.RemoteViews) binds: [B:102:0x0174, B:87:0x0126] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f9 A[PHI: r3
  0x00f9: PHI (r3v15 android.app.Notification) = (r3v11 android.app.Notification), (r3v14 android.app.Notification), (r3v17 android.app.Notification) binds: [B:76:0x00f7, B:52:0x00b2, B:26:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Notification a() {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.e.h.a():android.app.Notification");
    }

    public d.g.e.h c(java.lang.CharSequence charSequence) {
        this.f1932f = b(charSequence);
        return this;
    }

    public d.g.e.h d(java.lang.CharSequence charSequence) {
        this.f1931e = b(charSequence);
        return this;
    }

    public final void e(int i, boolean z) {
        android.app.Notification notification;
        int i2;
        if (z) {
            notification = this.x;
            i2 = i | notification.flags;
        } else {
            notification = this.x;
            i2 = (i ^ (-1)) & notification.flags;
        }
        notification.flags = i2;
    }

    public d.g.e.h f(android.graphics.Bitmap bitmap) throws android.content.res.Resources.NotFoundException {
        if (bitmap != null && android.os.Build.VERSION.SDK_INT < 27) {
            android.content.res.Resources resources = this.a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(d.g.b.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(d.g.b.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                double d2 = dimensionPixelSize;
                double dMax = java.lang.Math.max(1, bitmap.getWidth());
                java.lang.Double.isNaN(d2);
                java.lang.Double.isNaN(dMax);
                java.lang.Double.isNaN(d2);
                java.lang.Double.isNaN(dMax);
                double d3 = d2 / dMax;
                double d4 = dimensionPixelSize2;
                double dMax2 = java.lang.Math.max(1, bitmap.getHeight());
                java.lang.Double.isNaN(d4);
                java.lang.Double.isNaN(dMax2);
                java.lang.Double.isNaN(d4);
                java.lang.Double.isNaN(dMax2);
                double dMin = java.lang.Math.min(d3, d4 / dMax2);
                double width = bitmap.getWidth();
                java.lang.Double.isNaN(width);
                java.lang.Double.isNaN(width);
                int iCeil = (int) java.lang.Math.ceil(width * dMin);
                double height = bitmap.getHeight();
                java.lang.Double.isNaN(height);
                java.lang.Double.isNaN(height);
                bitmap = android.graphics.Bitmap.createScaledBitmap(bitmap, iCeil, (int) java.lang.Math.ceil(height * dMin), true);
            }
        }
        this.h = bitmap;
        return this;
    }

    public d.g.e.h g(d.g.e.i iVar) {
        if (this.k != iVar) {
            this.k = iVar;
            if (iVar != null && iVar.a != this) {
                iVar.a = this;
                g(iVar);
            }
        }
        return this;
    }
}
