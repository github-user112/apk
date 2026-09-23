.class public final Lx/x;
.super Lx/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public K:Lf9/a;

.field public L:Z

.field public final M:Ls/a0;

.field public final N:Ls/a0;


# direct methods
.method public constructor <init>(Lb0/k;Lf9/a;Lf9/a;)V
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v7, p2

    .line 9
    invoke-direct/range {v0 .. v7}, Lx/f;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 10
    .line 11
    .line 12
    iput-object p3, v0, Lx/x;->K:Lf9/a;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, v0, Lx/x;->L:Z

    .line 16
    .line 17
    sget-object p1, Ls/o;->a:Ls/a0;

    .line 18
    .line 19
    new-instance p1, Ls/a0;

    .line 20
    .line 21
    invoke-direct {p1}, Ls/a0;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Lx/x;->M:Ls/a0;

    .line 25
    .line 26
    new-instance p1, Ls/a0;

    .line 27
    .line 28
    invoke-direct {p1}, Ls/a0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, v0, Lx/x;->N:Ls/a0;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final D0(Ly2/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx/x;->K:Lf9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv0/p;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p0}, Lv0/p;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 12
    .line 13
    sget-object v1, Ly2/i;->c:Ly2/u;

    .line 14
    .line 15
    new-instance v2, Ly2/a;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final E0()Lk2/n0;
    .locals 2

    .line 1
    new-instance v0, Lo7/g;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p0}, Lo7/g;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lk2/i0;->a(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lk2/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final J0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx/x;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final K0(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Li2/c;->z(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lx/x;->K:Lf9/a;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lx/x;->M:Ls/a0;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lb8/g;

    .line 22
    .line 23
    const/16 v4, 0x15

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-direct {v3, p0, v5, v4}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    invoke-static {v2, v5, v3, v4}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Ls/a0;->h(JLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Lx/x;->N:Ls/a0;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lx/u;

    .line 47
    .line 48
    return p1
.end method

.method public final L0(Landroid/view/KeyEvent;)V
    .locals 5

    .line 1
    invoke-static {p1}, Li2/c;->z(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lx/x;->M:Ls/a0;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lac/v0;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Lac/v0;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v2, v4}, Lac/v0;->a(Ljava/util/concurrent/CancellationException;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Ls/a0;->g(J)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lx/f;->w:Lf9/a;

    .line 40
    .line 41
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public final N0()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lx/x;->M:Ls/a0;

    .line 4
    .line 5
    iget-object v2, v1, Ls/a0;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v1, Ls/a0;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    const/4 v9, 0x7

    .line 13
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/16 v12, 0x8

    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    if-ltz v4, :cond_3

    .line 22
    .line 23
    const/4 v14, 0x0

    .line 24
    const-wide/16 v15, 0x80

    .line 25
    .line 26
    :goto_0
    aget-wide v5, v3, v14

    .line 27
    .line 28
    const-wide/16 v17, 0xff

    .line 29
    .line 30
    not-long v7, v5

    .line 31
    shl-long/2addr v7, v9

    .line 32
    and-long/2addr v7, v5

    .line 33
    and-long/2addr v7, v10

    .line 34
    cmp-long v19, v7, v10

    .line 35
    .line 36
    if-eqz v19, :cond_2

    .line 37
    .line 38
    sub-int v7, v14, v4

    .line 39
    .line 40
    not-int v7, v7

    .line 41
    ushr-int/lit8 v7, v7, 0x1f

    .line 42
    .line 43
    rsub-int/lit8 v7, v7, 0x8

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    :goto_1
    if-ge v8, v7, :cond_1

    .line 47
    .line 48
    and-long v19, v5, v17

    .line 49
    .line 50
    cmp-long v21, v19, v15

    .line 51
    .line 52
    if-gez v21, :cond_0

    .line 53
    .line 54
    shl-int/lit8 v19, v14, 0x3

    .line 55
    .line 56
    add-int v19, v19, v8

    .line 57
    .line 58
    aget-object v19, v2, v19

    .line 59
    .line 60
    const/16 v20, 0x7

    .line 61
    .line 62
    move-object/from16 v9, v19

    .line 63
    .line 64
    check-cast v9, Lac/v0;

    .line 65
    .line 66
    move-wide/from16 v21, v10

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    invoke-interface {v9, v10}, Lac/v0;->a(Ljava/util/concurrent/CancellationException;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_0
    move-wide/from16 v21, v10

    .line 74
    .line 75
    const/16 v20, 0x7

    .line 76
    .line 77
    :goto_2
    shr-long/2addr v5, v12

    .line 78
    add-int/lit8 v8, v8, 0x1

    .line 79
    .line 80
    move-wide/from16 v10, v21

    .line 81
    .line 82
    const/4 v9, 0x7

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-wide/from16 v21, v10

    .line 85
    .line 86
    const/16 v20, 0x7

    .line 87
    .line 88
    if-ne v7, v12, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    move-wide/from16 v21, v10

    .line 92
    .line 93
    const/16 v20, 0x7

    .line 94
    .line 95
    :goto_3
    if-eq v14, v4, :cond_4

    .line 96
    .line 97
    add-int/lit8 v14, v14, 0x1

    .line 98
    .line 99
    move-wide/from16 v10, v21

    .line 100
    .line 101
    const/4 v9, 0x7

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    move-wide/from16 v21, v10

    .line 104
    .line 105
    const-wide/16 v15, 0x80

    .line 106
    .line 107
    const-wide/16 v17, 0xff

    .line 108
    .line 109
    const/16 v20, 0x7

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v1}, Ls/a0;->a()V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lx/x;->N:Ls/a0;

    .line 115
    .line 116
    iget-object v2, v1, Ls/a0;->c:[Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v3, v1, Ls/a0;->a:[J

    .line 119
    .line 120
    array-length v4, v3

    .line 121
    add-int/lit8 v4, v4, -0x2

    .line 122
    .line 123
    if-ltz v4, :cond_8

    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    :goto_4
    aget-wide v6, v3, v5

    .line 127
    .line 128
    not-long v8, v6

    .line 129
    shl-long v8, v8, v20

    .line 130
    .line 131
    and-long/2addr v8, v6

    .line 132
    and-long v8, v8, v21

    .line 133
    .line 134
    cmp-long v10, v8, v21

    .line 135
    .line 136
    if-eqz v10, :cond_7

    .line 137
    .line 138
    sub-int v8, v5, v4

    .line 139
    .line 140
    not-int v8, v8

    .line 141
    ushr-int/lit8 v8, v8, 0x1f

    .line 142
    .line 143
    rsub-int/lit8 v8, v8, 0x8

    .line 144
    .line 145
    const/4 v9, 0x0

    .line 146
    :goto_5
    if-ge v9, v8, :cond_6

    .line 147
    .line 148
    and-long v10, v6, v17

    .line 149
    .line 150
    cmp-long v14, v10, v15

    .line 151
    .line 152
    if-ltz v14, :cond_5

    .line 153
    .line 154
    shr-long/2addr v6, v12

    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_5
    shl-int/lit8 v1, v5, 0x3

    .line 159
    .line 160
    add-int/2addr v1, v9

    .line 161
    aget-object v1, v2, v1

    .line 162
    .line 163
    check-cast v1, Lx/u;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    throw v1

    .line 170
    :cond_6
    if-ne v8, v12, :cond_8

    .line 171
    .line 172
    :cond_7
    if-eq v5, v4, :cond_8

    .line 173
    .line 174
    add-int/lit8 v5, v5, 0x1

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    invoke-virtual {v1}, Ls/a0;->a()V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final u0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx/x;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
