.class public Le/c/b/b/f$a$a;
.super Le/c/b/b/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/z<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/b/b/f$a;


# direct methods
.method public constructor <init>(Le/c/b/b/f$a;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/f$a$a;->a:Le/c/b/b/f$a;

    invoke-direct {p0}, Le/c/b/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Le/c/b/b/f$a$a;->a:Le/c/b/b/f$a;

    iget-object v0, v0, Le/c/b/b/f$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Le/c/b/b/f$a$b;

    iget-object v1, p0, Le/c/b/b/f$a$a;->a:Le/c/b/b/f$a;

    invoke-direct {v0, v1}, Le/c/b/b/f$a$b;-><init>(Le/c/b/b/f$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1}, Le/c/b/b/f$a$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Le/c/b/b/f$a$a;->a:Le/c/b/b/f$a;

    iget-object v0, v0, Le/c/b/b/f$a;->d:Le/c/b/b/f;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 1
    iget-object v1, v0, Le/c/b/b/f;->e:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget v1, v0, Le/c/b/b/f;->f:I

    sub-int/2addr v1, p1

    iput v1, v0, Le/c/b/b/f;->f:I

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    throw v2
.end method
