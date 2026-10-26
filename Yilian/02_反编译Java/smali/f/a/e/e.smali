.class public Lf/a/e/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/e/b$a;


# instance fields
.field public final synthetic a:Lnet/easyconn/airplay/MediaRenderService$a;


# direct methods
.method public constructor <init>(Lnet/easyconn/airplay/MediaRenderService$a;)V
    .locals 0

    iput-object p1, p0, Lf/a/e/e;->a:Lnet/easyconn/airplay/MediaRenderService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "airplay state change! "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lf/a/e/e;->a:Lnet/easyconn/airplay/MediaRenderService$a;

    iget-object v0, v0, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    const/4 v2, 0x0

    iput-object v2, v0, Lnet/easyconn/airplay/MediaRenderService;->b:Lf/a/e/b;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.carbit.airplay_ctr"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lf/a/e/e;->a:Lnet/easyconn/airplay/MediaRenderService$a;

    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
