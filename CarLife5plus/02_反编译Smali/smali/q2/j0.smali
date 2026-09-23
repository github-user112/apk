.class public final Lq2/j0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements La2/g;


# instance fields
.field public final a:La2/c;

.field public b:Lq2/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, La2/c;

    .line 2
    .line 3
    invoke-direct {v0}, La2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq2/j0;->a:La2/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final D(F)J
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La2/c;->D(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final H(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La2/c;->H(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final J(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/c;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-float/2addr p1, v0

    .line 8
    return p1
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/c;->M()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final P(FJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, La2/c;->P(FJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final S(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/c;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-float v0, v0, p1

    .line 8
    .line 9
    return v0
.end method

.method public final T(Ly1/e0;Ly1/m;FLa2/h;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, La2/c;->T(Ly1/e0;Ly1/m;FLa2/h;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final W(Ly1/e0;JLa2/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, La2/c;->W(Ly1/e0;JLa2/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final X()La2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v0, v0, La2/c;->b:La2/b;

    .line 4
    .line 5
    return-object v0
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/c;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final a0(JJJI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move-wide v5, p5

    .line 6
    move v7, p7

    .line 7
    invoke-virtual/range {v0 .. v7}, La2/c;->a0(JJJI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()V
    .locals 11

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v1, v0, La2/c;->b:La2/b;

    .line 4
    .line 5
    invoke-virtual {v1}, La2/b;->z()Ly1/o;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v1, p0, Lq2/j0;->b:Lq2/o;

    .line 10
    .line 11
    if-eqz v1, :cond_f

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    check-cast v2, Lr1/o;

    .line 15
    .line 16
    iget-object v4, v2, Lr1/o;->a:Lr1/o;

    .line 17
    .line 18
    iget-object v4, v4, Lr1/o;->f:Lr1/o;

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget v5, v4, Lr1/o;->d:I

    .line 26
    .line 27
    and-int/2addr v5, v10

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 32
    .line 33
    iget v5, v4, Lr1/o;->c:I

    .line 34
    .line 35
    and-int/lit8 v6, v5, 0x2

    .line 36
    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    and-int/lit8 v5, v5, 0x4

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-object v4, v4, Lr1/o;->f:Lr1/o;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    :goto_1
    move-object v4, v9

    .line 49
    :goto_2
    if-eqz v4, :cond_d

    .line 50
    .line 51
    move-object v1, v9

    .line 52
    :goto_3
    if-eqz v4, :cond_c

    .line 53
    .line 54
    instance-of v2, v4, Lq2/o;

    .line 55
    .line 56
    if-eqz v2, :cond_5

    .line 57
    .line 58
    move-object v7, v4

    .line 59
    check-cast v7, Lq2/o;

    .line 60
    .line 61
    iget-object v2, v0, La2/c;->b:La2/b;

    .line 62
    .line 63
    iget-object v2, v2, La2/b;->c:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v8, v2

    .line 66
    check-cast v8, Lb2/c;

    .line 67
    .line 68
    invoke-static {v7, v10}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-wide v4, v6, Lo2/v0;->c:J

    .line 73
    .line 74
    invoke-static {v4, v5}, La/a;->S(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    iget-object v2, v6, Lq2/h1;->o:Lq2/h0;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lr2/u;

    .line 88
    .line 89
    invoke-virtual {v2}, Lr2/u;->getSharedDrawScope()Lq2/j0;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual/range {v2 .. v8}, Lq2/j0;->c(Ly1/o;JLq2/h1;Lq2/o;Lb2/c;)V

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_5
    iget v2, v4, Lr1/o;->c:I

    .line 98
    .line 99
    and-int/2addr v2, v10

    .line 100
    if-eqz v2, :cond_b

    .line 101
    .line 102
    instance-of v2, v4, Lq2/m;

    .line 103
    .line 104
    if-eqz v2, :cond_b

    .line 105
    .line 106
    move-object v2, v4

    .line 107
    check-cast v2, Lq2/m;

    .line 108
    .line 109
    iget-object v2, v2, Lq2/m;->p:Lr1/o;

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    :goto_4
    const/4 v6, 0x1

    .line 113
    if-eqz v2, :cond_a

    .line 114
    .line 115
    iget v7, v2, Lr1/o;->c:I

    .line 116
    .line 117
    and-int/2addr v7, v10

    .line 118
    if-eqz v7, :cond_9

    .line 119
    .line 120
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    if-ne v5, v6, :cond_6

    .line 123
    .line 124
    move-object v4, v2

    .line 125
    goto :goto_5

    .line 126
    :cond_6
    if-nez v1, :cond_7

    .line 127
    .line 128
    new-instance v1, Lh1/e;

    .line 129
    .line 130
    const/16 v6, 0x10

    .line 131
    .line 132
    new-array v6, v6, [Lr1/o;

    .line 133
    .line 134
    invoke-direct {v1, v6}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    if-eqz v4, :cond_8

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    move-object v4, v9

    .line 143
    :cond_8
    invoke-virtual {v1, v2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_9
    :goto_5
    iget-object v2, v2, Lr1/o;->f:Lr1/o;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_a
    if-ne v5, v6, :cond_b

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    :goto_6
    invoke-static {v1}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    goto :goto_3

    .line 157
    :cond_c
    return-void

    .line 158
    :cond_d
    invoke-static {v1, v10}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lq2/h1;->G0()Lr1/o;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iget-object v2, v2, Lr1/o;->a:Lr1/o;

    .line 167
    .line 168
    if-ne v4, v2, :cond_e

    .line 169
    .line 170
    iget-object v1, v1, Lq2/h1;->p:Lq2/h1;

    .line 171
    .line 172
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_e
    iget-object v0, v0, La2/c;->b:La2/b;

    .line 176
    .line 177
    iget-object v0, v0, La2/b;->c:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Lb2/c;

    .line 180
    .line 181
    invoke-virtual {v1, v3, v0}, Lq2/h1;->U0(Ly1/o;Lb2/c;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_f
    const-string v0, "Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer."

    .line 186
    .line 187
    invoke-static {v0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    throw v0
.end method

.method public final b0(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, La2/f;->k(FLn3/c;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final c(Ly1/o;JLq2/h1;Lq2/o;Lb2/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/j0;->b:Lq2/o;

    .line 2
    .line 3
    iput-object p5, p0, Lq2/j0;->b:Lq2/o;

    .line 4
    .line 5
    iget-object v1, p4, Lq2/h1;->o:Lq2/h0;

    .line 6
    .line 7
    iget-object v1, v1, Lq2/h0;->y:Ln3/m;

    .line 8
    .line 9
    iget-object v2, p0, Lq2/j0;->a:La2/c;

    .line 10
    .line 11
    iget-object v3, v2, La2/c;->b:La2/b;

    .line 12
    .line 13
    invoke-virtual {v3}, La2/b;->C()Ln3/c;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v2, v2, La2/c;->b:La2/b;

    .line 18
    .line 19
    invoke-virtual {v2}, La2/b;->H()Ln3/m;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2}, La2/b;->z()Ly1/o;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v2}, La2/b;->J()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    iget-object v8, v2, La2/b;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v8, Lb2/c;

    .line 34
    .line 35
    invoke-virtual {v2, p4}, La2/b;->a0(Ln3/c;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, La2/b;->b0(Ln3/m;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, La2/b;->Z(Ly1/o;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2, p3}, La2/b;->c0(J)V

    .line 45
    .line 46
    .line 47
    iput-object p6, v2, La2/b;->c:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {p1}, Ly1/o;->f()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-interface {p5, p0}, Lq2/o;->v(Lq2/j0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Ly1/o;->n()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, La2/b;->a0(Ln3/c;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, La2/b;->b0(Ln3/m;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v5}, La2/b;->Z(Ly1/o;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6, v7}, La2/b;->c0(J)V

    .line 68
    .line 69
    .line 70
    iput-object v8, v2, La2/b;->c:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object v0, p0, Lq2/j0;->b:Lq2/o;

    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p2

    .line 76
    invoke-interface {p1}, Ly1/o;->n()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, La2/b;->a0(Ln3/c;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, La2/b;->b0(Ln3/m;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, La2/b;->Z(Ly1/o;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6, v7}, La2/b;->c0(J)V

    .line 89
    .line 90
    .line 91
    iput-object v8, v2, La2/b;->c:Ljava/lang/Object;

    .line 92
    .line 93
    throw p2
.end method

.method public final c0()J
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/c;->c0()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(Ly1/m;JJFLa2/h;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v1, v0, La2/c;->a:La2/a;

    .line 4
    .line 5
    iget-object v7, v1, La2/a;->c:Ly1/o;

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    shr-long v2, p2, v1

    .line 10
    .line 11
    long-to-int v3, v2

    .line 12
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    const-wide v4, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p2, v4

    .line 22
    long-to-int p3, p2

    .line 23
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    shr-long v9, p4, v1

    .line 32
    .line 33
    long-to-int v1, v9

    .line 34
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-float v9, v1, v2

    .line 39
    .line 40
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    and-long v1, p4, v4

    .line 45
    .line 46
    long-to-int v2, v1

    .line 47
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-float/2addr p3, v1

    .line 52
    const/4 v6, 0x1

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x3

    .line 55
    move-object v1, p1

    .line 56
    move/from16 v3, p6

    .line 57
    .line 58
    move-object/from16 v2, p7

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v6}, La2/c;->c(Ly1/m;La2/h;FLy1/k;II)Ld7/q;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    move-object/from16 p6, p1

    .line 65
    .line 66
    move/from16 p5, p3

    .line 67
    .line 68
    move-object p1, v7

    .line 69
    move p4, v9

    .line 70
    move p3, p2

    .line 71
    move p2, v8

    .line 72
    invoke-interface/range {p1 .. p6}, Ly1/o;->a(FFFFLd7/q;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final e(Ly1/m;JJJFLa2/h;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v1, v0, La2/c;->a:La2/a;

    .line 4
    .line 5
    iget-object v7, v1, La2/a;->c:Ly1/o;

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    shr-long v2, p2, v1

    .line 10
    .line 11
    long-to-int v3, v2

    .line 12
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    const-wide v4, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long v9, p2, v4

    .line 22
    .line 23
    long-to-int v2, v9

    .line 24
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    shr-long v10, p4, v1

    .line 33
    .line 34
    long-to-int v6, v10

    .line 35
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    add-float v10, v6, v3

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    and-long v11, p4, v4

    .line 46
    .line 47
    long-to-int v3, v11

    .line 48
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-float v11, v3, v2

    .line 53
    .line 54
    shr-long v1, p6, v1

    .line 55
    .line 56
    long-to-int v2, v1

    .line 57
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    and-long v1, p6, v4

    .line 62
    .line 63
    long-to-int v2, v1

    .line 64
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    const/4 v6, 0x1

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x3

    .line 71
    move-object v1, p1

    .line 72
    move/from16 v3, p8

    .line 73
    .line 74
    move-object/from16 v2, p9

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v6}, La2/c;->c(Ly1/m;La2/h;FLy1/k;II)Ld7/q;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    move-object/from16 p8, p1

    .line 81
    .line 82
    move-object p1, v7

    .line 83
    move/from16 p2, v8

    .line 84
    .line 85
    move/from16 p3, v9

    .line 86
    .line 87
    move/from16 p4, v10

    .line 88
    .line 89
    move/from16 p5, v11

    .line 90
    .line 91
    move/from16 p6, v12

    .line 92
    .line 93
    move/from16 p7, v13

    .line 94
    .line 95
    invoke-interface/range {p1 .. p8}, Ly1/o;->i(FFFFFFLd7/q;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final e0(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0}, La2/f;->o(JLn3/c;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v0, v0, La2/c;->b:La2/b;

    .line 4
    .line 5
    invoke-virtual {v0}, La2/b;->J()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v0, v0, La2/c;->a:La2/a;

    .line 4
    .line 5
    iget-object v0, v0, La2/a;->b:Ln3/m;

    .line 6
    .line 7
    return-object v0
.end method

.method public final h0(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0}, La2/f;->n(JLn3/c;)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final i0(JJJJLa2/h;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move-wide v5, p5

    .line 6
    move-wide/from16 v7, p7

    .line 7
    .line 8
    move-object/from16 v9, p9

    .line 9
    .line 10
    invoke-virtual/range {v0 .. v9}, La2/c;->i0(JJJJLa2/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final m(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0}, La2/f;->m(JLn3/c;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public final o(Ly1/f;JJJFLy1/k;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    move-wide/from16 v6, p6

    .line 7
    .line 8
    move/from16 v8, p8

    .line 9
    .line 10
    move-object/from16 v9, p9

    .line 11
    .line 12
    move/from16 v10, p10

    .line 13
    .line 14
    invoke-virtual/range {v0 .. v10}, La2/c;->o(Ly1/f;JJJFLy1/k;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final q(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0}, La2/f;->l(JLn3/c;)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final w(JJJF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-wide v3, p3

    .line 5
    move-wide v5, p5

    .line 6
    move v7, p7

    .line 7
    invoke-virtual/range {v0 .. v7}, La2/c;->w(JJJF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
