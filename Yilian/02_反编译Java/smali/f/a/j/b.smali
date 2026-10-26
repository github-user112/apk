.class public final Lf/a/j/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lf/a/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/h<",
            "**>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lf/a/j/f;

.field public d:Z

.field public final e:Lf/a/j/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/g<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/j/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/j/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:Le/a/b/d/b/q;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/a/b/d/d/b;


# direct methods
.method public constructor <init>(Lf/a/j/d$b;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/j/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/j/b;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/j/b;->g:Ljava/util/List;

    sget-object v0, Le/a/b/d/b/q;->d:Le/a/b/d/b/q;

    iput-object v0, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/j/b;->i:Ljava/util/List;

    sget-object v0, Le/a/b/d/d/b;->c:Le/a/b/d/d/b;

    iput-object v0, p0, Lf/a/j/b;->j:Le/a/b/d/d/b;

    iget-object v0, p1, Lf/a/j/d$b;->a:Lf/a/j/h;

    iput-object v0, p0, Lf/a/j/b;->a:Lf/a/j/h;

    .line 1
    iget p1, p1, Lf/a/j/d$b;->b:I

    and-int/lit8 p1, p1, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf/a/j/b;->e:Lf/a/j/g;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lf/a/j/b;->a:Lf/a/j/h;

    iget-object p1, p1, Lf/a/j/h;->a:Lf/a/j/k;

    .line 3
    new-instance v2, Lf/a/j/g;

    invoke-direct {v2, p0, p1}, Lf/a/j/g;-><init>(Lf/a/j/b;Lf/a/j/k;)V

    .line 4
    iput-object v2, p0, Lf/a/j/b;->e:Lf/a/j/g;

    iget-object p1, p0, Lf/a/j/b;->f:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lf/a/j/b;->a:Lf/a/j/h;

    iget-object p1, p1, Lf/a/j/h;->d:Lf/a/j/l;

    iget-object p1, p1, Lf/a/j/l;->a:[Lf/a/j/k;

    array-length v2, p1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    iget-object v4, p0, Lf/a/j/b;->f:Ljava/util/List;

    .line 5
    new-instance v5, Lf/a/j/g;

    invoke-direct {v5, p0, v3}, Lf/a/j/g;-><init>(Lf/a/j/b;Lf/a/j/k;)V

    .line 6
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Lf/a/j/f;

    invoke-direct {p1}, Lf/a/j/f;-><init>()V

    iput-object p1, p0, Lf/a/j/b;->c:Lf/a/j/f;

    invoke-virtual {p0, p1}, Lf/a/j/b;->b(Lf/a/j/f;)V

    iget-object p1, p0, Lf/a/j/b;->c:Lf/a/j/f;

    iput-boolean v1, p1, Lf/a/j/f;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Le/a/b/d/b/e;Lf/a/j/f;)V
    .locals 4

    iget-object v0, p0, Lf/a/j/b;->c:Lf/a/j/f;

    if-eqz v0, :cond_a

    iget-boolean v1, v0, Lf/a/j/f;->c:Z

    if-eqz v1, :cond_a

    iget-object v0, v0, Lf/a/j/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1
    iget-object p1, p1, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 2
    iget p1, p1, Le/a/b/d/b/n;->e:I

    const/4 v0, 0x1

    const-string v1, "unexpected branch: "

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    const-string v3, "branch == null"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lf/a/j/b;->i:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2, p1}, Lf/a/j/b;->o(Lf/a/j/f;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lf/a/j/b;->o(Lf/a/j/f;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lf/a/j/b;->c:Lf/a/j/f;

    iput-object p2, p1, Lf/a/j/f;->e:Lf/a/j/f;

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez p2, :cond_7

    :goto_0
    iput-object v2, p0, Lf/a/j/b;->c:Lf/a/j/f;

    :goto_1
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-nez p2, :cond_9

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lf/a/j/f;)V
    .locals 1

    iget-object v0, p1, Lf/a/j/f;->b:Lf/a/j/b;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iput-object p0, p1, Lf/a/j/f;->b:Lf/a/j/b;

    iget-object v0, p0, Lf/a/j/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot adopt label; it belongs to another Code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lf/a/j/g;Lf/a/j/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/g<",
            "*>;",
            "Lf/a/j/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lf/a/j/g;->b:Lf/a/j/k;

    .line 2
    iget-object v0, v0, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-virtual {v0}, Le/a/b/d/d/c;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Le/a/b/d/b/r;

    sget-object v3, Le/a/b/d/b/p;->L1:Le/a/b/d/b/n;

    iget-object v4, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {p2}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object p2

    invoke-static {p2}, Le/a/b/d/b/l;->k(Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v5

    iget-object v6, p0, Lf/a/j/b;->j:Le/a/b/d/d/b;

    iget-object p2, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v7, p2, Lf/a/j/k;->c:Le/a/b/d/c/w;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le/a/b/d/b/r;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p1, p2}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    goto :goto_2

    :cond_0
    new-instance v0, Le/a/b/d/b/j;

    iget-object v2, p2, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v2, v2, Lf/a/j/k;->b:Le/a/b/d/d/c;

    iget-object v3, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v3, v3, Lf/a/j/k;->b:Le/a/b/d/d/c;

    .line 5
    iget v4, v2, Le/a/b/d/d/c;->b:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    iget v4, v3, Le/a/b/d/d/c;->b:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Le/a/b/d/b/p;->Z0:Le/a/b/d/b/n;

    goto :goto_1

    :cond_2
    sget-object v2, Le/a/b/d/b/p;->Y0:Le/a/b/d/b/n;

    goto :goto_1

    :cond_3
    sget-object v2, Le/a/b/d/b/p;->X0:Le/a/b/d/b/n;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v3, v2}, Le/a/b/d/b/p;->d(Le/a/b/d/d/d;Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v2

    .line 7
    :goto_1
    iget-object v3, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {p1}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object p1

    invoke-virtual {p2}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object p2

    .line 8
    invoke-static {p2}, Le/a/b/d/b/l;->k(Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p2

    invoke-direct {v0, v2, v3, p1, p2}, Le/a/b/d/b/j;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    :goto_2
    return-void
.end method

.method public final d(Lf/a/j/g;Lf/a/j/k;)Lf/a/j/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a/j/g<",
            "*>;",
            "Lf/a/j/k<",
            "TT;>;)",
            "Lf/a/j/g<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lf/a/j/g;->b:Lf/a/j/k;

    invoke-virtual {v0, p2}, Lf/a/j/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but was "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lf/a/j/g;->b:Lf/a/j/k;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(ILf/a/j/k;)Lf/a/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lf/a/j/k<",
            "TT;>;)",
            "Lf/a/j/g<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lf/a/j/b;->e:Lf/a/j/g;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lf/a/j/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/j/g;

    invoke-virtual {p0, p1, p2}, Lf/a/j/b;->d(Lf/a/j/g;Lf/a/j/k;)Lf/a/j/g;

    return-object p1
.end method

.method public f(Lf/a/j/k;)Lf/a/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a/j/k<",
            "TT;>;)",
            "Lf/a/j/g<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lf/a/j/b;->e:Lf/a/j/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lf/a/j/b;->d(Lf/a/j/g;Lf/a/j/k;)Lf/a/j/g;

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "static methods cannot access \'this\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()V
    .locals 13

    iget-boolean v0, p0, Lf/a/j/b;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/j/b;->d:Z

    iget-object v0, p0, Lf/a/j/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/j/g;

    invoke-virtual {v3, v2}, Lf/a/j/g;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lf/a/j/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/a/j/g;

    sub-int v6, v4, v2

    invoke-static {v6}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    move-result-object v12

    invoke-virtual {v5, v4}, Lf/a/j/g;->a(I)I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Le/a/b/d/b/i;

    iget-object v7, v5, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v7, v7, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v7}, Le/a/b/d/b/p;->i(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v8

    iget-object v9, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {v5}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v10

    sget-object v11, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Le/a/b/d/b/i;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lf/a/j/b;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a/j/f;

    iget-object v2, v2, Lf/a/j/f;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final varargs h(Le/a/b/d/b/n;Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/b/d/b/n;",
            "Lf/a/j/h<",
            "TD;TR;>;",
            "Lf/a/j/g<",
            "-TR;>;",
            "Lf/a/j/g<",
            "+TD;>;[",
            "Lf/a/j/g<",
            "*>;)V"
        }
    .end annotation

    new-instance v6, Le/a/b/d/b/r;

    iget-object v2, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    const/4 v7, 0x0

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    new-instance v3, Le/a/b/d/b/l;

    array-length v1, p5

    add-int/2addr v1, v0

    invoke-direct {v3, v1}, Le/a/b/d/b/l;-><init>(I)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object p4

    .line 2
    invoke-virtual {v3, v7, p4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    :cond_1
    const/4 p4, 0x0

    .line 3
    :goto_1
    array-length v1, p5

    if-ge p4, v1, :cond_2

    add-int v1, p4, v0

    aget-object v4, p5, p4

    invoke-virtual {v4}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v4

    .line 4
    invoke-virtual {v3, v1, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 5
    :cond_2
    iget-object v4, p0, Lf/a/j/b;->j:Le/a/b/d/d/b;

    iget-object v5, p2, Lf/a/j/h;->f:Le/a/b/d/c/s;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Le/a/b/d/b/r;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v6, p1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p0, p3, v7}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    :cond_3
    return-void
.end method

.method public varargs i(Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a/j/h<",
            "TD;TR;>;",
            "Lf/a/j/g<",
            "-TR;>;",
            "Lf/a/j/g<",
            "+TD;>;[",
            "Lf/a/j/g<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf/a/j/h;->b(Z)Le/a/b/d/d/a;

    move-result-object v0

    invoke-static {v0}, Le/a/b/d/b/p;->h(Le/a/b/d/d/a;)Le/a/b/d/b/n;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lf/a/j/b;->h(Le/a/b/d/b/n;Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    return-void
.end method

.method public j(Lf/a/j/g;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a/j/g<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object v0, Le/a/b/d/b/p;->q:Le/a/b/d/b/n;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v0, v0, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/b/p;->c(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1
    iget v0, v2, Le/a/b/d/b/n;->e:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 2
    new-instance v0, Le/a/b/d/b/i;

    iget-object v3, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {p1}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v4

    sget-object v5, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    invoke-static {p2}, Ld/s/y;->C(Ljava/lang/Object;)Le/a/b/d/c/x;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/a/b/d/b/i;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    .line 3
    invoke-virtual {p0, v0, v7}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Le/a/b/d/b/r;

    iget-object v3, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    sget-object v4, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    iget-object v5, p0, Lf/a/j/b;->j:Le/a/b/d/d/b;

    invoke-static {p2}, Ld/s/y;->C(Ljava/lang/Object;)Le/a/b/d/c/x;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/a/b/d/b/r;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V

    .line 5
    invoke-virtual {p0, v0, v7}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    .line 6
    invoke-virtual {p0, p1, v8}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    :goto_1
    return-void
.end method

.method public final k(Lf/a/j/g;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/g<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object p2, p2, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {p2}, Le/a/b/d/b/p;->k(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object p2, p2, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {p2}, Le/a/b/d/b/p;->j(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object p2

    :goto_0
    new-instance v0, Le/a/b/d/b/j;

    iget-object v1, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {p1}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object p1

    sget-object v2, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    invoke-direct {v0, p2, v1, p1, v2}, Le/a/b/d/b/j;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    return-void
.end method

.method public l(Lf/a/j/k;)Lf/a/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a/j/k<",
            "TT;>;)",
            "Lf/a/j/g<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lf/a/j/b;->d:Z

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lf/a/j/g;

    invoke-direct {v0, p0, p1}, Lf/a/j/g;-><init>(Lf/a/j/b;Lf/a/j/k;)V

    .line 2
    iget-object p1, p0, Lf/a/j/b;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot allocate locals after adding instructions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lf/a/j/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/g<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v1, p0, Lf/a/j/b;->a:Lf/a/j/h;

    iget-object v1, v1, Lf/a/j/h;->b:Lf/a/j/k;

    invoke-virtual {v0, v1}, Lf/a/j/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Le/a/b/d/b/j;

    iget-object v1, p1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v1, v1, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v1}, Le/a/b/d/b/p;->m(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v1

    iget-object v2, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {p1}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object p1

    invoke-static {p1}, Le/a/b/d/b/l;->k(Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/b/d/b/j;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    .line 1
    invoke-virtual {p0, v0, v3}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "declared "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/a/j/b;->a:Lf/a/j/h;

    iget-object v2, v2, Lf/a/j/h;->b:Lf/a/j/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lf/a/j/g;->b:Lf/a/j/k;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()V
    .locals 5

    iget-object v0, p0, Lf/a/j/b;->a:Lf/a/j/h;

    iget-object v0, v0, Lf/a/j/h;->b:Lf/a/j/k;

    sget-object v1, Lf/a/j/k;->l:Lf/a/j/k;

    invoke-virtual {v0, v1}, Lf/a/j/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Le/a/b/d/b/j;

    sget-object v1, Le/a/b/d/b/p;->a1:Le/a/b/d/b/n;

    iget-object v2, p0, Lf/a/j/b;->h:Le/a/b/d/b/q;

    sget-object v3, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Le/a/b/d/b/j;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    .line 1
    invoke-virtual {p0, v0, v4}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "declared "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/a/j/b;->a:Lf/a/j/h;

    iget-object v2, v2, Lf/a/j/h;->b:Lf/a/j/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but returned void"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o(Lf/a/j/f;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/f;",
            "Ljava/util/List<",
            "Lf/a/j/f;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lf/a/j/f;

    invoke-direct {v0}, Lf/a/j/f;-><init>()V

    invoke-virtual {p0, v0}, Lf/a/j/b;->b(Lf/a/j/f;)V

    iget-object v1, p0, Lf/a/j/b;->c:Lf/a/j/f;

    iput-object v0, v1, Lf/a/j/f;->e:Lf/a/j/f;

    iput-object p1, v1, Lf/a/j/f;->f:Lf/a/j/f;

    iput-object p2, v1, Lf/a/j/f;->d:Ljava/util/List;

    iput-object v0, p0, Lf/a/j/b;->c:Lf/a/j/f;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lf/a/j/f;->c:Z

    return-void
.end method
