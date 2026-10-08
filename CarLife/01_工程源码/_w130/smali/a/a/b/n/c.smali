.class public final synthetic La/a/b/n/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/d/a/c/b;


# instance fields
.field public final synthetic a:La/a/b/n/m;


# direct methods
.method public synthetic constructor <init>(La/a/b/n/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/n/c;->a:La/a/b/n/m;

    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, La/a/b/n/c;->a:La/a/b/n/m;

    .line 1
    sget-object v1, La/a/b/n/m;->Z:La/a/b/n/m;

    const-string v1, "this$0"

    .line 2
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "grantedList"

    invoke-static {p2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deniedList"

    invoke-static {p3, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lb/h/b/m;->q0()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6743\u9650\u672a\u6253\u5f00: "

    invoke-static {p2, p3}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x9

    invoke-interface {p1, p2}, La/a/a/a/m/c;->i(I)V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object p1

    const-string p3, "CarlifeConnectType"

    invoke-virtual {p1, p3, p2}, La/a/b/r/d;->d(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
