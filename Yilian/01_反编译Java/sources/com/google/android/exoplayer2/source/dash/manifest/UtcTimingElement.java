package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public final class UtcTimingElement {
    public final java.lang.String schemeIdUri;
    public final java.lang.String value;

    public UtcTimingElement(java.lang.String str, java.lang.String str2) {
        this.schemeIdUri = str;
        this.value = str2;
    }

    public java.lang.String toString() {
        java.lang.String str = this.schemeIdUri;
        java.lang.String str2 = this.value;
        return e.a.c.a.a.G(e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 2)), str, ", ", str2);
    }
}
