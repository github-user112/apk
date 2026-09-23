package com.google.android.exoplayer2.source.ads;

/* loaded from: classes.dex */
public final class ServerSideInsertedAdsUtil {
    public static com.google.android.exoplayer2.source.ads.AdPlaybackState addAdGroupToAdPlaybackState(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState, long j, long j2, long j3) {
        long mediaPeriodPositionUsForContent = getMediaPeriodPositionUsForContent(j, -1, adPlaybackState);
        int i = adPlaybackState.removedAdGroupCount;
        while (i < adPlaybackState.adGroupCount && adPlaybackState.getAdGroup(i).timeUs != Long.MIN_VALUE && adPlaybackState.getAdGroup(i).timeUs <= mediaPeriodPositionUsForContent) {
            i++;
        }
        long j4 = j2 - j;
        com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackStateWithContentResumeOffsetUs = adPlaybackState.withNewAdGroup(i, mediaPeriodPositionUsForContent).withIsServerSideInserted(i, true).withAdCount(i, 1).withAdDurationsUs(i, j4).withContentResumeOffsetUs(i, j3);
        long j5 = (-j4) + j3;
        for (int i2 = i + 1; i2 < adPlaybackStateWithContentResumeOffsetUs.adGroupCount; i2++) {
            long j6 = adPlaybackStateWithContentResumeOffsetUs.getAdGroup(i2).timeUs;
            if (j6 != Long.MIN_VALUE) {
                adPlaybackStateWithContentResumeOffsetUs = adPlaybackStateWithContentResumeOffsetUs.withAdGroupTimeUs(i2, j6 + j5);
            }
        }
        return adPlaybackStateWithContentResumeOffsetUs;
    }

    public static int getAdCountInGroup(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState, int i) {
        int i2 = adPlaybackState.getAdGroup(i).count;
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    public static long getMediaPeriodPositionUs(long j, com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        return mediaPeriodId.isAd() ? getMediaPeriodPositionUsForAd(j, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState) : getMediaPeriodPositionUsForContent(j, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long getMediaPeriodPositionUsForAd(long j, int i, int i2, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        int i3;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        long j2 = j - adGroup.timeUs;
        int i4 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i3 = 0;
            if (i4 >= i) {
                break;
            }
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(i4);
            while (i3 < getAdCountInGroup(adPlaybackState, i4)) {
                j2 -= adGroup2.durationsUs[i3];
                i3++;
            }
            j2 += adGroup2.contentResumeOffsetUs;
            i4++;
        }
        if (i2 < getAdCountInGroup(adPlaybackState, i)) {
            while (i3 < i2) {
                j2 -= adGroup.durationsUs[i3];
                i3++;
            }
        }
        return j2;
    }

    public static long getMediaPeriodPositionUsForContent(long j, int i, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        if (i == -1) {
            i = adPlaybackState.adGroupCount;
        }
        long j2 = 0;
        for (int i2 = adPlaybackState.removedAdGroupCount; i2 < i; i2++) {
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
            long j3 = adGroup.timeUs;
            if (j3 == Long.MIN_VALUE || j3 > j - j2) {
                break;
            }
            for (int i3 = 0; i3 < getAdCountInGroup(adPlaybackState, i2); i3++) {
                j2 += adGroup.durationsUs[i3];
            }
            long j4 = adGroup.contentResumeOffsetUs;
            j2 -= j4;
            long j5 = adGroup.timeUs;
            long j6 = j - j2;
            if (j4 + j5 > j6) {
                return java.lang.Math.max(j5, j6);
            }
        }
        return j - j2;
    }

    public static long getStreamDurationUs(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        com.google.android.exoplayer2.Timeline currentTimeline = player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        long j = currentTimeline.getPeriod(player.getCurrentPeriodIndex(), new com.google.android.exoplayer2.Timeline.Period()).durationUs;
        return j == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.C.TIME_UNSET : getStreamPositionUsForContent(j, -1, adPlaybackState);
    }

    public static long getStreamPositionUs(long j, com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        return mediaPeriodId.isAd() ? getStreamPositionUsForAd(j, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState) : getStreamPositionUsForContent(j, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long getStreamPositionUs(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        com.google.android.exoplayer2.Timeline currentTimeline = player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        com.google.android.exoplayer2.Timeline.Period period = currentTimeline.getPeriod(player.getCurrentPeriodIndex(), new com.google.android.exoplayer2.Timeline.Period());
        if (!com.google.android.exoplayer2.util.Util.areEqual(period.getAdsId(), adPlaybackState.adsId)) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        if (!player.isPlayingAd()) {
            return getStreamPositionUsForContent(com.google.android.exoplayer2.util.Util.msToUs(player.getCurrentPosition()) - period.getPositionInWindowUs(), -1, adPlaybackState);
        }
        return getStreamPositionUsForAd(com.google.android.exoplayer2.util.Util.msToUs(player.getCurrentPosition()), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), adPlaybackState);
    }

    public static long getStreamPositionUsForAd(long j, int i, int i2, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        int i3;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        long j2 = j + adGroup.timeUs;
        int i4 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i3 = 0;
            if (i4 >= i) {
                break;
            }
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(i4);
            while (i3 < getAdCountInGroup(adPlaybackState, i4)) {
                j2 += adGroup2.durationsUs[i3];
                i3++;
            }
            j2 -= adGroup2.contentResumeOffsetUs;
            i4++;
        }
        if (i2 < getAdCountInGroup(adPlaybackState, i)) {
            while (i3 < i2) {
                j2 += adGroup.durationsUs[i3];
                i3++;
            }
        }
        return j2;
    }

    public static long getStreamPositionUsForContent(long j, int i, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        if (i == -1) {
            i = adPlaybackState.adGroupCount;
        }
        long j2 = 0;
        for (int i2 = adPlaybackState.removedAdGroupCount; i2 < i; i2++) {
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
            long j3 = adGroup.timeUs;
            if (j3 == Long.MIN_VALUE || j3 > j) {
                break;
            }
            long j4 = j3 + j2;
            for (int i3 = 0; i3 < getAdCountInGroup(adPlaybackState, i2); i3++) {
                j2 += adGroup.durationsUs[i3];
            }
            long j5 = adGroup.contentResumeOffsetUs;
            j2 -= j5;
            if (adGroup.timeUs + j5 > j) {
                return java.lang.Math.max(j4, j + j2);
            }
        }
        return j + j2;
    }
}
