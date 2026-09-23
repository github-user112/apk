.class public abstract Le/a/b/b/c/s0;
.super Le/a/b/b/c/l0;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/b/b/c/m;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/a/b/b/c/l0;-><init>(Ljava/lang/String;Le/a/b/b/c/m;I)V

    return-void
.end method


# virtual methods
.method public final a(Le/a/b/b/c/y;)I
    .locals 1

    check-cast p1, Le/a/b/b/c/x;

    invoke-virtual {p1}, Le/a/b/b/c/x;->e()I

    move-result v0

    invoke-virtual {p1}, Le/a/b/b/c/y;->c()I

    move-result p1

    mul-int p1, p1, v0

    invoke-virtual {p0, p1}, Le/a/b/b/c/l0;->b(I)I

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    .line 2
    invoke-virtual {p0}, Le/a/b/b/c/s0;->l()V

    invoke-virtual {p0}, Le/a/b/b/c/l0;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/c/y;

    invoke-virtual {v2, v0}, Le/a/b/b/c/y;->a(Le/a/b/b/c/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Le/a/b/b/c/l0;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/b/c/y;

    invoke-virtual {v0}, Le/a/b/b/c/y;->c()I

    move-result v0

    mul-int v0, v0, v1

    return v0
.end method

.method public final k(Le/a/b/f/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    .line 2
    iget v1, p0, Le/a/b/b/c/l0;->c:I

    .line 3
    invoke-virtual {p0}, Le/a/b/b/c/l0;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/b/c/y;

    invoke-virtual {v3, v0, p1}, Le/a/b/b/c/y;->d(Le/a/b/b/c/m;Le/a/b/f/a;)V

    move-object v3, p1

    check-cast v3, Le/a/b/f/c;

    invoke-virtual {v3, v1}, Le/a/b/f/c;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract l()V
.end method
