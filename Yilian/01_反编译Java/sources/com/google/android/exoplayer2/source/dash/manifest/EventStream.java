package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public final class EventStream {
    public final com.google.android.exoplayer2.metadata.emsg.EventMessage[] events;
    public final long[] presentationTimesUs;
    public final java.lang.String schemeIdUri;
    public final long timescale;
    public final java.lang.String value;

    public EventStream(java.lang.String str, java.lang.String str2, long j, long[] jArr, com.google.android.exoplayer2.metadata.emsg.EventMessage[] eventMessageArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.timescale = j;
        this.presentationTimesUs = jArr;
        this.events = eventMessageArr;
    }

    public java.lang.String id() {
        java.lang.String str = this.schemeIdUri;
        java.lang.String str2 = this.value;
        return e.a.c.a.a.G(e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 1)), str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2);
    }
}
