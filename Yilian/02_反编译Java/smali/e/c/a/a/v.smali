.class public final synthetic Le/c/a/a/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Le/c/b/a/k;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ExoPlayer$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/a/a/v;->a:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/c/a/a/v;->a:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->i()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    return-object v0
.end method
