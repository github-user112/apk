.class public La/d/a/f/j;
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    .line 1
    invoke-virtual {p1}, La/d/a/f/i;->c()La/d/a/f/e;

    move-result-object v0

    .line 2
    iput-object p1, v0, La/d/a/f/e;->V:La/d/a/f/i;

    iput-object p0, v0, La/d/a/f/e;->W:La/d/a/f/b;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v2, p1, v1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lb/h/b/m;->o0([Ljava/lang/String;I)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    .line 1
    iget-object v0, v0, La/d/a/f/i;->g:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->i:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->a:Lb/h/b/p;

    invoke-static {v0, v1}, Lb/e/b/g;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/d/a/f/a;->b()V

    return-void

    :cond_1
    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->a:Lb/h/b/p;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lb/e/b/g;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v2, v2, La/d/a/f/i;->a:Lb/h/b/p;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Lb/e/b/g;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->p:La/d/a/c/a;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/d/a/f/j;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v1, v1, La/d/a/f/i;->p:La/d/a/c/a;

    .line 3
    iget-object v2, p0, La/d/a/f/a;->b:La/d/a/f/c;

    .line 4
    invoke-interface {v1, v2, v0}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, La/d/a/f/a;->b()V

    return-void
.end method
