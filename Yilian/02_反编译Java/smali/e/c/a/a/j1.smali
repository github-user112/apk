.class public final synthetic Le/c/a/a/j1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field public final synthetic b:Le/c/b/b/s$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaPeriodQueue;Le/c/b/b/s$a;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/a/a/j1;->a:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iput-object p2, p0, Le/c/a/a/j1;->b:Le/c/b/b/s$a;

    iput-object p3, p0, Le/c/a/a/j1;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/c/a/a/j1;->a:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Le/c/a/a/j1;->b:Le/c/b/b/s$a;

    iget-object v2, p0, Le/c/a/a/j1;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Le/c/b/b/s$a;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
