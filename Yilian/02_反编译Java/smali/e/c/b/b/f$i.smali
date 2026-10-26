.class public Le/c/b/b/f$i;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/b/f$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Le/c/b/b/f$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/f<",
            "TK;TV;>.i;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public final synthetic e:Le/c/b/b/f;


# direct methods
.method public constructor <init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/Collection;Le/c/b/b/f$i;)V
    .locals 0
    .param p1    # Le/c/b/b/f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Le/c/b/b/f<",
            "TK;TV;>.i;)V"
        }
    .end annotation

    iput-object p1, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Le/c/b/b/f$i;->a:Ljava/lang/Object;

    iput-object p3, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    iput-object p4, p0, Le/c/b/b/f$i;->c:Le/c/b/b/f$i;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p4, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    :goto_0
    iput-object p1, p0, Le/c/b/b/f$i;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Le/c/b/b/f$i;->c:Le/c/b/b/f$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/c/b/b/f$i;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 1
    iget-object v0, v0, Le/c/b/b/f;->e:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Le/c/b/b/f$i;->a:Ljava/lang/Object;

    iget-object v2, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    invoke-static {v1}, Le/c/b/b/f;->f(Le/c/b/b/f;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/c/b/b/f$i;->a()V

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Le/c/b/b/f$i;->size()I

    move-result v0

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 1
    iget v3, v2, Le/c/b/b/f;->f:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 2
    iput v1, v2, Le/c/b/b/f;->f:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/c/b/b/f$i;->a()V

    :cond_1
    return p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Le/c/b/b/f$i;->c:Le/c/b/b/f$i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->c:Le/c/b/b/f$i;

    .line 1
    iget-object v0, v0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    iget-object v1, p0, Le/c/b/b/f$i;->d:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 3
    iget-object v0, v0, Le/c/b/b/f;->e:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Le/c/b/b/f$i;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Le/c/b/b/f$i;->c:Le/c/b/b/f$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/c/b/b/f$i;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 1
    iget-object v0, v0, Le/c/b/b/f;->e:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Le/c/b/b/f$i;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    invoke-virtual {p0}, Le/c/b/b/f$i;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 1
    iget v2, v1, Le/c/b/b/f;->f:I

    sub-int/2addr v2, v0

    .line 2
    iput v2, v1, Le/c/b/b/f;->f:I

    .line 3
    invoke-virtual {p0}, Le/c/b/b/f$i;->c()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    new-instance v0, Le/c/b/b/f$i$a;

    invoke-direct {v0, p0}, Le/c/b/b/f$i$a;-><init>(Le/c/b/b/f$i;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    invoke-static {v0}, Le/c/b/b/f;->g(Le/c/b/b/f;)I

    invoke-virtual {p0}, Le/c/b/b/f$i;->c()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Le/c/b/b/f$i;->size()I

    move-result v0

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 1
    iget v3, v2, Le/c/b/b/f;->f:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 2
    iput v1, v2, Le/c/b/b/f;->f:I

    .line 3
    invoke-virtual {p0}, Le/c/b/b/f$i;->c()V

    :cond_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/c/b/b/f$i;->size()I

    move-result v0

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    .line 1
    iget v3, v2, Le/c/b/b/f;->f:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 2
    iput v1, v2, Le/c/b/b/f;->f:I

    .line 3
    invoke-virtual {p0}, Le/c/b/b/f$i;->c()V

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
