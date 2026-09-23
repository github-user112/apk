.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

.field public final streamIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->mediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    iput p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->streamIndex:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->mediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->streamIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->mediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->streamIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 6

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->mediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->streamIndex:I

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->readData(Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->mediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SampleStreamImpl;->streamIndex:I

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$SharedMediaPeriod;->skipData(Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$MediaPeriodImpl;IJ)I

    move-result p1

    return p1
.end method
