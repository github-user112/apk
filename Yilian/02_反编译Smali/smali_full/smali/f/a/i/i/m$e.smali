.class public Lf/a/i/i/m$e;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/i/m;


# direct methods
.method public constructor <init>(Lf/a/i/i/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/m$e;->a:Lf/a/i/i/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "PageListHandler msg.what = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lf/a/i/i/m$e;->a:Lf/a/i/i/m;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInstallResult;

    .line 1
    iget-object v1, v1, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Lf/a/i/h/c;->i(Lnet/easyconn/ecsdk/ECTypes$ECPageInstallResult;)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object v1, p0, Lf/a/i/i/m$e;->a:Lf/a/i/i/m;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    const-string v3, "PAGE_LIST_ICON_RECEIVED"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lf/a/i/i/m$e;->a:Lf/a/i/i/m;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    const-string v3, "PAGE_LIST_RECEIVED"

    :goto_0
    invoke-static {v1, v3, v2}, Lf/a/i/i/m;->a(Lf/a/i/i/m;Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    :goto_1
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
