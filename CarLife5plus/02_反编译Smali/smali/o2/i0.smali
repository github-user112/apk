.class public final Lo2/i0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/j;


# instance fields
.field public final a:Lq2/h0;

.field public b:Lf1/v;

.field public c:Landroid/support/v4/media/session/t;

.field public d:I

.field public e:I

.field public final f:Ls/h0;

.field public final g:Ls/h0;

.field public final h:Lo2/d0;

.field public final i:Lo2/a0;

.field public final j:Ls/h0;

.field public final k:Lo2/j1;

.field public final l:Ls/h0;

.field public final m:Lh1/e;

.field public n:I

.field public o:I

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lq2/h0;Landroid/support/v4/media/session/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo2/i0;->a:Lq2/h0;

    .line 5
    .line 6
    iput-object p2, p0, Lo2/i0;->c:Landroid/support/v4/media/session/t;

    .line 7
    .line 8
    sget-object p1, Ls/o0;->a:[J

    .line 9
    .line 10
    new-instance p1, Ls/h0;

    .line 11
    .line 12
    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lo2/i0;->f:Ls/h0;

    .line 16
    .line 17
    new-instance p1, Ls/h0;

    .line 18
    .line 19
    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lo2/i0;->g:Ls/h0;

    .line 23
    .line 24
    new-instance p1, Lo2/d0;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lo2/d0;-><init>(Lo2/i0;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lo2/i0;->h:Lo2/d0;

    .line 30
    .line 31
    new-instance p1, Lo2/a0;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lo2/a0;-><init>(Lo2/i0;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lo2/i0;->i:Lo2/a0;

    .line 37
    .line 38
    new-instance p1, Ls/h0;

    .line 39
    .line 40
    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lo2/i0;->j:Ls/h0;

    .line 44
    .line 45
    new-instance p1, Lo2/j1;

    .line 46
    .line 47
    invoke-direct {p1}, Lo2/j1;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lo2/i0;->k:Lo2/j1;

    .line 51
    .line 52
    new-instance p1, Ls/h0;

    .line 53
    .line 54
    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lo2/i0;->l:Ls/h0;

    .line 58
    .line 59
    new-instance p1, Lh1/e;

    .line 60
    .line 61
    const/16 p2, 0x10

    .line 62
    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {p1, p2}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lo2/i0;->m:Lh1/e;

    .line 69
    .line 70
    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    .line 71
    .line 72
    iput-object p1, p0, Lo2/i0;->p:Ljava/lang/String;

    .line 73
    .line 74
    return-void
.end method

.method public static a(Lo2/b0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo2/b0;->f:Lf1/n1;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Lf1/n1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    sget-object v2, Lf1/o1;->b:Lf1/o1;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lf1/n1;->j:Ln1/i;

    .line 13
    .line 14
    iget-object v2, v1, Ln1/i;->d:Ls/i0;

    .line 15
    .line 16
    invoke-virtual {v2}, Ls/i0;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v1, Ln1/i;->d:Ls/i0;

    .line 24
    .line 25
    sget-object v4, Ls/p0;->a:Ls/i0;

    .line 26
    .line 27
    new-instance v4, Ls/i0;

    .line 28
    .line 29
    invoke-direct {v4}, Ls/i0;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v1, Ln1/i;->d:Ls/i0;

    .line 33
    .line 34
    iget-object v4, v1, Ln1/i;->c:Lh1/e;

    .line 35
    .line 36
    invoke-virtual {v4}, Lh1/e;->h()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v2, v3

    .line 41
    :goto_0
    invoke-virtual {v1}, Ln1/i;->b()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lf1/n1;->a:Lf1/y;

    .line 45
    .line 46
    iput-object v3, v0, Lf1/y;->q:Lf1/n1;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, Lf1/y;->u:Ln1/i;

    .line 51
    .line 52
    iput-object v2, v1, Ln1/i;->k:Ls/i0;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    iput v1, v0, Lf1/y;->w:I

    .line 56
    .line 57
    :cond_1
    iput-object v3, p0, Lo2/b0;->f:Lf1/n1;

    .line 58
    .line 59
    iget-object v0, p0, Lo2/b0;->c:Lf1/y;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lf1/y;->m()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iput-object v3, p0, Lo2/b0;->c:Lf1/y;

    .line 67
    .line 68
    :cond_3
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lo2/i0;->a:Lq2/h0;

    .line 5
    .line 6
    iput-boolean v1, v2, Lq2/h0;->p:Z

    .line 7
    .line 8
    iget-object v1, v0, Lo2/i0;->f:Ls/h0;

    .line 9
    .line 10
    iget-object v3, v1, Ls/h0;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v4, v1, Ls/h0;->a:[J

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    add-int/lit8 v5, v5, -0x2

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-ltz v5, :cond_3

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    :goto_0
    aget-wide v8, v4, v7

    .line 22
    .line 23
    not-long v10, v8

    .line 24
    const/4 v12, 0x7

    .line 25
    shl-long/2addr v10, v12

    .line 26
    and-long/2addr v10, v8

    .line 27
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v10, v12

    .line 33
    cmp-long v14, v10, v12

    .line 34
    .line 35
    if-eqz v14, :cond_2

    .line 36
    .line 37
    sub-int v10, v7, v5

    .line 38
    .line 39
    not-int v10, v10

    .line 40
    ushr-int/lit8 v10, v10, 0x1f

    .line 41
    .line 42
    const/16 v11, 0x8

    .line 43
    .line 44
    rsub-int/lit8 v10, v10, 0x8

    .line 45
    .line 46
    const/4 v12, 0x0

    .line 47
    :goto_1
    if-ge v12, v10, :cond_1

    .line 48
    .line 49
    const-wide/16 v13, 0xff

    .line 50
    .line 51
    and-long/2addr v13, v8

    .line 52
    const-wide/16 v15, 0x80

    .line 53
    .line 54
    cmp-long v17, v13, v15

    .line 55
    .line 56
    if-gez v17, :cond_0

    .line 57
    .line 58
    shl-int/lit8 v13, v7, 0x3

    .line 59
    .line 60
    add-int/2addr v13, v12

    .line 61
    aget-object v13, v3, v13

    .line 62
    .line 63
    check-cast v13, Lo2/b0;

    .line 64
    .line 65
    iget-object v13, v13, Lo2/b0;->c:Lf1/y;

    .line 66
    .line 67
    if-eqz v13, :cond_0

    .line 68
    .line 69
    invoke-virtual {v13}, Lf1/y;->m()V

    .line 70
    .line 71
    .line 72
    :cond_0
    shr-long/2addr v8, v11

    .line 73
    add-int/lit8 v12, v12, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    if-ne v10, v11, :cond_3

    .line 77
    .line 78
    :cond_2
    if-eq v7, v5, :cond_3

    .line 79
    .line 80
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v2}, Lq2/h0;->P()V

    .line 84
    .line 85
    .line 86
    iput-boolean v6, v2, Lq2/h0;->p:Z

    .line 87
    .line 88
    invoke-virtual {v1}, Ls/h0;->a()V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lo2/i0;->g:Ls/h0;

    .line 92
    .line 93
    invoke-virtual {v1}, Ls/h0;->a()V

    .line 94
    .line 95
    .line 96
    iput v6, v0, Lo2/i0;->o:I

    .line 97
    .line 98
    iput v6, v0, Lo2/i0;->n:I

    .line 99
    .line 100
    iget-object v1, v0, Lo2/i0;->j:Ls/h0;

    .line 101
    .line 102
    invoke-virtual {v1}, Ls/h0;->a()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lo2/i0;->e()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lo2/i0;->f(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final d(I)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo2/i0;->n:I

    .line 3
    .line 4
    iget-object v1, p0, Lo2/i0;->a:Lq2/h0;

    .line 5
    .line 6
    invoke-virtual {v1}, Lq2/h0;->p()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lh1/b;

    .line 12
    .line 13
    iget-object v3, v2, Lh1/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lh1/e;

    .line 16
    .line 17
    iget v3, v3, Lh1/e;->c:I

    .line 18
    .line 19
    iget v4, p0, Lo2/i0;->o:I

    .line 20
    .line 21
    sub-int/2addr v3, v4

    .line 22
    const/4 v4, 0x1

    .line 23
    sub-int/2addr v3, v4

    .line 24
    if-gt p1, v3, :cond_a

    .line 25
    .line 26
    iget-object v5, p0, Lo2/i0;->k:Lo2/j1;

    .line 27
    .line 28
    invoke-virtual {v5}, Lo2/j1;->clear()V

    .line 29
    .line 30
    .line 31
    if-gt p1, v3, :cond_0

    .line 32
    .line 33
    move v5, p1

    .line 34
    :goto_0
    invoke-virtual {v2, v5}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lq2/h0;

    .line 39
    .line 40
    iget-object v7, p0, Lo2/i0;->f:Ls/h0;

    .line 41
    .line 42
    invoke-virtual {v7, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast v6, Lo2/b0;

    .line 50
    .line 51
    iget-object v6, v6, Lo2/b0;->a:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v7, p0, Lo2/i0;->k:Lo2/j1;

    .line 54
    .line 55
    iget-object v7, v7, Lo2/j1;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v7, Ls/e0;

    .line 58
    .line 59
    invoke-virtual {v7, v6}, Ls/e0;->a(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    if-eq v5, v3, :cond_0

    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v2, p0, Lo2/i0;->c:Landroid/support/v4/media/session/t;

    .line 68
    .line 69
    iget-object v5, p0, Lo2/i0;->k:Lo2/j1;

    .line 70
    .line 71
    iget-object v6, v2, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v6, Ls/c0;

    .line 74
    .line 75
    invoke-virtual {v6}, Ls/c0;->a()V

    .line 76
    .line 77
    .line 78
    iget-object v7, v5, Lo2/j1;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v7, Ls/e0;

    .line 81
    .line 82
    iget-object v8, v7, Ls/e0;->b:[Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v9, v7, Ls/e0;->c:[J

    .line 85
    .line 86
    iget v7, v7, Ls/e0;->e:I

    .line 87
    .line 88
    :goto_1
    const v10, 0x7fffffff

    .line 89
    .line 90
    .line 91
    if-eq v7, v10, :cond_3

    .line 92
    .line 93
    aget-wide v10, v9, v7

    .line 94
    .line 95
    const/16 v12, 0x1f

    .line 96
    .line 97
    shr-long/2addr v10, v12

    .line 98
    const-wide/32 v12, 0x7fffffff

    .line 99
    .line 100
    .line 101
    and-long/2addr v10, v12

    .line 102
    long-to-int v11, v10

    .line 103
    aget-object v7, v8, v7

    .line 104
    .line 105
    iget-object v10, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v10, Lh0/t;

    .line 108
    .line 109
    invoke-virtual {v10, v7}, Lh0/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v6, v10}, Ls/c0;->d(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-ltz v12, :cond_1

    .line 118
    .line 119
    iget-object v13, v6, Ls/c0;->c:[I

    .line 120
    .line 121
    aget v12, v13, v12

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_1
    const/4 v12, 0x0

    .line 125
    :goto_2
    const/4 v13, 0x7

    .line 126
    if-ne v12, v13, :cond_2

    .line 127
    .line 128
    invoke-virtual {v5, v7}, Lo2/j1;->remove(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    invoke-virtual {v6, v12, v10}, Ls/c0;->h(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :goto_3
    move v7, v11

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    invoke-virtual {v2}, Lp1/f;->e()Lf9/k;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    goto :goto_4

    .line 150
    :cond_4
    const/4 v5, 0x0

    .line 151
    :goto_4
    invoke-static {v2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    const/4 v7, 0x0

    .line 156
    :goto_5
    if-lt v3, p1, :cond_9

    .line 157
    .line 158
    :try_start_0
    move-object v8, v1

    .line 159
    check-cast v8, Lh1/b;

    .line 160
    .line 161
    invoke-virtual {v8, v3}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    check-cast v8, Lq2/h0;

    .line 166
    .line 167
    iget-object v9, p0, Lo2/i0;->f:Ls/h0;

    .line 168
    .line 169
    invoke-virtual {v9, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    check-cast v9, Lo2/b0;

    .line 177
    .line 178
    iget-object v10, v9, Lo2/b0;->a:Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v11, p0, Lo2/i0;->k:Lo2/j1;

    .line 181
    .line 182
    iget-object v11, v11, Lo2/j1;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v11, Ls/e0;

    .line 185
    .line 186
    invoke-virtual {v11, v10}, Ls/e0;->c(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_6

    .line 191
    .line 192
    iget v11, p0, Lo2/i0;->n:I

    .line 193
    .line 194
    add-int/2addr v11, v4

    .line 195
    iput v11, p0, Lo2/i0;->n:I

    .line 196
    .line 197
    iget-object v11, v9, Lo2/b0;->g:Lf1/k1;

    .line 198
    .line 199
    invoke-virtual {v11}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-eqz v11, :cond_8

    .line 210
    .line 211
    iget-object v8, v8, Lq2/h0;->F:Lq2/l0;

    .line 212
    .line 213
    iget-object v11, v8, Lq2/l0;->p:Lq2/y0;

    .line 214
    .line 215
    sget-object v12, Lq2/f0;->c:Lq2/f0;

    .line 216
    .line 217
    iput-object v12, v11, Lq2/y0;->l:Lq2/f0;

    .line 218
    .line 219
    iget-object v8, v8, Lq2/l0;->q:Lq2/u0;

    .line 220
    .line 221
    if-eqz v8, :cond_5

    .line 222
    .line 223
    iput-object v12, v8, Lq2/u0;->j:Lq2/f0;

    .line 224
    .line 225
    :cond_5
    invoke-virtual {p0, v9, v0}, Lo2/i0;->g(Lo2/b0;Z)V

    .line 226
    .line 227
    .line 228
    iget-boolean v8, v9, Lo2/b0;->h:Z

    .line 229
    .line 230
    if-eqz v8, :cond_8

    .line 231
    .line 232
    const/4 v7, 0x1

    .line 233
    goto :goto_6

    .line 234
    :catchall_0
    move-exception p1

    .line 235
    goto :goto_7

    .line 236
    :cond_6
    iget-object v11, p0, Lo2/i0;->a:Lq2/h0;

    .line 237
    .line 238
    iput-boolean v4, v11, Lq2/h0;->p:Z

    .line 239
    .line 240
    iget-object v12, p0, Lo2/i0;->f:Ls/h0;

    .line 241
    .line 242
    invoke-virtual {v12, v8}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    iget-object v8, v9, Lo2/b0;->c:Lf1/y;

    .line 246
    .line 247
    if-eqz v8, :cond_7

    .line 248
    .line 249
    invoke-virtual {v8}, Lf1/y;->m()V

    .line 250
    .line 251
    .line 252
    :cond_7
    iget-object v8, p0, Lo2/i0;->a:Lq2/h0;

    .line 253
    .line 254
    invoke-virtual {v8, v3, v4}, Lq2/h0;->Q(II)V

    .line 255
    .line 256
    .line 257
    iput-boolean v0, v11, Lq2/h0;->p:Z

    .line 258
    .line 259
    :cond_8
    :goto_6
    iget-object v8, p0, Lo2/i0;->g:Ls/h0;

    .line 260
    .line 261
    invoke-virtual {v8, v10}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .line 263
    .line 264
    add-int/lit8 v3, v3, -0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :goto_7
    invoke-static {v2, v6, v5}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 268
    .line 269
    .line 270
    throw p1

    .line 271
    :cond_9
    invoke-static {v2, v6, v5}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_a
    const/4 v7, 0x0

    .line 276
    :goto_8
    if-eqz v7, :cond_c

    .line 277
    .line 278
    sget-object p1, Lp1/l;->c:Ljava/lang/Object;

    .line 279
    .line 280
    monitor-enter p1

    .line 281
    :try_start_1
    sget-object v1, Lp1/l;->j:Lp1/a;

    .line 282
    .line 283
    iget-object v1, v1, Lp1/b;->h:Ls/i0;

    .line 284
    .line 285
    if-eqz v1, :cond_b

    .line 286
    .line 287
    invoke-virtual {v1}, Ls/i0;->h()Z

    .line 288
    .line 289
    .line 290
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    if-ne v1, v4, :cond_b

    .line 292
    .line 293
    const/4 v0, 0x1

    .line 294
    :cond_b
    monitor-exit p1

    .line 295
    if-eqz v0, :cond_c

    .line 296
    .line 297
    invoke-static {}, Lp1/l;->a()V

    .line 298
    .line 299
    .line 300
    goto :goto_9

    .line 301
    :catchall_1
    move-exception v0

    .line 302
    monitor-exit p1

    .line 303
    throw v0

    .line 304
    :cond_c
    :goto_9
    invoke-virtual {p0}, Lo2/i0;->e()V

    .line 305
    .line 306
    .line 307
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo2/i0;->a:Lq2/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/h0;->p()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh1/b;

    .line 8
    .line 9
    iget-object v0, v0, Lh1/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lh1/e;

    .line 12
    .line 13
    iget v0, v0, Lh1/e;->c:I

    .line 14
    .line 15
    iget-object v1, p0, Lo2/i0;->f:Ls/h0;

    .line 16
    .line 17
    iget v2, v1, Ls/h0;->e:I

    .line 18
    .line 19
    if-ne v2, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "Inconsistency between the count of nodes tracked by the state ("

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, v1, Ls/h0;->e:I

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ") and the children count on the SubcomposeLayout ("

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Ln2/a;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget v1, p0, Lo2/i0;->n:I

    .line 55
    .line 56
    sub-int v1, v0, v1

    .line 57
    .line 58
    iget v2, p0, Lo2/i0;->o:I

    .line 59
    .line 60
    sub-int/2addr v1, v2

    .line 61
    if-ltz v1, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v1, "Incorrect state. Total children "

    .line 65
    .line 66
    const-string v2, ". Reusable children "

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lo2/i0;->n:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ". Precomposed children "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lo2/i0;->o:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ln2/a;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object v0, p0, Lo2/i0;->j:Ls/h0;

    .line 95
    .line 96
    iget v1, v0, Ls/h0;->e:I

    .line 97
    .line 98
    iget v2, p0, Lo2/i0;->o:I

    .line 99
    .line 100
    if-ne v1, v2, :cond_2

    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v2, "Incorrect state. Precomposed children "

    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v2, p0, Lo2/i0;->o:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ". Map size "

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v0, v0, Ls/h0;->e:I

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ln2/a;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final f(Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo2/i0;->o:I

    .line 3
    .line 4
    iget-object v1, p0, Lo2/i0;->j:Ls/h0;

    .line 5
    .line 6
    invoke-virtual {v1}, Ls/h0;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lo2/i0;->a:Lq2/h0;

    .line 10
    .line 11
    invoke-virtual {v1}, Lq2/h0;->p()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lh1/b;

    .line 17
    .line 18
    iget-object v2, v2, Lh1/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lh1/e;

    .line 21
    .line 22
    iget v2, v2, Lh1/e;->c:I

    .line 23
    .line 24
    iget v3, p0, Lo2/i0;->n:I

    .line 25
    .line 26
    if-eq v3, v2, :cond_4

    .line 27
    .line 28
    iput v2, p0, Lo2/i0;->n:I

    .line 29
    .line 30
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lp1/f;->e()Lf9/k;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    :goto_0
    invoke-static {v3}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    :goto_1
    if-ge v0, v2, :cond_3

    .line 47
    .line 48
    :try_start_0
    move-object v6, v1

    .line 49
    check-cast v6, Lh1/b;

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Lq2/h0;

    .line 56
    .line 57
    iget-object v7, p0, Lo2/i0;->f:Ls/h0;

    .line 58
    .line 59
    invoke-virtual {v7, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Lo2/b0;

    .line 64
    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    iget-object v8, v7, Lo2/b0;->g:Lf1/k1;

    .line 68
    .line 69
    invoke-virtual {v8}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    iget-object v6, v6, Lq2/h0;->F:Lq2/l0;

    .line 82
    .line 83
    iget-object v8, v6, Lq2/l0;->p:Lq2/y0;

    .line 84
    .line 85
    sget-object v9, Lq2/f0;->c:Lq2/f0;

    .line 86
    .line 87
    iput-object v9, v8, Lq2/y0;->l:Lq2/f0;

    .line 88
    .line 89
    iget-object v6, v6, Lq2/l0;->q:Lq2/u0;

    .line 90
    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    iput-object v9, v6, Lq2/u0;->j:Lq2/f0;

    .line 94
    .line 95
    :cond_1
    invoke-virtual {p0, v7, p1}, Lo2/i0;->g(Lo2/b0;Z)V

    .line 96
    .line 97
    .line 98
    sget-object v6, Lo2/d1;->a:Lo2/i;

    .line 99
    .line 100
    iput-object v6, v7, Lo2/b0;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_3
    invoke-static {v3, v5, v4}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_3
    invoke-static {v3, v5, v4}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lo2/i0;->g:Ls/h0;

    .line 116
    .line 117
    invoke-virtual {p1}, Ls/h0;->a()V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-virtual {p0}, Lo2/i0;->e()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final g(Lo2/b0;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p1, Lo2/b0;->h:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lo2/b0;->g:Lf1/k1;

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Lo2/b0;->g:Lf1/k1;

    .line 22
    .line 23
    :goto_0
    iget-object v0, p1, Lo2/b0;->f:Lf1/n1;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Lo2/i0;->a(Lo2/b0;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lo2/b0;->c:Lf1/y;

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    invoke-virtual {p1}, Lf1/y;->l()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p2, p0, Lo2/i0;->a:Lq2/h0;

    .line 42
    .line 43
    invoke-static {p2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lr2/u;

    .line 48
    .line 49
    invoke-virtual {p2}, Lr2/u;->getOutOfFrameExecutor()Lq2/o1;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    new-instance v0, Lb1/a;

    .line 56
    .line 57
    const/16 v1, 0x9

    .line 58
    .line 59
    invoke-direct {v0, v1, p1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast p2, Lr2/u;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    new-instance p2, Landroidx/lifecycle/z;

    .line 71
    .line 72
    const/16 v1, 0x15

    .line 73
    .line 74
    invoke-direct {p2, v1, v0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p2, "schedule is called when outOfFrameExecutor is not available (view is detached)"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_4
    iget-boolean p2, p1, Lo2/b0;->h:Z

    .line 90
    .line 91
    if-nez p2, :cond_5

    .line 92
    .line 93
    iget-object p1, p1, Lo2/b0;->c:Lf1/y;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1}, Lf1/y;->l()V

    .line 98
    .line 99
    .line 100
    :cond_5
    return-void
.end method

.method public final h(Lq2/h0;Ljava/lang/Object;ZLf9/n;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lo2/i0;->f:Ls/h0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lo2/b0;

    .line 11
    .line 12
    sget-object v3, Lo2/h;->a:Ln1/c;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p2, v1, Lo2/b0;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v3, v1, Lo2/b0;->b:Lf9/n;

    .line 20
    .line 21
    iput-object v2, v1, Lo2/b0;->c:Lf1/y;

    .line 22
    .line 23
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, v1, Lo2/b0;->g:Lf1/k1;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast v1, Lo2/b0;

    .line 35
    .line 36
    iget-object p2, v1, Lo2/b0;->b:Lf9/n;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq p2, p4, :cond_1

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p2, 0x0

    .line 45
    :goto_0
    iget-object v4, v1, Lo2/b0;->f:Lf1/n1;

    .line 46
    .line 47
    if-eqz v4, :cond_6

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Lo2/i0;->a(Lo2/b0;)V

    .line 52
    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_2
    if-eqz p3, :cond_3

    .line 56
    .line 57
    goto :goto_7

    .line 58
    :cond_3
    iget-object v4, v1, Lo2/b0;->f:Lf1/n1;

    .line 59
    .line 60
    if-eqz v4, :cond_6

    .line 61
    .line 62
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    invoke-virtual {v5}, Lp1/f;->e()Lf9/k;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-object v6, v2

    .line 74
    :goto_1
    invoke-static {v5}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    :try_start_0
    iget-object v8, p0, Lo2/i0;->a:Lq2/h0;

    .line 79
    .line 80
    iput-boolean v3, v8, Lq2/h0;->p:Z

    .line 81
    .line 82
    :goto_2
    invoke-virtual {v4}, Lf1/n1;->c()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-nez v9, :cond_5

    .line 87
    .line 88
    new-instance v9, Lb3/i0;

    .line 89
    .line 90
    const/4 v10, 0x5

    .line 91
    invoke-direct {v9, v10}, Lb3/i0;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v9}, Lf1/n1;->f(Lb3/i0;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    invoke-virtual {v4}, Lf1/n1;->a()V

    .line 101
    .line 102
    .line 103
    iput-object v2, v1, Lo2/b0;->f:Lf1/n1;

    .line 104
    .line 105
    iput-boolean v0, v8, Lq2/h0;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    invoke-static {v5, v7, v6}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :goto_3
    invoke-static {v5, v7, v6}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_6
    :goto_4
    iget-object v4, v1, Lo2/b0;->c:Lf1/y;

    .line 116
    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    iget-object v5, v4, Lf1/y;->d:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v5

    .line 122
    :try_start_1
    iget-object v4, v4, Lf1/y;->n:Ls/h0;

    .line 123
    .line 124
    iget v4, v4, Ls/h0;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .line 126
    if-lez v4, :cond_7

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_5

    .line 130
    :cond_7
    const/4 v4, 0x0

    .line 131
    :goto_5
    monitor-exit v5

    .line 132
    goto :goto_6

    .line 133
    :catchall_1
    move-exception p1

    .line 134
    monitor-exit v5

    .line 135
    throw p1

    .line 136
    :cond_8
    const/4 v4, 0x1

    .line 137
    :goto_6
    if-nez p2, :cond_a

    .line 138
    .line 139
    if-nez v4, :cond_a

    .line 140
    .line 141
    iget-boolean p2, v1, Lo2/b0;->d:Z

    .line 142
    .line 143
    if-eqz p2, :cond_9

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_9
    :goto_7
    return-void

    .line 147
    :cond_a
    :goto_8
    iput-object p4, v1, Lo2/b0;->b:Lf9/n;

    .line 148
    .line 149
    iget-object p2, v1, Lo2/b0;->f:Lf1/n1;

    .line 150
    .line 151
    if-nez p2, :cond_b

    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_b
    const-string p2, "new subcompose call while paused composition is still active"

    .line 155
    .line 156
    invoke-static {p2}, Ln2/a;->a(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_9
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    if-eqz p2, :cond_c

    .line 164
    .line 165
    invoke-virtual {p2}, Lp1/f;->e()Lf9/k;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :cond_c
    invoke-static {p2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    :try_start_2
    iget-object v4, p0, Lo2/i0;->a:Lq2/h0;

    .line 174
    .line 175
    iput-boolean v3, v4, Lq2/h0;->p:Z

    .line 176
    .line 177
    iget-object v5, v1, Lo2/b0;->c:Lf1/y;

    .line 178
    .line 179
    iget-object v6, p0, Lo2/i0;->b:Lf1/v;

    .line 180
    .line 181
    if-eqz v6, :cond_15

    .line 182
    .line 183
    const/4 v7, 0x3

    .line 184
    if-eqz v5, :cond_e

    .line 185
    .line 186
    iget v8, v5, Lf1/y;->w:I

    .line 187
    .line 188
    if-ne v8, v7, :cond_d

    .line 189
    .line 190
    const/4 v8, 0x1

    .line 191
    goto :goto_a

    .line 192
    :cond_d
    const/4 v8, 0x0

    .line 193
    :goto_a
    if-eqz v8, :cond_10

    .line 194
    .line 195
    goto :goto_b

    .line 196
    :catchall_2
    move-exception p1

    .line 197
    goto/16 :goto_10

    .line 198
    .line 199
    :cond_e
    :goto_b
    if-eqz p3, :cond_f

    .line 200
    .line 201
    sget-object v5, Lr2/g3;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 202
    .line 203
    new-instance v5, La2/b;

    .line 204
    .line 205
    invoke-direct {v5, p1}, La2/b;-><init>(Lq2/h0;)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Lf1/y;

    .line 209
    .line 210
    invoke-direct {p1, v6, v5}, Lf1/y;-><init>(Lf1/v;La2/b;)V

    .line 211
    .line 212
    .line 213
    :goto_c
    move-object v5, p1

    .line 214
    goto :goto_d

    .line 215
    :cond_f
    sget-object v5, Lr2/g3;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 216
    .line 217
    new-instance v5, La2/b;

    .line 218
    .line 219
    invoke-direct {v5, p1}, La2/b;-><init>(Lq2/h0;)V

    .line 220
    .line 221
    .line 222
    new-instance p1, Lf1/y;

    .line 223
    .line 224
    invoke-direct {p1, v6, v5}, Lf1/y;-><init>(Lf1/v;La2/b;)V

    .line 225
    .line 226
    .line 227
    goto :goto_c

    .line 228
    :cond_10
    :goto_d
    iput-object v5, v1, Lo2/b0;->c:Lf1/y;

    .line 229
    .line 230
    iget-object p1, v1, Lo2/b0;->b:Lf9/n;

    .line 231
    .line 232
    iget-object v6, p0, Lo2/i0;->a:Lq2/h0;

    .line 233
    .line 234
    invoke-static {v6}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Lr2/u;

    .line 239
    .line 240
    invoke-virtual {v6}, Lr2/u;->getOutOfFrameExecutor()Lq2/o1;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    if-eqz v6, :cond_11

    .line 245
    .line 246
    iput-boolean v0, v1, Lo2/b0;->h:Z

    .line 247
    .line 248
    goto :goto_e

    .line 249
    :cond_11
    iput-boolean v3, v1, Lo2/b0;->h:Z

    .line 250
    .line 251
    new-instance v6, Lc1/h;

    .line 252
    .line 253
    invoke-direct {v6, v7, v1, p1}, Lc1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    new-instance p1, Ln1/c;

    .line 257
    .line 258
    const v7, 0x5ad8c84e

    .line 259
    .line 260
    .line 261
    invoke-direct {p1, v6, v7, v3}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 262
    .line 263
    .line 264
    :goto_e
    if-eqz p3, :cond_13

    .line 265
    .line 266
    iget-boolean p3, v1, Lo2/b0;->e:Z

    .line 267
    .line 268
    if-eqz p3, :cond_12

    .line 269
    .line 270
    invoke-virtual {v5}, Lf1/y;->i()Z

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Lf1/y;->q()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v3, p1}, Lf1/y;->k(ZLf9/n;)Lf1/n1;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    iput-object p1, v1, Lo2/b0;->f:Lf1/n1;

    .line 281
    .line 282
    goto :goto_f

    .line 283
    :cond_12
    invoke-virtual {v5}, Lf1/y;->i()Z

    .line 284
    .line 285
    .line 286
    move-result p3

    .line 287
    invoke-virtual {v5, p3, p1}, Lf1/y;->k(ZLf9/n;)Lf1/n1;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-object p1, v1, Lo2/b0;->f:Lf1/n1;

    .line 292
    .line 293
    goto :goto_f

    .line 294
    :cond_13
    iget-boolean p3, v1, Lo2/b0;->e:Z

    .line 295
    .line 296
    if-eqz p3, :cond_14

    .line 297
    .line 298
    invoke-virtual {v5}, Lf1/y;->i()Z

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Lf1/y;->q()V

    .line 302
    .line 303
    .line 304
    iget-object p3, v5, Lf1/y;->v:Lf1/s;

    .line 305
    .line 306
    const/16 v6, 0x64

    .line 307
    .line 308
    iput v6, p3, Lf1/s;->z:I

    .line 309
    .line 310
    iput-boolean v3, p3, Lf1/s;->y:Z

    .line 311
    .line 312
    iget-object v3, v5, Lf1/y;->a:Lf1/v;

    .line 313
    .line 314
    invoke-virtual {v3, v5, p1}, Lf1/v;->a(Lf1/y;Lf9/n;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p3}, Lf1/s;->s()V

    .line 318
    .line 319
    .line 320
    goto :goto_f

    .line 321
    :cond_14
    invoke-virtual {v5, p1}, Lf1/y;->B(Lf9/n;)V

    .line 322
    .line 323
    .line 324
    :goto_f
    iput-boolean v0, v1, Lo2/b0;->e:Z

    .line 325
    .line 326
    iput-boolean v0, v4, Lq2/h0;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 327
    .line 328
    invoke-static {p2, p4, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 329
    .line 330
    .line 331
    iput-boolean v0, v1, Lo2/b0;->d:Z

    .line 332
    .line 333
    return-void

    .line 334
    :cond_15
    :try_start_3
    const-string p1, "parent composition reference not set"

    .line 335
    .line 336
    invoke-static {p1}, Ln2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 337
    .line 338
    .line 339
    new-instance p1, Lac/p;

    .line 340
    .line 341
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 342
    .line 343
    .line 344
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 345
    :goto_10
    invoke-static {p2, p4, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 346
    .line 347
    .line 348
    throw p1
.end method

.method public final i(Ljava/lang/Object;)Lq2/h0;
    .locals 12

    .line 1
    iget v0, p0, Lo2/i0;->n:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lo2/i0;->a:Lq2/h0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lq2/h0;->p()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lh1/b;

    .line 14
    .line 15
    iget-object v2, v1, Lh1/b;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lh1/e;

    .line 18
    .line 19
    iget v2, v2, Lh1/e;->c:I

    .line 20
    .line 21
    iget v3, p0, Lo2/i0;->o:I

    .line 22
    .line 23
    sub-int/2addr v2, v3

    .line 24
    iget v3, p0, Lo2/i0;->n:I

    .line 25
    .line 26
    sub-int v3, v2, v3

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    sub-int/2addr v2, v4

    .line 30
    move v5, v2

    .line 31
    :goto_0
    iget-object v6, p0, Lo2/i0;->f:Ls/h0;

    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    if-lt v5, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    check-cast v8, Lq2/h0;

    .line 41
    .line 42
    invoke-virtual {v6, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast v8, Lo2/b0;

    .line 50
    .line 51
    iget-object v8, v8, Lo2/b0;->a:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v8, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_1

    .line 58
    .line 59
    move v8, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v8, -0x1

    .line 65
    :goto_1
    if-ne v8, v7, :cond_6

    .line 66
    .line 67
    :goto_2
    if-lt v2, v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lq2/h0;

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    check-cast v5, Lo2/b0;

    .line 83
    .line 84
    iget-object v9, v5, Lo2/b0;->a:Ljava/lang/Object;

    .line 85
    .line 86
    sget-object v10, Lo2/d1;->a:Lo2/i;

    .line 87
    .line 88
    if-eq v9, v10, :cond_4

    .line 89
    .line 90
    iget-object v10, p0, Lo2/i0;->c:Landroid/support/v4/media/session/t;

    .line 91
    .line 92
    iget-object v10, v10, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v10, Lh0/t;

    .line 95
    .line 96
    invoke-virtual {v10, p1}, Lh0/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    invoke-virtual {v10, v9}, Lh0/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-static {v11, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    :goto_3
    iput-object p1, v5, Lo2/b0;->a:Ljava/lang/Object;

    .line 115
    .line 116
    move v5, v2

    .line 117
    move v8, v5

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move v5, v2

    .line 120
    :cond_6
    :goto_4
    if-ne v8, v7, :cond_7

    .line 121
    .line 122
    :goto_5
    const/4 p1, 0x0

    .line 123
    return-object p1

    .line 124
    :cond_7
    if-eq v5, v3, :cond_8

    .line 125
    .line 126
    iput-boolean v4, v0, Lq2/h0;->p:Z

    .line 127
    .line 128
    invoke-virtual {v0, v5, v3, v4}, Lq2/h0;->M(III)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    iput-boolean p1, v0, Lq2/h0;->p:Z

    .line 133
    .line 134
    :cond_8
    iget p1, p0, Lo2/i0;->n:I

    .line 135
    .line 136
    add-int/2addr p1, v7

    .line 137
    iput p1, p0, Lo2/i0;->n:I

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lq2/h0;

    .line 144
    .line 145
    invoke-virtual {v6, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    check-cast v0, Lo2/b0;

    .line 153
    .line 154
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, v0, Lo2/b0;->g:Lf1/k1;

    .line 161
    .line 162
    iput-boolean v4, v0, Lo2/b0;->e:Z

    .line 163
    .line 164
    iput-boolean v4, v0, Lo2/b0;->d:Z

    .line 165
    .line 166
    return-object p1
.end method
