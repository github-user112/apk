.class public final Ln/e;
.super Landroid/view/ActionMode;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ln/e;->b:Ln/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->c()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    new-instance v0, Lo/b0;

    .line 2
    .line 3
    iget-object v1, p0, Ln/e;->b:Ln/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Ln/a;->e()Lo/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Ln/e;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lo/b0;-><init>(Landroid/content/Context;Lo/m;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->f()Landroid/view/MenuInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->g()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    iget-object v0, v0, Ln/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->h()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    iget-boolean v0, v0, Ln/a;->b:Z

    .line 4
    .line 5
    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/a;->l(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ln/e;->b:Ln/a;

    invoke-virtual {v0, p1}, Ln/a;->m(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    invoke-virtual {v0, p1}, Ln/a;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    iput-object p1, v0, Ln/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ln/e;->b:Ln/a;

    invoke-virtual {v0, p1}, Ln/a;->p(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    invoke-virtual {v0, p1}, Ln/a;->q(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/e;->b:Ln/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln/a;->r(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
