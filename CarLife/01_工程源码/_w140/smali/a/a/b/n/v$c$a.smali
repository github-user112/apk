.class public La/a/b/n/v$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/s/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/v$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/b/n/v$c;


# direct methods
.method public constructor <init>(La/a/b/n/v$c;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/v$c$a;->a:La/a/b/n/v$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, La/a/b/n/v$c$a;->a:La/a/b/n/v$c;

    iget-object v0, v0, La/a/b/n/v$c;->b:La/a/b/n/v;

    .line 1
    iget-object v0, v0, La/a/b/n/v;->c0:La/a/b/s/c;

    .line 2
    invoke-virtual {v0}, La/a/b/s/c;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u540e\u751f\u6548!"

    const-string v3, "PHONE_IP"

    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, La/a/b/n/v$c$a;->a:La/a/b/n/v$c;

    iget-object v0, v0, La/a/b/n/v$c;->b:La/a/b/n/v;

    invoke-virtual {v0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
