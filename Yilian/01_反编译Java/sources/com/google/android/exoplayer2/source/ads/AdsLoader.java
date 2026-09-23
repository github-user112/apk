package com.google.android.exoplayer2.source.ads;

/* loaded from: classes.dex */
public interface AdsLoader {

    public interface EventListener {
        void onAdClicked();

        void onAdLoadError(com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException adLoadException, com.google.android.exoplayer2.upstream.DataSpec dataSpec);

        void onAdPlaybackState(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState);

        void onAdTapped();
    }

    void handlePrepareComplete(com.google.android.exoplayer2.source.ads.AdsMediaSource adsMediaSource, int i, int i2);

    void handlePrepareError(com.google.android.exoplayer2.source.ads.AdsMediaSource adsMediaSource, int i, int i2, java.io.IOException iOException);

    void release();

    void setPlayer(com.google.android.exoplayer2.Player player);

    void setSupportedContentTypes(int... iArr);

    void start(com.google.android.exoplayer2.source.ads.AdsMediaSource adsMediaSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, java.lang.Object obj, com.google.android.exoplayer2.ui.AdViewProvider adViewProvider, com.google.android.exoplayer2.source.ads.AdsLoader.EventListener eventListener);

    void stop(com.google.android.exoplayer2.source.ads.AdsMediaSource adsMediaSource, com.google.android.exoplayer2.source.ads.AdsLoader.EventListener eventListener);
}
