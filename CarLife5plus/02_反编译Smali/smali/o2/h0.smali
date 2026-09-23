.class public final Lo2/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/f1;


# instance fields
.field public final a:Ls/x;

.field public final synthetic b:Lo2/i0;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo2/i0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo2/h0;->b:Lo2/i0;

    .line 5
    .line 6
    iput-object p2, p0, Lo2/h0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object p1, Ls/m;->a:[I

    .line 9
    .line 10
    new-instance p1, Ls/x;

    .line 11
    .line 12
    invoke-direct {p1}, Ls/x;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lo2/h0;->a:Ls/x;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo2/h0;->b:Lo2/i0;

    .line 2
    .line 3
    iget-object v1, v0, Lo2/i0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lo2/i0;->e()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lo2/i0;->j:Ls/h0;

    .line 9
    .line 10
    iget-object v3, p0, Lo2/h0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lq2/h0;

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget v3, v0, Lo2/i0;->o:I

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "No pre-composed items to dispose"

    .line 26
    .line 27
    invoke-static {v3}, Ln2/a;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1}, Lq2/h0;->p()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lh1/b;

    .line 35
    .line 36
    iget-object v3, v3, Lh1/b;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Lh1/e;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lh1/e;->j(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Lq2/h0;->p()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lh1/b;

    .line 49
    .line 50
    iget-object v4, v4, Lh1/b;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Lh1/e;

    .line 53
    .line 54
    iget v4, v4, Lh1/e;->c:I

    .line 55
    .line 56
    iget v5, v0, Lo2/i0;->o:I

    .line 57
    .line 58
    sub-int/2addr v4, v5

    .line 59
    if-lt v3, v4, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v4, "Item is not in pre-composed item range"

    .line 63
    .line 64
    invoke-static {v4}, Ln2/a;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget v4, v0, Lo2/i0;->n:I

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    add-int/2addr v4, v5

    .line 71
    iput v4, v0, Lo2/i0;->n:I

    .line 72
    .line 73
    iget v4, v0, Lo2/i0;->o:I

    .line 74
    .line 75
    add-int/lit8 v4, v4, -0x1

    .line 76
    .line 77
    iput v4, v0, Lo2/i0;->o:I

    .line 78
    .line 79
    iget-object v4, v0, Lo2/i0;->f:Ls/h0;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lo2/b0;

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-static {v2}, Lo2/i0;->a(Lo2/b0;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v1}, Lq2/h0;->p()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lh1/b;

    .line 97
    .line 98
    iget-object v2, v2, Lh1/b;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lh1/e;

    .line 101
    .line 102
    iget v2, v2, Lh1/e;->c:I

    .line 103
    .line 104
    iget v4, v0, Lo2/i0;->o:I

    .line 105
    .line 106
    sub-int/2addr v2, v4

    .line 107
    iget v4, v0, Lo2/i0;->n:I

    .line 108
    .line 109
    sub-int/2addr v2, v4

    .line 110
    iput-boolean v5, v1, Lq2/h0;->p:Z

    .line 111
    .line 112
    invoke-virtual {v1, v3, v2, v5}, Lq2/h0;->M(III)V

    .line 113
    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    iput-boolean v3, v1, Lq2/h0;->p:Z

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lo2/i0;->d(I)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo2/h0;->b:Lo2/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lo2/i0;->j:Ls/h0;

    .line 4
    .line 5
    iget-object v1, p0, Lo2/h0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lq2/h0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lq2/h0;->o()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lh1/b;

    .line 20
    .line 21
    iget-object v0, v0, Lh1/b;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lh1/e;

    .line 24
    .line 25
    iget v0, v0, Lh1/e;->c:I

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public final c(I)J
    .locals 6

    .line 1
    iget-object v0, p0, Lo2/h0;->b:Lo2/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lo2/i0;->j:Ls/h0;

    .line 4
    .line 5
    iget-object v1, p0, Lo2/h0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lq2/h0;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lq2/h0;->I()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lq2/h0;->o()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lh1/b;

    .line 26
    .line 27
    iget-object v1, v1, Lh1/b;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lh1/e;

    .line 30
    .line 31
    iget v1, v1, Lh1/e;->c:I

    .line 32
    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    if-lt p1, v1, :cond_1

    .line 36
    .line 37
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Index ("

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ") is out of bound of [0, "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x29

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Ln2/a;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v1, p0, Lo2/h0;->a:Ls/x;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ls/x;->b(I)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lq2/h0;->o()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lh1/b;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lq2/h0;

    .line 86
    .line 87
    iget-object v1, v1, Lq2/h0;->F:Lq2/l0;

    .line 88
    .line 89
    iget-object v1, v1, Lq2/l0;->p:Lq2/y0;

    .line 90
    .line 91
    iget v1, v1, Lo2/v0;->a:I

    .line 92
    .line 93
    invoke-virtual {v0}, Lq2/h0;->o()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lh1/b;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lq2/h0;

    .line 104
    .line 105
    iget-object p1, p1, Lq2/h0;->F:Lq2/l0;

    .line 106
    .line 107
    iget-object p1, p1, Lq2/l0;->p:Lq2/y0;

    .line 108
    .line 109
    iget p1, p1, Lo2/v0;->b:I

    .line 110
    .line 111
    int-to-long v0, v1

    .line 112
    const/16 v2, 0x20

    .line 113
    .line 114
    shl-long/2addr v0, v2

    .line 115
    int-to-long v2, p1

    .line 116
    const-wide v4, 0xffffffffL

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    and-long/2addr v2, v4

    .line 122
    or-long/2addr v0, v2

    .line 123
    return-wide v0

    .line 124
    :cond_2
    const-wide/16 v0, 0x0

    .line 125
    .line 126
    return-wide v0
.end method

.method public final d(La8/q;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lo2/h0;->b:Lo2/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lo2/i0;->j:Ls/h0;

    .line 4
    .line 5
    iget-object v1, p0, Lo2/h0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lq2/h0;

    .line 12
    .line 13
    if-eqz v0, :cond_e

    .line 14
    .line 15
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 16
    .line 17
    if-eqz v0, :cond_e

    .line 18
    .line 19
    iget-object v0, v0, Lq2/d1;->f:Lr1/o;

    .line 20
    .line 21
    if-eqz v0, :cond_e

    .line 22
    .line 23
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 24
    .line 25
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, "visitSubtreeIf called on an unattached node"

    .line 30
    .line 31
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v1, Lh1/e;

    .line 35
    .line 36
    const/16 v2, 0x10

    .line 37
    .line 38
    new-array v3, v2, [Lr1/o;

    .line 39
    .line 40
    invoke-direct {v1, v3}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 44
    .line 45
    iget-object v3, v0, Lr1/o;->f:Lr1/o;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-static {v1, v0}, Lq2/f;->b(Lh1/e;Lr1/o;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1, v3}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget v0, v1, Lh1/e;->c:I

    .line 57
    .line 58
    if-eqz v0, :cond_e

    .line 59
    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lr1/o;

    .line 67
    .line 68
    iget v3, v0, Lr1/o;->d:I

    .line 69
    .line 70
    const/high16 v4, 0x40000

    .line 71
    .line 72
    and-int/2addr v3, v4

    .line 73
    if-eqz v3, :cond_d

    .line 74
    .line 75
    move-object v3, v0

    .line 76
    :goto_1
    if-eqz v3, :cond_d

    .line 77
    .line 78
    iget v5, v3, Lr1/o;->c:I

    .line 79
    .line 80
    and-int/2addr v5, v4

    .line 81
    if-eqz v5, :cond_c

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    move-object v6, v3

    .line 85
    move-object v7, v5

    .line 86
    :goto_2
    if-eqz v6, :cond_c

    .line 87
    .line 88
    instance-of v8, v6, Lq2/d2;

    .line 89
    .line 90
    if-eqz v8, :cond_5

    .line 91
    .line 92
    check-cast v6, Lq2/d2;

    .line 93
    .line 94
    invoke-interface {v6}, Lq2/d2;->j()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string v9, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    .line 99
    .line 100
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    sget-object v9, Lq2/c2;->b:Lq2/c2;

    .line 105
    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1, v6}, La8/q;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-object v6, v9

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    sget-object v6, Lq2/c2;->a:Lq2/c2;

    .line 114
    .line 115
    :goto_3
    sget-object v8, Lq2/c2;->c:Lq2/c2;

    .line 116
    .line 117
    if-ne v6, v8, :cond_4

    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_4
    if-eq v6, v9, :cond_2

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_5
    iget v8, v6, Lr1/o;->c:I

    .line 124
    .line 125
    and-int/2addr v8, v4

    .line 126
    if-eqz v8, :cond_b

    .line 127
    .line 128
    instance-of v8, v6, Lq2/m;

    .line 129
    .line 130
    if-eqz v8, :cond_b

    .line 131
    .line 132
    move-object v8, v6

    .line 133
    check-cast v8, Lq2/m;

    .line 134
    .line 135
    iget-object v8, v8, Lq2/m;->p:Lr1/o;

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    :goto_4
    const/4 v10, 0x1

    .line 139
    if-eqz v8, :cond_a

    .line 140
    .line 141
    iget v11, v8, Lr1/o;->c:I

    .line 142
    .line 143
    and-int/2addr v11, v4

    .line 144
    if-eqz v11, :cond_9

    .line 145
    .line 146
    add-int/lit8 v9, v9, 0x1

    .line 147
    .line 148
    if-ne v9, v10, :cond_6

    .line 149
    .line 150
    move-object v6, v8

    .line 151
    goto :goto_5

    .line 152
    :cond_6
    if-nez v7, :cond_7

    .line 153
    .line 154
    new-instance v7, Lh1/e;

    .line 155
    .line 156
    new-array v10, v2, [Lr1/o;

    .line 157
    .line 158
    invoke-direct {v7, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    if-eqz v6, :cond_8

    .line 162
    .line 163
    invoke-virtual {v7, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    move-object v6, v5

    .line 167
    :cond_8
    invoke-virtual {v7, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_5
    iget-object v8, v8, Lr1/o;->f:Lr1/o;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_a
    if-ne v9, v10, :cond_b

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_b
    :goto_6
    invoke-static {v7}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    goto :goto_2

    .line 181
    :cond_c
    iget-object v3, v3, Lr1/o;->f:Lr1/o;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_d
    invoke-static {v1, v0}, Lq2/f;->b(Lh1/e;Lr1/o;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_e
    :goto_7
    return-void
.end method

.method public final e(IJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo2/h0;->b:Lo2/i0;

    .line 2
    .line 3
    iget-object v1, v0, Lo2/i0;->j:Ls/h0;

    .line 4
    .line 5
    iget-object v2, p0, Lo2/h0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lq2/h0;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v1}, Lq2/h0;->I()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lq2/h0;->o()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lh1/b;

    .line 26
    .line 27
    iget-object v2, v2, Lh1/b;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lh1/e;

    .line 30
    .line 31
    iget v2, v2, Lh1/e;->c:I

    .line 32
    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    if-lt p1, v2, :cond_1

    .line 36
    .line 37
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v4, "Index ("

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ") is out of bound of [0, "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x29

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Ln2/a;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v1}, Lq2/h0;->J()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const-string v2, "Pre-measure called on node that is not placed"

    .line 74
    .line 75
    invoke-static {v2}, Ln2/a;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v0, v0, Lo2/i0;->a:Lq2/h0;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    iput-boolean v2, v0, Lq2/h0;->p:Z

    .line 82
    .line 83
    invoke-static {v1}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1}, Lq2/h0;->o()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lh1/b;

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lq2/h0;

    .line 98
    .line 99
    check-cast v2, Lr2/u;

    .line 100
    .line 101
    invoke-virtual {v2, v1, p2, p3}, Lr2/u;->z(Lq2/h0;J)V

    .line 102
    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    iput-boolean p2, v0, Lq2/h0;->p:Z

    .line 106
    .line 107
    iget-object p2, p0, Lo2/h0;->a:Ls/x;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ls/x;->a(I)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method
