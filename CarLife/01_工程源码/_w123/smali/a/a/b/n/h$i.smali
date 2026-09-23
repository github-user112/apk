.class public La/a/b/n/h$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/h;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Landroid/widget/Spinner;

.field public final synthetic d:La/a/b/n/h;


# direct methods
.method public constructor <init>(La/a/b/n/h;[Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/h$i;->d:La/a/b/n/h;

    iput-object p2, p0, La/a/b/n/h$i;->b:[Ljava/lang/String;

    iput-object p3, p0, La/a/b/n/h$i;->c:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, La/a/b/n/h$i;->b:[Ljava/lang/String;

    iget-object v0, p0, La/a/b/n/h$i;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v1, v0

    aget-object p1, p1, v1

    const-string v0, "\u952e\u503c:"

    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, La/a/a/a/l/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/b/n/h$i;->d:La/a/b/n/h;

    new-instance v2, La/a/b/s/b;

    .line 1
    sget-object v3, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 2
    invoke-direct {v2, v3}, La/a/b/s/b;-><init>(Landroid/app/Activity;)V

    const-string v3, "\u6309\u952e\u6620\u5c04(\u6309\u4e0b\u65b9\u63a7\u6309\u952e\u8bbe\u7f6e\u952e\u503c)"

    invoke-virtual {v2, v3}, La/a/b/s/b;->k(Ljava/lang/String;)La/a/b/s/b;

    invoke-virtual {v2, v0}, La/a/b/s/b;->i(Ljava/lang/String;)La/a/b/s/b;

    const-string v0, "\u4fdd\u5b58"

    invoke-virtual {v2, v0}, La/a/b/s/b;->g(Ljava/lang/String;)La/a/b/s/b;

    invoke-virtual {v2}, La/a/b/s/b;->h()La/a/b/s/b;

    new-instance v0, La/a/b/n/h$i$a;

    invoke-direct {v0, p0, p1}, La/a/b/n/h$i$a;-><init>(La/a/b/n/h$i;Ljava/lang/String;)V

    .line 3
    iput-object v0, v2, La/a/b/s/a;->f:La/a/b/s/a$c;

    const-string v0, "\u91cd\u7f6e"

    .line 4
    invoke-virtual {v2, v0}, La/a/b/s/b;->j(Ljava/lang/String;)La/a/b/s/b;

    .line 5
    iput-object v2, v1, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 6
    iget-object v0, p0, La/a/b/n/h$i;->d:La/a/b/n/h;

    .line 7
    iget-object v0, v0, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 8
    new-instance v1, La/a/b/n/h$i$b;

    invoke-direct {v1, p0, p1}, La/a/b/n/h$i$b;-><init>(La/a/b/n/h$i;Ljava/lang/String;)V

    .line 9
    iput-object v1, v0, La/a/b/s/a;->g:La/a/b/s/a$c;

    .line 10
    new-instance p1, La/a/b/n/h$i$c;

    invoke-direct {p1, p0}, La/a/b/n/h$i$c;-><init>(La/a/b/n/h$i;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, La/a/b/n/h$i;->d:La/a/b/n/h;

    .line 11
    iget-object p1, p1, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 12
    new-instance v0, La/a/b/n/h$i$d;

    invoke-direct {v0, p0}, La/a/b/n/h$i$d;-><init>(La/a/b/n/h$i;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, p0, La/a/b/n/h$i;->d:La/a/b/n/h;

    .line 13
    iget-object p1, p1, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, La/a/b/n/h$i;->d:La/a/b/n/h;

    .line 15
    iget-object p1, p1, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
