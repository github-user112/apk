.class public final La/d/a/f/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:La/d/a/f/i;

.field public final synthetic c:La/d/a/e/c;

.field public final synthetic d:Z

.field public final synthetic e:La/d/a/f/b;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(La/d/a/f/i;La/d/a/e/c;ZLa/d/a/f/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, La/d/a/f/f;->b:La/d/a/f/i;

    iput-object p2, p0, La/d/a/f/f;->c:La/d/a/e/c;

    iput-boolean p3, p0, La/d/a/f/f;->d:Z

    iput-object p4, p0, La/d/a/f/f;->e:La/d/a/f/b;

    iput-object p5, p0, La/d/a/f/f;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, La/d/a/f/f;->c:La/d/a/e/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean p1, p0, La/d/a/f/f;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, La/d/a/f/f;->e:La/d/a/f/b;

    iget-object v0, p0, La/d/a/f/f;->f:Ljava/util/List;

    invoke-interface {p1, v0}, La/d/a/f/b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, La/d/a/f/f;->b:La/d/a/f/i;

    iget-object v0, p0, La/d/a/f/f;->f:Ljava/util/List;

    .line 1
    iget-object v1, p1, La/d/a/f/i;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p1, La/d/a/f/i;->n:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, La/d/a/f/i;->a:Lb/h/b/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, La/d/a/f/i;->c()La/d/a/f/e;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/h/b/m;->A0(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    const-string p1, "activity"

    invoke-static {p1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2
.end method
