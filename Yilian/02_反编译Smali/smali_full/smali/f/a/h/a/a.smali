.class public final synthetic Lf/a/h/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;


# direct methods
.method public synthetic constructor <init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/h/a/a;->a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/a/h/a/a;->a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

    invoke-virtual {v0}, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->j()V

    return-void
.end method
