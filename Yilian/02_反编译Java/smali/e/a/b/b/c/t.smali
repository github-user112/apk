.class public final Le/a/b/b/c/t;
.super Le/a/b/b/c/c0;
.source ""


# instance fields
.field public final f:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Le/a/b/d/c/j;",
            "Le/a/b/b/c/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/b/c/m;)V
    .locals 1

    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Le/a/b/b/c/c0;-><init>(Ljava/lang/String;Le/a/b/b/c/m;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Le/a/b/b/c/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public m(Le/a/b/d/c/j;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/a/b/b/c/l0;->g()V

    iget-object v0, p0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/b/b/c/x;->e()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ref == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized n(Le/a/b/d/c/j;)Le/a/b/b/c/s;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Le/a/b/b/c/l0;->h()V

    iget-object v0, p0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/b/c/s;

    if-nez v0, :cond_0

    new-instance v0, Le/a/b/b/c/s;

    invoke-direct {v0, p1}, Le/a/b/b/c/s;-><init>(Le/a/b/d/c/j;)V

    iget-object v1, p0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
