.class public final Lw0/r1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public A:Z

.field public final a:Ll0/r1;

.field public b:Lg3/q;

.field public c:Lf9/k;

.field public d:Ll0/s0;

.field public final e:Lf1/k1;

.field public f:Lf9/a;

.field public g:Lr2/d1;

.field public h:Lac/w;

.field public i:Lw0/t;

.field public j:Lg2/a;

.field public k:Lw1/o;

.field public final l:Lf1/k1;

.field public final m:Lf1/k1;

.field public n:J

.field public o:Lb3/n0;

.field public p:J

.field public final q:Lf1/k1;

.field public final r:Lf1/k1;

.field public s:I

.field public t:Lg3/w;

.field public u:Lw0/f1;

.field public v:Lb3/n0;

.field public final w:Lf1/k1;

.field public final x:Lkb/a;

.field public final y:Lw0/n1;

.field public final z:Lk2/i;


# direct methods
.method public constructor <init>(Ll0/r1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/r1;->a:Ll0/r1;

    .line 5
    .line 6
    sget-object p1, Ll0/p0;->c:Ld6/i;

    .line 7
    .line 8
    iput-object p1, p0, Lw0/r1;->b:Lg3/q;

    .line 9
    .line 10
    new-instance p1, Lc8/y0;

    .line 11
    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lc8/y0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lw0/r1;->c:Lf9/k;

    .line 18
    .line 19
    new-instance p1, Lg3/w;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    invoke-direct {p1, v0, v1, v2, v3}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lw0/r1;->e:Lf1/k1;

    .line 33
    .line 34
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, p0, Lw0/r1;->l:Lf1/k1;

    .line 41
    .line 42
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lw0/r1;->m:Lf1/k1;

    .line 47
    .line 48
    iput-wide v1, p0, Lw0/r1;->n:J

    .line 49
    .line 50
    iput-wide v1, p0, Lw0/r1;->p:J

    .line 51
    .line 52
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lw0/r1;->q:Lf1/k1;

    .line 57
    .line 58
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lw0/r1;->r:Lf1/k1;

    .line 63
    .line 64
    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lw0/r1;->s:I

    .line 66
    .line 67
    new-instance p1, Lg3/w;

    .line 68
    .line 69
    invoke-direct {p1, v0, v1, v2, v3}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lw0/r1;->t:Lg3/w;

    .line 73
    .line 74
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lw0/r1;->w:Lf1/k1;

    .line 79
    .line 80
    new-instance p1, Lkb/a;

    .line 81
    .line 82
    const/16 v0, 0x13

    .line 83
    .line 84
    invoke-direct {p1, v0}, Lkb/a;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lw0/r1;->x:Lkb/a;

    .line 88
    .line 89
    new-instance p1, Lw0/n1;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lw0/n1;-><init>(Lw0/r1;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lw0/r1;->y:Lw0/n1;

    .line 95
    .line 96
    new-instance p1, Lk2/i;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Lk2/i;-><init>(Lw0/r1;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lw0/r1;->z:Lk2/i;

    .line 102
    .line 103
    return-void
.end method

.method public static final a(Lw0/r1;Lb3/n0;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p1, Lb3/n0;->a:J

    .line 5
    .line 6
    iget-object v3, p0, Lw0/r1;->i:Lw0/t;

    .line 7
    .line 8
    if-nez v3, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lw0/r1;->l()Lb3/g;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-object v4, v2, Lb3/g;->b:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v9, p0, Lw0/r1;->b:Lg3/q;

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    shr-long v5, v0, v2

    .line 27
    .line 28
    long-to-int v2, v5

    .line 29
    invoke-interface {v9, v2}, Lg3/q;->b(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-wide v5, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v0, v5

    .line 39
    long-to-int v1, v0

    .line 40
    invoke-interface {v9, v1}, Lg3/q;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v2, v0}, Lb3/d0;->b(II)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    invoke-static {v5, v6}, Lb3/n0;->c(J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lw0/r1;->h:Lac/w;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    new-instance v2, Lw0/o1;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    move-object v8, p0

    .line 68
    move-object v7, p1

    .line 69
    invoke-direct/range {v2 .. v10}, Lw0/o1;-><init>(Lw0/t;Ljava/lang/String;JLb3/n0;Lw0/r1;Lg3/q;Lw8/c;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x3

    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-static {v0, p1, v2, p0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public static final b(Lw0/r1;Ly8/c;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lw0/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lw0/p1;

    .line 7
    .line 8
    iget v1, v0, Lw0/p1;->f:I

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
    iput v1, v0, Lw0/p1;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lw0/p1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lw0/p1;-><init>(Lw0/r1;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lw0/p1;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lw0/p1;->f:I

    .line 28
    .line 29
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

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
    invoke-virtual {p0}, Lw0/r1;->l()Lb3/g;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iget-object v7, p1, Lb3/g;->b:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v7, :cond_5

    .line 60
    .line 61
    iget-object p1, p0, Lw0/r1;->v:Lb3/n0;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iget-wide v4, p1, Lb3/n0;->a:J

    .line 66
    .line 67
    iget-object v8, p0, Lw0/r1;->i:Lw0/t;

    .line 68
    .line 69
    if-eqz v8, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lw0/r1;->b:Lg3/q;

    .line 72
    .line 73
    const/16 v1, 0x20

    .line 74
    .line 75
    shr-long v9, v4, v1

    .line 76
    .line 77
    long-to-int v1, v9

    .line 78
    invoke-interface {p1, v1}, Lg3/q;->b(I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object p0, p0, Lw0/r1;->b:Lg3/q;

    .line 83
    .line 84
    const-wide v9, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long/2addr v4, v9

    .line 90
    long-to-int v1, v4

    .line 91
    invoke-interface {p0, v1}, Lg3/q;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p1, p0}, Lb3/d0;->b(II)J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    iput v3, v0, Lw0/p1;->f:I

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-static {v5, v6}, Lb3/n0;->c(J)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    :goto_1
    move-object p0, v2

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    new-instance v4, Ll0/g1;

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    invoke-direct/range {v4 .. v9}, Ll0/g1;-><init>(JLjava/lang/CharSequence;Lw0/t;Lw8/c;)V

    .line 120
    .line 121
    .line 122
    iget-object p0, v8, Lw0/t;->a:Lw8/h;

    .line 123
    .line 124
    new-instance p1, Ldc/i;

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-direct {p1, v8, v4, v1}, Ldc/i;-><init>(Lw0/t;Lf9/n;Lw8/c;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p1, v0}, Lac/z;->y(Lw8/h;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_2
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 135
    .line 136
    if-ne p0, p1, :cond_5

    .line 137
    .line 138
    return-object p1

    .line 139
    :cond_5
    :goto_3
    return-object v2
.end method

.method public static final c(Lw0/r1;Lg3/w;JZZLw0/a0;Z)J
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lw0/r1;->d:Ll0/s0;

    .line 6
    .line 7
    if-eqz v2, :cond_16

    .line 8
    .line 9
    invoke-virtual {v2}, Ll0/s0;->d()Ll0/q1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_e

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Lw0/r1;->b:Lg3/q;

    .line 18
    .line 19
    iget-wide v4, v1, Lg3/w;->b:J

    .line 20
    .line 21
    iget-object v1, v1, Lg3/w;->a:Lb3/g;

    .line 22
    .line 23
    sget v6, Lb3/n0;->c:I

    .line 24
    .line 25
    const/16 v6, 0x20

    .line 26
    .line 27
    shr-long v7, v4, v6

    .line 28
    .line 29
    long-to-int v8, v7

    .line 30
    invoke-interface {v3, v8}, Lg3/q;->b(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v7, v0, Lw0/r1;->b:Lg3/q;

    .line 35
    .line 36
    const-wide v8, 0xffffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long v10, v4, v8

    .line 42
    .line 43
    long-to-int v11, v10

    .line 44
    invoke-interface {v7, v11}, Lg3/q;->b(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-static {v3, v7}, Lb3/d0;->b(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide v10

    .line 52
    const/4 v3, 0x0

    .line 53
    move-wide/from16 v12, p2

    .line 54
    .line 55
    invoke-virtual {v2, v12, v13, v3}, Ll0/q1;->b(JZ)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez p5, :cond_2

    .line 60
    .line 61
    if-eqz p4, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    shr-long v12, v10, v6

    .line 65
    .line 66
    long-to-int v13, v12

    .line 67
    move/from16 v18, v13

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    move/from16 v18, v7

    .line 71
    .line 72
    :goto_1
    if-eqz p5, :cond_4

    .line 73
    .line 74
    if-eqz p4, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    and-long v12, v10, v8

    .line 78
    .line 79
    long-to-int v13, v12

    .line 80
    move/from16 v19, v13

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    :goto_2
    move/from16 v19, v7

    .line 84
    .line 85
    :goto_3
    iget-object v12, v0, Lw0/r1;->u:Lw0/f1;

    .line 86
    .line 87
    const/4 v13, -0x1

    .line 88
    if-nez p4, :cond_6

    .line 89
    .line 90
    if-eqz v12, :cond_6

    .line 91
    .line 92
    iget v14, v0, Lw0/r1;->s:I

    .line 93
    .line 94
    if-ne v14, v13, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move/from16 v20, v14

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    :goto_4
    const/16 v20, -0x1

    .line 101
    .line 102
    :goto_5
    iget-object v2, v2, Ll0/q1;->a:Lb3/l0;

    .line 103
    .line 104
    new-instance v13, Lw0/f1;

    .line 105
    .line 106
    if-eqz p4, :cond_7

    .line 107
    .line 108
    const/4 v10, 0x0

    .line 109
    move-wide/from16 v29, v4

    .line 110
    .line 111
    move-wide/from16 v27, v8

    .line 112
    .line 113
    move-object/from16 v25, v10

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_7
    new-instance v14, Lw0/z;

    .line 117
    .line 118
    new-instance v15, Lw0/y;

    .line 119
    .line 120
    move-wide/from16 v27, v8

    .line 121
    .line 122
    shr-long v8, v10, v6

    .line 123
    .line 124
    long-to-int v9, v8

    .line 125
    invoke-static {v2, v9}, Lw0/y0;->u(Lb3/l0;I)Lm3/j;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    move-wide/from16 v29, v4

    .line 130
    .line 131
    const-wide/16 v3, 0x1

    .line 132
    .line 133
    invoke-direct {v15, v8, v9, v3, v4}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 134
    .line 135
    .line 136
    new-instance v5, Lw0/y;

    .line 137
    .line 138
    and-long v8, v10, v27

    .line 139
    .line 140
    long-to-int v9, v8

    .line 141
    invoke-static {v2, v9}, Lw0/y0;->u(Lb3/l0;I)Lm3/j;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-direct {v5, v8, v9, v3, v4}, Lw0/y;-><init>(Lm3/j;IJ)V

    .line 146
    .line 147
    .line 148
    invoke-static {v10, v11}, Lb3/n0;->g(J)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-direct {v14, v15, v5, v3}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v25, v14

    .line 156
    .line 157
    :goto_6
    new-instance v26, Lw0/w;

    .line 158
    .line 159
    const-wide/16 v15, 0x1

    .line 160
    .line 161
    const/16 v17, 0x1

    .line 162
    .line 163
    move-object/from16 v21, v2

    .line 164
    .line 165
    move-object/from16 v14, v26

    .line 166
    .line 167
    invoke-direct/range {v14 .. v21}, Lw0/w;-><init>(JIIIILb3/l0;)V

    .line 168
    .line 169
    .line 170
    const/16 v23, 0x1

    .line 171
    .line 172
    const/16 v24, 0x1

    .line 173
    .line 174
    move/from16 v22, p5

    .line 175
    .line 176
    move-object/from16 v21, v13

    .line 177
    .line 178
    invoke-direct/range {v21 .. v26}, Lw0/f1;-><init>(ZIILw0/z;Lw0/w;)V

    .line 179
    .line 180
    .line 181
    move-object/from16 v2, v21

    .line 182
    .line 183
    invoke-virtual {v2, v12}, Lw0/f1;->m(Lw0/p0;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_8

    .line 188
    .line 189
    move-wide/from16 v4, v29

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_8
    iput-object v2, v0, Lw0/r1;->u:Lw0/f1;

    .line 193
    .line 194
    iput v7, v0, Lw0/r1;->s:I

    .line 195
    .line 196
    move-object/from16 v3, p6

    .line 197
    .line 198
    invoke-virtual {v3, v2}, Lw0/a0;->a(Lw0/p0;)Lw0/z;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    iget-object v3, v0, Lw0/r1;->b:Lg3/q;

    .line 203
    .line 204
    iget-object v4, v2, Lw0/z;->a:Lw0/y;

    .line 205
    .line 206
    iget v4, v4, Lw0/y;->b:I

    .line 207
    .line 208
    invoke-interface {v3, v4}, Lg3/q;->a(I)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    iget-object v4, v0, Lw0/r1;->b:Lg3/q;

    .line 213
    .line 214
    iget-object v2, v2, Lw0/z;->b:Lw0/y;

    .line 215
    .line 216
    iget v2, v2, Lw0/y;->b:I

    .line 217
    .line 218
    invoke-interface {v4, v2}, Lg3/q;->a(I)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v3, v2}, Lb3/d0;->b(II)J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    move-wide/from16 v4, v29

    .line 227
    .line 228
    invoke-static {v2, v3, v4, v5}, Lb3/n0;->b(JJ)Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_9

    .line 233
    .line 234
    :goto_7
    return-wide v4

    .line 235
    :cond_9
    invoke-static {v2, v3}, Lb3/n0;->g(J)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-static {v4, v5}, Lb3/n0;->g(J)Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    const/4 v9, 0x1

    .line 244
    if-eq v7, v8, :cond_a

    .line 245
    .line 246
    and-long v7, v2, v27

    .line 247
    .line 248
    long-to-int v8, v7

    .line 249
    shr-long v6, v2, v6

    .line 250
    .line 251
    long-to-int v7, v6

    .line 252
    invoke-static {v8, v7}, Lb3/d0;->b(II)J

    .line 253
    .line 254
    .line 255
    move-result-wide v6

    .line 256
    invoke-static {v6, v7, v4, v5}, Lb3/n0;->b(JJ)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_a

    .line 261
    .line 262
    const/4 v6, 0x1

    .line 263
    goto :goto_8

    .line 264
    :cond_a
    const/4 v6, 0x0

    .line 265
    :goto_8
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_b

    .line 270
    .line 271
    invoke-static {v4, v5}, Lb3/n0;->c(J)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_b

    .line 276
    .line 277
    const/4 v4, 0x1

    .line 278
    goto :goto_9

    .line 279
    :cond_b
    const/4 v4, 0x0

    .line 280
    :goto_9
    if-eqz p7, :cond_c

    .line 281
    .line 282
    iget-object v5, v1, Lb3/g;->b:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-lez v5, :cond_c

    .line 289
    .line 290
    if-nez v6, :cond_c

    .line 291
    .line 292
    if-nez v4, :cond_c

    .line 293
    .line 294
    iget-object v4, v0, Lw0/r1;->j:Lg2/a;

    .line 295
    .line 296
    if-eqz v4, :cond_c

    .line 297
    .line 298
    const/16 v5, 0x9

    .line 299
    .line 300
    invoke-interface {v4, v5}, Lg2/a;->a(I)V

    .line 301
    .line 302
    .line 303
    :cond_c
    invoke-static {v1, v2, v3}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget-object v4, v0, Lw0/r1;->c:Lf9/k;

    .line 308
    .line 309
    invoke-interface {v4, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    new-instance v1, Lb3/n0;

    .line 313
    .line 314
    invoke-direct {v1, v2, v3}, Lb3/n0;-><init>(J)V

    .line 315
    .line 316
    .line 317
    iput-object v1, v0, Lw0/r1;->v:Lb3/n0;

    .line 318
    .line 319
    if-nez p7, :cond_d

    .line 320
    .line 321
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    xor-int/2addr v1, v9

    .line 326
    invoke-virtual {v0, v1}, Lw0/r1;->s(Z)V

    .line 327
    .line 328
    .line 329
    :cond_d
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 330
    .line 331
    if-eqz v1, :cond_e

    .line 332
    .line 333
    iget-object v1, v1, Ll0/s0;->q:Lf1/k1;

    .line 334
    .line 335
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v1, v4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_e
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 343
    .line 344
    if-eqz v1, :cond_10

    .line 345
    .line 346
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-nez v4, :cond_f

    .line 351
    .line 352
    invoke-static {v0, v9}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_f

    .line 357
    .line 358
    const/4 v4, 0x1

    .line 359
    goto :goto_a

    .line 360
    :cond_f
    const/4 v4, 0x0

    .line 361
    :goto_a
    iget-object v1, v1, Ll0/s0;->m:Lf1/k1;

    .line 362
    .line 363
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v1, v4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :cond_10
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 371
    .line 372
    if-eqz v1, :cond_13

    .line 373
    .line 374
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-nez v4, :cond_11

    .line 379
    .line 380
    const/4 v4, 0x0

    .line 381
    invoke-static {v0, v4}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-eqz v5, :cond_12

    .line 386
    .line 387
    const/4 v5, 0x1

    .line 388
    goto :goto_b

    .line 389
    :cond_11
    const/4 v4, 0x0

    .line 390
    :cond_12
    const/4 v5, 0x0

    .line 391
    :goto_b
    iget-object v1, v1, Ll0/s0;->n:Lf1/k1;

    .line 392
    .line 393
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v1, v5}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_13
    const/4 v4, 0x0

    .line 402
    :goto_c
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 403
    .line 404
    if-eqz v1, :cond_15

    .line 405
    .line 406
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-eqz v5, :cond_14

    .line 411
    .line 412
    invoke-static {v0, v9}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_14

    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_14
    const/4 v9, 0x0

    .line 420
    :goto_d
    iget-object v0, v1, Ll0/s0;->o:Lf1/k1;

    .line 421
    .line 422
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :cond_15
    return-wide v2

    .line 430
    :cond_16
    :goto_e
    sget-wide v0, Lb3/n0;->b:J

    .line 431
    .line 432
    return-wide v0
.end method

.method public static e(Lb3/g;J)Lg3/w;
    .locals 2

    .line 1
    new-instance v0, Lg3/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lg3/w;-><init>(Lb3/g;JLb3/n0;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final d(Z)Lac/j1;
    .locals 3

    .line 1
    iget-object v0, p0, Lw0/r1;->h:Lac/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v2, Lw0/k1;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1, v1}, Lw0/k1;-><init>(Lw0/r1;ZLw8/c;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-static {v0, v1, v2, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    return-object v1
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw0/r1;->h:Lac/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lw0/m1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lw0/m1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v3, v1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final g(Lx1/b;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v0, v0, Lg3/w;->b:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lw0/r1;->b:Lg3/q;

    .line 29
    .line 30
    iget-wide v3, p1, Lx1/b;->a:J

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-virtual {v0, v3, v4, v5}, Ll0/q1;->b(JZ)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {v2, v0}, Lg3/q;->a(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-wide v2, v0, Lg3/w;->b:J

    .line 47
    .line 48
    invoke-static {v2, v3}, Lb3/n0;->e(J)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :goto_1
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v0}, Lb3/d0;->b(II)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    const/4 v0, 0x5

    .line 61
    invoke-static {v2, v1, v3, v4, v0}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lw0/r1;->c:Lf9/k;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-wide v0, v0, Lg3/w;->b:J

    .line 71
    .line 72
    new-instance v2, Lb3/n0;

    .line 73
    .line 74
    invoke-direct {v2, v0, v1}, Lb3/n0;-><init>(J)V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lw0/r1;->v:Lb3/n0;

    .line 78
    .line 79
    :cond_2
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p1, p1, Lg3/w;->a:Lb3/g;

    .line 86
    .line 87
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-lez p1, :cond_3

    .line 94
    .line 95
    sget-object p1, Ll0/i0;->c:Ll0/i0;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    sget-object p1, Ll0/i0;->a:Ll0/i0;

    .line 99
    .line 100
    :goto_2
    invoke-virtual {p0, p1}, Lw0/r1;->p(Ll0/i0;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lw0/r1;->s(Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll0/s0;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lw0/r1;->k:Lw1/o;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lw1/o;->b(Lw1/o;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lw0/r1;->t:Lg3/w;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lw0/r1;->s(Z)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Ll0/i0;->b:Ll0/i0;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lw0/r1;->p(Ll0/i0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final i()Lx1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/r1;->r:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx1/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/r1;->m:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final k(Z)J
    .locals 5

    .line 1
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, v0, Ll0/q1;->a:Lb3/l0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lw0/r1;->l()Lb3/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v2, v0, Lb3/l0;->a:Lb3/k0;

    .line 21
    .line 22
    iget-object v2, v2, Lb3/k0;->a:Lb3/g;

    .line 23
    .line 24
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-wide v1, v1, Lg3/w;->b:J

    .line 42
    .line 43
    sget v3, Lb3/n0;->c:I

    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    shr-long/2addr v1, v3

    .line 48
    :goto_0
    long-to-int v2, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-wide v1, v1, Lg3/w;->b:J

    .line 51
    .line 52
    sget v3, Lb3/n0;->c:I

    .line 53
    .line 54
    const-wide v3, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v1, v3

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    iget-object v1, p0, Lw0/r1;->b:Lg3/q;

    .line 62
    .line 63
    invoke-interface {v1, v2}, Lg3/q;->b(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p0}, Lw0/r1;->m()Lg3/w;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-wide v2, v2, Lg3/w;->b:J

    .line 72
    .line 73
    invoke-static {v2, v3}, Lb3/n0;->g(J)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v0, v1, p1, v2}, Lw0/y0;->t(Lb3/l0;IZZ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    return-wide v0

    .line 82
    :cond_3
    :goto_2
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    return-wide v0
.end method

.method public final l()Lb3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll0/s0;->a:Ll0/y0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Ll0/y0;->a:Lb3/g;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final m()Lg3/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/r1;->e:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lg3/w;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw0/r1;->x:Lkb/a;

    .line 2
    .line 3
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lr0/f;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lr0/f;->u:Lac/j1;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lr0/f;->u:Lac/j1;

    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw0/r1;->h:Lac/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lw0/m1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lw0/m1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v3, v1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final p(Ll0/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ll0/s0;->a()Ll0/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Ll0/s0;->k:Lf1/k1;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lp1/f;->e()Lf9/k;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lw0/r1;->j()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget-object v3, p0, Lw0/r1;->d:Ll0/s0;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v3, v3, Ll0/s0;->q:Lf1/k1;

    .line 28
    .line 29
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v0, v2, v1}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lw0/r1;->x:Lkb/a;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkb/a;->W()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    invoke-static {v0, v2, v1}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_2
    invoke-static {v0, v2, v1}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 58
    .line 59
    .line 60
    throw v3
.end method

.method public final r(Ly8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lw0/q1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lw0/q1;

    .line 7
    .line 8
    iget v1, v0, Lw0/q1;->g:I

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
    iput v1, v0, Lw0/q1;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lw0/q1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lw0/q1;-><init>(Lw0/r1;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lw0/q1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lw0/q1;->g:I

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
    iget-object v0, v0, Lw0/q1;->d:Lw0/r1;

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lw0/r1;->g:Lr2/d1;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iput-object p0, v0, Lw0/q1;->d:Lw0/r1;

    .line 57
    .line 58
    iput v2, v0, Lw0/q1;->g:I

    .line 59
    .line 60
    check-cast p1, Lr2/g;

    .line 61
    .line 62
    iget-object p1, p1, Lr2/g;->a:Lr2/h;

    .line 63
    .line 64
    iget-object p1, p1, Lr2/h;->a:Landroid/content/ClipboardManager;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    new-instance v0, Lr2/c1;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lr2/c1;-><init>(Landroid/content/ClipData;)V

    .line 75
    .line 76
    .line 77
    move-object p1, v0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object p1, v1

    .line 80
    :goto_1
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 81
    .line 82
    if-ne p1, v0, :cond_4

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_4
    move-object v0, p0

    .line 86
    :goto_2
    move-object v1, p1

    .line 87
    check-cast v1, Lr2/c1;

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move-object v0, p0

    .line 91
    :goto_3
    iget-object p1, v0, Lw0/r1;->w:Lf1/k1;

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 97
    .line 98
    return-object p1
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/r1;->d:Ll0/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll0/s0;->l:Lf1/k1;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lw0/r1;->q()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lw0/r1;->n()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
