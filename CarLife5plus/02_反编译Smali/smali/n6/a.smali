.class public final Ln6/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo/x;
.implements Landroidx/lifecycle/q0;
.implements Lw8/g;
.implements Lj2/a;
.implements Lz4/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln6/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb1/a;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, Ln6/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final g(F[F[F)F
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    aget p0, p2, v2

    .line 16
    .line 17
    mul-float v1, v1, p0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    neg-int v2, v2

    .line 23
    add-int/lit8 v3, v2, -0x1

    .line 24
    .line 25
    array-length v4, p1

    .line 26
    add-int/lit8 v4, v4, -0x1

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-lt v3, v4, :cond_2

    .line 30
    .line 31
    array-length v0, p1

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    aget v0, p1, v0

    .line 35
    .line 36
    array-length p1, p1

    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    aget p1, p2, p1

    .line 40
    .line 41
    cmpg-float p2, v0, v5

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    return v5

    .line 46
    :cond_1
    div-float/2addr p1, v0

    .line 47
    mul-float p1, p1, p0

    .line 48
    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p0, -0x1

    .line 51
    if-ne v3, p0, :cond_3

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    aget p1, p1, p0

    .line 55
    .line 56
    aget p0, p2, p0

    .line 57
    .line 58
    move p2, p1

    .line 59
    const/4 p1, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    aget p0, p1, v3

    .line 63
    .line 64
    aget p1, p1, v2

    .line 65
    .line 66
    aget v3, p2, v3

    .line 67
    .line 68
    aget p2, p2, v2

    .line 69
    .line 70
    move v6, p1

    .line 71
    move p1, p0

    .line 72
    move p0, p2

    .line 73
    move p2, v6

    .line 74
    :goto_0
    cmpg-float v2, p1, p2

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    sub-float/2addr v0, p1

    .line 81
    sub-float/2addr p2, p1

    .line 82
    div-float/2addr v0, p2

    .line 83
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    .line 85
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    sub-float/2addr p0, v3

    .line 94
    mul-float p0, p0, p1

    .line 95
    .line 96
    add-float/2addr p0, v3

    .line 97
    mul-float p0, p0, v1

    .line 98
    .line 99
    return p0
.end method

.method public static h()Lp1/f;
    .locals 1

    .line 1
    sget-object v0, Lp1/l;->b:La2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp1/f;

    .line 8
    .line 9
    return-object v0
.end method

.method public static i(FFFFI)J
    .locals 3

    .line 1
    sget v0, Ly1/q;->n:I

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x8

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    const/high16 p3, 0x3f800000    # 1.0f

    .line 10
    .line 11
    :cond_0
    sget-object p4, Lz1/d;->e:Lz1/q;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    cmpg-float v2, v1, p0

    .line 15
    .line 16
    if-gtz v2, :cond_1

    .line 17
    .line 18
    const/high16 v2, 0x43b40000    # 360.0f

    .line 19
    .line 20
    cmpg-float v2, p0, v2

    .line 21
    .line 22
    if-gtz v2, :cond_1

    .line 23
    .line 24
    cmpg-float v2, v1, p1

    .line 25
    .line 26
    if-gtz v2, :cond_1

    .line 27
    .line 28
    cmpg-float v2, p1, v0

    .line 29
    .line 30
    if-gtz v2, :cond_1

    .line 31
    .line 32
    cmpg-float v1, v1, p2

    .line 33
    .line 34
    if-gtz v1, :cond_1

    .line 35
    .line 36
    cmpg-float v0, p2, v0

    .line 37
    .line 38
    if-gtz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "HSV ("

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ") must be in range (0..360, 0..1, 0..1)"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Ly1/y;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    const/4 v0, 0x5

    .line 78
    invoke-static {p0, p1, p2, v0}, Ln6/a;->j(FFFI)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x3

    .line 83
    invoke-static {p0, p1, p2, v1}, Ln6/a;->j(FFFI)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v2, 0x1

    .line 88
    invoke-static {p0, p1, p2, v2}, Ln6/a;->j(FFFI)F

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {v0, v1, p0, p3, p4}, Ly1/h0;->b(FFFFLz1/c;)J

    .line 93
    .line 94
    .line 95
    move-result-wide p0

    .line 96
    return-wide p0
.end method

.method public static j(FFFI)F
    .locals 1

    .line 1
    int-to-float p3, p3

    .line 2
    const/high16 v0, 0x42700000    # 60.0f

    .line 3
    .line 4
    div-float/2addr p0, v0

    .line 5
    add-float/2addr p0, p3

    .line 6
    const/high16 p3, 0x40c00000    # 6.0f

    .line 7
    .line 8
    rem-float/2addr p0, p3

    .line 9
    mul-float p1, p1, p2

    .line 10
    .line 11
    const/4 p3, 0x4

    .line 12
    int-to-float p3, p3

    .line 13
    sub-float/2addr p3, p0

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    mul-float p0, p0, p1

    .line 30
    .line 31
    sub-float/2addr p2, p0

    .line 32
    return p2
.end method

.method public static k(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lz7/a;->e:Lz8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg9/b;

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v1, v2, v0}, Lg9/b;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Lg9/b;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lg9/b;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lz7/a;

    .line 24
    .line 25
    iget v2, v2, Lz7/a;->b:I

    .line 26
    .line 27
    if-ne v2, p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    check-cast v0, Lz7/a;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p0, v0, Lz7/a;->a:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "\u672a\u77e5\u52a8\u4f5c"

    .line 39
    .line 40
    return-object p0
.end method

.method public static l(Lp1/f;)Lp1/f;
    .locals 7

    .line 1
    instance-of v0, p0, Lp1/e0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lp1/e0;

    .line 8
    .line 9
    iget-wide v2, v0, Lp1/e0;->t:J

    .line 10
    .line 11
    invoke-static {}, Ln1/h;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    cmp-long v6, v2, v4

    .line 16
    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    iput-object v1, v0, Lp1/e0;->r:Lf9/k;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lp1/f0;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    check-cast v0, Lp1/f0;

    .line 28
    .line 29
    iget-wide v2, v0, Lp1/f0;->i:J

    .line 30
    .line 31
    invoke-static {}, Ln1/h;->b()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v6, v2, v4

    .line 36
    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    iput-object v1, v0, Lp1/f0;->h:Lf9/k;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v1, v0}, Lp1/l;->h(Lp1/f;Lf9/k;Z)Lp1/f;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lp1/f;->j()Lp1/f;

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public static m(Lf9/a;Lf9/k;)Ljava/lang/Object;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lp1/l;->b:La2/b;

    .line 9
    .line 10
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lp1/f;

    .line 15
    .line 16
    instance-of v1, v0, Lp1/e0;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lp1/e0;

    .line 22
    .line 23
    iget-wide v2, v1, Lp1/e0;->t:J

    .line 24
    .line 25
    invoke-static {}, Ln1/h;->b()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmp-long v6, v2, v4

    .line 30
    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    iget-object v2, v1, Lp1/e0;->r:Lf9/k;

    .line 34
    .line 35
    iget-object v3, v1, Lp1/e0;->s:Lf9/k;

    .line 36
    .line 37
    :try_start_0
    move-object v4, v0

    .line 38
    check-cast v4, Lp1/e0;

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-static {p1, v2, v5}, Lp1/l;->l(Lf9/k;Lf9/k;Z)Lf9/k;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v4, Lp1/e0;->r:Lf9/k;

    .line 46
    .line 47
    check-cast v0, Lp1/e0;

    .line 48
    .line 49
    iput-object v3, v0, Lp1/e0;->s:Lf9/k;

    .line 50
    .line 51
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iput-object v2, v1, Lp1/e0;->r:Lf9/k;

    .line 56
    .line 57
    iput-object v3, v1, Lp1/e0;->s:Lf9/k;

    .line 58
    .line 59
    return-object p0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object p0, v0

    .line 62
    iput-object v2, v1, Lp1/e0;->r:Lf9/k;

    .line 63
    .line 64
    iput-object v3, v1, Lp1/e0;->s:Lf9/k;

    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    instance-of v1, v0, Lp1/b;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    :cond_2
    move-object v1, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    if-nez p1, :cond_4

    .line 76
    .line 77
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_4
    invoke-virtual {v0, p1}, Lp1/f;->u(Lf9/k;)Lp1/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_2

    .line 87
    :goto_0
    new-instance v0, Lp1/e0;

    .line 88
    .line 89
    instance-of v2, v1, Lp1/b;

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    check-cast v1, Lp1/b;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    const/4 v1, 0x0

    .line 97
    :goto_1
    const/4 v4, 0x1

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    move-object v2, p1

    .line 101
    invoke-direct/range {v0 .. v5}, Lp1/e0;-><init>(Lp1/b;Lf9/k;Lf9/k;ZZ)V

    .line 102
    .line 103
    .line 104
    move-object p1, v0

    .line 105
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lp1/f;->j()Lp1/f;

    .line 106
    .line 107
    .line 108
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :try_start_2
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    :try_start_3
    invoke-static {v1}, Lp1/f;->q(Lp1/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lp1/f;->c()V

    .line 117
    .line 118
    .line 119
    return-object p0

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    move-object p0, v0

    .line 122
    goto :goto_3

    .line 123
    :catchall_2
    move-exception v0

    .line 124
    move-object p0, v0

    .line 125
    :try_start_4
    invoke-static {v1}, Lp1/f;->q(Lp1/f;)V

    .line 126
    .line 127
    .line 128
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    :goto_3
    invoke-virtual {p1}, Lp1/f;->c()V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method private final n()V
    .locals 0

    .line 1
    return-void
.end method

.method public static o(Ljava/util/ArrayList;Ljava/util/ArrayList;Lu0/j;)V
    .locals 3

    .line 1
    iget-object p0, p2, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/app/Activity;

    .line 4
    .line 5
    iget-object p2, p2, Lu0/j;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ly6/a;

    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ly6/a;->t(Landroid/app/Activity;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, " \u6743\u9650\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u5f00\u542f"

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-static {v0, p2}, Ll8/c;->g(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1, v0}, Lc7/a;->t(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, La2/d;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-direct {p2, v0, p0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    const/16 v1, 0x401

    .line 73
    .line 74
    invoke-static {p0, p2, p1, v1, v0}, Lm9/e0;->F0(Landroid/app/Activity;Lb7/a;Ljava/util/List;ILandroidx/lifecycle/z;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 79
    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " \u6743\u9650\u83b7\u53d6\u5931\u8d25"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v1, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " \u6743\u9650\u83b7\u53d6\u6210\u529f"

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private final q(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static s(La8/d;)Lg4/e;
    .locals 2

    .line 1
    sget-object v0, Lp1/l;->a:Lm7/j;

    .line 2
    .line 3
    invoke-static {v0}, Lp1/l;->f(Lf9/k;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lp1/l;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lp1/l;->h:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v1, p0}, Ls8/p;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lp1/l;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    new-instance v0, Lg4/e;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lg4/e;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public static t(Lp1/f;Lp1/f;Lf9/k;)V
    .locals 1

    .line 1
    if-ne p0, p1, :cond_2

    .line 2
    .line 3
    instance-of p1, p0, Lp1/e0;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p0, Lp1/e0;

    .line 8
    .line 9
    iput-object p2, p0, Lp1/e0;->r:Lf9/k;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of p1, p0, Lp1/f0;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p0, Lp1/f0;

    .line 17
    .line 18
    iput-object p2, p0, Lp1/f0;->h:Lf9/k;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "Non-transparent snapshot was reused: "

    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lp1/f;->q(Lp1/f;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lp1/f;->c()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static u()V
    .locals 4

    .line 1
    sget-object v0, Lp1/l;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lp1/l;->j:Lp1/a;

    .line 5
    .line 6
    iget-object v1, v1, Lp1/b;->h:Ls/i0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ls/i0;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lp1/l;->a()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    .line 28
    throw v1
.end method


# virtual methods
.method public synthetic E(IJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    return-wide p1
.end method

.method public I(Lo/m;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public O(JLw8/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ln3/q;

    .line 2
    .line 3
    const-wide/16 p2, 0x0

    .line 4
    .line 5
    invoke-direct {p1, p2, p3}, Ln3/q;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public a(Ljava/lang/Class;)Landroidx/lifecycle/o0;
    .locals 1

    .line 1
    iget p1, p0, Ln6/a;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lw4/a;

    .line 7
    .line 8
    invoke-direct {p1}, Lw4/a;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_0
    new-instance p1, Lp4/z;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, v0}, Lp4/z;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lo/m;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;
    .locals 0

    .line 1
    iget p2, p0, Ln6/a;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ln6/a;->a(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Ln6/a;->a(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Ln6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 7
    .line 8
    const-string v1, "ProfileInstaller"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :pswitch_0
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public e(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Ln6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    packed-switch p1, :pswitch_data_1

    .line 7
    .line 8
    .line 9
    :pswitch_0
    const-string v0, ""

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 40
    .line 41
    :goto_0
    const/4 v1, 0x6

    .line 42
    const-string v2, "ProfileInstaller"

    .line 43
    .line 44
    if-eq p1, v1, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    if-eq p1, v1, :cond_0

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    if-eq p1, v1, :cond_0

    .line 52
    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 58
    .line 59
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    :pswitch_b
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_b
    .end packed-switch

    .line 64
    .line 65
    .line 66
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public f(Lm9/c;Lu4/c;)Landroidx/lifecycle/o0;
    .locals 1

    .line 1
    iget v0, p0, Ln6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {p1}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Ln6/a;->c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic f0(JJI)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    return-wide p1
.end method

.method public p(Landroid/app/Activity;Ljava/util/ArrayList;Ld6/f;Lib/d;Lu0/j;)V
    .locals 9

    .line 1
    new-instance v1, Lb3/q;

    .line 2
    .line 3
    move-object v5, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v6, p4

    .line 8
    move-object v7, p5

    .line 9
    invoke-direct/range {v1 .. v7}, Lb3/q;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ld6/f;Ln6/a;Lib/d;Lu0/j;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/4 p3, 0x0

    .line 38
    const/4 p4, 0x0

    .line 39
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    const/4 v0, 0x2

    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    if-ge p4, p5, :cond_12

    .line 47
    .line 48
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    check-cast p5, Ly6/a;

    .line 53
    .line 54
    invoke-static {p2, p5}, Lm9/e0;->T(Ljava/util/ArrayList;Ly6/a;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5, v2}, Ly6/a;->A(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_2
    invoke-virtual {p5, v2, v4}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_3
    invoke-virtual {p5, v2}, Ly6/a;->l(Landroid/content/Context;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-ne v6, v0, :cond_4

    .line 86
    .line 87
    new-array v0, v4, [Ly6/a;

    .line 88
    .line 89
    aput-object p5, v0, p3

    .line 90
    .line 91
    invoke-static {v0}, Lm9/e0;->I([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object p5

    .line 95
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_4
    invoke-virtual {p5}, Ly6/a;->m()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    new-array v0, v4, [Ly6/a;

    .line 111
    .line 112
    aput-object p5, v0, p3

    .line 113
    .line 114
    invoke-static {v0}, Lm9/e0;->I([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_5
    move p5, p4

    .line 124
    move-object v6, v5

    .line 125
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-ge p5, v7, :cond_b

    .line 130
    .line 131
    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ly6/a;

    .line 136
    .line 137
    invoke-virtual {v7}, Ly6/a;->m()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-static {v8, v0}, Lm9/e0;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-nez v8, :cond_6

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    invoke-virtual {v7, v2}, Ly6/a;->A(Landroid/content/Context;)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-nez v8, :cond_7

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    invoke-virtual {v7, v2, v4}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_8

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    if-nez v6, :cond_9

    .line 163
    .line 164
    new-instance v6, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-static {p2, v7}, Lm9/e0;->T(Ljava/util/ArrayList;Ly6/a;)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_a

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_a
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :goto_2
    add-int/lit8 p5, p5, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_b
    if-eqz v6, :cond_11

    .line 186
    .line 187
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result p5

    .line 191
    if-eqz p5, :cond_c

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_c
    invoke-static {v2, v6}, Lc7/a;->K(Landroid/content/Context;Ljava/util/List;)Z

    .line 195
    .line 196
    .line 197
    move-result p5

    .line 198
    if-eqz p5, :cond_d

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object p5

    .line 205
    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_f

    .line 210
    .line 211
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ly6/a;

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ly6/a;->s(Landroid/content/Context;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-nez v4, :cond_e

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_e
    invoke-interface {p5}, Ljava/util/Iterator;->remove()V

    .line 225
    .line 226
    .line 227
    new-instance v5, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result p5

    .line 239
    if-nez p5, :cond_10

    .line 240
    .line 241
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    :cond_10
    if-eqz v5, :cond_11

    .line 245
    .line 246
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result p5

    .line 250
    if-nez p5, :cond_11

    .line 251
    .line 252
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_11
    :goto_4
    add-int/lit8 p4, p4, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_13

    .line 264
    .line 265
    invoke-virtual {v1}, Lb3/q;->o()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    move-object p1, v5

    .line 274
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-eqz p2, :cond_15

    .line 279
    .line 280
    if-eqz p1, :cond_14

    .line 281
    .line 282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-eqz p2, :cond_15

    .line 287
    .line 288
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Ljava/util/List;

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_15
    if-eqz p1, :cond_1c

    .line 296
    .line 297
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    if-eqz p2, :cond_16

    .line 302
    .line 303
    goto/16 :goto_a

    .line 304
    .line 305
    :cond_16
    iget-object p2, v1, Lb3/q;->b:Ljava/lang/Object;

    .line 306
    .line 307
    move-object v3, p2

    .line 308
    check-cast v3, Landroid/app/Activity;

    .line 309
    .line 310
    iget-object p2, v1, Lb3/q;->c:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p2, Ld6/f;

    .line 313
    .line 314
    iget-object p4, v1, Lb3/q;->d:Ljava/lang/Object;

    .line 315
    .line 316
    move-object v5, p4

    .line 317
    check-cast v5, Lib/d;

    .line 318
    .line 319
    sget-object p4, Lt6/a;->a:Ljava/util/HashMap;

    .line 320
    .line 321
    const-class p4, Lt6/a;

    .line 322
    .line 323
    monitor-enter p4

    .line 324
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 325
    .line 326
    .line 327
    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/4 v6, -0x1

    .line 329
    if-eq p5, v6, :cond_17

    .line 330
    .line 331
    monitor-exit p4

    .line 332
    goto :goto_8

    .line 333
    :cond_17
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object p5

    .line 337
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 338
    .line 339
    .line 340
    move-result-object p5

    .line 341
    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    .line 342
    .line 343
    if-eq p5, v4, :cond_1a

    .line 344
    .line 345
    if-eq p5, v0, :cond_18

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_18
    invoke-static {v3}, Lt6/a;->a(Landroid/app/Activity;)Z

    .line 349
    .line 350
    .line 351
    move-result p5

    .line 352
    if-eqz p5, :cond_19

    .line 353
    .line 354
    const/16 p3, 0x8

    .line 355
    .line 356
    :cond_19
    invoke-virtual {v3, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 357
    .line 358
    .line 359
    sget-object p5, Lt6/a;->a:Ljava/util/HashMap;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object p3

    .line 373
    invoke-virtual {p5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    goto :goto_7

    .line 377
    :catchall_0
    move-exception v0

    .line 378
    move-object p1, v0

    .line 379
    goto :goto_9

    .line 380
    :catch_0
    move-exception v0

    .line 381
    move-object p3, v0

    .line 382
    goto :goto_6

    .line 383
    :cond_1a
    invoke-static {v3}, Lt6/a;->a(Landroid/app/Activity;)Z

    .line 384
    .line 385
    .line 386
    move-result p3

    .line 387
    if-eqz p3, :cond_1b

    .line 388
    .line 389
    const/16 v4, 0x9

    .line 390
    .line 391
    :cond_1b
    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 392
    .line 393
    .line 394
    sget-object p3, Lt6/a;->a:Ljava/util/HashMap;

    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 397
    .line 398
    .line 399
    move-result p5

    .line 400
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object p5

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {p3, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .line 410
    .line 411
    goto :goto_7

    .line 412
    :goto_6
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    .line 414
    .line 415
    :goto_7
    monitor-exit p4

    .line 416
    :goto_8
    new-instance v0, Lo6/e;

    .line 417
    .line 418
    move-object v4, p2

    .line 419
    invoke-direct/range {v0 .. v5}, Lo6/e;-><init>(Lb3/q;Ljava/util/Iterator;Landroid/app/Activity;Ld6/f;Lib/d;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v3, p1, v4, v5, v0}, Lb3/q;->q(Landroid/app/Activity;Ljava/util/List;Ld6/f;Lib/d;Ljava/lang/Runnable;)V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :goto_9
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    throw p1

    .line 428
    :cond_1c
    :goto_a
    invoke-virtual {v1}, Lb3/q;->o()V

    .line 429
    .line 430
    .line 431
    return-void
.end method

.method public r(JJLw8/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ln3/q;

    .line 2
    .line 3
    const-wide/16 p2, 0x0

    .line 4
    .line 5
    invoke-direct {p1, p2, p3}, Ln3/q;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ln6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    const-string v0, "CompositionErrorContext"

    .line 12
    .line 13
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
