package e.a.c.a;

/* compiled from: outline */
/* loaded from: classes.dex */
public class a {
    public static void A(java.lang.StringBuilder sb, int i) {
        sb.append(i);
        e.e.a.g.a(sb.toString());
    }

    public static void B(java.lang.StringBuilder sb, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static void C(java.lang.StringBuilder sb, boolean z) {
        sb.append(z);
        e.e.a.g.a(sb.toString());
    }

    public static boolean D(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        e.e.a.g.a(str + str2);
        return android.text.TextUtils.isEmpty(str3);
    }

    public static boolean E(java.util.Properties properties, java.lang.String str, java.lang.String str2) {
        return java.lang.Boolean.valueOf(properties.getProperty(str, str2)).booleanValue();
    }

    public static java.lang.String F(int i, java.lang.String str, int i2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        return sb.toString();
    }

    public static java.lang.String G(int i, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static java.lang.String H(androidx.recyclerview.widget.RecyclerView recyclerView, java.lang.StringBuilder sb) {
        sb.append(recyclerView.r());
        return sb.toString();
    }

    public static java.lang.String I(java.lang.Exception exc, java.lang.StringBuilder sb) {
        sb.append(exc.getMessage());
        return sb.toString();
    }

    public static java.lang.String J(java.lang.Exception exc, java.lang.StringBuilder sb) {
        sb.append(exc.toString());
        return sb.toString();
    }

    public static java.lang.String K(java.lang.String str, int i) {
        return str + i;
    }

    public static char a(int i, int i2, int i3, com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase) {
        return jSONLexerBase.charAt(i + i2 + i3);
    }

    public static char b(int i, int i2, int i3, com.alibaba.fastjson.parser.JSONScanner jSONScanner) {
        return jSONScanner.charAt(i + i2 + i3);
    }

    public static java.lang.String c(java.lang.String str, androidx.fragment.app.Fragment fragment, java.lang.String str2) {
        return str + fragment + str2;
    }

    public static java.lang.String d(java.lang.String str, java.lang.Object obj) {
        return str + obj;
    }

    public static java.lang.String e(java.lang.String str, java.lang.String str2) {
        return str + str2;
    }

    public static java.lang.String f(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return str + str2 + str3;
    }

    public static java.lang.String g(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        return str + str2 + str3 + str4;
    }

    public static java.lang.String h(java.lang.String str, java.lang.StringBuilder sb) {
        sb.append(com.umeng.commonsdk.debug.UMLogUtils.makeUrl(str));
        return sb.toString();
    }

    public static java.lang.String i(java.lang.StringBuilder sb, int i, java.lang.String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static java.lang.String j(java.lang.StringBuilder sb, java.lang.String str, java.lang.String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static java.lang.String k(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.StringBuilder sb, java.lang.String str) {
        sb.append(xmlPullParser.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    public static java.lang.StringBuilder l(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb;
    }

    public static int m(java.lang.String str, int i) {
        return java.lang.String.valueOf(str).length() + i;
    }

    public static java.lang.StringBuilder n(int i, java.lang.StringBuilder sb, e.a.b.f.c cVar, int i2, java.lang.String str) {
        sb.append(d.s.y.g0(i));
        cVar.b(i2, sb.toString());
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        sb2.append(str);
        return sb2;
    }

    public static java.lang.StringBuilder o(java.lang.String str) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        return sb;
    }

    public static java.lang.StringBuilder p(java.lang.String str, int i, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static java.lang.StringBuilder q(java.lang.String str, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static java.lang.StringBuilder r(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static java.lang.StringBuilder s(java.lang.StringBuilder sb, java.lang.String str, java.lang.StringBuilder sb2, java.lang.String str2) {
        sb.append(str);
        sb2.append(sb.toString());
        java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
        sb3.append(str2);
        return sb3;
    }

    public static void t(int i, java.lang.String str, int i2, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        com.google.android.exoplayer2.util.Log.w(str2, sb.toString());
    }

    public static void u(int i, java.lang.StringBuilder sb, e.a.b.f.c cVar, int i2) {
        sb.append(d.s.y.g0(i));
        cVar.b(i2, sb.toString());
    }

    public static void v(java.lang.String str, int i) {
        e.e.a.g.a(str + i);
    }

    public static void w(java.lang.String str, java.lang.String str2) {
        e.e.a.g.a(str + str2);
    }

    public static com.tencent.bugly.proguard.C0252k.a x(com.tencent.bugly.proguard.C0252k c0252k) {
        com.tencent.bugly.proguard.C0252k.a aVar = new com.tencent.bugly.proguard.C0252k.a();
        c0252k.a(aVar);
        return aVar;
    }

    public static void y(java.lang.String str, java.lang.Throwable th, java.lang.String str2) {
        android.util.Log.e(str2, str + th);
    }

    public static void z(java.lang.String str, boolean z) {
        e.e.a.g.a(str + z);
    }
}
