.class public La/a/b/n/v$c$b;
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

    iput-object p1, p0, La/a/b/n/v$c$b;->a:La/a/b/n/v$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    const-string v1, "PHONE_IP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, La/a/b/n/v$c$b;->a:La/a/b/n/v$c;

    iget-object v0, v0, La/a/b/n/v$c;->b:La/a/b/n/v;

    invoke-virtual {v0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u540e\u751f\u6548!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
