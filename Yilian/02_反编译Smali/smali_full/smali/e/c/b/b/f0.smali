.class public Le/c/b/b/f0;
.super Le/c/b/b/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient g:Le/c/b/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/a/k<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Le/c/b/a/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Le/c/b/a/k<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/c/b/b/c;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/c/b/b/f0;->g:Le/c/b/a/k;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v0, Le/c/b/b/f$d;

    iget-object v1, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Le/c/b/b/f$d;-><init>(Le/c/b/b/f;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    new-instance v0, Le/c/b/b/f$g;

    iget-object v1, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Le/c/b/b/f$g;-><init>(Le/c/b/b/f;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Le/c/b/b/f$a;

    iget-object v1, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Le/c/b/b/f$a;-><init>(Le/c/b/b/f;Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v0, Le/c/b/b/f$e;

    iget-object v1, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Le/c/b/b/f$e;-><init>(Le/c/b/b/f;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    new-instance v0, Le/c/b/b/f$h;

    iget-object v1, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Le/c/b/b/f$h;-><init>(Le/c/b/b/f;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Le/c/b/b/f$c;

    iget-object v1, p0, Le/c/b/b/f;->e:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Le/c/b/b/f$c;-><init>(Le/c/b/b/f;Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/b/b/f0;->g:Le/c/b/a/k;

    invoke-interface {v0}, Le/c/b/a/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
