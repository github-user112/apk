package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class StarRating extends com.google.android.exoplayer2.Rating {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.StarRating> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.l1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.StarRating.fromBundle(bundle);
        }
    };
    public static final int FIELD_MAX_STARS = 1;
    public static final int FIELD_STAR_RATING = 2;
    public static final int MAX_STARS_DEFAULT = 5;
    public static final int TYPE = 2;
    public final int maxStars;
    public final float starRating;

    public StarRating(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0, "maxStars must be a positive integer");
        this.maxStars = i;
        this.starRating = -1.0f;
    }

    public StarRating(int i, float f2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0, "maxStars must be a positive integer");
        com.google.android.exoplayer2.util.Assertions.checkArgument(f2 >= 0.0f && f2 <= ((float) i), "starRating is out of range [0, maxStars]");
        this.maxStars = i;
        this.starRating = f2;
    }

    public static com.google.android.exoplayer2.StarRating fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(bundle.getInt(keyForField(0), -1) == 2);
        int i = bundle.getInt(keyForField(1), 5);
        float f2 = bundle.getFloat(keyForField(2), -1.0f);
        return f2 == -1.0f ? new com.google.android.exoplayer2.StarRating(i) : new com.google.android.exoplayer2.StarRating(i, f2);
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.google.android.exoplayer2.StarRating)) {
            return false;
        }
        com.google.android.exoplayer2.StarRating starRating = (com.google.android.exoplayer2.StarRating) obj;
        return this.maxStars == starRating.maxStars && this.starRating == starRating.starRating;
    }

    public int getMaxStars() {
        return this.maxStars;
    }

    public float getStarRating() {
        return this.starRating;
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{java.lang.Integer.valueOf(this.maxStars), java.lang.Float.valueOf(this.starRating)});
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.starRating != -1.0f;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), 2);
        bundle.putInt(keyForField(1), this.maxStars);
        bundle.putFloat(keyForField(2), this.starRating);
        return bundle;
    }
}
