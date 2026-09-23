.class public La/d/a/f/l;
.super La/d/a/f/a;
.source ""


# direct methods
.method public constructor <init>(La/d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, La/d/a/f/a;-><init>(La/d/a/f/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v1, v1, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    invoke-virtual {p1, v0, p0}, La/d/a/f/i;->f(Ljava/util/Set;La/d/a/f/b;)V

    return-void
.end method

.method public c()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v1, v1, La/d/a/f/i;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v3, v3, La/d/a/f/i;->a:Lb/h/b/p;

    invoke-static {v3, v2}, Lb/e/b/g;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v3, v3, La/d/a/f/i;->j:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, La/d/a/f/a;->b()V

    return-void

    :cond_2
    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v1, v0, La/d/a/f/i;->f:Ljava/util/Set;

    invoke-virtual {v0, v1, p0}, La/d/a/f/i;->f(Ljava/util/Set;La/d/a/f/b;)V

    return-void
.end method
