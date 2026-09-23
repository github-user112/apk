.class public abstract Lz/d2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lz/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz/g0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v3, v2}, Lz/g0;-><init>(ILw8/c;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lz/d2;->a:Lz/g0;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Lk2/m0;Ly8/a;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lz/w1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lz/w1;

    .line 7
    .line 8
    iget v1, v0, Lz/w1;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/w1;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/w1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lz/w1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/w1;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lz/w1;->d:Lk2/m0;

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    iput-object p0, v0, Lz/w1;->d:Lk2/m0;

    .line 52
    .line 53
    iput v2, v0, Lz/w1;->f:I

    .line 54
    .line 55
    invoke-static {p0, v0}, La2/f;->r(Lk2/m0;Ly8/a;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 60
    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_2
    check-cast p1, Lk2/o;

    .line 65
    .line 66
    iget-object v1, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    :goto_3
    if-ge v5, v3, :cond_4

    .line 75
    .line 76
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lk2/w;

    .line 81
    .line 82
    invoke-virtual {v6}, Lk2/w;->a()V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    iget-object p1, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_4
    if-ge v4, v1, :cond_6

    .line 95
    .line 96
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lk2/w;

    .line 101
    .line 102
    iget-boolean v3, v3, Lk2/w;->d:Z

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 111
    .line 112
    return-object p0
.end method

.method public static final b(Lk2/m0;ZLk2/p;Ly8/a;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lz/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lz/t1;

    .line 7
    .line 8
    iget v1, v0, Lz/t1;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/t1;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/t1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lz/t1;->g:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/t1;->h:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-boolean p0, v0, Lz/t1;->f:Z

    .line 35
    .line 36
    iget-object p1, v0, Lz/t1;->e:Lk2/p;

    .line 37
    .line 38
    iget-object p2, v0, Lz/t1;->d:Lk2/m0;

    .line 39
    .line 40
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v4, p1

    .line 44
    move p1, p0

    .line 45
    move-object p0, p2

    .line 46
    move-object p2, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iput-object p0, v0, Lz/t1;->d:Lk2/m0;

    .line 60
    .line 61
    iput-object p2, v0, Lz/t1;->e:Lk2/p;

    .line 62
    .line 63
    iput-boolean p1, v0, Lz/t1;->f:Z

    .line 64
    .line 65
    iput v2, v0, Lz/t1;->h:I

    .line 66
    .line 67
    invoke-virtual {p0, p2, v0}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 72
    .line 73
    if-ne p3, v1, :cond_4

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_4
    :goto_1
    check-cast p3, Lk2/o;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-static {p3, p1, v1}, Lz/d2;->f(Lk2/o;ZZ)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    iget-object p0, p3, Lk2/o;->a:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static synthetic c(Lk2/m0;Ly8/h;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    sget-object p2, Lk2/p;->b:Lk2/p;

    .line 8
    .line 9
    invoke-static {p0, v0, p2, p1}, Lz/d2;->b(Lk2/m0;ZLk2/p;Ly8/a;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final d(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lz/u1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lz/u1;

    .line 7
    .line 8
    iget v1, v0, Lz/u1;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/u1;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/u1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lz/u1;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/u1;->g:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lz/u1;->e:Lk2/p;

    .line 35
    .line 36
    iget-object p1, v0, Lz/u1;->d:Lk2/m0;

    .line 37
    .line 38
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v4, p1

    .line 42
    move-object p1, p0

    .line 43
    move-object p0, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iput-object p0, v0, Lz/u1;->d:Lk2/m0;

    .line 57
    .line 58
    iput-object p1, v0, Lz/u1;->e:Lk2/p;

    .line 59
    .line 60
    iput v2, v0, Lz/u1;->g:I

    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 67
    .line 68
    if-ne p2, v1, :cond_4

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_4
    :goto_1
    check-cast p2, Lk2/o;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-static {p2, v1, v2}, Lz/d2;->f(Lk2/o;ZZ)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    iget-object p0, p2, Lk2/o;->a:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public static e(Lk2/a0;Lc1/f2;Lf9/k;Ly8/i;I)Ljava/lang/Object;
    .locals 8

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Lz/d2;->a:Lz/g0;

    .line 6
    .line 7
    :cond_0
    move-object v2, p1

    .line 8
    new-instance v0, Lr2/z2;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x4

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v5, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lr2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p3}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 24
    .line 25
    if-ne p0, p1, :cond_1

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final f(Lk2/o;ZZ)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    iget-object p2, p0, Lk2/o;->a:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lk2/w;

    .line 18
    .line 19
    iget v3, v3, Lk2/w;->i:I

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p2, p0, Lk2/o;->d:I

    .line 28
    .line 29
    and-int/lit8 p2, p2, 0x21

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return v0

    .line 35
    :cond_2
    :goto_1
    iget-object p0, p0, Lk2/o;->a:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_2
    const/4 v2, 0x1

    .line 43
    if-ge v1, p2, :cond_6

    .line 44
    .line 45
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lk2/w;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Lk2/w;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    iget-boolean v4, v3, Lk2/w;->h:Z

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    iget-boolean v3, v3, Lk2/w;->d:Z

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    const/4 v2, 0x0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    invoke-static {v3}, Lk2/v;->a(Lk2/w;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :goto_3
    if-nez v2, :cond_5

    .line 75
    .line 76
    return v0

    .line 77
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    return v2
.end method

.method public static g(Lac/w;Lac/v0;Lf9/n;)Lac/j1;
    .locals 2

    .line 1
    new-instance v0, Lb1/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lb1/f;-><init>(Lac/v0;Lf9/n;Lw8/c;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {p0, v1, v0, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final h(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lz/b2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lz/b2;

    .line 7
    .line 8
    iget v1, v0, Lz/b2;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/b2;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/b2;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lz/b2;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/b2;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lz/b2;->d:Lg9/x;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Lk2/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lg9/x;

    .line 52
    .line 53
    invoke-direct {p2}, Lg9/x;-><init>()V

    .line 54
    .line 55
    .line 56
    sget-object v1, Lz/l0;->a:Lz/l0;

    .line 57
    .line 58
    iput-object v1, p2, Lg9/x;->b:Ljava/lang/Object;

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {p0}, Lk2/m0;->d()Lr2/q2;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Lr2/q2;->b()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    new-instance v1, Ll0/v0;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x4

    .line 72
    invoke-direct {v1, p1, p2, v5, v6}, Ll0/v0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 73
    .line 74
    .line 75
    iput-object p2, v0, Lz/b2;->d:Lg9/x;

    .line 76
    .line 77
    iput v2, v0, Lz/b2;->f:I

    .line 78
    .line 79
    invoke-virtual {p0, v3, v4, v1, v0}, Lk2/m0;->e(JLf9/n;Ly8/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_1
    .catch Lk2/q; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 84
    .line 85
    if-ne p0, p1, :cond_3

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_3
    move-object p0, p2

    .line 89
    :goto_1
    iget-object p0, p0, Lg9/x;->b:Ljava/lang/Object;

    .line 90
    .line 91
    return-object p0

    .line 92
    :catch_0
    sget-object p0, Lz/n0;->a:Lz/n0;

    .line 93
    .line 94
    return-object p0
.end method

.method public static final i(Lk2/m0;Lk2/p;Ly8/a;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p2, Lz/c2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lz/c2;

    .line 7
    .line 8
    iget v1, v0, Lz/c2;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lz/c2;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/c2;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lz/c2;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/c2;->g:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lx8/a;->a:Lx8/a;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    if-eq v1, v4, :cond_3

    .line 37
    .line 38
    if-ne v1, v2, :cond_2

    .line 39
    .line 40
    iget-object p0, v0, Lz/c2;->e:Lk2/p;

    .line 41
    .line 42
    iget-object p1, v0, Lz/c2;->d:Lk2/m0;

    .line 43
    .line 44
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    move-object v12, p1

    .line 48
    move-object p1, p0

    .line 49
    move-object p0, v12

    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    iget-object p0, v0, Lz/c2;->e:Lk2/p;

    .line 61
    .line 62
    iget-object p1, v0, Lz/c2;->d:Lk2/m0;

    .line 63
    .line 64
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iput-object p0, v0, Lz/c2;->d:Lk2/m0;

    .line 72
    .line 73
    iput-object p1, v0, Lz/c2;->e:Lk2/p;

    .line 74
    .line 75
    iput v4, v0, Lz/c2;->g:I

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p2, v5, :cond_6

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    move-object v12, p1

    .line 85
    move-object p1, p0

    .line 86
    move-object p0, v12

    .line 87
    :goto_1
    check-cast p2, Lk2/o;

    .line 88
    .line 89
    iget-object p2, p2, Lk2/o;->a:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v6, 0x0

    .line 96
    :goto_2
    if-ge v6, v1, :cond_c

    .line 97
    .line 98
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Lk2/w;

    .line 103
    .line 104
    invoke-static {v7}, Lk2/v;->b(Lk2/w;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_b

    .line 109
    .line 110
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v6, 0x0

    .line 115
    :goto_3
    if-ge v6, v1, :cond_8

    .line 116
    .line 117
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Lk2/w;

    .line 122
    .line 123
    invoke-virtual {v7}, Lk2/w;->b()Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_9

    .line 128
    .line 129
    iget-object v8, p1, Lk2/m0;->f:Lk2/n0;

    .line 130
    .line 131
    iget-wide v8, v8, Lk2/n0;->x:J

    .line 132
    .line 133
    invoke-virtual {p1}, Lk2/m0;->c()J

    .line 134
    .line 135
    .line 136
    move-result-wide v10

    .line 137
    invoke-static {v7, v8, v9, v10, v11}, Lk2/v;->e(Lk2/w;JJ)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_8
    iput-object p1, v0, Lz/c2;->d:Lk2/m0;

    .line 148
    .line 149
    iput-object p0, v0, Lz/c2;->e:Lk2/p;

    .line 150
    .line 151
    iput v2, v0, Lz/c2;->g:I

    .line 152
    .line 153
    sget-object p2, Lk2/p;->c:Lk2/p;

    .line 154
    .line 155
    invoke-virtual {p1, p2, v0}, Lk2/m0;->b(Lk2/p;Ly8/a;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    if-ne p2, v5, :cond_1

    .line 160
    .line 161
    :goto_4
    return-object v5

    .line 162
    :goto_5
    check-cast p2, Lk2/o;

    .line 163
    .line 164
    iget-object p2, p2, Lk2/o;->a:Ljava/lang/Object;

    .line 165
    .line 166
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    const/4 v6, 0x0

    .line 171
    :goto_6
    if-ge v6, v1, :cond_5

    .line 172
    .line 173
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    check-cast v7, Lk2/w;

    .line 178
    .line 179
    invoke-virtual {v7}, Lk2/w;->b()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-eqz v7, :cond_a

    .line 184
    .line 185
    :cond_9
    :goto_7
    const/4 p0, 0x0

    .line 186
    return-object p0

    .line 187
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_c
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0
.end method
