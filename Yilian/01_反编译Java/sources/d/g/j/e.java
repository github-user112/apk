package d.g.j;

/* loaded from: classes.dex */
public final class e {
    public final java.lang.String a;
    public final java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f1967c;

    /* renamed from: d, reason: collision with root package name */
    public final java.util.List<java.util.List<byte[]>> f1968d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1969e;

    /* renamed from: f, reason: collision with root package name */
    public final java.lang.String f1970f;

    public e(java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.List<java.util.List<byte[]>> list) {
        this.a = str;
        this.b = str2;
        this.f1967c = str3;
        if (list == null) {
            throw null;
        }
        this.f1968d = list;
        this.f1969e = 0;
        this.f1970f = str + "-" + str2 + "-" + str3;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("FontRequest {mProviderAuthority: ");
        sbO.append(this.a);
        sbO.append(", mProviderPackage: ");
        sbO.append(this.b);
        sbO.append(", mQuery: ");
        sbO.append(this.f1967c);
        sbO.append(", mCertificates:");
        sb.append(sbO.toString());
        for (int i = 0; i < this.f1968d.size(); i++) {
            sb.append(" [");
            java.util.List<byte[]> list = this.f1968d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(android.util.Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        sb.append("mCertificatesArray: " + this.f1969e);
        return sb.toString();
    }
}
