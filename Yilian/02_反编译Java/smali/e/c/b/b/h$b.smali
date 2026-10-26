.class public Le/c/b/b/h$b;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/b/b/h;


# direct methods
.method public constructor <init>(Le/c/b/b/h;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/h$b;->a:Le/c/b/b/h;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Le/c/b/b/h$b;->a:Le/c/b/b/h;

    invoke-interface {v0}, Le/c/b/b/d0;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Le/c/b/b/h$b;->a:Le/c/b/b/h;

    .line 1
    invoke-virtual {v0}, Le/c/b/b/h;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/h$b;->a:Le/c/b/b/h;

    check-cast v0, Le/c/b/b/f;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Le/c/b/b/d;

    invoke-direct {v1, v0}, Le/c/b/b/d;-><init>(Le/c/b/b/f;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Le/c/b/b/h$b;->a:Le/c/b/b/h;

    invoke-interface {v0}, Le/c/b/b/d0;->size()I

    move-result v0

    return v0
.end method
