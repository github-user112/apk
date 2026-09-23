.class public abstract Ldc/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lfc/s;

.field public static final b:Lfc/s;

.field public static final c:Lfc/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfc/s;

    .line 2
    .line 3
    const-string v1, "NO_VALUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ldc/b0;->a:Lfc/s;

    .line 10
    .line 11
    new-instance v0, Lfc/s;

    .line 12
    .line 13
    const-string v1, "NONE"

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ldc/b0;->b:Lfc/s;

    .line 19
    .line 20
    new-instance v0, Lfc/s;

    .line 21
    .line 22
    const-string v1, "PENDING"

    .line 23
    .line 24
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Ldc/b0;->c:Lfc/s;

    .line 28
    .line 29
    return-void
.end method

.method public static a(IILcc/a;)Ldc/a0;
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :goto_0
    and-int/lit8 v2, p1, 0x2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_1
    and-int/lit8 p1, p1, 0x4

    .line 15
    .line 16
    sget-object v1, Lcc/a;->a:Lcc/a;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    move-object p2, v1

    .line 21
    :cond_2
    if-ltz p0, :cond_6

    .line 22
    .line 23
    if-gtz v0, :cond_4

    .line 24
    .line 25
    if-gtz p0, :cond_4

    .line 26
    .line 27
    if-ne p2, v1, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_4
    :goto_1
    add-int/2addr p0, v0

    .line 55
    if-gez p0, :cond_5

    .line 56
    .line 57
    const p0, 0x7fffffff

    .line 58
    .line 59
    .line 60
    :cond_5
    new-instance p1, Ldc/a0;

    .line 61
    .line 62
    invoke-direct {p1, v0, p0, p2}, Ldc/a0;-><init>(IILcc/a;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    const-string p1, "extraBufferCapacity cannot be negative, but was "

    .line 67
    .line 68
    invoke-static {p0, p1}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public static final b(Ljava/lang/Object;)Ldc/l0;
    .locals 1

    .line 1
    new-instance v0, Ldc/l0;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lec/c;->b:Lfc/s;

    .line 6
    .line 7
    :cond_0
    invoke-direct {v0, p0}, Ldc/l0;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final c([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .line 1
    long-to-int p2, p1

    .line 2
    array-length p1, p0

    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    and-int/2addr p1, p2

    .line 6
    aput-object p3, p0, p1

    .line 7
    .line 8
    return-void
.end method

.method public static final d(Ldc/d;Lf9/n;Lw8/c;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget v0, Ldc/p;->a:I

    .line 2
    .line 3
    new-instance v2, Ldc/o;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {v2, p1, v0}, Ldc/o;-><init>(Lf9/n;Lw8/c;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lec/k;

    .line 10
    .line 11
    sget-object v4, Lw8/i;->a:Lw8/i;

    .line 12
    .line 13
    const/4 v5, -0x2

    .line 14
    sget-object v6, Lcc/a;->a:Lcc/a;

    .line 15
    .line 16
    move-object v3, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lec/k;-><init>(Lf9/o;Ldc/d;Lw8/h;ILcc/a;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-interface {v1, v4, p0, v6}, Lec/r;->T(Lw8/h;ILcc/a;)Ldc/d;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lec/t;->a:Lec/t;

    .line 26
    .line 27
    invoke-interface {p0, p1, p2}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 32
    .line 33
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 34
    .line 35
    if-ne p0, p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p0, p1

    .line 39
    :goto_0
    if-ne p0, p2, :cond_1

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    return-object p1
.end method

.method public static final e(Ldc/d;)Ldc/d;
    .locals 1

    .line 1
    instance-of v0, p0, Ldc/j0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Ldc/c;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    new-instance v0, Ldc/c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ldc/c;-><init>(Ldc/d;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final f(Ldc/e;Lcc/t;ZLy8/c;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Ldc/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Ldc/f;

    .line 7
    .line 8
    iget v1, v0, Ldc/f;->i:I

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
    iput v1, v0, Ldc/f;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ldc/f;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Ldc/f;->h:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Ldc/f;->i:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

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
    if-ne v1, v3, :cond_2

    .line 39
    .line 40
    iget-boolean p2, v0, Ldc/f;->g:Z

    .line 41
    .line 42
    iget-object p0, v0, Ldc/f;->f:Lcc/c;

    .line 43
    .line 44
    iget-object p1, v0, Ldc/f;->e:Lcc/w;

    .line 45
    .line 46
    iget-object v1, v0, Ldc/f;->d:Ldc/e;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    move-object p3, p0

    .line 52
    move-object p0, v1

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_4

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_3
    iget-boolean p2, v0, Ldc/f;->g:Z

    .line 65
    .line 66
    iget-object p0, v0, Ldc/f;->f:Lcc/c;

    .line 67
    .line 68
    iget-object p1, v0, Ldc/f;->e:Lcc/w;

    .line 69
    .line 70
    iget-object v1, v0, Ldc/f;->d:Ldc/e;

    .line 71
    .line 72
    :try_start_1
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :try_start_2
    invoke-virtual {p1}, Lcc/t;->iterator()Lcc/c;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    :goto_1
    iput-object p0, v0, Ldc/f;->d:Ldc/e;

    .line 84
    .line 85
    iput-object p1, v0, Ldc/f;->e:Lcc/w;

    .line 86
    .line 87
    iput-object p3, v0, Ldc/f;->f:Lcc/c;

    .line 88
    .line 89
    iput-boolean p2, v0, Ldc/f;->g:Z

    .line 90
    .line 91
    iput v4, v0, Ldc/f;->i:I

    .line 92
    .line 93
    invoke-virtual {p3, v0}, Lcc/c;->b(Ly8/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-ne v1, v5, :cond_5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move-object v6, v1

    .line 101
    move-object v1, p0

    .line 102
    move-object p0, p3

    .line 103
    move-object p3, v6

    .line 104
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0}, Lcc/c;->c()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    iput-object v1, v0, Ldc/f;->d:Ldc/e;

    .line 117
    .line 118
    iput-object p1, v0, Ldc/f;->e:Lcc/w;

    .line 119
    .line 120
    iput-object p0, v0, Ldc/f;->f:Lcc/c;

    .line 121
    .line 122
    iput-boolean p2, v0, Ldc/f;->g:Z

    .line 123
    .line 124
    iput v3, v0, Ldc/f;->i:I

    .line 125
    .line 126
    invoke-interface {v1, p3, v0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-ne p3, v5, :cond_1

    .line 131
    .line 132
    :goto_3
    return-object v5

    .line 133
    :cond_6
    if-eqz p2, :cond_7

    .line 134
    .line 135
    invoke-interface {p1, v2}, Lcc/w;->a(Ljava/util/concurrent/CancellationException;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 139
    .line 140
    return-object p0

    .line 141
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :catchall_1
    move-exception p3

    .line 143
    if-eqz p2, :cond_a

    .line 144
    .line 145
    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    move-object v2, p0

    .line 150
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 151
    .line 152
    :cond_8
    if-nez v2, :cond_9

    .line 153
    .line 154
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 155
    .line 156
    const-string p2, "Channel was consumed, consumer had failed"

    .line 157
    .line 158
    invoke-direct {v2, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    .line 163
    .line 164
    :cond_9
    invoke-interface {p1, v2}, Lcc/w;->a(Ljava/util/concurrent/CancellationException;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    throw p3
.end method

.method public static final g(Ldc/d;Lf9/n;Ly8/c;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lec/c;->b:Lfc/s;

    .line 2
    .line 3
    instance-of v1, p2, Ldc/r;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Ldc/r;

    .line 9
    .line 10
    iget v2, v1, Ldc/r;->h:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Ldc/r;->h:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ldc/r;

    .line 23
    .line 24
    invoke-direct {v1, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Ldc/r;->g:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Ldc/r;->h:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v1, Ldc/r;->f:Lb0/f;

    .line 37
    .line 38
    iget-object p1, v1, Ldc/r;->e:Lg9/x;

    .line 39
    .line 40
    iget-object v1, v1, Ldc/r;->d:Ly8/i;

    .line 41
    .line 42
    check-cast v1, Lf9/n;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Lec/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lg9/x;

    .line 62
    .line 63
    invoke-direct {p2}, Lg9/x;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p2, Lg9/x;->b:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v2, Lb0/f;

    .line 69
    .line 70
    const/4 v4, 0x6

    .line 71
    invoke-direct {v2, v4, p1, p2}, Lb0/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_1
    move-object v4, p1

    .line 75
    check-cast v4, Ly8/i;

    .line 76
    .line 77
    iput-object v4, v1, Ldc/r;->d:Ly8/i;

    .line 78
    .line 79
    iput-object p2, v1, Ldc/r;->e:Lg9/x;

    .line 80
    .line 81
    iput-object v2, v1, Ldc/r;->f:Lb0/f;

    .line 82
    .line 83
    iput v3, v1, Ldc/r;->h:I

    .line 84
    .line 85
    invoke-interface {p0, v2, v1}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_1
    .catch Lec/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 90
    .line 91
    if-ne p0, v1, :cond_3

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_3
    move-object v1, p1

    .line 95
    move-object p1, p2

    .line 96
    goto :goto_2

    .line 97
    :catch_1
    move-exception p0

    .line 98
    move-object v1, p1

    .line 99
    move-object p1, p2

    .line 100
    move-object p2, p0

    .line 101
    move-object p0, v2

    .line 102
    :goto_1
    iget-object v2, p2, Lec/a;->a:Ljava/lang/Object;

    .line 103
    .line 104
    if-ne v2, p0, :cond_5

    .line 105
    .line 106
    :goto_2
    iget-object p0, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 107
    .line 108
    if-eq p0, v0, :cond_4

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p2, "Expected at least one element matching the predicate "

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_5
    throw p2
.end method

.method public static final h(La2/d;Lfc/c;Ldc/i0;Ljava/lang/Float;)Ldc/x;
    .locals 10

    .line 1
    sget-object v0, Lcc/l;->a0:Lcc/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcc/k;->a:Lcc/k;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-instance v1, Lu0/j;

    .line 10
    .line 11
    sget-object v2, Lw8/i;->a:Lw8/i;

    .line 12
    .line 13
    invoke-direct {v1, v0, p0, v2}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iget-object p0, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lw8/h;

    .line 23
    .line 24
    iget-object v0, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v5, v0

    .line 27
    check-cast v5, Ldc/d;

    .line 28
    .line 29
    sget-object v0, Ldc/e0;->a:Ldc/f0;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ldc/i0;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    sget-object v0, Lac/x;->a:Lac/x;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lac/x;->d:Lac/x;

    .line 41
    .line 42
    :goto_0
    new-instance v3, Ldc/i;

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x2

    .line 46
    move-object v4, p2

    .line 47
    move-object v7, p3

    .line 48
    invoke-direct/range {v3 .. v9}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lfc/c;->q()Lw8/h;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-static {p1, p0, p2}, Lac/z;->i(Lw8/h;Lw8/h;Z)Lw8/h;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Lac/g0;->a:Lhc/e;

    .line 61
    .line 62
    if-eq p0, p1, :cond_1

    .line 63
    .line 64
    sget-object p3, Lw8/d;->a:Lw8/d;

    .line 65
    .line 66
    invoke-interface {p0, p3}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-nez p3, :cond_1

    .line 71
    .line 72
    invoke-interface {p0, p1}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :cond_1
    sget-object p1, Lac/x;->b:Lac/x;

    .line 77
    .line 78
    if-ne v0, p1, :cond_2

    .line 79
    .line 80
    new-instance p1, Lac/d1;

    .line 81
    .line 82
    invoke-direct {p1, p0, v3}, Lac/d1;-><init>(Lw8/h;Lf9/n;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    new-instance p1, Lac/j1;

    .line 87
    .line 88
    invoke-direct {p1, p0, p2}, Lac/a;-><init>(Lw8/h;Z)V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {p1, v0, p1, v3}, Lac/a;->i0(Lac/x;Lac/a;Lf9/n;)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Ldc/x;

    .line 95
    .line 96
    invoke-direct {p0, v6}, Ldc/x;-><init>(Ldc/l0;)V

    .line 97
    .line 98
    .line 99
    return-object p0
.end method
