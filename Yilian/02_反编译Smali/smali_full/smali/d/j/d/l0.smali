.class public Ld/j/d/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Z

.field public final synthetic d:Ld/e/a;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ld/j/d/p0;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/e/a;Landroid/view/View;Ld/j/d/p0;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/l0;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Ld/j/d/l0;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Ld/j/d/l0;->c:Z

    iput-object p4, p0, Ld/j/d/l0;->d:Ld/e/a;

    iput-object p5, p0, Ld/j/d/l0;->e:Landroid/view/View;

    iput-object p6, p0, Ld/j/d/l0;->f:Ld/j/d/p0;

    iput-object p7, p0, Ld/j/d/l0;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ld/j/d/l0;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Ld/j/d/l0;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Ld/j/d/l0;->c:Z

    iget-object v3, p0, Ld/j/d/l0;->d:Ld/e/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ld/j/d/n0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/e/a;Z)V

    iget-object v0, p0, Ld/j/d/l0;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/j/d/l0;->f:Ld/j/d/p0;

    iget-object v2, p0, Ld/j/d/l0;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ld/j/d/p0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
