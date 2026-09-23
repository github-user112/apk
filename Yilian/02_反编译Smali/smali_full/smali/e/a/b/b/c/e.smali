.class public final Le/a/b/b/c/e;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/d/c/w;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/o;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/a/b/b/c/o;",
            "Le/a/b/d/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/o;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/q;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/q;",
            ">;"
        }
    .end annotation
.end field

.field public k:Le/a/b/d/c/c;

.field public l:[B


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    iput-object p1, p0, Le/a/b/b/c/e;->e:Le/a/b/d/c/w;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/c/e;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/e;->k:Le/a/b/d/c/c;

    return-void
.end method

.method public static n(Le/a/b/b/c/m;Le/a/b/f/a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b/b/c/m;",
            "Le/a/b/f/a;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Le/a/b/b/c/p;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1}, Le/a/b/f/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/c/p;

    invoke-virtual {v1, p0, p1, p2, v2}, Le/a/b/b/c/p;->b(Le/a/b/b/c/m;Le/a/b/f/a;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static p(Le/a/b/f/a;Ljava/lang/String;I)V
    .locals 3

    check-cast p0, Le/a/b/f/c;

    invoke-virtual {p0}, Le/a/b/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "_size:"

    invoke-static {p1, v2}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "  %-21s %08x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/b/f/c;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2}, Le/a/b/f/c;->n(I)I

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 6

    iget-object v0, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/a/b/b/c/e;->q()Le/a/b/d/c/c;

    iget-object v0, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/o;

    if-eqz v2, :cond_0

    .line 1
    iget-object v3, p1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 2
    iget-object v2, v2, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v3, v2}, Le/a/b/b/c/t;->n(Le/a/b/d/c/j;)Le/a/b/b/c/s;

    goto :goto_0

    .line 3
    :cond_0
    throw v1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/o;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, p1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 6
    iget-object v2, v2, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v3, v2}, Le/a/b/b/c/t;->n(Le/a/b/d/c/j;)Le/a/b/b/c/s;

    goto :goto_1

    .line 7
    :cond_2
    throw v1

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/q;

    if-eqz v2, :cond_5

    .line 9
    iget-object v3, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 10
    iget-object v4, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 11
    iget-object v5, v2, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {v3, v5}, Le/a/b/b/c/f0;->n(Le/a/b/d/c/d;)Le/a/b/b/c/e0;

    iget-object v2, v2, Le/a/b/b/c/q;->c:Le/a/b/b/c/h;

    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    goto :goto_2

    .line 12
    :cond_5
    throw v1

    .line 13
    :cond_6
    iget-object v0, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/q;

    if-eqz v2, :cond_8

    .line 14
    iget-object v3, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 15
    iget-object v4, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 16
    iget-object v5, v2, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {v3, v5}, Le/a/b/b/c/f0;->n(Le/a/b/d/c/d;)Le/a/b/b/c/e0;

    iget-object v2, v2, Le/a/b/b/c/q;->c:Le/a/b/b/c/h;

    if-eqz v2, :cond_7

    invoke-virtual {v4, v2}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    goto :goto_3

    .line 17
    :cond_8
    throw v1

    :cond_9
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->o:Le/a/b/b/c/z;

    return-object v0
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 0

    new-instance p2, Le/a/b/f/c;

    invoke-direct {p2}, Le/a/b/f/c;-><init>()V

    .line 1
    iget-object p1, p1, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/b/b/c/e;->o(Le/a/b/b/c/m;Le/a/b/f/a;)V

    invoke-virtual {p2}, Le/a/b/f/c;->h()[B

    move-result-object p1

    iput-object p1, p0, Le/a/b/b/c/e;->l:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->l(I)V

    return-void
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 1

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Le/a/b/b/c/e;->o(Le/a/b/b/c/m;Le/a/b/f/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/e;->l:[B

    invoke-virtual {p2, p1}, Le/a/b/f/c;->i([B)V

    :goto_0
    return-void
.end method

.method public final o(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 6

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/b/c/e;->e:Le/a/b/d/c/w;

    invoke-virtual {v3}, Le/a/b/d/c/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "static_fields"

    invoke-static {p2, v2, v1}, Le/a/b/b/c/e;->p(Le/a/b/f/a;Ljava/lang/String;I)V

    iget-object v1, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "instance_fields"

    invoke-static {p2, v3, v1}, Le/a/b/b/c/e;->p(Le/a/b/f/a;Ljava/lang/String;I)V

    iget-object v1, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v4, "direct_methods"

    invoke-static {p2, v4, v1}, Le/a/b/b/c/e;->p(Le/a/b/f/a;Ljava/lang/String;I)V

    iget-object v1, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v5, "virtual_methods"

    invoke-static {p2, v5, v1}, Le/a/b/b/c/e;->p(Le/a/b/f/a;Ljava/lang/String;I)V

    iget-object v1, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2, v2, v1}, Le/a/b/b/c/e;->n(Le/a/b/b/c/m;Le/a/b/f/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-static {p1, p2, v3, v1}, Le/a/b/b/c/e;->n(Le/a/b/b/c/m;Le/a/b/f/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-static {p1, p2, v4, v1}, Le/a/b/b/c/e;->n(Le/a/b/b/c/m;Le/a/b/f/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-static {p1, p2, v5, v1}, Le/a/b/b/c/e;->n(Le/a/b/b/c/m;Le/a/b/f/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Le/a/b/f/c;->e()V

    :cond_1
    return-void
.end method

.method public q()Le/a/b/d/c/c;
    .locals 7

    iget-object v0, p0, Le/a/b/b/c/e;->k:Le/a/b/d/c/c;

    if-nez v0, :cond_6

    iget-object v0, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1
    iget-object v0, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/c/o;

    iget-object v3, p0, Le/a/b/b/c/e;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/d/c/a;

    instance-of v3, v1, Le/a/b/d/c/p;

    if-eqz v3, :cond_0

    check-cast v1, Le/a/b/d/c/p;

    invoke-virtual {v1}, Le/a/b/d/c/p;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    new-instance v1, Le/a/b/d/c/c$a;

    invoke-direct {v1, v0}, Le/a/b/d/c/c$a;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/c/o;

    iget-object v5, p0, Le/a/b/b/c/e;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/d/c/a;

    if-nez v5, :cond_4

    .line 2
    iget-object v4, v4, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    .line 3
    invoke-virtual {v4}, Le/a/b/d/c/j;->getType()Le/a/b/d/d/c;

    move-result-object v4

    .line 4
    iget v5, v4, Le/a/b/d/d/c;->b:I

    packed-switch v5, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no zero for type: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v4, Le/a/b/d/c/m;->a:Le/a/b/d/c/m;

    goto :goto_3

    :pswitch_1
    sget-object v4, Le/a/b/d/c/u;->b:Le/a/b/d/c/u;

    goto :goto_3

    :pswitch_2
    sget-object v4, Le/a/b/d/c/q;->b:Le/a/b/d/c/q;

    goto :goto_3

    :pswitch_3
    sget-object v4, Le/a/b/d/c/l;->c:Le/a/b/d/c/l;

    goto :goto_3

    :pswitch_4
    sget-object v4, Le/a/b/d/c/k;->b:Le/a/b/d/c/k;

    goto :goto_3

    :pswitch_5
    sget-object v4, Le/a/b/d/c/h;->b:Le/a/b/d/c/h;

    goto :goto_3

    :pswitch_6
    sget-object v4, Le/a/b/d/c/g;->b:Le/a/b/d/c/g;

    goto :goto_3

    :pswitch_7
    sget-object v4, Le/a/b/d/c/f;->b:Le/a/b/d/c/f;

    goto :goto_3

    :pswitch_8
    sget-object v4, Le/a/b/d/c/e;->b:Le/a/b/d/c/e;

    :goto_3
    move-object v5, v4

    .line 6
    :cond_4
    invoke-virtual {v1, v3, v5}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7
    :cond_5
    iput-boolean v2, v1, Le/a/b/f/i;->a:Z

    .line 8
    new-instance v0, Le/a/b/d/c/c;

    invoke-direct {v0, v1}, Le/a/b/d/c/c;-><init>(Le/a/b/d/c/c$a;)V

    .line 9
    :goto_4
    iput-object v0, p0, Le/a/b/b/c/e;->k:Le/a/b/d/c/c;

    :cond_6
    iget-object v0, p0, Le/a/b/b/c/e;->k:Le/a/b/d/c/c;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
