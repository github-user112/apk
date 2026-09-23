package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class HeartRating extends com.google.android.exoplayer2.Rating {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.HeartRating> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.e1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.HeartRating.fromBundle(bundle);
        }
    };
    public static final int FIELD_IS_HEART = 2;
    public static final int FIELD_RATED = 1;
    public static final int TYPE = 0;
    public final boolean isHeart;
    public final boolean rated;

    public HeartRating() {
        this.rated = false;
        this.isHeart = false;
    }

    public HeartRating(boolean z) {
        this.rated = true;
        this.isHeart = z;
    }

    public static com.google.android.exoplayer2.HeartRating fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(bundle.getInt(keyForField(0), -1) == 0);
        return bundle.getBoolean(keyForField(1), false) ? new com.google.android.exoplayer2.HeartRating(bundle.getBoolean(keyForField(2), false)) : new com.google.android.exoplayer2.HeartRating();
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.google.android.exoplayer2.HeartRating)) {
            return false;
        }
        com.google.android.exoplayer2.HeartRating heartRating = (com.google.android.exoplayer2.HeartRating) obj;
        return this.isHeart == heartRating.isHeart && this.rated == heartRating.rated;
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{java.lang.Boolean.valueOf(this.rated), java.lang.Boolean.valueOf(this.isHeart)});
    }

    public boolean isHeart() {
        return this.isHeart;
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.rated;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), 0);
        bundle.putBoolean(keyForField(1), this.rated);
        bundle.putBoolean(keyForField(2), this.isHeart);
        return bundle;
    }
}
