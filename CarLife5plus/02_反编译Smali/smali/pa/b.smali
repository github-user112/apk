.class public final Lpa/b;
.super Lva/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lva/u;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpa/b;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Lva/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lva/a;
    .locals 2

    .line 1
    iget v0, p0, Lpa/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lpa/b;->e()Lpa/l;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lpa/l;->isInitialized()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lac/p;

    .line 18
    .line 19
    invoke-direct {v0}, Lac/p;-><init>()V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :pswitch_0
    invoke-virtual {p0}, Lpa/b;->d()Lpa/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lpa/f;->isInitialized()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lac/p;

    .line 35
    .line 36
    invoke-direct {v0}, Lac/p;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lva/e;Lva/g;)Lva/i;
    .locals 2

    .line 1
    iget v0, p0, Lpa/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    :try_start_0
    sget-object v0, Lpa/l;->h:Lpa/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lpa/l;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lpa/l;-><init>(Lva/e;)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lpa/b;->g(Lpa/l;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    iget-object v0, p1, Lva/q;->a:Lva/a;

    .line 25
    .line 26
    check-cast v0, Lpa/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    move-object p2, v0

    .line 31
    :goto_0
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lpa/b;->g(Lpa/l;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    throw p1

    .line 37
    :pswitch_0
    const/4 v0, 0x0

    .line 38
    :try_start_3
    sget-object v1, Lpa/f;->h:Lpa/a;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Lpa/f;

    .line 44
    .line 45
    invoke-direct {v1, p1, p2}, Lpa/f;-><init>(Lva/e;Lva/g;)V
    :try_end_3
    .catch Lva/q; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lpa/b;->f(Lpa/f;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catchall_2
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception p1

    .line 55
    :try_start_4
    iget-object p2, p1, Lva/q;->a:Lva/a;

    .line 56
    .line 57
    check-cast p2, Lpa/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    .line 59
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 60
    :catchall_3
    move-exception p1

    .line 61
    move-object v0, p2

    .line 62
    :goto_1
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lpa/b;->f(Lpa/f;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    throw p1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic c(Lva/n;)Lva/i;
    .locals 1

    .line 1
    iget v0, p0, Lpa/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lpa/l;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lpa/b;->g(Lpa/l;)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    check-cast p1, Lpa/f;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lpa/b;->f(Lpa/f;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lpa/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lpa/b;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Lpa/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lva/d;->a:Lva/t;

    .line 13
    .line 14
    iput-object v1, v0, Lpa/b;->e:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0}, Lpa/b;->e()Lpa/l;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lpa/b;->g(Lpa/l;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, Lpa/b;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lpa/b;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lpa/e;->p:Lpa/e;

    .line 31
    .line 32
    iput-object v1, v0, Lpa/b;->e:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {p0}, Lpa/b;->d()Lpa/f;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lpa/b;->f(Lpa/f;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lpa/f;
    .locals 4

    .line 1
    new-instance v0, Lpa/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lpa/f;-><init>(Lpa/b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lpa/b;->c:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lpa/b;->d:I

    .line 16
    .line 17
    iput v2, v0, Lpa/f;->c:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    and-int/2addr v1, v2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    or-int/lit8 v3, v3, 0x2

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lpa/b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lpa/e;

    .line 28
    .line 29
    iput-object v1, v0, Lpa/f;->d:Lpa/e;

    .line 30
    .line 31
    iput v3, v0, Lpa/f;->b:I

    .line 32
    .line 33
    return-object v0
.end method

.method public e()Lpa/l;
    .locals 4

    .line 1
    new-instance v0, Lpa/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lpa/l;-><init>(Lpa/b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lpa/b;->c:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lpa/b;->d:I

    .line 16
    .line 17
    iput v2, v0, Lpa/l;->c:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    and-int/2addr v1, v2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    or-int/lit8 v3, v3, 0x2

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lpa/b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lva/t;

    .line 28
    .line 29
    iput-object v1, v0, Lpa/l;->d:Lva/t;

    .line 30
    .line 31
    iput v3, v0, Lpa/l;->b:I

    .line 32
    .line 33
    return-object v0
.end method

.method public f(Lpa/f;)V
    .locals 4

    .line 1
    sget-object v0, Lpa/f;->g:Lpa/f;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lpa/f;->b:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    iget v1, p1, Lpa/f;->c:I

    .line 14
    .line 15
    iget v3, p0, Lpa/b;->c:I

    .line 16
    .line 17
    or-int/2addr v2, v3

    .line 18
    iput v2, p0, Lpa/b;->c:I

    .line 19
    .line 20
    iput v1, p0, Lpa/b;->d:I

    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x2

    .line 23
    and-int/2addr v0, v1

    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    iget-object v0, p1, Lpa/f;->d:Lpa/e;

    .line 27
    .line 28
    iget v2, p0, Lpa/b;->c:I

    .line 29
    .line 30
    and-int/2addr v2, v1

    .line 31
    if-ne v2, v1, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lpa/b;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lpa/e;

    .line 36
    .line 37
    sget-object v3, Lpa/e;->p:Lpa/e;

    .line 38
    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lpa/c;->e()Lpa/c;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Lpa/c;->f(Lpa/e;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lpa/c;->f(Lpa/e;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lpa/c;->d()Lpa/e;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lpa/b;->e:Ljava/lang/Object;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iput-object v0, p0, Lpa/b;->e:Ljava/lang/Object;

    .line 59
    .line 60
    :goto_0
    iget v0, p0, Lpa/b;->c:I

    .line 61
    .line 62
    or-int/2addr v0, v1

    .line 63
    iput v0, p0, Lpa/b;->c:I

    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lva/i;->a:Lva/d;

    .line 66
    .line 67
    iget-object p1, p1, Lpa/f;->a:Lva/d;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lva/d;->d(Lva/d;)Lva/d;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lva/i;->a:Lva/d;

    .line 74
    .line 75
    return-void
.end method

.method public g(Lpa/l;)V
    .locals 4

    .line 1
    sget-object v0, Lpa/l;->g:Lpa/l;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lpa/l;->b:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    iget v1, p1, Lpa/l;->c:I

    .line 14
    .line 15
    iget v3, p0, Lpa/b;->c:I

    .line 16
    .line 17
    or-int/2addr v2, v3

    .line 18
    iput v2, p0, Lpa/b;->c:I

    .line 19
    .line 20
    iput v1, p0, Lpa/b;->d:I

    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x2

    .line 23
    and-int/2addr v0, v1

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    iget-object v0, p1, Lpa/l;->d:Lva/t;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lpa/b;->c:I

    .line 32
    .line 33
    or-int/2addr v1, v2

    .line 34
    iput v1, p0, Lpa/b;->c:I

    .line 35
    .line 36
    iput-object v0, p0, Lpa/b;->e:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lva/i;->a:Lva/d;

    .line 39
    .line 40
    iget-object p1, p1, Lpa/l;->a:Lva/d;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lva/d;->d(Lva/d;)Lva/d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lva/i;->a:Lva/d;

    .line 47
    .line 48
    return-void
.end method
