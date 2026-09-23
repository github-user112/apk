.class public final Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;
.super Ljava/io/IOException;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Le/a/c/a/a;->m(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Unable to bind a sample queue to TrackGroup with mime type "

    const-string v2, "."

    invoke-static {v0, v1, p1, v2}, Le/a/c/a/a;->G(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
