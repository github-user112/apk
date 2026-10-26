.class public Ld/s/q;
.super Ld/s/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/q$b;
    }
.end annotation


# instance fields
.field public J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/s/k;",
            ">;"
        }
    .end annotation
.end field

.field public K:Z

.field public L:I

.field public M:Z

.field public N:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/s/k;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/s/q;->K:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/s/q;->M:Z

    iput v0, p0, Ld/s/q;->N:I

    return-void
.end method


# virtual methods
.method public A(Ld/s/k$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ld/s/k;->D:Ld/s/k$c;

    .line 2
    iget v0, p0, Ld/s/q;->N:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ld/s/q;->N:I

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1}, Ld/s/k;->A(Ld/s/k$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Landroid/animation/TimeInterpolator;)Ld/s/k;
    .locals 3

    .line 1
    iget v0, p0, Ld/s/q;->N:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/s/q;->N:I

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1}, Ld/s/k;->B(Landroid/animation/TimeInterpolator;)Ld/s/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Ld/s/k;->d:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public C(Ld/s/f;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Ld/s/k;->H:Ld/s/f;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ld/s/k;->F:Ld/s/f;

    .line 2
    iget v0, p0, Ld/s/q;->N:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ld/s/q;->N:I

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    invoke-virtual {v1, p1}, Ld/s/k;->C(Ld/s/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public D(Ld/s/p;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ld/s/k;->C:Ld/s/p;

    .line 2
    iget v0, p0, Ld/s/q;->N:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/s/q;->N:I

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1}, Ld/s/k;->D(Ld/s/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(J)Ld/s/k;
    .locals 0

    .line 1
    iput-wide p1, p0, Ld/s/k;->b:J

    return-object p0
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Ld/s/k;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    invoke-static {v0, v2}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/s/k;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public H(Ld/s/k;)Ld/s/q;
    .locals 5

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Ld/s/k;->r:Ld/s/q;

    iget-wide v0, p0, Ld/s/k;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1, v0, v1}, Ld/s/k;->z(J)Ld/s/k;

    :cond_0
    iget v0, p0, Ld/s/q;->N:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Ld/s/k;->d:Landroid/animation/TimeInterpolator;

    .line 2
    invoke-virtual {p1, v0}, Ld/s/k;->B(Landroid/animation/TimeInterpolator;)Ld/s/k;

    :cond_1
    iget v0, p0, Ld/s/q;->N:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/s/k;->D(Ld/s/p;)V

    :cond_2
    iget v0, p0, Ld/s/q;->N:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Ld/s/k;->F:Ld/s/f;

    .line 4
    invoke-virtual {p1, v0}, Ld/s/k;->C(Ld/s/f;)V

    :cond_3
    iget v0, p0, Ld/s/q;->N:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Ld/s/k;->D:Ld/s/k$c;

    .line 6
    invoke-virtual {p1, v0}, Ld/s/k;->A(Ld/s/k$c;)V

    :cond_4
    return-object p0
.end method

.method public I(I)Ld/s/k;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/s/k;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public J(I)Ld/s/q;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/s/q;->K:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v0, p0, Ld/s/q;->K:Z

    :goto_0
    return-object p0
.end method

.method public a(Ld/s/k$d;)Ld/s/k;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld/s/k;->a(Ld/s/k$d;)Ld/s/k;

    return-object p0
.end method

.method public b(Landroid/view/View;)Ld/s/k;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    invoke-virtual {v1, p1}, Ld/s/k;->b(Landroid/view/View;)Ld/s/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/s/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld/s/q;->j()Ld/s/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Ld/s/s;)V
    .locals 3

    iget-object v0, p1, Ld/s/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ld/s/k;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    iget-object v2, p1, Ld/s/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ld/s/k;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ld/s/k;->d(Ld/s/s;)V

    iget-object v2, p1, Ld/s/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Ld/s/s;)V
    .locals 3

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1}, Ld/s/k;->f(Ld/s/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ld/s/s;)V
    .locals 3

    iget-object v0, p1, Ld/s/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ld/s/k;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    iget-object v2, p1, Ld/s/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ld/s/k;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ld/s/k;->g(Ld/s/s;)V

    iget-object v2, p1, Ld/s/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j()Ld/s/k;
    .locals 4

    invoke-super {p0}, Ld/s/k;->j()Ld/s/k;

    move-result-object v0

    check-cast v0, Ld/s/q;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ld/s/q;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/s/k;

    invoke-virtual {v3}, Ld/s/k;->j()Ld/s/k;

    move-result-object v3

    invoke-virtual {v0, v3}, Ld/s/q;->H(Ld/s/k;)Ld/s/q;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public l(Landroid/view/ViewGroup;Ld/s/t;Ld/s/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ld/s/t;",
            "Ld/s/t;",
            "Ljava/util/ArrayList<",
            "Ld/s/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ld/s/s;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Ld/s/k;->b:J

    .line 2
    iget-object v3, v0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ld/s/k;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Ld/s/q;->K:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 3
    :cond_0
    iget-wide v9, v6, Ld/s/k;->b:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 4
    invoke-virtual {v6, v9, v10}, Ld/s/k;->E(J)Ld/s/k;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Ld/s/k;->E(J)Ld/s/k;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Ld/s/k;->l(Landroid/view/ViewGroup;Ld/s/t;Ld/s/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Ld/s/k;->u(Landroid/view/View;)V

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1}, Ld/s/k;->u(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Ld/s/k$d;)Ld/s/k;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld/s/k;->v(Ld/s/k$d;)Ld/s/k;

    return-object p0
.end method

.method public w(Landroid/view/View;)Ld/s/k;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    invoke-virtual {v1, p1}, Ld/s/k;->w(Landroid/view/View;)Ld/s/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/s/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Ld/s/k;->x(Landroid/view/View;)V

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1}, Ld/s/k;->x(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/s/k;->F()V

    invoke-virtual {p0}, Ld/s/k;->m()V

    return-void

    .line 1
    :cond_0
    new-instance v0, Ld/s/q$b;

    invoke-direct {v0, p0}, Ld/s/q$b;-><init>(Ld/s/q;)V

    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, v0}, Ld/s/k;->a(Ld/s/k$d;)Ld/s/k;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ld/s/q;->L:I

    .line 2
    iget-boolean v0, p0, Ld/s/q;->K:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    new-instance v3, Ld/s/q$a;

    invoke-direct {v3, p0, v2}, Ld/s/q$a;-><init>(Ld/s/q;Ld/s/k;)V

    invoke-virtual {v1, v3}, Ld/s/k;->a(Ld/s/k$d;)Ld/s/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld/s/k;->y()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/s/k;

    invoke-virtual {v1}, Ld/s/k;->y()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public z(J)Ld/s/k;
    .locals 3

    .line 1
    iput-wide p1, p0, Ld/s/k;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ld/s/q;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/k;

    invoke-virtual {v2, p1, p2}, Ld/s/k;->z(J)Ld/s/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
