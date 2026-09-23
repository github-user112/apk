package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class PercentageRating extends com.google.android.exoplayer2.Rating {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.PercentageRating> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.x1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.PercentageRating.fromBundle(bundle);
        }
    };
    public static final int FIELD_PERCENT = 1;
    public static final int TYPE = 1;
    public final float percent;

    public PercentageRating() {
        this.percent = -1.0f;
    }

    public PercentageRating(float f2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(f2 >= 0.0f && f2 <= 100.0f, "percent must be in the range of [0, 100]");
        this.percent = f2;
    }

    public static com.google.android.exoplayer2.PercentageRating fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(bundle.getInt(keyForField(0), -1) == 1);
        float f2 = bundle.getFloat(keyForField(1), -1.0f);
        return f2 == -1.0f ? new com.google.android.exoplayer2.PercentageRating() : new com.google.android.exoplayer2.PercentageRating(f2);
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.google.android.exoplayer2.PercentageRating) && this.percent == ((com.google.android.exoplayer2.PercentageRating) obj).percent;
    }

    public float getPercent() {
        return this.percent;
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{java.lang.Float.valueOf(this.percent)});
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.percent != -1.0f;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), 1);
        bundle.putFloat(keyForField(1), this.percent);
        return bundle;
    }
}
