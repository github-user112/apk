.class public La/a/b/n/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lb/h/b/c0;

.field public b:La/a/b/n/g;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 9

    const-string v0, "CarLifeFragmentManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lb/h/b/p;->Q0()Lb/h/b/c0;

    move-result-object p1

    iput-object p1, p0, La/a/b/n/k;->a:Lb/h/b/c0;

    .line 1
    new-instance v3, Lb/h/b/a;

    invoke-direct {v3, p1}, Lb/h/b/a;-><init>(Lb/h/b/c0;)V

    .line 2
    iget-object p1, p0, La/a/b/n/k;->a:Lb/h/b/c0;

    invoke-virtual {p1}, Lb/h/b/c0;->J()Ljava/util/List;

    move-result-object p1

    invoke-static {}, La/a/b/n/s;->C0()La/a/b/n/s;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mListFragment size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/h/b/m;

    invoke-virtual {v3, v7}, Lb/h/b/a;->m(Lb/h/b/m;)Lb/h/b/k0;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v5, "mListFragment is null"

    aput-object v5, p1, v2

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Lb/h/b/m;->A()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0900a5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {v3, p1, v4, v5, v1}, Lb/h/b/a;->f(ILb/h/b/m;Ljava/lang/String;I)V

    .line 4
    :cond_2
    invoke-virtual {v3}, Lb/h/b/a;->d()I

    iput-object v4, p0, La/a/b/n/k;->b:La/a/b/n/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "CarLifeFragmentManager create fail"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(La/a/b/n/g;)V
    .locals 8

    if-eqz p1, :cond_4

    iget-object v0, p0, La/a/b/n/k;->b:La/a/b/n/g;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lb/h/b/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, La/a/b/n/k;->a:Lb/h/b/c0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/h/b/c0;->G(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v0

    iget-object v1, p0, La/a/b/n/k;->a:Lb/h/b/c0;

    .line 1
    new-instance v2, Lb/h/b/a;

    invoke-direct {v2, v1}, Lb/h/b/a;-><init>(Lb/h/b/c0;)V

    .line 2
    const-class v1, La/a/b/n/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, La/a/b/n/k;->b:La/a/b/n/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "CarLifeFragmentManager"

    const/4 v5, 0x1

    if-nez v1, :cond_1

    :try_start_1
    const-class v1, La/a/b/n/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, La/a/b/n/k;->b:La/a/b/n/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, La/a/b/n/k;->b:La/a/b/n/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v4, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, La/a/b/n/k;->b:La/a/b/n/g;

    invoke-virtual {v2, v1}, Lb/h/b/a;->m(Lb/h/b/m;)Lb/h/b/k0;

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, La/a/b/n/k;->b:La/a/b/n/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v4, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, La/a/b/n/k;->b:La/a/b/n/g;

    invoke-virtual {v2, v1}, Lb/h/b/a;->j(Lb/h/b/m;)Lb/h/b/k0;

    :goto_1
    if-eqz v0, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v4, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lb/h/b/a;->n(Lb/h/b/m;)Lb/h/b/k0;

    goto :goto_2

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lb/h/b/m;->A()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0900a5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v2, v0, p1, v1, v5}, Lb/h/b/a;->f(ILb/h/b/m;Ljava/lang/String;I)V

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lb/h/b/a;->d()I

    iput-object p1, p0, La/a/b/n/k;->b:La/a/b/n/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method
