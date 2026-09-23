package e.d.a.a.b;

/* loaded from: classes.dex */
public class d implements e.d.a.a.b.b {
    public final android.content.Context a;
    public final java.lang.String b;

    public d(android.content.Context context, java.lang.String str) {
        this.a = context;
        this.b = str;
    }

    @Override // e.d.a.a.b.b
    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        java.lang.String str3;
        int identifier;
        try {
            str3 = "agc_" + e.d.a.a.b.c.a(java.security.MessageDigest.getInstance("SHA-256").digest(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME)));
        } catch (java.io.UnsupportedEncodingException | java.security.NoSuchAlgorithmException unused) {
            str3 = "";
        }
        if (android.text.TextUtils.isEmpty(str3) || (identifier = this.a.getResources().getIdentifier(str3, "string", this.b)) == 0) {
            return str2;
        }
        try {
            return this.a.getResources().getString(identifier);
        } catch (android.content.res.Resources.NotFoundException unused2) {
            return str2;
        }
    }
}
