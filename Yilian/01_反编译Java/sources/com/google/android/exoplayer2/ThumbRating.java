package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class ThumbRating extends com.google.android.exoplayer2.Rating {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.ThumbRating> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.g1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.ThumbRating.fromBundle(bundle);
        }
    };
    public static final int FIELD_IS_THUMBS_UP = 2;
    public static final int FIELD_RATED = 1;
    public static final int TYPE = 3;
    public final boolean isThumbsUp;
    public final boolean rated;

    public ThumbRating() {
        this.rated = false;
        this.isThumbsUp = false;
    }

    public ThumbRating(boolean z) {
        this.rated = true;
        this.isThumbsUp = z;
    }

    public static com.google.android.exoplayer2.ThumbRating fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(bundle.getInt(keyForField(0), -1) == 3);
        return bundle.getBoolean(keyForField(1), false) ? new com.google.android.exoplayer2.ThumbRating(bundle.getBoolean(keyForField(2), false)) : new com.google.android.exoplayer2.ThumbRating();
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.google.android.exoplayer2.ThumbRating)) {
            return false;
        }
        com.google.android.exoplayer2.ThumbRating thumbRating = (com.google.android.exoplayer2.ThumbRating) obj;
        return this.isThumbsUp == thumbRating.isThumbsUp && this.rated == thumbRating.rated;
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{java.lang.Boolean.valueOf(this.rated), java.lang.Boolean.valueOf(this.isThumbsUp)});
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.rated;
    }

    public boolean isThumbsUp() {
        return this.isThumbsUp;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), 3);
        bundle.putBoolean(keyForField(1), this.rated);
        bundle.putBoolean(keyForField(2), this.isThumbsUp);
        return bundle;
    }
}
