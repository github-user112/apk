.class public Ld/j/d/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld/j/d/p0;

.field public final synthetic b:Ld/e/a;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ld/j/d/n0$b;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroidx/fragment/app/Fragment;

.field public final synthetic h:Landroidx/fragment/app/Fragment;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ld/j/d/p0;Ld/e/a;Ljava/lang/Object;Ld/j/d/n0$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/m0;->a:Ld/j/d/p0;

    iput-object p2, p0, Ld/j/d/m0;->b:Ld/e/a;

    iput-object p3, p0, Ld/j/d/m0;->c:Ljava/lang/Object;

    iput-object p4, p0, Ld/j/d/m0;->d:Ld/j/d/n0$b;

    iput-object p5, p0, Ld/j/d/m0;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Ld/j/d/m0;->f:Landroid/view/View;

    iput-object p7, p0, Ld/j/d/m0;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Ld/j/d/m0;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Ld/j/d/m0;->i:Z

    iput-object p10, p0, Ld/j/d/m0;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Ld/j/d/m0;->k:Ljava/lang/Object;

    iput-object p12, p0, Ld/j/d/m0;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ld/j/d/m0;->a:Ld/j/d/p0;

    iget-object v1, p0, Ld/j/d/m0;->b:Ld/e/a;

    iget-object v2, p0, Ld/j/d/m0;->c:Ljava/lang/Object;

    iget-object v3, p0, Ld/j/d/m0;->d:Ld/j/d/n0$b;

    invoke-static {v0, v1, v2, v3}, Ld/j/d/n0;->e(Ld/j/d/p0;Ld/e/a;Ljava/lang/Object;Ld/j/d/n0$b;)Ld/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/j/d/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ld/e/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Ld/j/d/m0;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/j/d/m0;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Ld/j/d/m0;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ld/j/d/m0;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Ld/j/d/m0;->i:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Ld/j/d/n0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/e/a;Z)V

    iget-object v1, p0, Ld/j/d/m0;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ld/j/d/m0;->a:Ld/j/d/p0;

    iget-object v3, p0, Ld/j/d/m0;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Ld/j/d/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Ld/j/d/p0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Ld/j/d/m0;->d:Ld/j/d/n0$b;

    iget-object v2, p0, Ld/j/d/m0;->k:Ljava/lang/Object;

    iget-boolean v3, p0, Ld/j/d/m0;->i:Z

    invoke-static {v0, v1, v2, v3}, Ld/j/d/n0;->k(Ld/e/a;Ld/j/d/n0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/j/d/m0;->a:Ld/j/d/p0;

    iget-object v2, p0, Ld/j/d/m0;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ld/j/d/p0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
