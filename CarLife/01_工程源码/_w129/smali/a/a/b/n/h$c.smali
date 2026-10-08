.class public La/a/b/n/h$c;
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
.field public final synthetic b:La/a/b/n/h;


# direct methods
.method public constructor <init>(La/a/b/n/h;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/h$c;->b:La/a/b/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const-string v0, "keycode"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "JTGJZ_RZJQ"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iget-object p1, p0, La/a/b/n/h$c;->b:La/a/b/n/h;

    new-instance v1, La/a/b/s/c;

    .line 3
    sget-object v2, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 4
    invoke-direct {v1, v2}, La/a/b/s/c;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u624b\u52a8\u8f93\u5165\u65e5\u5fd7\u76d1\u542c\u5173\u952e\u5b57(\u540c\u65f6\u76d1\u542c\u591a\u4e2a\u9017\u53f7\u533a\u5206)"

    invoke-virtual {v1, v2}, La/a/b/s/c;->j(Ljava/lang/String;)La/a/b/s/c;

    .line 5
    iget-object v2, v1, La/a/b/s/c;->j:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v4, "\u5173\u952e\u5b57:"

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6
    invoke-virtual {v1, v0}, La/a/b/s/c;->h(Ljava/lang/String;)La/a/b/s/c;

    const-string v0, "\u4fdd\u5b58"

    invoke-virtual {v1, v0}, La/a/b/s/c;->f(Ljava/lang/String;)La/a/b/s/c;

    invoke-virtual {v1}, La/a/b/s/c;->g()La/a/b/s/c;

    new-instance v0, La/a/b/n/h$c$a;

    invoke-direct {v0, p0}, La/a/b/n/h$c$a;-><init>(La/a/b/n/h$c;)V

    .line 7
    iput-object v0, v1, La/a/b/s/a;->f:La/a/b/s/a$c;

    const-string v0, "\u91cd\u7f6e"

    .line 8
    invoke-virtual {v1, v0}, La/a/b/s/c;->i(Ljava/lang/String;)La/a/b/s/c;

    .line 9
    iput-object v1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 10
    iget-object p1, p0, La/a/b/n/h$c;->b:La/a/b/n/h;

    .line 11
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 12
    new-instance v0, La/a/b/n/h$c$b;

    invoke-direct {v0, p0}, La/a/b/n/h$c$b;-><init>(La/a/b/n/h$c;)V

    .line 13
    iput-object v0, p1, La/a/b/s/a;->g:La/a/b/s/a$c;

    .line 14
    new-instance v0, La/a/b/n/h$c$c;

    invoke-direct {v0, p0}, La/a/b/n/h$c$c;-><init>(La/a/b/n/h$c;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, La/a/b/n/h$c;->b:La/a/b/n/h;

    .line 15
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, La/a/b/n/h$c;->b:La/a/b/n/h;

    .line 17
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
