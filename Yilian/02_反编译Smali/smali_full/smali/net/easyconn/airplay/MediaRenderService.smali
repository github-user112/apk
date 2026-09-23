.class public Lnet/easyconn/airplay/MediaRenderService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/airplay/MediaRenderService$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;

.field public b:Lf/a/e/b;

.field public c:Lf/a/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lnet/easyconn/airplay/MediaRenderService;->a:Landroid/os/IBinder;

    if-nez p1, :cond_0

    new-instance p1, Lnet/easyconn/airplay/MediaRenderService$a;

    invoke-direct {p1, p0}, Lnet/easyconn/airplay/MediaRenderService$a;-><init>(Lnet/easyconn/airplay/MediaRenderService;)V

    iput-object p1, p0, Lnet/easyconn/airplay/MediaRenderService;->a:Landroid/os/IBinder;

    :cond_0
    iget-object p1, p0, Lnet/easyconn/airplay/MediaRenderService;->a:Landroid/os/IBinder;

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
