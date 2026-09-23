package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class WidevineUtil {
    public static final java.lang.String PROPERTY_LICENSE_DURATION_REMAINING = "LicenseDurationRemaining";
    public static final java.lang.String PROPERTY_PLAYBACK_DURATION_REMAINING = "PlaybackDurationRemaining";

    public static long getDurationRemainingSec(java.util.Map<java.lang.String, java.lang.String> map, java.lang.String str) {
        if (map == null) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        try {
            java.lang.String str2 = map.get(str);
            return str2 != null ? java.lang.Long.parseLong(str2) : com.google.android.exoplayer2.C.TIME_UNSET;
        } catch (java.lang.NumberFormatException unused) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
    }

    public static android.util.Pair<java.lang.Long, java.lang.Long> getLicenseDurationRemainingSec(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        java.util.Map<java.lang.String, java.lang.String> mapQueryKeyStatus = drmSession.queryKeyStatus();
        if (mapQueryKeyStatus == null) {
            return null;
        }
        return new android.util.Pair<>(java.lang.Long.valueOf(getDurationRemainingSec(mapQueryKeyStatus, PROPERTY_LICENSE_DURATION_REMAINING)), java.lang.Long.valueOf(getDurationRemainingSec(mapQueryKeyStatus, PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
