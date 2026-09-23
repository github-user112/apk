package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public abstract class Rating implements com.google.android.exoplayer2.Bundleable {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.Rating> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.c
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.Rating.fromBundle(bundle);
        }
    };
    public static final int FIELD_RATING_TYPE = 0;
    public static final int RATING_TYPE_DEFAULT = -1;
    public static final int RATING_TYPE_HEART = 0;
    public static final int RATING_TYPE_PERCENTAGE = 1;
    public static final int RATING_TYPE_STAR = 2;
    public static final int RATING_TYPE_THUMB = 3;
    public static final float RATING_UNSET = -1.0f;

    public static com.google.android.exoplayer2.Rating fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.Bundleable.Creator creator;
        int i = bundle.getInt(keyForField(0), -1);
        if (i == 0) {
            creator = com.google.android.exoplayer2.HeartRating.CREATOR;
        } else if (i == 1) {
            creator = com.google.android.exoplayer2.PercentageRating.CREATOR;
        } else if (i == 2) {
            creator = com.google.android.exoplayer2.StarRating.CREATOR;
        } else {
            if (i != 3) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.F(44, "Encountered unknown rating type: ", i));
            }
            creator = com.google.android.exoplayer2.ThumbRating.CREATOR;
        }
        return (com.google.android.exoplayer2.Rating) creator.fromBundle(bundle);
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public abstract boolean isRated();
}
