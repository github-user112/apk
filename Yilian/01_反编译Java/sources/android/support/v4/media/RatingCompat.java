package android.support.v4.media;

/* loaded from: classes.dex */
public final class RatingCompat implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<android.support.v4.media.RatingCompat> CREATOR = new android.os.Parcelable.Creator<android.support.v4.media.RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public android.support.v4.media.RatingCompat createFromParcel(android.os.Parcel parcel) {
            return new android.support.v4.media.RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public android.support.v4.media.RatingCompat[] newArray(int i) {
            return new android.support.v4.media.RatingCompat[i];
        }
    };
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    public static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    public static final java.lang.String TAG = "Rating";
    public java.lang.Object mRatingObj;
    public final int mRatingStyle;
    public final float mRatingValue;

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface StarStyle {
    }

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Style {
    }

    public RatingCompat(int i, float f2) {
        this.mRatingStyle = i;
        this.mRatingValue = f2;
    }

    public static android.support.v4.media.RatingCompat fromRating(java.lang.Object obj) {
        android.support.v4.media.RatingCompat ratingCompatNewUnratedRating = null;
        if (obj != null && android.os.Build.VERSION.SDK_INT >= 19) {
            android.media.Rating rating = (android.media.Rating) obj;
            int ratingStyle = rating.getRatingStyle();
            if (rating.isRated()) {
                switch (ratingStyle) {
                    case 1:
                        ratingCompatNewUnratedRating = newHeartRating(rating.hasHeart());
                        break;
                    case 2:
                        ratingCompatNewUnratedRating = newThumbRating(rating.isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatNewUnratedRating = newStarRating(ratingStyle, rating.getStarRating());
                        break;
                    case 6:
                        ratingCompatNewUnratedRating = newPercentageRating(rating.getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatNewUnratedRating = newUnratedRating(ratingStyle);
            }
            ratingCompatNewUnratedRating.mRatingObj = obj;
        }
        return ratingCompatNewUnratedRating;
    }

    public static android.support.v4.media.RatingCompat newHeartRating(boolean z) {
        return new android.support.v4.media.RatingCompat(1, z ? 1.0f : 0.0f);
    }

    public static android.support.v4.media.RatingCompat newPercentageRating(float f2) {
        if (f2 >= 0.0f && f2 <= 100.0f) {
            return new android.support.v4.media.RatingCompat(6, f2);
        }
        android.util.Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public static android.support.v4.media.RatingCompat newStarRating(int i, float f2) {
        float f3;
        java.lang.String str;
        if (i == 3) {
            f3 = 3.0f;
        } else if (i == 4) {
            f3 = 4.0f;
        } else {
            if (i != 5) {
                str = "Invalid rating style (" + i + ") for a star rating";
                android.util.Log.e(TAG, str);
                return null;
            }
            f3 = 5.0f;
        }
        if (f2 >= 0.0f && f2 <= f3) {
            return new android.support.v4.media.RatingCompat(i, f2);
        }
        str = "Trying to set out of range star-based rating";
        android.util.Log.e(TAG, str);
        return null;
    }

    public static android.support.v4.media.RatingCompat newThumbRating(boolean z) {
        return new android.support.v4.media.RatingCompat(2, z ? 1.0f : 0.0f);
    }

    public static android.support.v4.media.RatingCompat newUnratedRating(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new android.support.v4.media.RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mRatingStyle;
    }

    public float getPercentRating() {
        if (this.mRatingStyle == 6 && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public java.lang.Object getRating() {
        android.media.Rating ratingNewUnratedRating;
        if (this.mRatingObj == null && android.os.Build.VERSION.SDK_INT >= 19) {
            if (isRated()) {
                int i = this.mRatingStyle;
                switch (i) {
                    case 1:
                        ratingNewUnratedRating = android.media.Rating.newHeartRating(hasHeart());
                        break;
                    case 2:
                        ratingNewUnratedRating = android.media.Rating.newThumbRating(isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingNewUnratedRating = android.media.Rating.newStarRating(i, getStarRating());
                        break;
                    case 6:
                        ratingNewUnratedRating = android.media.Rating.newPercentageRating(getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                ratingNewUnratedRating = android.media.Rating.newUnratedRating(this.mRatingStyle);
            }
            this.mRatingObj = ratingNewUnratedRating;
        }
        return this.mRatingObj;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public float getStarRating() {
        int i = this.mRatingStyle;
        if ((i == 3 || i == 4 || i == 5) && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public boolean hasHeart() {
        return this.mRatingStyle == 1 && this.mRatingValue == 1.0f;
    }

    public boolean isRated() {
        return this.mRatingValue >= 0.0f;
    }

    public boolean isThumbUp() {
        return this.mRatingStyle == 2 && this.mRatingValue == 1.0f;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Rating:style=");
        sbO.append(this.mRatingStyle);
        sbO.append(" rating=");
        float f2 = this.mRatingValue;
        sbO.append(f2 < 0.0f ? "unrated" : java.lang.String.valueOf(f2));
        return sbO.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }
}
