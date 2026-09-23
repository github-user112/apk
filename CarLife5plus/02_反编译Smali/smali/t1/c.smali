.class public final Lt1/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/e;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final a:Lr2/u;

.field public final b:Lc/l0;

.field public c:Landroid/support/v4/media/session/t;

.field public final d:Ljava/util/ArrayList;

.field public final e:J

.field public f:Lt1/a;

.field public g:Z

.field public final h:Lcc/h;

.field public final i:Landroid/os/Handler;

.field public j:Ls/w;

.field public k:J

.field public final l:Ls/w;

.field public m:Lr2/l2;

.field public n:Z

.field public final o:Landroidx/lifecycle/z;


# direct methods
.method public constructor <init>(Lr2/u;Lc/l0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt1/c;->a:Lr2/u;

    .line 5
    .line 6
    iput-object p2, p0, Lt1/c;->b:Lc/l0;

    .line 7
    .line 8
    new-instance p2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lt1/c;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    const-wide/16 v0, 0x64

    .line 16
    .line 17
    iput-wide v0, p0, Lt1/c;->e:J

    .line 18
    .line 19
    sget-object p2, Lt1/a;->a:Lt1/a;

    .line 20
    .line 21
    iput-object p2, p0, Lt1/c;->f:Lt1/a;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lt1/c;->g:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x6

    .line 28
    invoke-static {p2, v1, v0}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lt1/c;->h:Lcc/h;

    .line 33
    .line 34
    new-instance p2, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lt1/c;->i:Landroid/os/Handler;

    .line 44
    .line 45
    sget-object p2, Ls/l;->a:Ls/w;

    .line 46
    .line 47
    const-string v0, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    .line 48
    .line 49
    invoke-static {p2, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lt1/c;->j:Ls/w;

    .line 53
    .line 54
    new-instance v1, Ls/w;

    .line 55
    .line 56
    invoke-direct {v1}, Ls/w;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lt1/c;->l:Ls/w;

    .line 60
    .line 61
    new-instance v1, Lr2/l2;

    .line 62
    .line 63
    invoke-virtual {p1}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ly2/o;->a()Ly2/m;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p2, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p1, p2}, Lr2/l2;-><init>(Ly2/m;Ls/k;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lt1/c;->m:Lr2/l2;

    .line 78
    .line 79
    new-instance p1, Landroidx/lifecycle/z;

    .line 80
    .line 81
    const/16 p2, 0x17

    .line 82
    .line 83
    invoke-direct {p1, p2, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lt1/c;->o:Landroidx/lifecycle/z;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic b(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic d(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lt1/c;->a:Lr2/u;

    .line 2
    .line 3
    invoke-virtual {p1}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ly2/o;->a()Ly2/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lt1/c;->q(Ly2/m;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lt1/c;->m()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 19
    .line 20
    return-void
.end method

.method public final synthetic f(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt1/c;->b:Lc/l0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc/l0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/support/v4/media/session/t;

    .line 8
    .line 9
    iput-object p1, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 10
    .line 11
    iget-object p1, p0, Lt1/c;->a:Lr2/u;

    .line 12
    .line 13
    invoke-virtual {p1}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ly2/o;->a()Ly2/m;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, -0x1

    .line 22
    invoke-virtual {p0, v0, p1}, Lt1/c;->p(ILy2/m;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lt1/c;->m()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h(Ly8/c;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lt1/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lt1/b;

    .line 7
    .line 8
    iget v1, v0, Lt1/b;->g:I

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
    iput v1, v0, Lt1/b;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lt1/b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lt1/b;-><init>(Lt1/c;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lt1/b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lt1/b;->g:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lt1/b;->d:Lcc/c;

    .line 40
    .line 41
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object v1, v0, Lt1/b;->d:Lcc/c;

    .line 54
    .line 55
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lt1/c;->h:Lcc/h;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcc/c;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lcc/c;-><init>(Lcc/h;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    iput-object v1, v0, Lt1/b;->d:Lcc/c;

    .line 73
    .line 74
    iput v3, v0, Lt1/b;->g:I

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcc/c;->b(Ly8/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v4, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_8

    .line 90
    .line 91
    invoke-virtual {v1}, Lcc/c;->c()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lt1/c;->l()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p0}, Lt1/c;->m()V

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-boolean p1, p0, Lt1/c;->n:Z

    .line 104
    .line 105
    if-nez p1, :cond_7

    .line 106
    .line 107
    iput-boolean v3, p0, Lt1/c;->n:Z

    .line 108
    .line 109
    iget-object p1, p0, Lt1/c;->i:Landroid/os/Handler;

    .line 110
    .line 111
    iget-object v5, p0, Lt1/c;->o:Landroidx/lifecycle/z;

    .line 112
    .line 113
    invoke-virtual {p1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    :cond_7
    iput-object v1, v0, Lt1/b;->d:Lcc/c;

    .line 117
    .line 118
    iput v2, v0, Lt1/b;->g:I

    .line 119
    .line 120
    iget-wide v5, p0, Lt1/c;->e:J

    .line 121
    .line 122
    invoke-static {v5, v6, v0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v4, :cond_4

    .line 127
    .line 128
    :goto_3
    return-object v4

    .line 129
    :cond_8
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 130
    .line 131
    return-object p1
.end method

.method public final i(Ls/k;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Ls/k;->b:[I

    .line 6
    .line 7
    iget-object v3, v1, Ls/k;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    if-ltz v4, :cond_14

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    aget-wide v7, v3, v6

    .line 16
    .line 17
    not-long v9, v7

    .line 18
    const/4 v11, 0x7

    .line 19
    shl-long/2addr v9, v11

    .line 20
    and-long/2addr v9, v7

    .line 21
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v9, v12

    .line 27
    cmp-long v14, v9, v12

    .line 28
    .line 29
    if-eqz v14, :cond_13

    .line 30
    .line 31
    sub-int v9, v6, v4

    .line 32
    .line 33
    not-int v9, v9

    .line 34
    ushr-int/lit8 v9, v9, 0x1f

    .line 35
    .line 36
    const/16 v10, 0x8

    .line 37
    .line 38
    rsub-int/lit8 v9, v9, 0x8

    .line 39
    .line 40
    const/4 v14, 0x0

    .line 41
    :goto_1
    if-ge v14, v9, :cond_12

    .line 42
    .line 43
    const-wide/16 v15, 0xff

    .line 44
    .line 45
    and-long v17, v7, v15

    .line 46
    .line 47
    const-wide/16 v19, 0x80

    .line 48
    .line 49
    cmp-long v21, v17, v19

    .line 50
    .line 51
    if-gez v21, :cond_11

    .line 52
    .line 53
    shl-int/lit8 v17, v6, 0x3

    .line 54
    .line 55
    add-int v17, v17, v14

    .line 56
    .line 57
    aget v5, v2, v17

    .line 58
    .line 59
    const/16 v17, 0x7

    .line 60
    .line 61
    iget-object v11, v0, Lt1/c;->l:Ls/w;

    .line 62
    .line 63
    invoke-virtual {v11, v5}, Ls/k;->b(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    check-cast v11, Lr2/l2;

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Ls/k;->b(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ly2/n;

    .line 74
    .line 75
    const/16 v21, 0x0

    .line 76
    .line 77
    if-eqz v5, :cond_0

    .line 78
    .line 79
    iget-object v5, v5, Ly2/n;->a:Ly2/m;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_0
    move-object/from16 v5, v21

    .line 83
    .line 84
    :goto_2
    if-eqz v5, :cond_10

    .line 85
    .line 86
    move-wide/from16 v22, v12

    .line 87
    .line 88
    iget v12, v5, Ly2/m;->g:I

    .line 89
    .line 90
    iget-object v5, v5, Ly2/m;->d:Ly2/j;

    .line 91
    .line 92
    if-nez v11, :cond_8

    .line 93
    .line 94
    iget-object v11, v5, Ly2/j;->a:Ls/h0;

    .line 95
    .line 96
    iget-object v13, v11, Ls/h0;->b:[Ljava/lang/Object;

    .line 97
    .line 98
    iget-object v11, v11, Ls/h0;->a:[J

    .line 99
    .line 100
    move-wide/from16 v24, v15

    .line 101
    .line 102
    array-length v15, v11

    .line 103
    add-int/lit8 v15, v15, -0x2

    .line 104
    .line 105
    move-object/from16 v26, v2

    .line 106
    .line 107
    if-ltz v15, :cond_6

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    :goto_3
    const/16 v16, 0x8

    .line 111
    .line 112
    aget-wide v1, v11, v10

    .line 113
    .line 114
    move-wide/from16 v27, v7

    .line 115
    .line 116
    not-long v7, v1

    .line 117
    shl-long v7, v7, v17

    .line 118
    .line 119
    and-long/2addr v7, v1

    .line 120
    and-long v7, v7, v22

    .line 121
    .line 122
    cmp-long v29, v7, v22

    .line 123
    .line 124
    if-eqz v29, :cond_5

    .line 125
    .line 126
    sub-int v7, v10, v15

    .line 127
    .line 128
    not-int v7, v7

    .line 129
    ushr-int/lit8 v7, v7, 0x1f

    .line 130
    .line 131
    rsub-int/lit8 v7, v7, 0x8

    .line 132
    .line 133
    const/4 v8, 0x0

    .line 134
    :goto_4
    if-ge v8, v7, :cond_4

    .line 135
    .line 136
    and-long v29, v1, v24

    .line 137
    .line 138
    cmp-long v31, v29, v19

    .line 139
    .line 140
    if-gez v31, :cond_2

    .line 141
    .line 142
    shl-int/lit8 v29, v10, 0x3

    .line 143
    .line 144
    add-int v29, v29, v8

    .line 145
    .line 146
    aget-object v29, v13, v29

    .line 147
    .line 148
    move-wide/from16 v30, v1

    .line 149
    .line 150
    move-object/from16 v1, v29

    .line 151
    .line 152
    check-cast v1, Ly2/u;

    .line 153
    .line 154
    sget-object v2, Ly2/r;->a:Ly2/u;

    .line 155
    .line 156
    sget-object v2, Ly2/r;->A:Ly2/u;

    .line 157
    .line 158
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    invoke-static {v5, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/util/List;

    .line 169
    .line 170
    if-eqz v1, :cond_1

    .line 171
    .line 172
    invoke-static {v1}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lb3/g;

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_1
    move-object/from16 v1, v21

    .line 180
    .line 181
    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v12, v1}, Lt1/c;->o(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_2
    move-wide/from16 v30, v1

    .line 190
    .line 191
    :cond_3
    :goto_6
    shr-long v1, v30, v16

    .line 192
    .line 193
    add-int/lit8 v8, v8, 0x1

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_4
    const/16 v1, 0x8

    .line 197
    .line 198
    if-ne v7, v1, :cond_7

    .line 199
    .line 200
    :cond_5
    if-eq v10, v15, :cond_7

    .line 201
    .line 202
    add-int/lit8 v10, v10, 0x1

    .line 203
    .line 204
    move-wide/from16 v7, v27

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    move-wide/from16 v27, v7

    .line 208
    .line 209
    :cond_7
    move-object v10, v3

    .line 210
    move v15, v14

    .line 211
    goto/16 :goto_e

    .line 212
    .line 213
    :cond_8
    move-object/from16 v26, v2

    .line 214
    .line 215
    move-wide/from16 v27, v7

    .line 216
    .line 217
    move-wide/from16 v24, v15

    .line 218
    .line 219
    iget-object v1, v5, Ly2/j;->a:Ls/h0;

    .line 220
    .line 221
    iget-object v2, v1, Ls/h0;->b:[Ljava/lang/Object;

    .line 222
    .line 223
    iget-object v1, v1, Ls/h0;->a:[J

    .line 224
    .line 225
    array-length v7, v1

    .line 226
    add-int/lit8 v7, v7, -0x2

    .line 227
    .line 228
    if-ltz v7, :cond_7

    .line 229
    .line 230
    move-object v13, v2

    .line 231
    move-object v10, v3

    .line 232
    const/4 v8, 0x0

    .line 233
    :goto_7
    aget-wide v2, v1, v8

    .line 234
    .line 235
    move-object/from16 v29, v13

    .line 236
    .line 237
    move v15, v14

    .line 238
    not-long v13, v2

    .line 239
    shl-long v13, v13, v17

    .line 240
    .line 241
    and-long/2addr v13, v2

    .line 242
    and-long v13, v13, v22

    .line 243
    .line 244
    cmp-long v30, v13, v22

    .line 245
    .line 246
    if-eqz v30, :cond_e

    .line 247
    .line 248
    sub-int v13, v8, v7

    .line 249
    .line 250
    not-int v13, v13

    .line 251
    ushr-int/lit8 v13, v13, 0x1f

    .line 252
    .line 253
    const/16 v16, 0x8

    .line 254
    .line 255
    rsub-int/lit8 v13, v13, 0x8

    .line 256
    .line 257
    const/4 v14, 0x0

    .line 258
    :goto_8
    if-ge v14, v13, :cond_d

    .line 259
    .line 260
    and-long v30, v2, v24

    .line 261
    .line 262
    cmp-long v32, v30, v19

    .line 263
    .line 264
    if-gez v32, :cond_c

    .line 265
    .line 266
    shl-int/lit8 v30, v8, 0x3

    .line 267
    .line 268
    add-int v30, v30, v14

    .line 269
    .line 270
    aget-object v30, v29, v30

    .line 271
    .line 272
    move-object/from16 v31, v1

    .line 273
    .line 274
    move-object/from16 v1, v30

    .line 275
    .line 276
    check-cast v1, Ly2/u;

    .line 277
    .line 278
    sget-object v30, Ly2/r;->a:Ly2/u;

    .line 279
    .line 280
    move-wide/from16 v32, v2

    .line 281
    .line 282
    sget-object v2, Ly2/r;->A:Ly2/u;

    .line 283
    .line 284
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_b

    .line 289
    .line 290
    iget-object v1, v11, Lr2/l2;->a:Ly2/j;

    .line 291
    .line 292
    invoke-static {v1, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Ljava/util/List;

    .line 297
    .line 298
    if-eqz v1, :cond_9

    .line 299
    .line 300
    invoke-static {v1}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    check-cast v1, Lb3/g;

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_9
    move-object/from16 v1, v21

    .line 308
    .line 309
    :goto_9
    invoke-static {v5, v2}, Ly2/p;->d(Ly2/j;Ly2/u;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Ljava/util/List;

    .line 314
    .line 315
    if-eqz v2, :cond_a

    .line 316
    .line 317
    invoke-static {v2}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Lb3/g;

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_a
    move-object/from16 v2, v21

    .line 325
    .line 326
    :goto_a
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_b

    .line 331
    .line 332
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v12, v1}, Lt1/c;->o(ILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_b
    :goto_b
    const/16 v1, 0x8

    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_c
    move-object/from16 v31, v1

    .line 343
    .line 344
    move-wide/from16 v32, v2

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :goto_c
    shr-long v2, v32, v1

    .line 348
    .line 349
    add-int/lit8 v14, v14, 0x1

    .line 350
    .line 351
    move-object/from16 v1, v31

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_d
    move-object/from16 v31, v1

    .line 355
    .line 356
    const/16 v1, 0x8

    .line 357
    .line 358
    if-ne v13, v1, :cond_f

    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_e
    move-object/from16 v31, v1

    .line 362
    .line 363
    :goto_d
    if-eq v8, v7, :cond_f

    .line 364
    .line 365
    add-int/lit8 v8, v8, 0x1

    .line 366
    .line 367
    move v14, v15

    .line 368
    move-object/from16 v13, v29

    .line 369
    .line 370
    move-object/from16 v1, v31

    .line 371
    .line 372
    goto/16 :goto_7

    .line 373
    .line 374
    :cond_f
    :goto_e
    const/16 v1, 0x8

    .line 375
    .line 376
    goto :goto_f

    .line 377
    :cond_10
    const-string v1, "no value for specified key"

    .line 378
    .line 379
    invoke-static {v1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    throw v1

    .line 384
    :cond_11
    move-object/from16 v26, v2

    .line 385
    .line 386
    move-object v10, v3

    .line 387
    move-wide/from16 v27, v7

    .line 388
    .line 389
    move-wide/from16 v22, v12

    .line 390
    .line 391
    move v15, v14

    .line 392
    const/16 v17, 0x7

    .line 393
    .line 394
    goto :goto_e

    .line 395
    :goto_f
    shr-long v7, v27, v1

    .line 396
    .line 397
    add-int/lit8 v14, v15, 0x1

    .line 398
    .line 399
    move-object/from16 v1, p1

    .line 400
    .line 401
    move-object v3, v10

    .line 402
    move-wide/from16 v12, v22

    .line 403
    .line 404
    move-object/from16 v2, v26

    .line 405
    .line 406
    const/16 v10, 0x8

    .line 407
    .line 408
    const/4 v11, 0x7

    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :cond_12
    move-object/from16 v26, v2

    .line 412
    .line 413
    move-object v10, v3

    .line 414
    const/16 v1, 0x8

    .line 415
    .line 416
    if-ne v9, v1, :cond_14

    .line 417
    .line 418
    goto :goto_10

    .line 419
    :cond_13
    move-object/from16 v26, v2

    .line 420
    .line 421
    move-object v10, v3

    .line 422
    :goto_10
    if-eq v6, v4, :cond_14

    .line 423
    .line 424
    add-int/lit8 v6, v6, 0x1

    .line 425
    .line 426
    move-object/from16 v1, p1

    .line 427
    .line 428
    move-object v3, v10

    .line 429
    move-object/from16 v2, v26

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_14
    return-void
.end method

.method public final j(Ly2/m;Lf9/n;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-static {v0, p1}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, Ly2/m;

    .line 23
    .line 24
    invoke-virtual {p0}, Lt1/c;->k()Ls/k;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget v4, v4, Ly2/m;->g:I

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ls/k;->a(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {p2, v4, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final k()Ls/k;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lt1/c;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lt1/c;->g:Z

    .line 7
    .line 8
    iget-object v0, p0, Lt1/c;->a:Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ly2/p;->b(Ly2/o;)Ls/w;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lt1/c;->j:Ls/w;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lt1/c;->k:J

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lt1/c;->j:Ls/w;

    .line 27
    .line 28
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1d

    .line 12
    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    iget-object v2, p0, Lt1/c;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_7

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_0
    const/4 v7, 0x1

    .line 32
    if-ge v6, v4, :cond_5

    .line 33
    .line 34
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lt1/d;

    .line 39
    .line 40
    iget-object v9, v8, Lt1/d;->c:Lt1/e;

    .line 41
    .line 42
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_3

    .line 47
    .line 48
    if-ne v9, v7, :cond_2

    .line 49
    .line 50
    iget v7, v8, Lt1/d;->a:I

    .line 51
    .line 52
    int-to-long v7, v7

    .line 53
    invoke-virtual {v0, v7, v8}, Landroid/support/v4/media/session/t;->e1(J)Landroid/view/autofill/AutofillId;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-eqz v7, :cond_4

    .line 58
    .line 59
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    if-lt v8, v3, :cond_4

    .line 62
    .line 63
    invoke-static {v1}, Lk2/n;->g(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-static {v8, v7}, Lu2/a;->e(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance v0, Lac/p;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_3
    iget-object v7, v8, Lt1/d;->d:Lf4/d;

    .line 78
    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    iget-object v7, v7, Lf4/d;->a:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v7}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    if-lt v8, v3, :cond_4

    .line 90
    .line 91
    invoke-static {v1}, Lk2/n;->g(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v8, v7}, Lu2/a;->d(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/ViewStructure;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    .line 103
    if-lt v4, v3, :cond_6

    .line 104
    .line 105
    invoke-static {v1}, Lk2/n;->g(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Landroid/view/View;

    .line 112
    .line 113
    invoke-static {v0}, Lp4/e;->o(Landroid/view/View;)Lf4/d;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object v0, v0, Lf4/d;->a:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v0}, Ls1/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-array v3, v7, [J

    .line 127
    .line 128
    const-wide/high16 v6, -0x8000000000000000L

    .line 129
    .line 130
    aput-wide v6, v3, v5

    .line 131
    .line 132
    invoke-static {v1, v0, v3}, Lu2/a;->g(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;[J)V

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_2
    return-void
.end method

.method public final n(Ly2/m;Lr2/l2;)V
    .locals 5

    .line 1
    new-instance v0, Lc1/h;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1, p2, p0}, Lc1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lt1/c;->j(Ly2/m;Lf9/n;)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    invoke-static {p2, p1}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-ge v0, p2, :cond_2

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ly2/m;

    .line 27
    .line 28
    invoke-virtual {p0}, Lt1/c;->k()Ls/k;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v3, v1, Ly2/m;->g:I

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ls/k;->a(I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lt1/c;->l:Ls/w;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ls/k;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ls/k;->b(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    check-cast v2, Lr2/l2;

    .line 55
    .line 56
    invoke-virtual {p0, v1, v2}, Lt1/c;->n(Ly2/m;Lr2/l2;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const-string p1, "node not present in pruned tree before this change"

    .line 61
    .line 62
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    throw p1

    .line 67
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method

.method public final o(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    int-to-long v3, p1

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/t;->e1(J)Landroid/view/autofill/AutofillId;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v0}, Lk2/n;->g(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1, p2}, Lu2/a;->f(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :cond_3
    const-string p1, "Invalid content capture ID"

    .line 33
    .line 34
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt1/c;->i:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Lt1/c;->o:Landroidx/lifecycle/z;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 10
    .line 11
    return-void
.end method

.method public final p(ILy2/m;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lt1/c;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p2, Ly2/m;->d:Ly2/j;

    .line 9
    .line 10
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 11
    .line 12
    sget-object v1, Ly2/r;->C:Ly2/u;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    move-object v1, v2

    .line 22
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    iget-object v3, p0, Lt1/c;->f:Lt1/a;

    .line 25
    .line 26
    sget-object v4, Lt1/a;->a:Lt1/a;

    .line 27
    .line 28
    if-ne v3, v4, :cond_3

    .line 29
    .line 30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    sget-object v1, Ly2/i;->l:Ly2/u;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    move-object v0, v2

    .line 47
    :cond_2
    check-cast v0, Ly2/a;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    iget-object v0, v0, Ly2/a;->b:Lr8/e;

    .line 52
    .line 53
    check-cast v0, Lf9/k;

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v3, p0, Lt1/c;->f:Lt1/a;

    .line 67
    .line 68
    sget-object v4, Lt1/a;->b:Lt1/a;

    .line 69
    .line 70
    if-ne v3, v4, :cond_5

    .line 71
    .line 72
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    sget-object v1, Ly2/i;->l:Ly2/u;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    move-object v0, v2

    .line 89
    :cond_4
    check-cast v0, Ly2/a;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, v0, Ly2/a;->b:Lr8/e;

    .line 94
    .line 95
    check-cast v0, Lf9/k;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    .line 106
    .line 107
    :cond_5
    :goto_0
    iget v4, p2, Ly2/m;->g:I

    .line 108
    .line 109
    iget-object v0, p0, Lt1/c;->c:Landroid/support/v4/media/session/t;

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    :goto_1
    move-object v8, v2

    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v3, 0x1d

    .line 119
    .line 120
    if-ge v1, v3, :cond_7

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    iget-object v5, p0, Lt1/c;->a:Lr2/u;

    .line 124
    .line 125
    invoke-static {v5}, Lp4/e;->o(Landroid/view/View;)Lf4/d;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-nez v5, :cond_8

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_8
    invoke-virtual {p2}, Ly2/m;->l()Ly2/m;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    iget v7, p2, Ly2/m;->g:I

    .line 137
    .line 138
    if-eqz v6, :cond_9

    .line 139
    .line 140
    iget v5, v6, Ly2/m;->g:I

    .line 141
    .line 142
    int-to-long v5, v5

    .line 143
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/media/session/t;->e1(J)Landroid/view/autofill/AutofillId;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-nez v5, :cond_a

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    iget-object v5, v5, Lf4/d;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {v5}, Ls1/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :cond_a
    int-to-long v8, v7

    .line 157
    if-lt v1, v3, :cond_b

    .line 158
    .line 159
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v0}, Lk2/n;->g(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0, v5, v8, v9}, Lu2/a;->c(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v3, Lf4/d;

    .line 170
    .line 171
    invoke-direct {v3, v0}, Lf4/d;-><init>(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_b
    move-object v3, v2

    .line 176
    :goto_2
    if-nez v3, :cond_c

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_c
    iget-object v0, v3, Lf4/d;->a:Ljava/lang/Object;

    .line 180
    .line 181
    iget-object v5, p2, Ly2/m;->d:Ly2/j;

    .line 182
    .line 183
    sget-object v6, Ly2/r;->J:Ly2/u;

    .line 184
    .line 185
    iget-object v8, v5, Ly2/j;->a:Ls/h0;

    .line 186
    .line 187
    invoke-virtual {v8, v6}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_d

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_d
    const/16 v6, 0x17

    .line 195
    .line 196
    if-lt v1, v6, :cond_e

    .line 197
    .line 198
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-static {v9}, Li4/b;->d(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    goto :goto_3

    .line 207
    :cond_e
    move-object v9, v2

    .line 208
    :goto_3
    if-eqz v9, :cond_f

    .line 209
    .line 210
    const-string v10, "android.view.contentcapture.EventTimestamp"

    .line 211
    .line 212
    iget-wide v11, p0, Lt1/c;->k:J

    .line 213
    .line 214
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 215
    .line 216
    .line 217
    const-string v10, "android.view.ViewStructure.extra.EXTRA_VIEW_NODE_INDEX"

    .line 218
    .line 219
    invoke-virtual {v9, v10, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    :cond_f
    sget-object p1, Ly2/r;->y:Ly2/u;

    .line 223
    .line 224
    invoke-virtual {v8, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-nez p1, :cond_10

    .line 229
    .line 230
    move-object p1, v2

    .line 231
    :cond_10
    check-cast p1, Ljava/lang/String;

    .line 232
    .line 233
    if-eqz p1, :cond_11

    .line 234
    .line 235
    if-lt v1, v6, :cond_11

    .line 236
    .line 237
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-static {v9, v7, p1}, Li4/b;->o(Landroid/view/ViewStructure;ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_11
    sget-object p1, Ly2/r;->m:Ly2/u;

    .line 245
    .line 246
    invoke-virtual {v8, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-nez p1, :cond_12

    .line 251
    .line 252
    move-object p1, v2

    .line 253
    :cond_12
    check-cast p1, Ljava/lang/Boolean;

    .line 254
    .line 255
    if-eqz p1, :cond_13

    .line 256
    .line 257
    const-string p1, "android.widget.ViewGroup"

    .line 258
    .line 259
    invoke-virtual {v3, p1}, Lf4/d;->a(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_13
    sget-object p1, Ly2/r;->A:Ly2/u;

    .line 263
    .line 264
    invoke-virtual {v8, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-nez p1, :cond_14

    .line 269
    .line 270
    move-object p1, v2

    .line 271
    :cond_14
    check-cast p1, Ljava/util/List;

    .line 272
    .line 273
    const/16 v7, 0x3e

    .line 274
    .line 275
    const-string v9, "\n"

    .line 276
    .line 277
    if-eqz p1, :cond_15

    .line 278
    .line 279
    const-string v10, "android.widget.TextView"

    .line 280
    .line 281
    invoke-virtual {v3, v10}, Lf4/d;->a(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {p1, v9, v2, v7}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    if-lt v1, v6, :cond_15

    .line 289
    .line 290
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-static {v10, p1}, Li4/b;->r(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    :cond_15
    sget-object p1, Ly2/r;->E:Ly2/u;

    .line 298
    .line 299
    invoke-virtual {v8, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    if-nez p1, :cond_16

    .line 304
    .line 305
    move-object p1, v2

    .line 306
    :cond_16
    check-cast p1, Lb3/g;

    .line 307
    .line 308
    if-eqz p1, :cond_17

    .line 309
    .line 310
    const-string v10, "android.widget.EditText"

    .line 311
    .line 312
    invoke-virtual {v3, v10}, Lf4/d;->a(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    if-lt v1, v6, :cond_17

    .line 316
    .line 317
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-static {v10, p1}, Li4/b;->r(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    :cond_17
    sget-object p1, Ly2/r;->a:Ly2/u;

    .line 325
    .line 326
    invoke-virtual {v8, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    if-nez p1, :cond_18

    .line 331
    .line 332
    move-object p1, v2

    .line 333
    :cond_18
    check-cast p1, Ljava/util/List;

    .line 334
    .line 335
    if-eqz p1, :cond_19

    .line 336
    .line 337
    invoke-static {p1, v9, v2, v7}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    if-lt v1, v6, :cond_19

    .line 342
    .line 343
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-static {v7, p1}, Li4/b;->l(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :cond_19
    sget-object p1, Ly2/r;->x:Ly2/u;

    .line 351
    .line 352
    invoke-virtual {v8, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    if-nez p1, :cond_1a

    .line 357
    .line 358
    move-object p1, v2

    .line 359
    :cond_1a
    check-cast p1, Ly2/g;

    .line 360
    .line 361
    if-eqz p1, :cond_1b

    .line 362
    .line 363
    iget p1, p1, Ly2/g;->a:I

    .line 364
    .line 365
    invoke-static {p1}, Lr2/j0;->w(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    if-eqz p1, :cond_1b

    .line 370
    .line 371
    invoke-virtual {v3, p1}, Lf4/d;->a(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_1b
    invoke-static {v5}, Lr2/j0;->o(Ly2/j;)Lb3/l0;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    if-eqz p1, :cond_1c

    .line 379
    .line 380
    iget-object p1, p1, Lb3/l0;->a:Lb3/k0;

    .line 381
    .line 382
    iget-object v5, p1, Lb3/k0;->b:Lb3/o0;

    .line 383
    .line 384
    iget-object p1, p1, Lb3/k0;->g:Ln3/c;

    .line 385
    .line 386
    iget-object v5, v5, Lb3/o0;->a:Lb3/e0;

    .line 387
    .line 388
    iget-wide v7, v5, Lb3/e0;->b:J

    .line 389
    .line 390
    invoke-static {v7, v8}, Ln3/o;->c(J)F

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    invoke-interface {p1}, Ln3/c;->a()F

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    mul-float v7, v7, v5

    .line 399
    .line 400
    invoke-interface {p1}, Ln3/c;->M()F

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    mul-float p1, p1, v7

    .line 405
    .line 406
    if-lt v1, v6, :cond_1c

    .line 407
    .line 408
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-static {v5, p1}, Li4/b;->s(Landroid/view/ViewStructure;F)V

    .line 413
    .line 414
    .line 415
    :cond_1c
    invoke-virtual {p2}, Ly2/m;->d()Lq2/h1;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    if-eqz p1, :cond_1e

    .line 420
    .line 421
    invoke-virtual {p1}, Lq2/h1;->G0()Lr1/o;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    iget-boolean v5, v5, Lr1/o;->n:Z

    .line 426
    .line 427
    if-eqz v5, :cond_1d

    .line 428
    .line 429
    move-object v2, p1

    .line 430
    :cond_1d
    if-eqz v2, :cond_1e

    .line 431
    .line 432
    invoke-virtual {p2, v2}, Ly2/m;->a(Lq2/h1;)Lx1/c;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    goto :goto_4

    .line 437
    :cond_1e
    sget-object p1, Lx1/c;->e:Lx1/c;

    .line 438
    .line 439
    :goto_4
    iget v2, p1, Lx1/c;->a:F

    .line 440
    .line 441
    float-to-int v5, v2

    .line 442
    iget v7, p1, Lx1/c;->b:F

    .line 443
    .line 444
    float-to-int v8, v7

    .line 445
    iget v9, p1, Lx1/c;->c:F

    .line 446
    .line 447
    sub-float/2addr v9, v2

    .line 448
    float-to-int v2, v9

    .line 449
    iget p1, p1, Lx1/c;->d:F

    .line 450
    .line 451
    sub-float/2addr p1, v7

    .line 452
    float-to-int p1, p1

    .line 453
    if-lt v1, v6, :cond_1f

    .line 454
    .line 455
    invoke-static {v0}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v0, v5, v8, v2, p1}, Li4/b;->m(Landroid/view/ViewStructure;IIII)V

    .line 460
    .line 461
    .line 462
    :cond_1f
    move-object v8, v3

    .line 463
    :goto_5
    if-nez v8, :cond_20

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_20
    new-instance v3, Lt1/d;

    .line 467
    .line 468
    iget-wide v5, p0, Lt1/c;->k:J

    .line 469
    .line 470
    sget-object v7, Lt1/e;->a:Lt1/e;

    .line 471
    .line 472
    invoke-direct/range {v3 .. v8}, Lt1/d;-><init>(IJLt1/e;Lf4/d;)V

    .line 473
    .line 474
    .line 475
    iget-object p1, p0, Lt1/c;->d:Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    :goto_6
    new-instance p1, Lc1/n;

    .line 481
    .line 482
    const/4 v0, 0x7

    .line 483
    invoke-direct {p1, v0, p0}, Lc1/n;-><init>(ILjava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0, p2, p1}, Lt1/c;->j(Ly2/m;Lf9/n;)V

    .line 487
    .line 488
    .line 489
    return-void
.end method

.method public final q(Ly2/m;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lt1/c;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v2, p1, Ly2/m;->g:I

    .line 9
    .line 10
    new-instance v1, Lt1/d;

    .line 11
    .line 12
    iget-wide v3, p0, Lt1/c;->k:J

    .line 13
    .line 14
    sget-object v5, Lt1/e;->b:Lt1/e;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-direct/range {v1 .. v6}, Lt1/d;-><init>(IJLt1/e;Lf4/d;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lt1/c;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-static {v0, p1}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-ge v1, v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ly2/m;

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lt1/c;->q(Ly2/m;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt1/c;->l:Ls/w;

    .line 4
    .line 5
    invoke-virtual {v1}, Ls/w;->c()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lt1/c;->k()Ls/k;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v2, Ls/k;->b:[I

    .line 13
    .line 14
    iget-object v4, v2, Ls/k;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v2, v2, Ls/k;->a:[J

    .line 17
    .line 18
    array-length v5, v2

    .line 19
    add-int/lit8 v5, v5, -0x2

    .line 20
    .line 21
    if-ltz v5, :cond_3

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    :goto_0
    aget-wide v8, v2, v7

    .line 25
    .line 26
    not-long v10, v8

    .line 27
    const/4 v12, 0x7

    .line 28
    shl-long/2addr v10, v12

    .line 29
    and-long/2addr v10, v8

    .line 30
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v10, v12

    .line 36
    cmp-long v14, v10, v12

    .line 37
    .line 38
    if-eqz v14, :cond_2

    .line 39
    .line 40
    sub-int v10, v7, v5

    .line 41
    .line 42
    not-int v10, v10

    .line 43
    ushr-int/lit8 v10, v10, 0x1f

    .line 44
    .line 45
    const/16 v11, 0x8

    .line 46
    .line 47
    rsub-int/lit8 v10, v10, 0x8

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    :goto_1
    if-ge v12, v10, :cond_1

    .line 51
    .line 52
    const-wide/16 v13, 0xff

    .line 53
    .line 54
    and-long/2addr v13, v8

    .line 55
    const-wide/16 v15, 0x80

    .line 56
    .line 57
    cmp-long v17, v13, v15

    .line 58
    .line 59
    if-gez v17, :cond_0

    .line 60
    .line 61
    shl-int/lit8 v13, v7, 0x3

    .line 62
    .line 63
    add-int/2addr v13, v12

    .line 64
    aget v14, v3, v13

    .line 65
    .line 66
    aget-object v13, v4, v13

    .line 67
    .line 68
    check-cast v13, Ly2/n;

    .line 69
    .line 70
    new-instance v15, Lr2/l2;

    .line 71
    .line 72
    iget-object v13, v13, Ly2/n;->a:Ly2/m;

    .line 73
    .line 74
    invoke-virtual {v0}, Lt1/c;->k()Ls/k;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-direct {v15, v13, v6}, Lr2/l2;-><init>(Ly2/m;Ls/k;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v14, v15}, Ls/w;->h(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    shr-long/2addr v8, v11

    .line 85
    add-int/lit8 v12, v12, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    if-ne v10, v11, :cond_3

    .line 89
    .line 90
    :cond_2
    if-eq v7, v5, :cond_3

    .line 91
    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    new-instance v1, Lr2/l2;

    .line 96
    .line 97
    iget-object v2, v0, Lt1/c;->a:Lr2/u;

    .line 98
    .line 99
    invoke-virtual {v2}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ly2/o;->a()Ly2/m;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0}, Lt1/c;->k()Ls/k;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {v1, v2, v3}, Lr2/l2;-><init>(Ly2/m;Ls/k;)V

    .line 112
    .line 113
    .line 114
    iput-object v1, v0, Lt1/c;->m:Lr2/l2;

    .line 115
    .line 116
    return-void
.end method
