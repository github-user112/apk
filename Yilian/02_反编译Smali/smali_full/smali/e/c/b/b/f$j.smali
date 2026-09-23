.class public Le/c/b/b/f$j;
.super Le/c/b/b/f$i;
.source ""

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/b/f$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/f<",
        "TK;TV;>.i;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Le/c/b/b/f;


# direct methods
.method public constructor <init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/List;Le/c/b/b/f$i;)V
    .locals 0
    .param p1    # Le/c/b/b/f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Le/c/b/b/f<",
            "TK;TV;>.i;)V"
        }
    .end annotation

    iput-object p1, p0, Le/c/b/b/f$j;->f:Le/c/b/b/f;

    invoke-direct {p0, p1, p2, p3, p4}, Le/c/b/b/f$i;-><init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/Collection;Le/c/b/b/f$i;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    .line 1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 4
    check-cast v1, Ljava/util/List;

    .line 5
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Le/c/b/b/f$j;->f:Le/c/b/b/f;

    invoke-static {p1}, Le/c/b/b/f;->f(Le/c/b/b/f;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/c/b/b/f$i;->a()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Le/c/b/b/f$i;->size()I

    move-result v0

    .line 1
    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v1, Ljava/util/List;

    .line 3
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    iget-object v1, p0, Le/c/b/b/f$j;->f:Le/c/b/b/f;

    .line 6
    iget v2, v1, Le/c/b/b/f;->f:I

    sub-int/2addr p2, v0

    add-int/2addr p2, v2

    .line 7
    iput p2, v1, Le/c/b/b/f;->f:I

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Le/c/b/b/f$i;->a()V

    :cond_1
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    .line 1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    .line 1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    .line 1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    new-instance v0, Le/c/b/b/f$j$a;

    invoke-direct {v0, p0}, Le/c/b/b/f$j$a;-><init>(Le/c/b/b/f$j;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    new-instance v0, Le/c/b/b/f$j$a;

    invoke-direct {v0, p0, p1}, Le/c/b/b/f$j$a;-><init>(Le/c/b/b/f$j;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    .line 1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Le/c/b/b/f$j;->f:Le/c/b/b/f;

    invoke-static {v0}, Le/c/b/b/f;->g(Le/c/b/b/f;)I

    invoke-virtual {p0}, Le/c/b/b/f$i;->c()V

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    .line 1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$j;->f:Le/c/b/b/f;

    .line 1
    iget-object v1, p0, Le/c/b/b/f$i;->a:Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 3
    check-cast v2, Ljava/util/List;

    .line 4
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/c/b/b/f$i;->c:Le/c/b/b/f$i;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    if-eqz v0, :cond_2

    .line 6
    instance-of v2, p1, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Le/c/b/b/f$f;

    invoke-direct {v2, v0, v1, p1, p2}, Le/c/b/b/f$f;-><init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/List;Le/c/b/b/f$i;)V

    goto :goto_0

    :cond_1
    new-instance v2, Le/c/b/b/f$j;

    invoke-direct {v2, v0, v1, p1, p2}, Le/c/b/b/f$j;-><init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/List;Le/c/b/b/f$i;)V

    :goto_0
    return-object v2

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method
