.class public final synthetic Lf/a/h/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public synthetic constructor <init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/h/a/b;->a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

    iput-object p2, p0, Lf/a/h/a/b;->b:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/h/a/b;->a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

    iget-object v1, p0, Lf/a/h/a/b;->b:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->l(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method
