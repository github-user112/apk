.class public final Lz/s1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Lz/m1;

.field public b:Lx/h;

.field public c:Lz/h;

.field public d:Lz/w0;

.field public e:Z

.field public f:Lj2/d;

.field public final g:Lz/l1;

.field public final h:Lv0/p;

.field public i:Z

.field public j:I

.field public k:Lz/c1;

.field public final l:Lz/q1;

.field public final m:Ls0/d;


# direct methods
.method public constructor <init>(Lz/m1;Lx/h;Lz/h;Lz/w0;ZLj2/d;Lz/l1;Lv0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/s1;->a:Lz/m1;

    .line 5
    .line 6
    iput-object p2, p0, Lz/s1;->b:Lx/h;

    .line 7
    .line 8
    iput-object p3, p0, Lz/s1;->c:Lz/h;

    .line 9
    .line 10
    iput-object p4, p0, Lz/s1;->d:Lz/w0;

    .line 11
    .line 12
    iput-boolean p5, p0, Lz/s1;->e:Z

    .line 13
    .line 14
    iput-object p6, p0, Lz/s1;->f:Lj2/d;

    .line 15
    .line 16
    iput-object p7, p0, Lz/s1;->g:Lz/l1;

    .line 17
    .line 18
    iput-object p8, p0, Lz/s1;->h:Lv0/p;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lz/s1;->j:I

    .line 22
    .line 23
    sget-object p1, Landroidx/compose/foundation/gestures/a;->b:Lz/f1;

    .line 24
    .line 25
    iput-object p1, p0, Lz/s1;->k:Lz/c1;

    .line 26
    .line 27
    new-instance p1, Lz/q1;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lz/q1;-><init>(Lz/s1;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lz/s1;->l:Lz/q1;

    .line 33
    .line 34
    new-instance p1, Ls0/d;

    .line 35
    .line 36
    const/16 p2, 0xa

    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Ls0/d;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lz/s1;->m:Ls0/d;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(JLy8/c;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lz/n1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lz/n1;

    .line 7
    .line 8
    iget v1, v0, Lz/n1;->g:I

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
    iput v1, v0, Lz/n1;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lz/n1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lz/n1;-><init>(Lz/s1;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lz/n1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lz/n1;->g:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lz/n1;->d:Lg9/w;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    move-object v5, p0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    move-object v5, p0

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lg9/w;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-wide p1, v6, Lg9/w;->a:J

    .line 63
    .line 64
    iput-boolean v3, p0, Lz/s1;->i:Z

    .line 65
    .line 66
    :try_start_1
    sget-object p3, Lx/v0;->a:Lx/v0;

    .line 67
    .line 68
    new-instance v4, Lz/p1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    move-object v5, p0

    .line 72
    move-wide v7, p1

    .line 73
    :try_start_2
    invoke-direct/range {v4 .. v9}, Lz/p1;-><init>(Lz/s1;Lg9/w;JLw8/c;)V

    .line 74
    .line 75
    .line 76
    iput-object v6, v0, Lz/n1;->d:Lg9/w;

    .line 77
    .line 78
    iput v3, v0, Lz/n1;->g:I

    .line 79
    .line 80
    invoke-virtual {p0, p3, v4, v0}, Lz/s1;->f(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 85
    .line 86
    if-ne p1, p2, :cond_3

    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_3
    move-object p1, v6

    .line 90
    :goto_1
    iput-boolean v2, v5, Lz/s1;->i:Z

    .line 91
    .line 92
    iget-wide p1, p1, Lg9/w;->a:J

    .line 93
    .line 94
    new-instance p3, Ln3/q;

    .line 95
    .line 96
    invoke-direct {p3, p1, p2}, Ln3/q;-><init>(J)V

    .line 97
    .line 98
    .line 99
    return-object p3

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    :goto_2
    move-object p1, v0

    .line 102
    goto :goto_3

    .line 103
    :catchall_2
    move-exception v0

    .line 104
    move-object v5, p0

    .line 105
    goto :goto_2

    .line 106
    :goto_3
    iput-boolean v2, v5, Lz/s1;->i:Z

    .line 107
    .line 108
    throw p1
.end method

.method public final b(JZLy8/i;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lz/s1;->c:Lz/h;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object p3, p0, Lz/s1;->d:Lz/w0;

    .line 11
    .line 12
    sget-object v1, Lz/w0;->b:Lz/w0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p3, v1, :cond_1

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    :goto_0
    invoke-static {p1, p2, v2, v2, p3}, Ln3/q;->a(JFFI)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p3, 0x2

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    new-instance p3, Lz/r1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p3, p0, v1}, Lz/r1;-><init>(Lz/s1;Lw8/c;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lz/s1;->b:Lx/h;

    .line 32
    .line 33
    sget-object v2, Lx8/a;->a:Lx8/a;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v3, p0, Lz/s1;->a:Lz/m1;

    .line 38
    .line 39
    invoke-interface {v3}, Lz/m1;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    iget-object v3, p0, Lz/s1;->a:Lz/m1;

    .line 46
    .line 47
    invoke-interface {v3}, Lz/m1;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v1, p1, p2, p3, p4}, Lx/h;->b(JLz/r1;Ly8/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v2, :cond_4

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_3
    new-instance p3, Lz/r1;

    .line 61
    .line 62
    invoke-direct {p3, p0, p4}, Lz/r1;-><init>(Lz/s1;Lw8/c;)V

    .line 63
    .line 64
    .line 65
    iput-wide p1, p3, Lz/r1;->g:J

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Lz/r1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v2, :cond_4

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_4
    return-object v0
.end method

.method public final c(Lz/c1;JI)J
    .locals 14

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    iget-object v2, p0, Lz/s1;->f:Lj2/d;

    .line 4
    .line 5
    iget-object v2, v2, Lj2/d;->a:Lj2/g;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-boolean v4, v2, Lr1/o;->n:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lq2/f;->j(Lq2/d2;)Lq2/d2;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lj2/g;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    move/from16 v11, p4

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v11, v0, v1}, Lj2/g;->E(IJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    move-wide v12, v6

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-wide v12, v4

    .line 35
    :goto_1
    invoke-static {v0, v1, v12, v13}, Lx1/b;->g(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lz/s1;->d:Lz/w0;

    .line 40
    .line 41
    sget-object v6, Lz/w0;->b:Lz/w0;

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x0

    .line 45
    if-ne v2, v6, :cond_2

    .line 46
    .line 47
    invoke-static {v0, v1, v8, v7}, Lx1/b;->a(JFI)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v2, 0x2

    .line 53
    invoke-static {v0, v1, v8, v2}, Lx1/b;->a(JFI)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    :goto_2
    invoke-virtual {p0, v8, v9}, Lz/s1;->e(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    invoke-virtual {p0, v8, v9}, Lz/s1;->g(J)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-interface {p1, v2}, Lz/c1;->a(F)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lz/s1;->h(F)J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    invoke-virtual {p0, v8, v9}, Lz/s1;->e(J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    iget-object p1, p0, Lz/s1;->g:Lz/l1;

    .line 78
    .line 79
    iget-boolean v2, p1, Lr1/o;->n:Z

    .line 80
    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_3
    invoke-static {p1}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lr2/u;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :try_start_0
    sget-object v2, Lr2/u;->T0:Ljava/lang/reflect/Method;

    .line 95
    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v6, "dispatchOnScrollChanged"

    .line 103
    .line 104
    invoke-virtual {v2, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lr2/u;->T0:Ljava/lang/reflect/Method;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_0
    nop

    .line 115
    goto :goto_4

    .line 116
    :cond_4
    :goto_3
    sget-object v2, Lr2/u;->T0:Ljava/lang/reflect/Method;

    .line 117
    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_4
    invoke-static {v0, v1, v8, v9}, Lx1/b;->g(JJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    iget-object p1, p0, Lz/s1;->f:Lj2/d;

    .line 128
    .line 129
    iget-object p1, p1, Lj2/d;->a:Lj2/g;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    iget-boolean v2, p1, Lr1/o;->n:Z

    .line 134
    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    invoke-static {p1}, Lq2/f;->j(Lq2/d2;)Lq2/d2;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    move-object v3, p1

    .line 142
    check-cast v3, Lj2/g;

    .line 143
    .line 144
    :cond_6
    move-object v6, v3

    .line 145
    move-wide v7, v8

    .line 146
    if-eqz v6, :cond_7

    .line 147
    .line 148
    move-wide v9, v0

    .line 149
    invoke-virtual/range {v6 .. v11}, Lj2/g;->f0(JJI)J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    :cond_7
    invoke-static {v12, v13, v7, v8}, Lx1/b;->h(JJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v0

    .line 157
    invoke-static {v0, v1, v4, v5}, Lx1/b;->h(JJ)J

    .line 158
    .line 159
    .line 160
    move-result-wide v0

    .line 161
    return-wide v0
.end method

.method public final d(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz/s1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    int-to-float v0, v0

    .line 7
    mul-float p1, p1, v0

    .line 8
    .line 9
    :cond_0
    return p1
.end method

.method public final e(J)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz/s1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lx1/b;->i(FJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    :cond_0
    return-wide p1
.end method

.method public final f(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lz/s1;->a:Lz/m1;

    .line 2
    .line 3
    new-instance v1, Lb1/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x13

    .line 7
    .line 8
    invoke-direct {v1, p0, p2, v2, v3}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, v1, p3}, Lz/m1;->e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    return-object p1
.end method

.method public final g(J)F
    .locals 2

    .line 1
    iget-object v0, p0, Lz/s1;->d:Lz/w0;

    .line 2
    .line 3
    sget-object v1, Lz/w0;->b:Lz/w0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    shr-long/2addr p1, v0

    .line 10
    :goto_0
    long-to-int p2, p1

    .line 11
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const-wide v0, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p1, v0

    .line 22
    goto :goto_0
.end method

.method public final h(F)J
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    return-wide v0

    .line 9
    :cond_0
    iget-object v1, p0, Lz/s1;->d:Lz/w0;

    .line 10
    .line 11
    sget-object v2, Lz/w0;->b:Lz/w0;

    .line 12
    .line 13
    const-wide v3, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/16 v5, 0x20

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-long v1, p1

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-long v6, p1

    .line 32
    shl-long v0, v1, v5

    .line 33
    .line 34
    :goto_0
    and-long/2addr v3, v6

    .line 35
    or-long/2addr v0, v3

    .line 36
    return-wide v0

    .line 37
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v0, v0

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-long v6, p1

    .line 47
    shl-long/2addr v0, v5

    .line 48
    goto :goto_0
.end method
