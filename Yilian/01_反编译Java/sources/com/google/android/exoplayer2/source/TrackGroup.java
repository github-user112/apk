package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class TrackGroup implements com.google.android.exoplayer2.Bundleable {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.source.TrackGroup> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.n2.w
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.source.TrackGroup.a(bundle);
        }
    };
    public static final int FIELD_FORMATS = 0;
    public static final java.lang.String TAG = "TrackGroup";
    public final com.google.android.exoplayer2.Format[] formats;
    public int hashCode;
    public final int length;

    public TrackGroup(com.google.android.exoplayer2.Format... formatArr) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(formatArr.length > 0);
        this.formats = formatArr;
        this.length = formatArr.length;
        verifyCorrectness();
    }

    public static /* synthetic */ com.google.android.exoplayer2.source.TrackGroup a(android.os.Bundle bundle) {
        return new com.google.android.exoplayer2.source.TrackGroup((com.google.android.exoplayer2.Format[]) com.google.android.exoplayer2.util.BundleableUtil.fromBundleNullableList(com.google.android.exoplayer2.Format.CREATOR, bundle.getParcelableArrayList(keyForField(0)), e.c.b.b.s.p()).toArray(new com.google.android.exoplayer2.Format[0]));
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public static void logErrorMessage(java.lang.String str, java.lang.String str2, java.lang.String str3, int i) {
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 78))), "Different ", str, " combined in one TrackGroup: '", str2);
        sbL.append("' (track 0) and '");
        sbL.append(str3);
        sbL.append("' (track ");
        sbL.append(i);
        sbL.append(")");
        com.google.android.exoplayer2.util.Log.e(TAG, "", new java.lang.IllegalStateException(sbL.toString()));
    }

    public static java.lang.String normalizeLanguage(java.lang.String str) {
        return (str == null || str.equals(com.google.android.exoplayer2.C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    public static int normalizeRoleFlags(int i) {
        return i | 16384;
    }

    private void verifyCorrectness() {
        java.lang.String strNormalizeLanguage = normalizeLanguage(this.formats[0].language);
        int iNormalizeRoleFlags = normalizeRoleFlags(this.formats[0].roleFlags);
        int i = 1;
        while (true) {
            com.google.android.exoplayer2.Format[] formatArr = this.formats;
            if (i >= formatArr.length) {
                return;
            }
            if (!strNormalizeLanguage.equals(normalizeLanguage(formatArr[i].language))) {
                com.google.android.exoplayer2.Format[] formatArr2 = this.formats;
                logErrorMessage("languages", formatArr2[0].language, formatArr2[i].language, i);
                return;
            } else {
                if (iNormalizeRoleFlags != normalizeRoleFlags(this.formats[i].roleFlags)) {
                    logErrorMessage("role flags", java.lang.Integer.toBinaryString(this.formats[0].roleFlags), java.lang.Integer.toBinaryString(this.formats[i].roleFlags), i);
                    return;
                }
                i++;
            }
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.source.TrackGroup.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.source.TrackGroup trackGroup = (com.google.android.exoplayer2.source.TrackGroup) obj;
        return this.length == trackGroup.length && java.util.Arrays.equals(this.formats, trackGroup.formats);
    }

    public com.google.android.exoplayer2.Format getFormat(int i) {
        return this.formats[i];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = 527 + java.util.Arrays.hashCode(this.formats);
        }
        return this.hashCode;
    }

    public int indexOf(com.google.android.exoplayer2.Format format) {
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.Format[] formatArr = this.formats;
            if (i >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i]) {
                return i;
            }
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelableArrayList(keyForField(0), com.google.android.exoplayer2.util.BundleableUtil.toBundleArrayList(e.c.b.b.j.d(this.formats)));
        return bundle;
    }
}
