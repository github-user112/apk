.class public final Lo2/j0;
.super Lo2/u0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo2/j0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final M()F
    .locals 1

    .line 1
    iget v0, p0, Lo2/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getDensity()Ln3/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ln3/c;->M()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lq2/p0;

    .line 22
    .line 23
    invoke-interface {v0}, Ln3/c;->M()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a()F
    .locals 1

    .line 1
    iget v0, p0, Lo2/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getDensity()Ln3/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ln3/c;->a()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lq2/p0;

    .line 22
    .line 23
    invoke-interface {v0}, Ln3/c;->a()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lo2/o;)F
    .locals 8

    .line 1
    iget v0, p0, Lo2/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lo2/u0;->c(Lo2/o;)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p1, Lo2/o;->a:Lf9/n;

    .line 12
    .line 13
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p0, p1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lq2/p0;

    .line 36
    .line 37
    iget-boolean v2, v0, Lq2/p0;->k:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_1
    move-object v2, v0

    .line 44
    :goto_0
    iget-object v3, v2, Lq2/p0;->m:Lp/p;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    iget-object v4, v3, Lp/p;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, [Lo2/o;

    .line 51
    .line 52
    invoke-static {p1, v4}, Ls8/l;->b0(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-gez v4, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v3, v3, Lp/p;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, [F

    .line 62
    .line 63
    aget v3, v3, v4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 67
    .line 68
    :goto_2
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Lq2/p0;->n0()Lq2/h0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v1, p1}, Lq2/p0;->Z(Lq2/h0;Lo2/o;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lq2/p0;->l0()Lo2/w;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lq2/p0;->l0()Lo2/w;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget p1, p1, Lo2/o;->b:I

    .line 90
    .line 91
    packed-switch p1, :pswitch_data_1

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Lo2/w;->k()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    const-wide v6, 0xffffffffL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    and-long/2addr v4, v6

    .line 104
    long-to-int p1, v4

    .line 105
    int-to-float p1, p1

    .line 106
    const/high16 v2, 0x40000000    # 2.0f

    .line 107
    .line 108
    div-float/2addr p1, v2

    .line 109
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    int-to-long v2, v2

    .line 114
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    int-to-long v4, p1

    .line 119
    const/16 p1, 0x20

    .line 120
    .line 121
    shl-long/2addr v2, p1

    .line 122
    and-long/2addr v4, v6

    .line 123
    or-long/2addr v2, v4

    .line 124
    invoke-interface {v0, v1, v2, v3}, Lo2/w;->p(Lo2/w;J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    shr-long/2addr v0, p1

    .line 129
    long-to-int p1, v0

    .line 130
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    :goto_3
    move v1, p1

    .line 135
    goto :goto_4

    .line 136
    :pswitch_1
    invoke-interface {v1}, Lo2/w;->k()J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    const/16 p1, 0x20

    .line 141
    .line 142
    shr-long/2addr v4, p1

    .line 143
    long-to-int v2, v4

    .line 144
    int-to-float v2, v2

    .line 145
    const/high16 v4, 0x40000000    # 2.0f

    .line 146
    .line 147
    div-float/2addr v2, v4

    .line 148
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    int-to-long v4, v2

    .line 153
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    int-to-long v2, v2

    .line 158
    shl-long/2addr v4, p1

    .line 159
    const-wide v6, 0xffffffffL

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    and-long/2addr v2, v6

    .line 165
    or-long/2addr v2, v4

    .line 166
    invoke-interface {v0, v1, v2, v3}, Lo2/w;->p(Lo2/w;J)J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    and-long/2addr v0, v6

    .line 171
    long-to-int p1, v0

    .line 172
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    invoke-virtual {v2}, Lq2/p0;->p0()Lq2/p0;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-nez v3, :cond_5

    .line 182
    .line 183
    invoke-virtual {v0}, Lq2/p0;->n0()Lq2/h0;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0, p1}, Lq2/p0;->Z(Lq2/h0;Lo2/o;)V

    .line 188
    .line 189
    .line 190
    :goto_4
    return v1

    .line 191
    :cond_5
    move-object v2, v3

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Ln3/m;
    .locals 1

    .line 1
    iget v0, p0, Lo2/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getLayoutDirection()Ln3/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lq2/p0;

    .line 18
    .line 19
    invoke-interface {v0}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lo2/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getRoot()Lq2/h0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lq2/h0;->F:Lq2/l0;

    .line 15
    .line 16
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 17
    .line 18
    iget v0, v0, Lo2/v0;->a:I

    .line 19
    .line 20
    return v0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lo2/j0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lq2/p0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lo2/v0;->N()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
