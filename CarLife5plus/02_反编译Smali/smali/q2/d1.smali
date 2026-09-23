.class public final Lq2/d1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lq2/h0;

.field public final b:Lq2/c1;

.field public final c:Lq2/t;

.field public d:Lq2/h1;

.field public final e:Lq2/a2;

.field public f:Lr1/o;

.field public g:Lh1/e;

.field public h:Lh1/e;

.field public final i:Lh1/e;

.field public j:Lq2/b1;


# direct methods
.method public constructor <init>(Lq2/h0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/d1;->a:Lq2/h0;

    .line 5
    .line 6
    new-instance v0, Lq2/c1;

    .line 7
    .line 8
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lr1/o;->d:I

    .line 13
    .line 14
    iput-object v0, p0, Lq2/d1;->b:Lq2/c1;

    .line 15
    .line 16
    new-instance v0, Lq2/t;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lq2/t;-><init>(Lq2/h0;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lq2/d1;->c:Lq2/t;

    .line 22
    .line 23
    iput-object v0, p0, Lq2/d1;->d:Lq2/h1;

    .line 24
    .line 25
    iget-object p1, v0, Lq2/t;->O:Lq2/a2;

    .line 26
    .line 27
    iput-object p1, p0, Lq2/d1;->e:Lq2/a2;

    .line 28
    .line 29
    iput-object p1, p0, Lq2/d1;->f:Lr1/o;

    .line 30
    .line 31
    new-instance p1, Lh1/e;

    .line 32
    .line 33
    const/16 v0, 0x10

    .line 34
    .line 35
    new-array v0, v0, [Lr1/p;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lq2/d1;->i:Lh1/e;

    .line 41
    .line 42
    return-void
.end method

.method public static final a(Lq2/d1;Lr1/o;Lq2/h1;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lr1/o;->e:Lr1/o;

    .line 2
    .line 3
    :goto_0
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lq2/d1;->b:Lq2/c1;

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lq2/d1;->a:Lq2/h0;

    .line 10
    .line 11
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lq2/h0;->E:Lq2/d1;

    .line 18
    .line 19
    iget-object p1, p1, Lq2/d1;->c:Lq2/t;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_1
    iput-object p1, p2, Lq2/h1;->q:Lq2/h1;

    .line 24
    .line 25
    iput-object p2, p0, Lq2/d1;->d:Lq2/h1;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget v0, p1, Lr1/o;->c:I

    .line 29
    .line 30
    and-int/lit8 v0, v0, 0x2

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {p1, p2}, Lr1/o;->z0(Lq2/h1;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lr1/o;->e:Lr1/o;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_2
    return-void
.end method

.method public static b(Lr1/n;Lr1/o;)Lr1/o;
    .locals 2

    .line 1
    instance-of v0, p0, Lq2/z0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lq2/z0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lq2/z0;->i()Lr1/o;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lq2/i1;->f(Lr1/o;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lr1/o;->c:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lq2/c;

    .line 19
    .line 20
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lq2/i1;->d(Lr1/n;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lr1/o;->c:I

    .line 28
    .line 29
    iput-object p0, v0, Lq2/c;->o:Lr1/n;

    .line 30
    .line 31
    new-instance p0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p0, v0, Lq2/c;->q:Ljava/util/HashSet;

    .line 37
    .line 38
    move-object p0, v0

    .line 39
    :goto_0
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    .line 44
    .line 45
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lr1/o;->i:Z

    .line 50
    .line 51
    iget-object v0, p1, Lr1/o;->f:Lr1/o;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iput-object p0, v0, Lr1/o;->e:Lr1/o;

    .line 56
    .line 57
    iput-object v0, p0, Lr1/o;->f:Lr1/o;

    .line 58
    .line 59
    :cond_2
    iput-object p0, p1, Lr1/o;->f:Lr1/o;

    .line 60
    .line 61
    iput-object p1, p0, Lr1/o;->e:Lr1/o;

    .line 62
    .line 63
    return-object p0
.end method

.method public static c(Lr1/o;)Lr1/o;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lq2/i1;->a:Ls/c0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {p0, v0, v1}, Lq2/i1;->a(Lr1/o;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lr1/o;->x0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lr1/o;->p0()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lr1/o;->f:Lr1/o;

    .line 26
    .line 27
    iget-object v1, p0, Lr1/o;->e:Lr1/o;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iput-object v1, v0, Lr1/o;->e:Lr1/o;

    .line 33
    .line 34
    iput-object v2, p0, Lr1/o;->f:Lr1/o;

    .line 35
    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iput-object v0, v1, Lr1/o;->f:Lr1/o;

    .line 39
    .line 40
    iput-object v2, p0, Lr1/o;->e:Lr1/o;

    .line 41
    .line 42
    :cond_3
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public static h(Lr1/n;Lr1/n;Lr1/o;)V
    .locals 2

    .line 1
    instance-of p0, p0, Lq2/z0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    instance-of p0, p1, Lq2/z0;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lq2/z0;

    .line 11
    .line 12
    const-string p0, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe"

    .line 13
    .line 14
    invoke-static {p2, p0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lq2/z0;->j(Lr1/o;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p0, p2, Lr1/o;->n:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-static {p2}, Lq2/i1;->c(Lr1/o;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-boolean v0, p2, Lr1/o;->j:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    instance-of p0, p2, Lq2/c;

    .line 32
    .line 33
    if-eqz p0, :cond_5

    .line 34
    .line 35
    move-object p0, p2

    .line 36
    check-cast p0, Lq2/c;

    .line 37
    .line 38
    iget-boolean v1, p0, Lr1/o;->n:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lq2/c;->B0()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iput-object p1, p0, Lq2/c;->o:Lr1/n;

    .line 46
    .line 47
    invoke-static {p1}, Lq2/i1;->d(Lr1/n;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lr1/o;->c:I

    .line 52
    .line 53
    iget-boolean p1, p0, Lr1/o;->n:Z

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lq2/c;->A0(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-boolean p0, p2, Lr1/o;->n:Z

    .line 62
    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    invoke-static {p2}, Lq2/i1;->c(Lr1/o;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    iput-boolean v0, p2, Lr1/o;->j:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    const-string p0, "Unknown Modifier.Node type"

    .line 73
    .line 74
    invoke-static {p0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final d(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/d1;->f:Lr1/o;

    .line 2
    .line 3
    iget v0, v0, Lr1/o;->d:I

    .line 4
    .line 5
    and-int/2addr p1, v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/d1;->f:Lr1/o;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lr1/o;->w0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lr1/o;->i:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lq2/i1;->a:Ls/c0;

    .line 13
    .line 14
    iget-boolean v1, v0, Lr1/o;->n:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "autoInvalidateInsertedNode called on unattached node"

    .line 19
    .line 20
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v1, -0x1

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v0, v1, v2}, Lq2/i1;->a(Lr1/o;II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-boolean v1, v0, Lr1/o;->j:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Lq2/i1;->c(Lr1/o;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lr1/o;->i:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lr1/o;->j:Z

    .line 39
    .line 40
    iget-object v0, v0, Lr1/o;->f:Lr1/o;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-void
.end method

.method public final f(ILh1/e;Lh1/e;Lr1/o;Z)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lq2/d1;->j:Lq2/b1;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lq2/b1;

    .line 8
    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v2, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    invoke-direct/range {v0 .. v6}, Lq2/b1;-><init>(Lq2/d1;Lr1/o;ILh1/e;Lh1/e;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v1, Lq2/d1;->j:Lq2/b1;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move/from16 v3, p1

    .line 26
    .line 27
    move-object/from16 v4, p2

    .line 28
    .line 29
    move-object/from16 v5, p3

    .line 30
    .line 31
    move-object/from16 v2, p4

    .line 32
    .line 33
    iput-object v2, v0, Lq2/b1;->a:Lr1/o;

    .line 34
    .line 35
    iput v3, v0, Lq2/b1;->b:I

    .line 36
    .line 37
    iput-object v4, v0, Lq2/b1;->c:Lh1/e;

    .line 38
    .line 39
    iput-object v5, v0, Lq2/b1;->d:Lh1/e;

    .line 40
    .line 41
    move/from16 v6, p5

    .line 42
    .line 43
    iput-boolean v6, v0, Lq2/b1;->e:Z

    .line 44
    .line 45
    :goto_0
    iget-object v2, v0, Lq2/b1;->f:Lq2/d1;

    .line 46
    .line 47
    iget v4, v4, Lh1/e;->c:I

    .line 48
    .line 49
    sub-int/2addr v4, v3

    .line 50
    iget v5, v5, Lh1/e;->c:I

    .line 51
    .line 52
    sub-int/2addr v5, v3

    .line 53
    add-int v3, v4, v5

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    add-int/2addr v3, v6

    .line 57
    const/4 v7, 0x2

    .line 58
    div-int/2addr v3, v7

    .line 59
    new-instance v8, Lf1/o0;

    .line 60
    .line 61
    mul-int/lit8 v9, v3, 0x3

    .line 62
    .line 63
    invoke-direct {v8, v9}, Lf1/o0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v9, Lf1/o0;

    .line 67
    .line 68
    mul-int/lit8 v10, v3, 0x4

    .line 69
    .line 70
    invoke-direct {v9, v10}, Lf1/o0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    invoke-virtual {v9, v10, v4, v10, v5}, Lf1/o0;->e(IIII)V

    .line 75
    .line 76
    .line 77
    mul-int/lit8 v3, v3, 0x2

    .line 78
    .line 79
    add-int/2addr v3, v6

    .line 80
    new-array v11, v3, [I

    .line 81
    .line 82
    new-array v12, v3, [I

    .line 83
    .line 84
    const/4 v13, 0x5

    .line 85
    new-array v13, v13, [I

    .line 86
    .line 87
    :goto_1
    iget v14, v9, Lf1/o0;->b:I

    .line 88
    .line 89
    if-eqz v14, :cond_1d

    .line 90
    .line 91
    const/16 p1, 0x2

    .line 92
    .line 93
    iget-object v7, v9, Lf1/o0;->a:[I

    .line 94
    .line 95
    const/16 p2, 0x0

    .line 96
    .line 97
    add-int/lit8 v10, v14, -0x1

    .line 98
    .line 99
    iput v10, v9, Lf1/o0;->b:I

    .line 100
    .line 101
    aget v10, v7, v10

    .line 102
    .line 103
    const/16 p3, 0x3

    .line 104
    .line 105
    add-int/lit8 v15, v14, -0x2

    .line 106
    .line 107
    iput v15, v9, Lf1/o0;->b:I

    .line 108
    .line 109
    aget v15, v7, v15

    .line 110
    .line 111
    add-int/lit8 v6, v14, -0x3

    .line 112
    .line 113
    iput v6, v9, Lf1/o0;->b:I

    .line 114
    .line 115
    aget v6, v7, v6

    .line 116
    .line 117
    add-int/lit8 v14, v14, -0x4

    .line 118
    .line 119
    iput v14, v9, Lf1/o0;->b:I

    .line 120
    .line 121
    aget v7, v7, v14

    .line 122
    .line 123
    sub-int v14, v6, v7

    .line 124
    .line 125
    move/from16 p5, v3

    .line 126
    .line 127
    sub-int v3, v10, v15

    .line 128
    .line 129
    move-object/from16 v16, v11

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    if-lt v14, v11, :cond_1c

    .line 133
    .line 134
    if-ge v3, v11, :cond_1

    .line 135
    .line 136
    goto/16 :goto_19

    .line 137
    .line 138
    :cond_1
    add-int v17, v14, v3

    .line 139
    .line 140
    add-int/lit8 v17, v17, 0x1

    .line 141
    .line 142
    const/16 p4, 0x1

    .line 143
    .line 144
    div-int/lit8 v11, v17, 0x2

    .line 145
    .line 146
    div-int/lit8 v17, p5, 0x2

    .line 147
    .line 148
    add-int/lit8 v18, v17, 0x1

    .line 149
    .line 150
    aput v7, v16, v18

    .line 151
    .line 152
    aput v6, v12, v18

    .line 153
    .line 154
    move/from16 v18, v3

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    :goto_2
    if-ge v3, v11, :cond_1c

    .line 158
    .line 159
    sub-int v19, v14, v18

    .line 160
    .line 161
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    .line 162
    .line 163
    .line 164
    move-result v20

    .line 165
    move/from16 v21, v11

    .line 166
    .line 167
    and-int/lit8 v11, v20, 0x1

    .line 168
    .line 169
    move-object/from16 v20, v12

    .line 170
    .line 171
    const/4 v12, 0x1

    .line 172
    if-ne v11, v12, :cond_2

    .line 173
    .line 174
    const/4 v11, 0x1

    .line 175
    goto :goto_3

    .line 176
    :cond_2
    const/4 v11, 0x0

    .line 177
    :goto_3
    neg-int v12, v3

    .line 178
    move/from16 v22, v11

    .line 179
    .line 180
    move v11, v12

    .line 181
    :goto_4
    const/16 v23, 0x4

    .line 182
    .line 183
    if-gt v11, v3, :cond_b

    .line 184
    .line 185
    if-eq v11, v12, :cond_5

    .line 186
    .line 187
    if-eq v11, v3, :cond_3

    .line 188
    .line 189
    add-int/lit8 v24, v11, 0x1

    .line 190
    .line 191
    add-int v24, v24, v17

    .line 192
    .line 193
    move/from16 v25, v11

    .line 194
    .line 195
    aget v11, v16, v24

    .line 196
    .line 197
    add-int/lit8 v24, v25, -0x1

    .line 198
    .line 199
    add-int v24, v24, v17

    .line 200
    .line 201
    move-object/from16 v26, v13

    .line 202
    .line 203
    aget v13, v16, v24

    .line 204
    .line 205
    if-le v11, v13, :cond_4

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_3
    move/from16 v25, v11

    .line 209
    .line 210
    move-object/from16 v26, v13

    .line 211
    .line 212
    :cond_4
    add-int/lit8 v11, v25, -0x1

    .line 213
    .line 214
    add-int v11, v11, v17

    .line 215
    .line 216
    aget v11, v16, v11

    .line 217
    .line 218
    add-int/lit8 v13, v11, 0x1

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_5
    move/from16 v25, v11

    .line 222
    .line 223
    move-object/from16 v26, v13

    .line 224
    .line 225
    :goto_5
    add-int/lit8 v11, v25, 0x1

    .line 226
    .line 227
    add-int v11, v11, v17

    .line 228
    .line 229
    aget v11, v16, v11

    .line 230
    .line 231
    move v13, v11

    .line 232
    :goto_6
    sub-int v24, v13, v7

    .line 233
    .line 234
    add-int v24, v24, v15

    .line 235
    .line 236
    sub-int v24, v24, v25

    .line 237
    .line 238
    if-eqz v3, :cond_6

    .line 239
    .line 240
    const/16 v27, 0x1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_6
    const/16 v27, 0x0

    .line 244
    .line 245
    :goto_7
    if-ne v13, v11, :cond_7

    .line 246
    .line 247
    const/16 v28, 0x1

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_7
    const/16 v28, 0x0

    .line 251
    .line 252
    :goto_8
    and-int v27, v27, v28

    .line 253
    .line 254
    sub-int v27, v24, v27

    .line 255
    .line 256
    move/from16 v30, v24

    .line 257
    .line 258
    move/from16 v24, v11

    .line 259
    .line 260
    move/from16 v11, v30

    .line 261
    .line 262
    :goto_9
    if-ge v13, v6, :cond_8

    .line 263
    .line 264
    if-ge v11, v10, :cond_8

    .line 265
    .line 266
    invoke-virtual {v0, v13, v11}, Lq2/b1;->a(II)Z

    .line 267
    .line 268
    .line 269
    move-result v28

    .line 270
    if-eqz v28, :cond_8

    .line 271
    .line 272
    add-int/lit8 v13, v13, 0x1

    .line 273
    .line 274
    add-int/lit8 v11, v11, 0x1

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_8
    add-int v28, v17, v25

    .line 278
    .line 279
    aput v13, v16, v28

    .line 280
    .line 281
    if-eqz v22, :cond_9

    .line 282
    .line 283
    move/from16 v28, v11

    .line 284
    .line 285
    sub-int v11, v19, v25

    .line 286
    .line 287
    move/from16 v29, v14

    .line 288
    .line 289
    add-int/lit8 v14, v12, 0x1

    .line 290
    .line 291
    if-lt v11, v14, :cond_a

    .line 292
    .line 293
    add-int/lit8 v14, v3, -0x1

    .line 294
    .line 295
    if-gt v11, v14, :cond_a

    .line 296
    .line 297
    add-int v11, v17, v11

    .line 298
    .line 299
    aget v11, v20, v11

    .line 300
    .line 301
    if-gt v11, v13, :cond_a

    .line 302
    .line 303
    aput v24, v26, p2

    .line 304
    .line 305
    const/4 v11, 0x1

    .line 306
    aput v27, v26, v11

    .line 307
    .line 308
    aput v13, v26, p1

    .line 309
    .line 310
    aput v28, v26, p3

    .line 311
    .line 312
    aput p2, v26, v23

    .line 313
    .line 314
    const/4 v11, 0x1

    .line 315
    goto/16 :goto_11

    .line 316
    .line 317
    :cond_9
    move/from16 v29, v14

    .line 318
    .line 319
    :cond_a
    add-int/lit8 v11, v25, 0x2

    .line 320
    .line 321
    move-object/from16 v13, v26

    .line 322
    .line 323
    move/from16 v14, v29

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_b
    move-object/from16 v26, v13

    .line 328
    .line 329
    move/from16 v29, v14

    .line 330
    .line 331
    and-int/lit8 v11, v19, 0x1

    .line 332
    .line 333
    if-nez v11, :cond_c

    .line 334
    .line 335
    const/4 v11, 0x1

    .line 336
    goto :goto_a

    .line 337
    :cond_c
    const/4 v11, 0x0

    .line 338
    :goto_a
    move v13, v12

    .line 339
    :goto_b
    if-gt v13, v3, :cond_1b

    .line 340
    .line 341
    if-eq v13, v12, :cond_f

    .line 342
    .line 343
    if-eq v13, v3, :cond_d

    .line 344
    .line 345
    add-int/lit8 v14, v13, 0x1

    .line 346
    .line 347
    add-int v14, v14, v17

    .line 348
    .line 349
    aget v14, v20, v14

    .line 350
    .line 351
    add-int/lit8 v22, v13, -0x1

    .line 352
    .line 353
    add-int v22, v22, v17

    .line 354
    .line 355
    move/from16 v24, v11

    .line 356
    .line 357
    aget v11, v20, v22

    .line 358
    .line 359
    if-ge v14, v11, :cond_e

    .line 360
    .line 361
    goto :goto_c

    .line 362
    :cond_d
    move/from16 v24, v11

    .line 363
    .line 364
    :cond_e
    add-int/lit8 v11, v13, -0x1

    .line 365
    .line 366
    add-int v11, v11, v17

    .line 367
    .line 368
    aget v11, v20, v11

    .line 369
    .line 370
    add-int/lit8 v14, v11, -0x1

    .line 371
    .line 372
    goto :goto_d

    .line 373
    :cond_f
    move/from16 v24, v11

    .line 374
    .line 375
    :goto_c
    add-int/lit8 v11, v13, 0x1

    .line 376
    .line 377
    add-int v11, v11, v17

    .line 378
    .line 379
    aget v11, v20, v11

    .line 380
    .line 381
    move v14, v11

    .line 382
    :goto_d
    sub-int v22, v6, v14

    .line 383
    .line 384
    sub-int v22, v22, v13

    .line 385
    .line 386
    sub-int v22, v10, v22

    .line 387
    .line 388
    if-eqz v3, :cond_10

    .line 389
    .line 390
    const/16 v25, 0x1

    .line 391
    .line 392
    goto :goto_e

    .line 393
    :cond_10
    const/16 v25, 0x0

    .line 394
    .line 395
    :goto_e
    if-ne v14, v11, :cond_11

    .line 396
    .line 397
    const/16 v27, 0x1

    .line 398
    .line 399
    goto :goto_f

    .line 400
    :cond_11
    const/16 v27, 0x0

    .line 401
    .line 402
    :goto_f
    and-int v25, v25, v27

    .line 403
    .line 404
    add-int v25, v22, v25

    .line 405
    .line 406
    move/from16 v30, v22

    .line 407
    .line 408
    move/from16 v22, v11

    .line 409
    .line 410
    move/from16 v11, v30

    .line 411
    .line 412
    :goto_10
    if-le v14, v7, :cond_12

    .line 413
    .line 414
    if-le v11, v15, :cond_12

    .line 415
    .line 416
    move/from16 v27, v11

    .line 417
    .line 418
    add-int/lit8 v11, v14, -0x1

    .line 419
    .line 420
    move/from16 v28, v13

    .line 421
    .line 422
    add-int/lit8 v13, v27, -0x1

    .line 423
    .line 424
    invoke-virtual {v0, v11, v13}, Lq2/b1;->a(II)Z

    .line 425
    .line 426
    .line 427
    move-result v11

    .line 428
    if-eqz v11, :cond_13

    .line 429
    .line 430
    add-int/lit8 v14, v14, -0x1

    .line 431
    .line 432
    add-int/lit8 v11, v27, -0x1

    .line 433
    .line 434
    move/from16 v13, v28

    .line 435
    .line 436
    goto :goto_10

    .line 437
    :cond_12
    move/from16 v27, v11

    .line 438
    .line 439
    move/from16 v28, v13

    .line 440
    .line 441
    :cond_13
    add-int v13, v17, v28

    .line 442
    .line 443
    aput v14, v20, v13

    .line 444
    .line 445
    if-eqz v24, :cond_1a

    .line 446
    .line 447
    sub-int v11, v19, v28

    .line 448
    .line 449
    if-lt v11, v12, :cond_1a

    .line 450
    .line 451
    if-gt v11, v3, :cond_1a

    .line 452
    .line 453
    add-int v11, v17, v11

    .line 454
    .line 455
    aget v11, v16, v11

    .line 456
    .line 457
    if-lt v11, v14, :cond_1a

    .line 458
    .line 459
    aput v14, v26, p2

    .line 460
    .line 461
    const/4 v11, 0x1

    .line 462
    aput v27, v26, v11

    .line 463
    .line 464
    aput v22, v26, p1

    .line 465
    .line 466
    aput v25, v26, p3

    .line 467
    .line 468
    aput v11, v26, v23

    .line 469
    .line 470
    :goto_11
    aget v3, v26, p1

    .line 471
    .line 472
    aget v12, v26, p2

    .line 473
    .line 474
    sub-int/2addr v3, v12

    .line 475
    aget v12, v26, p3

    .line 476
    .line 477
    aget v13, v26, v11

    .line 478
    .line 479
    sub-int/2addr v12, v13

    .line 480
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-lez v3, :cond_19

    .line 485
    .line 486
    aget v3, v26, p2

    .line 487
    .line 488
    aget v12, v26, v11

    .line 489
    .line 490
    aget v11, v26, p3

    .line 491
    .line 492
    sub-int/2addr v11, v12

    .line 493
    aget v13, v26, p1

    .line 494
    .line 495
    sub-int/2addr v13, v3

    .line 496
    if-eq v11, v13, :cond_18

    .line 497
    .line 498
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    .line 499
    .line 500
    .line 501
    move-result v13

    .line 502
    aget v11, v26, v23

    .line 503
    .line 504
    if-eqz v11, :cond_14

    .line 505
    .line 506
    const/4 v14, 0x1

    .line 507
    goto :goto_12

    .line 508
    :cond_14
    const/4 v14, 0x0

    .line 509
    :goto_12
    aget v17, v26, p3

    .line 510
    .line 511
    const/16 v18, 0x1

    .line 512
    .line 513
    aget v19, v26, v18

    .line 514
    .line 515
    move/from16 p4, v3

    .line 516
    .line 517
    sub-int v3, v17, v19

    .line 518
    .line 519
    aget v21, v26, p1

    .line 520
    .line 521
    aget v22, v26, p2

    .line 522
    .line 523
    move/from16 v23, v11

    .line 524
    .line 525
    sub-int v11, v21, v22

    .line 526
    .line 527
    if-le v3, v11, :cond_15

    .line 528
    .line 529
    const/4 v3, 0x1

    .line 530
    goto :goto_13

    .line 531
    :cond_15
    const/4 v3, 0x0

    .line 532
    :goto_13
    or-int/2addr v3, v14

    .line 533
    xor-int/lit8 v3, v3, 0x1

    .line 534
    .line 535
    add-int v3, p4, v3

    .line 536
    .line 537
    if-eqz v23, :cond_16

    .line 538
    .line 539
    const/4 v11, 0x1

    .line 540
    goto :goto_14

    .line 541
    :cond_16
    const/4 v11, 0x0

    .line 542
    :goto_14
    sub-int v14, v17, v19

    .line 543
    .line 544
    move/from16 p4, v3

    .line 545
    .line 546
    sub-int v3, v21, v22

    .line 547
    .line 548
    if-le v14, v3, :cond_17

    .line 549
    .line 550
    const/4 v3, 0x1

    .line 551
    goto :goto_15

    .line 552
    :cond_17
    const/4 v3, 0x0

    .line 553
    :goto_15
    xor-int/lit8 v3, v3, 0x1

    .line 554
    .line 555
    or-int/2addr v3, v11

    .line 556
    xor-int/lit8 v3, v3, 0x1

    .line 557
    .line 558
    add-int/2addr v12, v3

    .line 559
    move/from16 v3, p4

    .line 560
    .line 561
    goto :goto_16

    .line 562
    :cond_18
    move/from16 p4, v3

    .line 563
    .line 564
    const/16 v18, 0x1

    .line 565
    .line 566
    :goto_16
    invoke-virtual {v8, v3, v12, v13}, Lf1/o0;->d(III)V

    .line 567
    .line 568
    .line 569
    goto :goto_17

    .line 570
    :cond_19
    const/16 v18, 0x1

    .line 571
    .line 572
    :goto_17
    aget v3, v26, p2

    .line 573
    .line 574
    aget v11, v26, v18

    .line 575
    .line 576
    invoke-virtual {v9, v7, v3, v15, v11}, Lf1/o0;->e(IIII)V

    .line 577
    .line 578
    .line 579
    aget v3, v26, p1

    .line 580
    .line 581
    aget v7, v26, p3

    .line 582
    .line 583
    invoke-virtual {v9, v3, v6, v7, v10}, Lf1/o0;->e(IIII)V

    .line 584
    .line 585
    .line 586
    :goto_18
    move/from16 v3, p5

    .line 587
    .line 588
    move-object/from16 v11, v16

    .line 589
    .line 590
    move-object/from16 v12, v20

    .line 591
    .line 592
    move-object/from16 v13, v26

    .line 593
    .line 594
    const/4 v6, 0x1

    .line 595
    const/4 v7, 0x2

    .line 596
    const/4 v10, 0x0

    .line 597
    goto/16 :goto_1

    .line 598
    .line 599
    :cond_1a
    add-int/lit8 v13, v28, 0x2

    .line 600
    .line 601
    move/from16 v11, v24

    .line 602
    .line 603
    goto/16 :goto_b

    .line 604
    .line 605
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 606
    .line 607
    move-object/from16 v12, v20

    .line 608
    .line 609
    move/from16 v11, v21

    .line 610
    .line 611
    move-object/from16 v13, v26

    .line 612
    .line 613
    move/from16 v14, v29

    .line 614
    .line 615
    const/16 p4, 0x1

    .line 616
    .line 617
    goto/16 :goto_2

    .line 618
    .line 619
    :cond_1c
    :goto_19
    move-object/from16 v20, v12

    .line 620
    .line 621
    move-object/from16 v26, v13

    .line 622
    .line 623
    goto :goto_18

    .line 624
    :cond_1d
    const/16 p1, 0x2

    .line 625
    .line 626
    const/16 p2, 0x0

    .line 627
    .line 628
    const/16 p3, 0x3

    .line 629
    .line 630
    iget v3, v8, Lf1/o0;->b:I

    .line 631
    .line 632
    rem-int/lit8 v6, v3, 0x3

    .line 633
    .line 634
    if-nez v6, :cond_1e

    .line 635
    .line 636
    :goto_1a
    const/4 v6, 0x3

    .line 637
    goto :goto_1b

    .line 638
    :cond_1e
    const-string v6, "Array size not a multiple of 3"

    .line 639
    .line 640
    invoke-static {v6}, Ln2/a;->b(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_1a

    .line 644
    :goto_1b
    if-le v3, v6, :cond_1f

    .line 645
    .line 646
    sub-int/2addr v3, v6

    .line 647
    const/4 v6, 0x0

    .line 648
    invoke-virtual {v8, v6, v3}, Lf1/o0;->f(II)V

    .line 649
    .line 650
    .line 651
    goto :goto_1c

    .line 652
    :cond_1f
    const/4 v6, 0x0

    .line 653
    :goto_1c
    invoke-virtual {v8, v4, v5, v6}, Lf1/o0;->d(III)V

    .line 654
    .line 655
    .line 656
    const/4 v3, 0x0

    .line 657
    const/4 v4, 0x0

    .line 658
    const/4 v5, 0x0

    .line 659
    :cond_20
    iget v7, v8, Lf1/o0;->b:I

    .line 660
    .line 661
    if-ge v3, v7, :cond_29

    .line 662
    .line 663
    iget-object v7, v8, Lf1/o0;->a:[I

    .line 664
    .line 665
    aget v9, v7, v3

    .line 666
    .line 667
    add-int/lit8 v10, v3, 0x2

    .line 668
    .line 669
    aget v10, v7, v10

    .line 670
    .line 671
    sub-int/2addr v9, v10

    .line 672
    add-int/lit8 v11, v3, 0x1

    .line 673
    .line 674
    aget v7, v7, v11

    .line 675
    .line 676
    sub-int/2addr v7, v10

    .line 677
    add-int/lit8 v3, v3, 0x3

    .line 678
    .line 679
    :goto_1d
    if-ge v4, v9, :cond_23

    .line 680
    .line 681
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 682
    .line 683
    iget-object v11, v11, Lr1/o;->f:Lr1/o;

    .line 684
    .line 685
    invoke-static {v11}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    iget v12, v11, Lr1/o;->c:I

    .line 689
    .line 690
    and-int/lit8 v12, v12, 0x2

    .line 691
    .line 692
    if-eqz v12, :cond_22

    .line 693
    .line 694
    iget-object v12, v11, Lr1/o;->h:Lq2/h1;

    .line 695
    .line 696
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    iget-object v13, v12, Lq2/h1;->q:Lq2/h1;

    .line 700
    .line 701
    iget-object v12, v12, Lq2/h1;->p:Lq2/h1;

    .line 702
    .line 703
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    if-eqz v13, :cond_21

    .line 707
    .line 708
    iput-object v12, v13, Lq2/h1;->p:Lq2/h1;

    .line 709
    .line 710
    :cond_21
    iput-object v13, v12, Lq2/h1;->q:Lq2/h1;

    .line 711
    .line 712
    iget-object v13, v0, Lq2/b1;->a:Lr1/o;

    .line 713
    .line 714
    invoke-static {v2, v13, v12}, Lq2/d1;->a(Lq2/d1;Lr1/o;Lq2/h1;)V

    .line 715
    .line 716
    .line 717
    :cond_22
    invoke-static {v11}, Lq2/d1;->c(Lr1/o;)Lr1/o;

    .line 718
    .line 719
    .line 720
    move-result-object v11

    .line 721
    iput-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 722
    .line 723
    add-int/lit8 v4, v4, 0x1

    .line 724
    .line 725
    goto :goto_1d

    .line 726
    :cond_23
    :goto_1e
    if-ge v5, v7, :cond_27

    .line 727
    .line 728
    iget v9, v0, Lq2/b1;->b:I

    .line 729
    .line 730
    add-int/2addr v9, v5

    .line 731
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 732
    .line 733
    iget-object v12, v0, Lq2/b1;->d:Lh1/e;

    .line 734
    .line 735
    iget-object v12, v12, Lh1/e;->a:[Ljava/lang/Object;

    .line 736
    .line 737
    aget-object v9, v12, v9

    .line 738
    .line 739
    check-cast v9, Lr1/n;

    .line 740
    .line 741
    invoke-static {v9, v11}, Lq2/d1;->b(Lr1/n;Lr1/o;)Lr1/o;

    .line 742
    .line 743
    .line 744
    move-result-object v9

    .line 745
    iput-object v9, v0, Lq2/b1;->a:Lr1/o;

    .line 746
    .line 747
    iget-boolean v11, v0, Lq2/b1;->e:Z

    .line 748
    .line 749
    if-eqz v11, :cond_26

    .line 750
    .line 751
    iget-object v9, v9, Lr1/o;->f:Lr1/o;

    .line 752
    .line 753
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    iget-object v9, v9, Lr1/o;->h:Lq2/h1;

    .line 757
    .line 758
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 762
    .line 763
    invoke-static {v11}, Lq2/f;->g(Lr1/o;)Lq2/x;

    .line 764
    .line 765
    .line 766
    move-result-object v11

    .line 767
    if-eqz v11, :cond_24

    .line 768
    .line 769
    new-instance v12, Lq2/z;

    .line 770
    .line 771
    iget-object v13, v2, Lq2/d1;->a:Lq2/h0;

    .line 772
    .line 773
    invoke-direct {v12, v13, v11}, Lq2/z;-><init>(Lq2/h0;Lq2/x;)V

    .line 774
    .line 775
    .line 776
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 777
    .line 778
    invoke-virtual {v11, v12}, Lr1/o;->z0(Lq2/h1;)V

    .line 779
    .line 780
    .line 781
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 782
    .line 783
    invoke-static {v2, v11, v12}, Lq2/d1;->a(Lq2/d1;Lr1/o;Lq2/h1;)V

    .line 784
    .line 785
    .line 786
    iget-object v11, v9, Lq2/h1;->q:Lq2/h1;

    .line 787
    .line 788
    iput-object v11, v12, Lq2/h1;->q:Lq2/h1;

    .line 789
    .line 790
    iput-object v9, v12, Lq2/h1;->p:Lq2/h1;

    .line 791
    .line 792
    iput-object v12, v9, Lq2/h1;->q:Lq2/h1;

    .line 793
    .line 794
    goto :goto_1f

    .line 795
    :cond_24
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 796
    .line 797
    invoke-virtual {v11, v9}, Lr1/o;->z0(Lq2/h1;)V

    .line 798
    .line 799
    .line 800
    :goto_1f
    iget-object v9, v0, Lq2/b1;->a:Lr1/o;

    .line 801
    .line 802
    invoke-virtual {v9}, Lr1/o;->o0()V

    .line 803
    .line 804
    .line 805
    iget-object v9, v0, Lq2/b1;->a:Lr1/o;

    .line 806
    .line 807
    invoke-virtual {v9}, Lr1/o;->w0()V

    .line 808
    .line 809
    .line 810
    iget-object v9, v0, Lq2/b1;->a:Lr1/o;

    .line 811
    .line 812
    sget-object v11, Lq2/i1;->a:Ls/c0;

    .line 813
    .line 814
    iget-boolean v11, v9, Lr1/o;->n:Z

    .line 815
    .line 816
    if-nez v11, :cond_25

    .line 817
    .line 818
    const-string v11, "autoInvalidateInsertedNode called on unattached node"

    .line 819
    .line 820
    invoke-static {v11}, Ln2/a;->b(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_25
    const/4 v11, -0x1

    .line 824
    const/4 v12, 0x1

    .line 825
    invoke-static {v9, v11, v12}, Lq2/i1;->a(Lr1/o;II)V

    .line 826
    .line 827
    .line 828
    goto :goto_20

    .line 829
    :cond_26
    const/4 v12, 0x1

    .line 830
    iput-boolean v12, v9, Lr1/o;->i:Z

    .line 831
    .line 832
    :goto_20
    add-int/lit8 v5, v5, 0x1

    .line 833
    .line 834
    goto :goto_1e

    .line 835
    :cond_27
    const/4 v12, 0x1

    .line 836
    :goto_21
    add-int/lit8 v7, v10, -0x1

    .line 837
    .line 838
    if-lez v10, :cond_20

    .line 839
    .line 840
    iget-object v9, v0, Lq2/b1;->a:Lr1/o;

    .line 841
    .line 842
    iget-object v9, v9, Lr1/o;->f:Lr1/o;

    .line 843
    .line 844
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    iput-object v9, v0, Lq2/b1;->a:Lr1/o;

    .line 848
    .line 849
    iget-object v9, v0, Lq2/b1;->c:Lh1/e;

    .line 850
    .line 851
    iget v10, v0, Lq2/b1;->b:I

    .line 852
    .line 853
    add-int v11, v10, v4

    .line 854
    .line 855
    iget-object v9, v9, Lh1/e;->a:[Ljava/lang/Object;

    .line 856
    .line 857
    aget-object v9, v9, v11

    .line 858
    .line 859
    check-cast v9, Lr1/n;

    .line 860
    .line 861
    iget-object v11, v0, Lq2/b1;->d:Lh1/e;

    .line 862
    .line 863
    add-int/2addr v10, v5

    .line 864
    iget-object v11, v11, Lh1/e;->a:[Ljava/lang/Object;

    .line 865
    .line 866
    aget-object v10, v11, v10

    .line 867
    .line 868
    check-cast v10, Lr1/n;

    .line 869
    .line 870
    invoke-static {v9, v10}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v11

    .line 874
    if-nez v11, :cond_28

    .line 875
    .line 876
    iget-object v11, v0, Lq2/b1;->a:Lr1/o;

    .line 877
    .line 878
    invoke-static {v9, v10, v11}, Lq2/d1;->h(Lr1/n;Lr1/n;Lr1/o;)V

    .line 879
    .line 880
    .line 881
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 882
    .line 883
    add-int/lit8 v5, v5, 0x1

    .line 884
    .line 885
    move v10, v7

    .line 886
    goto :goto_21

    .line 887
    :cond_29
    iget-object v0, v1, Lq2/d1;->e:Lq2/a2;

    .line 888
    .line 889
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 890
    .line 891
    const/4 v10, 0x0

    .line 892
    :goto_22
    if-eqz v0, :cond_2a

    .line 893
    .line 894
    iget-object v2, v1, Lq2/d1;->b:Lq2/c1;

    .line 895
    .line 896
    if-eq v0, v2, :cond_2a

    .line 897
    .line 898
    iget v2, v0, Lr1/o;->c:I

    .line 899
    .line 900
    or-int/2addr v10, v2

    .line 901
    iput v10, v0, Lr1/o;->d:I

    .line 902
    .line 903
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 904
    .line 905
    goto :goto_22

    .line 906
    :cond_2a
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq2/d1;->e:Lq2/a2;

    .line 2
    .line 3
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 4
    .line 5
    iget-object v1, p0, Lq2/d1;->c:Lq2/t;

    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Lq2/d1;->a:Lq2/h0;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-static {v0}, Lq2/f;->g(Lr1/o;)Lq2/x;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    iget-object v4, v0, Lr1/o;->h:Lq2/h1;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v4, Lq2/z;

    .line 22
    .line 23
    iget-object v2, v4, Lq2/z;->O:Lq2/x;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Lq2/z;->g1(Lq2/x;)V

    .line 26
    .line 27
    .line 28
    if-eq v2, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, v4, Lq2/h1;->I:Lq2/p1;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v2}, Lq2/p1;->invalidate()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance v4, Lq2/z;

    .line 39
    .line 40
    invoke-direct {v4, v2, v3}, Lq2/z;-><init>(Lq2/h0;Lq2/x;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Lr1/o;->z0(Lq2/h1;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    iput-object v4, v1, Lq2/h1;->q:Lq2/h1;

    .line 47
    .line 48
    iput-object v1, v4, Lq2/h1;->p:Lq2/h1;

    .line 49
    .line 50
    move-object v1, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v0, v1}, Lr1/o;->z0(Lq2/h1;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 65
    .line 66
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_3
    iput-object v0, v1, Lq2/h1;->q:Lq2/h1;

    .line 71
    .line 72
    iput-object v1, p0, Lq2/d1;->d:Lq2/h1;

    .line 73
    .line 74
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lq2/d1;->f:Lr1/o;

    .line 9
    .line 10
    const-string v2, "]"

    .line 11
    .line 12
    iget-object v3, p0, Lq2/d1;->e:Lq2/a2;

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, v1, Lr1/o;->f:Lr1/o;

    .line 32
    .line 33
    if-ne v4, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v4, ","

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, v1, Lr1/o;->f:Lr1/o;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "toString(...)"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method
