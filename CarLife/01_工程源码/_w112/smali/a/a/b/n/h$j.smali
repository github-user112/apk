.class public La/a/b/n/h$j;
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

    iput-object p1, p0, La/a/b/n/h$j;->d:La/a/b/n/h;

    iput-object p2, p0, La/a/b/n/h$j;->b:[Ljava/lang/String;

    iput-object p3, p0, La/a/b/n/h$j;->c:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, La/a/b/n/h$j;->b:[Ljava/lang/String;

    iget-object v0, p0, La/a/b/n/h$j;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v1, v0

    aget-object p1, p1, v1

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, La/a/a/a/l/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/b/n/h$j;->d:La/a/b/n/h;

    new-instance v2, La/a/b/s/c;

    .line 1
    sget-object v3, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 2
    invoke-direct {v2, v3}, La/a/b/s/c;-><init>(Landroid/app/Activity;)V

    const-string v3, "\u624b\u52a8\u8f93\u5165\u952e\u503c,\u591a\u4e2a\u6309\u952e\u9017\u53f7\u5206\u9694"

    invoke-virtual {v2, v3}, La/a/b/s/c;->j(Ljava/lang/String;)La/a/b/s/c;

    .line 3
    iget-object v3, v2, La/a/b/s/c;->j:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v5, "\u952e\u503c:"

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    invoke-virtual {v2, v0}, La/a/b/s/c;->h(Ljava/lang/String;)La/a/b/s/c;

    const-string v0, "\u4fdd\u5b58"

    invoke-virtual {v2, v0}, La/a/b/s/c;->f(Ljava/lang/String;)La/a/b/s/c;

    invoke-virtual {v2}, La/a/b/s/c;->g()La/a/b/s/c;

    new-instance v0, La/a/b/n/h$j$a;

    invoke-direct {v0, p0, p1}, La/a/b/n/h$j$a;-><init>(La/a/b/n/h$j;Ljava/lang/String;)V

    .line 5
    iput-object v0, v2, La/a/b/s/a;->f:La/a/b/s/a$c;

    const-string v0, "\u91cd\u7f6e"

    .line 6
    invoke-virtual {v2, v0}, La/a/b/s/c;->i(Ljava/lang/String;)La/a/b/s/c;

    .line 7
    iput-object v2, v1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 8
    iget-object v0, p0, La/a/b/n/h$j;->d:La/a/b/n/h;

    .line 9
    iget-object v0, v0, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 10
    new-instance v1, La/a/b/n/h$j$b;

    invoke-direct {v1, p0, p1}, La/a/b/n/h$j$b;-><init>(La/a/b/n/h$j;Ljava/lang/String;)V

    .line 11
    iput-object v1, v0, La/a/b/s/a;->g:La/a/b/s/a$c;

    .line 12
    new-instance p1, La/a/b/n/h$j$c;

    invoke-direct {p1, p0}, La/a/b/n/h$j$c;-><init>(La/a/b/n/h$j;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, La/a/b/n/h$j;->d:La/a/b/n/h;

    .line 13
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, La/a/b/n/h$j;->d:La/a/b/n/h;

    .line 15
    iget-object p1, p1, La/a/b/n/h;->f0:La/a/b/s/c;

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
