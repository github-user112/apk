.class public La/a/b/n/h$d;
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

    iput-object p1, p0, La/a/b/n/h$d;->b:La/a/b/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    sget v0, La/a/a/a/l/b;->p:I

    .line 1
    iget-object p1, p1, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "LOGCAT_TIMEJG"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, La/a/b/n/h$d;->b:La/a/b/n/h;

    new-instance v1, La/a/b/s/c;

    .line 3
    sget-object v2, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 4
    invoke-direct {v1, v2}, La/a/b/s/c;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u624b\u52a8\u8f93\u5165\u65e5\u5fd7\u8bfb\u53d6\u95f4\u9694\u65f6\u95f4(\u5355\u4f4d\u6beb\u79d2)(1\u79d2\u7b49\u4e8e1000\u6beb\u79d2)"

    invoke-virtual {v1, v2}, La/a/b/s/c;->j(Ljava/lang/String;)La/a/b/s/c;

    .line 5
    iget-object v2, v1, La/a/b/s/c;->j:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v4, "\u53c2\u6570:"

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v2, v1, La/a/b/s/c;->k:Landroid/widget/EditText;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const-string p1, "\u4fdd\u5b58"

    .line 8
    invoke-virtual {v1, p1}, La/a/b/s/c;->f(Ljava/lang/String;)La/a/b/s/c;

    invoke-virtual {v1}, La/a/b/s/c;->g()La/a/b/s/c;

    new-instance p1, La/a/b/n/h$d$a;

    invoke-direct {p1, p0}, La/a/b/n/h$d$a;-><init>(La/a/b/n/h$d;)V

    .line 9
    iput-object p1, v1, La/a/b/s/a;->f:La/a/b/s/a$c;

    const-string p1, "\u91cd\u7f6e"

    .line 10
    invoke-virtual {v1, p1}, La/a/b/s/c;->i(Ljava/lang/String;)La/a/b/s/c;

    .line 11
    iput-object v1, v0, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 12
    iget-object p1, p0, La/a/b/n/h$d;->b:La/a/b/n/h;

    .line 13
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 14
    new-instance v0, La/a/b/n/h$d$b;

    invoke-direct {v0, p0}, La/a/b/n/h$d$b;-><init>(La/a/b/n/h$d;)V

    .line 15
    iput-object v0, p1, La/a/b/s/a;->g:La/a/b/s/a$c;

    .line 16
    new-instance v0, La/a/b/n/h$d$c;

    invoke-direct {v0, p0}, La/a/b/n/h$d$c;-><init>(La/a/b/n/h$d;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, La/a/b/n/h$d;->b:La/a/b/n/h;

    .line 17
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, La/a/b/n/h$d;->b:La/a/b/n/h;

    .line 19
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 20
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
