.class public final synthetic La/a/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/d/a/c/b;


# instance fields
.field public final synthetic a:Lcom/baidu/carlifevehicle/CarlifeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/a;->a:Lcom/baidu/carlifevehicle/CarlifeActivity;

    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, La/a/b/a;->a:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 1
    sget-object v1, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const-string v1, "this$0"

    .line 2
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantedList"

    invoke-static {p2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deniedList"

    invoke-static {p3, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "\u6743\u9650\u672a\u6253\u5f00: "

    invoke-static {p1, p3}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
