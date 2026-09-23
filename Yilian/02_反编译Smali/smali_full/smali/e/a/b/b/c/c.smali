.class public final Le/a/b/b/c/c;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public e:Le/a/b/b/c/b;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/r;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    iput-object v0, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static p(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 5

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 2
    iget-object v1, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object v0

    check-cast v0, Le/a/b/b/c/b;

    iput-object v0, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    :cond_0
    iget-object v0, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/r;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, p1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 4
    iget-object v4, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 5
    invoke-virtual {v3, v1}, Le/a/b/b/c/t;->n(Le/a/b/d/c/j;)Le/a/b/b/c/s;

    iget-object v3, v2, Le/a/b/b/c/r;->b:Le/a/b/b/c/b;

    invoke-virtual {v4, v3}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object v3

    check-cast v3, Le/a/b/b/c/b;

    iput-object v3, v2, Le/a/b/b/c/r;->b:Le/a/b/b/c/b;

    goto :goto_0

    .line 6
    :cond_1
    throw v1

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/d0;

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 9
    iget-object v4, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 10
    invoke-virtual {v3, v1}, Le/a/b/b/c/f0;->n(Le/a/b/d/c/d;)Le/a/b/b/c/e0;

    iget-object v3, v2, Le/a/b/b/c/d0;->b:Le/a/b/b/c/b;

    invoke-virtual {v4, v3}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object v3

    check-cast v3, Le/a/b/b/c/b;

    iput-object v3, v2, Le/a/b/b/c/d0;->b:Le/a/b/b/c/b;

    goto :goto_1

    .line 11
    :cond_3
    throw v1

    .line 12
    :cond_4
    iget-object v0, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/i0;

    if-eqz v2, :cond_5

    .line 13
    iget-object v2, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 14
    iget-object v3, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 15
    invoke-virtual {v2, v1}, Le/a/b/b/c/f0;->n(Le/a/b/d/c/d;)Le/a/b/b/c/e0;

    invoke-virtual {v3, v1}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    goto :goto_2

    .line 16
    :cond_5
    throw v1

    :cond_6
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->u:Le/a/b/b/c/z;

    return-object v0
.end method

.method public f(Le/a/b/b/c/h0;)I
    .locals 1

    invoke-virtual {p0}, Le/a/b/b/c/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b/b/c/c;

    iget-object v0, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    iget-object p1, p1, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    invoke-virtual {v0, p1}, Le/a/b/b/c/h0;->e(Le/a/b/b/c/h0;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "uninternable instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    throw v1
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 0

    iget-object p1, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Le/a/b/b/c/c;->p(Ljava/util/ArrayList;)I

    move-result p1

    iget-object p2, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Le/a/b/b/c/c;->p(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p2, p1

    iget-object p1, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Le/a/b/b/c/c;->p(Ljava/util/ArrayList;)I

    move-result p1

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->l(I)V

    return-void
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 10

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    iget-object v1, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    invoke-static {v1}, Le/a/b/b/c/h0;->h(Le/a/b/b/c/h0;)I

    move-result v1

    iget-object v2, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Le/a/b/b/c/c;->p(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    invoke-static {v3}, Le/a/b/b/c/c;->p(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Le/a/b/b/c/c;->p(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " annotations directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  class_annotations_off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {p2, v7, v6}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  fields_size:           "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  methods_size:          "

    invoke-static {v2, v6, p2, v7, v8}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  parameters_size:       "

    invoke-static {v3, v6, p2, v7, v8}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v6, p2, v7}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_0
    invoke-virtual {p2, v1}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v3}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v4}, Le/a/b/f/c;->k(I)V

    const-string v1, "    "

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_1

    const-string v2, "  fields:"

    invoke-virtual {p2, v5, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/b/b/c/r;

    if-eqz v7, :cond_3

    .line 1
    iget-object v8, p1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 2
    invoke-virtual {v8, v6}, Le/a/b/b/c/t;->m(Le/a/b/d/c/j;)I

    move-result v8

    iget-object v7, v7, Le/a/b/b/c/r;->b:Le/a/b/b/c/b;

    invoke-virtual {v7}, Le/a/b/b/c/h0;->g()I

    move-result v7

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p2, v8}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v7}, Le/a/b/f/c;->k(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v6

    .line 3
    :cond_3
    throw v6

    :cond_4
    if-eqz v3, :cond_8

    .line 4
    iget-object v2, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_5

    const-string v2, "  methods:"

    invoke-virtual {p2, v5, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/b/c/d0;

    if-eqz v3, :cond_7

    .line 5
    iget-object v7, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 6
    invoke-virtual {v7, v6}, Le/a/b/b/c/f0;->m(Le/a/b/d/c/d;)I

    move-result v7

    iget-object v3, v3, Le/a/b/b/c/d0;->b:Le/a/b/b/c/b;

    invoke-virtual {v3}, Le/a/b/b/c/h0;->g()I

    move-result v3

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p2, v7}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v3}, Le/a/b/f/c;->k(I)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v6

    .line 7
    :cond_7
    throw v6

    :cond_8
    if-eqz v4, :cond_b

    .line 8
    iget-object v1, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_9

    const-string v0, "  parameters:"

    invoke-virtual {p2, v5, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_9
    iget-object p2, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/b/b/c/i0;

    if-eqz p2, :cond_a

    .line 9
    iget-object p1, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 10
    invoke-virtual {p1, v6}, Le/a/b/b/c/f0;->m(Le/a/b/d/c/d;)I

    throw v6

    .line 11
    :cond_a
    throw v6

    :cond_b
    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/c;->e:Le/a/b/b/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/c;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/c;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/c;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
