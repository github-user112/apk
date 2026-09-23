package e.c.a.a.r2;

/* loaded from: classes.dex */
public final /* synthetic */ class i {
    public static /* synthetic */ boolean a(java.lang.String str) {
        if (str == null) {
            return false;
        }
        java.lang.String strB0 = d.s.y.b0(str);
        if (android.text.TextUtils.isEmpty(strB0)) {
            return false;
        }
        return ((strB0.contains("text") && !strB0.contains(com.google.android.exoplayer2.util.MimeTypes.TEXT_VTT)) || strB0.contains("html") || strB0.contains("xml")) ? false : true;
    }
}
