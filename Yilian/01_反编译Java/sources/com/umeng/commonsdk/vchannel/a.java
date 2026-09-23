package com.umeng.commonsdk.vchannel;

/* loaded from: classes.dex */
public class a {
    public static java.lang.String a = "https://pslog.umeng.com";
    public static java.lang.String b = "https://pslog.umeng.com/";

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.String f1613c = "explog";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1614d = "analytics";

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f1615e = "ekv";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1616f = "id";

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.String f1617g = "ts";
    public static final java.lang.String h = "ds";
    public static final java.lang.String i = "pn";
    public static java.lang.String j = "";

    static {
        java.lang.String str = "SUB" + java.lang.System.currentTimeMillis();
        java.lang.StringBuilder sbO = e.a.c.a.a.o(str);
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("%0");
        sbO2.append(32 - str.length());
        sbO2.append(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_DURATION);
        sbO.append(java.lang.String.format(sbO2.toString(), 0));
        j = sbO.toString();
    }
}
