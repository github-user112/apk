.class public final synthetic Lf/a/h/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/h/a/d;->a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

    iput p2, p0, Lf/a/h/a/d;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/h/a/d;->a:Lnet/easyconn/dlna/ecsdk/EcExoPlayer;

    iget v1, p0, Lf/a/h/a/d;->b:F

    invoke-virtual {v0, v1}, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->o(F)V

    return-void
.end method
