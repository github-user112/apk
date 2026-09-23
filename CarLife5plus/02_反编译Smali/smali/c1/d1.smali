.class public final Lc1/d1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lo2/v0;

.field public final synthetic d:Lo2/v0;

.field public final synthetic e:Lo2/v0;

.field public final synthetic f:Lo2/v0;

.field public final synthetic g:Lo2/v0;

.field public final synthetic h:Lo2/v0;

.field public final synthetic i:Lo2/v0;

.field public final synthetic j:Lo2/v0;

.field public final synthetic k:Lo2/v0;

.field public final synthetic l:Lc1/e1;

.field public final synthetic m:Lo2/o0;


# direct methods
.method public constructor <init>(IILo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lo2/v0;Lc1/e1;Lo2/o0;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/d1;->a:I

    .line 2
    .line 3
    iput p2, p0, Lc1/d1;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lc1/d1;->c:Lo2/v0;

    .line 6
    .line 7
    iput-object p4, p0, Lc1/d1;->d:Lo2/v0;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/d1;->e:Lo2/v0;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/d1;->f:Lo2/v0;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/d1;->g:Lo2/v0;

    .line 14
    .line 15
    iput-object p8, p0, Lc1/d1;->h:Lo2/v0;

    .line 16
    .line 17
    iput-object p9, p0, Lc1/d1;->i:Lo2/v0;

    .line 18
    .line 19
    iput-object p10, p0, Lc1/d1;->j:Lo2/v0;

    .line 20
    .line 21
    iput-object p11, p0, Lc1/d1;->k:Lo2/v0;

    .line 22
    .line 23
    iput-object p12, p0, Lc1/d1;->l:Lc1/e1;

    .line 24
    .line 25
    iput-object p13, p0, Lc1/d1;->m:Lo2/o0;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lo2/u0;

    .line 6
    .line 7
    iget-object v2, v0, Lc1/d1;->l:Lc1/e1;

    .line 8
    .line 9
    iget v3, v2, Lc1/e1;->c:F

    .line 10
    .line 11
    iget-boolean v4, v2, Lc1/e1;->b:Z

    .line 12
    .line 13
    iget-object v5, v0, Lc1/d1;->m:Lo2/o0;

    .line 14
    .line 15
    invoke-interface {v5}, Ln3/c;->a()F

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-interface {v5}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v2, v2, Lc1/e1;->d:Ld0/h0;

    .line 24
    .line 25
    sget v7, Lc1/b1;->a:F

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    iget-object v9, v0, Lc1/d1;->j:Lo2/v0;

    .line 30
    .line 31
    invoke-static {v1, v9, v7, v8}, Lo2/u0;->h(Lo2/u0;Lo2/v0;J)V

    .line 32
    .line 33
    .line 34
    sget v7, Ld1/r;->b:F

    .line 35
    .line 36
    iget-object v7, v0, Lc1/d1;->k:Lo2/v0;

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    iget v9, v7, Lo2/v0;->b:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v9, 0x0

    .line 45
    :goto_0
    iget v10, v0, Lc1/d1;->a:I

    .line 46
    .line 47
    sub-int/2addr v10, v9

    .line 48
    iget v9, v2, Ld0/h0;->b:F

    .line 49
    .line 50
    mul-float v9, v9, v6

    .line 51
    .line 52
    invoke-static {v9}, Li9/a;->N(F)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/a;->d(Ld0/h0;Ln3/m;)F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    mul-float v2, v2, v6

    .line 61
    .line 62
    invoke-static {v2}, Li9/a;->N(F)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sget v5, Ld1/r;->c:F

    .line 67
    .line 68
    mul-float v5, v5, v6

    .line 69
    .line 70
    iget-object v6, v0, Lc1/d1;->c:Lo2/v0;

    .line 71
    .line 72
    const/high16 v11, 0x40000000    # 2.0f

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x1

    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    iget v14, v6, Lo2/v0;->b:I

    .line 79
    .line 80
    sub-int v14, v10, v14

    .line 81
    .line 82
    int-to-float v14, v14

    .line 83
    div-float/2addr v14, v11

    .line 84
    int-to-float v15, v13

    .line 85
    add-float/2addr v15, v12

    .line 86
    mul-float v15, v15, v14

    .line 87
    .line 88
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    invoke-static {v1, v6, v8, v14}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v14, v0, Lc1/d1;->h:Lo2/v0;

    .line 96
    .line 97
    if-eqz v14, :cond_4

    .line 98
    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    iget v15, v14, Lo2/v0;->b:I

    .line 102
    .line 103
    sub-int v15, v10, v15

    .line 104
    .line 105
    int-to-float v15, v15

    .line 106
    div-float/2addr v15, v11

    .line 107
    const/high16 p1, 0x40000000    # 2.0f

    .line 108
    .line 109
    int-to-float v11, v13

    .line 110
    add-float/2addr v11, v12

    .line 111
    mul-float v11, v11, v15

    .line 112
    .line 113
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    .line 119
    .line 120
    move v11, v9

    .line 121
    :goto_1
    iget v15, v14, Lo2/v0;->b:I

    .line 122
    .line 123
    div-int/lit8 v15, v15, 0x2

    .line 124
    .line 125
    neg-int v15, v15

    .line 126
    invoke-static {v3, v11, v15}, Lm9/e0;->q0(FII)I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-nez v6, :cond_3

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    iget v15, v6, Lo2/v0;->a:I

    .line 135
    .line 136
    int-to-float v15, v15

    .line 137
    sub-float/2addr v15, v5

    .line 138
    int-to-float v5, v13

    .line 139
    sub-float/2addr v5, v3

    .line 140
    mul-float v5, v5, v15

    .line 141
    .line 142
    :goto_2
    invoke-static {v5}, Li9/a;->N(F)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    add-int/2addr v3, v2

    .line 147
    invoke-static {v1, v14, v3, v11}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    .line 152
    .line 153
    :goto_3
    iget-object v2, v0, Lc1/d1;->e:Lo2/v0;

    .line 154
    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    if-eqz v6, :cond_5

    .line 158
    .line 159
    iget v3, v6, Lo2/v0;->a:I

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    const/4 v3, 0x0

    .line 163
    :goto_4
    invoke-static {v4, v10, v9, v14, v2}, Lc1/b1;->e(ZIILo2/v0;Lo2/v0;)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-static {v1, v2, v3, v5}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 168
    .line 169
    .line 170
    :cond_6
    if-eqz v6, :cond_7

    .line 171
    .line 172
    iget v3, v6, Lo2/v0;->a:I

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_7
    const/4 v3, 0x0

    .line 176
    :goto_5
    if-eqz v2, :cond_8

    .line 177
    .line 178
    iget v2, v2, Lo2/v0;->a:I

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_8
    const/4 v2, 0x0

    .line 182
    :goto_6
    add-int/2addr v3, v2

    .line 183
    iget-object v2, v0, Lc1/d1;->g:Lo2/v0;

    .line 184
    .line 185
    invoke-static {v4, v10, v9, v14, v2}, Lc1/b1;->e(ZIILo2/v0;Lo2/v0;)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    invoke-static {v1, v2, v3, v5}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v0, Lc1/d1;->i:Lo2/v0;

    .line 193
    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    invoke-static {v4, v10, v9, v14, v2}, Lc1/b1;->e(ZIILo2/v0;Lo2/v0;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-static {v1, v2, v3, v5}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 201
    .line 202
    .line 203
    :cond_9
    iget v2, v0, Lc1/d1;->b:I

    .line 204
    .line 205
    iget-object v3, v0, Lc1/d1;->d:Lo2/v0;

    .line 206
    .line 207
    iget-object v5, v0, Lc1/d1;->f:Lo2/v0;

    .line 208
    .line 209
    if-eqz v5, :cond_b

    .line 210
    .line 211
    if-eqz v3, :cond_a

    .line 212
    .line 213
    iget v6, v3, Lo2/v0;->a:I

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    const/4 v6, 0x0

    .line 217
    :goto_7
    sub-int v6, v2, v6

    .line 218
    .line 219
    iget v11, v5, Lo2/v0;->a:I

    .line 220
    .line 221
    sub-int/2addr v6, v11

    .line 222
    invoke-static {v4, v10, v9, v14, v5}, Lc1/b1;->e(ZIILo2/v0;Lo2/v0;)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    invoke-static {v1, v5, v6, v4}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 227
    .line 228
    .line 229
    :cond_b
    if-eqz v3, :cond_c

    .line 230
    .line 231
    iget v4, v3, Lo2/v0;->a:I

    .line 232
    .line 233
    sub-int/2addr v2, v4

    .line 234
    iget v4, v3, Lo2/v0;->b:I

    .line 235
    .line 236
    sub-int v4, v10, v4

    .line 237
    .line 238
    int-to-float v4, v4

    .line 239
    div-float v4, v4, p1

    .line 240
    .line 241
    int-to-float v5, v13

    .line 242
    add-float/2addr v5, v12

    .line 243
    mul-float v5, v5, v4

    .line 244
    .line 245
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-static {v1, v3, v2, v4}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 250
    .line 251
    .line 252
    :cond_c
    if-eqz v7, :cond_d

    .line 253
    .line 254
    invoke-static {v1, v7, v8, v10}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 255
    .line 256
    .line 257
    :cond_d
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 258
    .line 259
    return-object v1
.end method
