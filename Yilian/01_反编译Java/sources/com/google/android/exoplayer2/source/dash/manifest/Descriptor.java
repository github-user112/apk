package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public final class Descriptor {
    public final java.lang.String id;
    public final java.lang.String schemeIdUri;
    public final java.lang.String value;

    public Descriptor(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.schemeIdUri = str;
        this.value = str2;
        this.id = str3;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.source.dash.manifest.Descriptor.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = (com.google.android.exoplayer2.source.dash.manifest.Descriptor) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.schemeIdUri, descriptor.schemeIdUri) && com.google.android.exoplayer2.util.Util.areEqual(this.value, descriptor.value) && com.google.android.exoplayer2.util.Util.areEqual(this.id, descriptor.id);
    }

    public int hashCode() {
        int iHashCode = this.schemeIdUri.hashCode() * 31;
        java.lang.String str = this.value;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        java.lang.String str2 = this.id;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
