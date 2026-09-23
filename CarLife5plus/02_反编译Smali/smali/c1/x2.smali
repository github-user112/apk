.class public final Lc1/x2;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;


# instance fields
.field public o:Lb0/k;

.field public p:Z

.field public q:Z

.field public r:Lv/c;

.field public s:Lv/c;

.field public t:F

.field public u:F


# virtual methods
.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 6

    .line 1
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p2, v0}, Lo2/l0;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-interface {p2, p3}, Lo2/l0;->r(I)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p3, 0x0

    .line 26
    :goto_0
    iget-boolean p4, p0, Lc1/x2;->q:Z

    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    sget p3, Le1/n;->a:F

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-nez p3, :cond_3

    .line 34
    .line 35
    iget-boolean p3, p0, Lc1/x2;->p:Z

    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget p3, Landroidx/compose/material3/a;->b:F

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    sget p3, Landroidx/compose/material3/a;->a:F

    .line 44
    .line 45
    :goto_2
    invoke-interface {p1, p3}, Ln3/c;->S(F)F

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    iget-object p4, p0, Lc1/x2;->s:Lv/c;

    .line 50
    .line 51
    if-eqz p4, :cond_4

    .line 52
    .line 53
    invoke-virtual {p4}, Lv/c;->d()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    check-cast p4, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move p4, p3

    .line 65
    :goto_3
    float-to-int p4, p4

    .line 66
    if-ltz p4, :cond_5

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/4 v0, 0x0

    .line 71
    :goto_4
    if-ltz p4, :cond_6

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    :cond_6
    and-int/2addr v0, v1

    .line 75
    if-nez v0, :cond_7

    .line 76
    .line 77
    const-string v0, "width and height must be >= 0"

    .line 78
    .line 79
    invoke-static {v0}, Ln3/i;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_7
    invoke-static {p4, p4, p4, p4}, Ln3/b;->h(IIII)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-interface {p2, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    sget v0, Landroidx/compose/material3/a;->d:F

    .line 91
    .line 92
    invoke-interface {p1, p3}, Ln3/c;->J(F)F

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    sub-float/2addr v0, v1

    .line 97
    const/high16 v1, 0x40000000    # 2.0f

    .line 98
    .line 99
    div-float/2addr v0, v1

    .line 100
    invoke-interface {p1, v0}, Ln3/c;->S(F)F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sget v1, Landroidx/compose/material3/a;->c:F

    .line 105
    .line 106
    sget v2, Landroidx/compose/material3/a;->a:F

    .line 107
    .line 108
    sub-float/2addr v1, v2

    .line 109
    sget v2, Landroidx/compose/material3/a;->e:F

    .line 110
    .line 111
    sub-float/2addr v1, v2

    .line 112
    invoke-interface {p1, v1}, Ln3/c;->S(F)F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iget-boolean v2, p0, Lc1/x2;->q:Z

    .line 117
    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    iget-boolean v3, p0, Lc1/x2;->p:Z

    .line 121
    .line 122
    if-eqz v3, :cond_8

    .line 123
    .line 124
    sget v0, Le1/n;->e:F

    .line 125
    .line 126
    invoke-interface {p1, v0}, Ln3/c;->S(F)F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    sub-float v0, v1, v0

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_8
    if-eqz v2, :cond_9

    .line 134
    .line 135
    iget-boolean v2, p0, Lc1/x2;->p:Z

    .line 136
    .line 137
    if-nez v2, :cond_9

    .line 138
    .line 139
    sget v0, Le1/n;->e:F

    .line 140
    .line 141
    invoke-interface {p1, v0}, Ln3/c;->S(F)F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    goto :goto_5

    .line 146
    :cond_9
    iget-boolean v2, p0, Lc1/x2;->p:Z

    .line 147
    .line 148
    if-eqz v2, :cond_a

    .line 149
    .line 150
    move v0, v1

    .line 151
    :cond_a
    :goto_5
    iget-object v1, p0, Lc1/x2;->s:Lv/c;

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    iget-object v1, v1, Lv/c;->e:Lf1/k1;

    .line 157
    .line 158
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/lang/Float;

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_b
    move-object v1, v2

    .line 166
    :goto_6
    const/4 v3, 0x3

    .line 167
    if-eqz v1, :cond_c

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    cmpl-float v1, v1, p3

    .line 174
    .line 175
    if-nez v1, :cond_c

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_c
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v4, Lc1/v2;

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-direct {v4, p0, p3, v2, v5}, Lc1/v2;-><init>(Lc1/x2;FLw8/c;I)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v2, v4, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 189
    .line 190
    .line 191
    :goto_7
    iget-object v1, p0, Lc1/x2;->r:Lv/c;

    .line 192
    .line 193
    if-eqz v1, :cond_d

    .line 194
    .line 195
    iget-object v1, v1, Lv/c;->e:Lf1/k1;

    .line 196
    .line 197
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Ljava/lang/Float;

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_d
    move-object v1, v2

    .line 205
    :goto_8
    if-eqz v1, :cond_e

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    cmpl-float v1, v1, v0

    .line 212
    .line 213
    if-nez v1, :cond_e

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :cond_e
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v4, Lc1/v2;

    .line 221
    .line 222
    const/4 v5, 0x1

    .line 223
    invoke-direct {v4, p0, v0, v2, v5}, Lc1/v2;-><init>(Lc1/x2;FLw8/c;I)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v2, v4, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 227
    .line 228
    .line 229
    :goto_9
    iget v1, p0, Lc1/x2;->u:F

    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_f

    .line 236
    .line 237
    iget v1, p0, Lc1/x2;->t:F

    .line 238
    .line 239
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_f

    .line 244
    .line 245
    iput p3, p0, Lc1/x2;->u:F

    .line 246
    .line 247
    iput v0, p0, Lc1/x2;->t:F

    .line 248
    .line 249
    :cond_f
    new-instance p3, Lc1/w2;

    .line 250
    .line 251
    invoke-direct {p3, p2, p0, v0}, Lc1/w2;-><init>(Lo2/v0;Lc1/x2;F)V

    .line 252
    .line 253
    .line 254
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 255
    .line 256
    invoke-interface {p1, p4, p4, p2, p3}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    return-object p1
.end method

.method public final synthetic c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->e(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->d(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->b(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->c(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lb8/g;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-static {v0, v3, v1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 14
    .line 15
    .line 16
    return-void
.end method
