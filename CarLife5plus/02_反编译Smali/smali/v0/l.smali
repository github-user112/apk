.class public final synthetic Lv0/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv0/n;


# direct methods
.method public synthetic constructor <init>(Lv0/n;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv0/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv0/l;->b:Lv0/n;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv0/l;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Lv0/l;->b:Lv0/n;

    .line 17
    .line 18
    iget-object v3, v2, Lv0/n;->B:Lv0/m;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iput-boolean v1, v3, Lv0/m;->c:Z

    .line 27
    .line 28
    :cond_1
    invoke-static {v2}, Lq2/f;->n(Lq2/y1;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lq2/f;->m(Lq2/x;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lq2/f;->l(Lq2/o;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    return-object v1

    .line 43
    :pswitch_0
    move-object/from16 v3, p1

    .line 44
    .line 45
    check-cast v3, Lb3/g;

    .line 46
    .line 47
    iget-object v1, v0, Lv0/l;->b:Lv0/n;

    .line 48
    .line 49
    iget-object v2, v1, Lv0/n;->B:Lv0/m;

    .line 50
    .line 51
    sget-object v10, Ls8/w;->a:Ls8/w;

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    iget-object v4, v2, Lv0/m;->b:Lb3/g;

    .line 56
    .line 57
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iput-object v3, v2, Lv0/m;->b:Lb3/g;

    .line 65
    .line 66
    iget-object v2, v2, Lv0/m;->d:Lv0/d;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    iget-object v4, v1, Lv0/n;->p:Lb3/o0;

    .line 71
    .line 72
    iget-object v5, v1, Lv0/n;->q:Lf3/d;

    .line 73
    .line 74
    iget v6, v1, Lv0/n;->s:I

    .line 75
    .line 76
    iget-boolean v7, v1, Lv0/n;->t:Z

    .line 77
    .line 78
    iget v8, v1, Lv0/n;->u:I

    .line 79
    .line 80
    iget v9, v1, Lv0/n;->v:I

    .line 81
    .line 82
    iput-object v3, v2, Lv0/d;->a:Lb3/g;

    .line 83
    .line 84
    iget-object v3, v2, Lv0/d;->k:Lb3/o0;

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Lb3/o0;->c(Lb3/o0;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iput-object v4, v2, Lv0/d;->k:Lb3/o0;

    .line 91
    .line 92
    const/4 v4, -0x1

    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x2

    .line 95
    if-nez v3, :cond_3

    .line 96
    .line 97
    iget-wide v13, v2, Lv0/d;->q:J

    .line 98
    .line 99
    shl-long/2addr v13, v12

    .line 100
    iput-wide v13, v2, Lv0/d;->q:J

    .line 101
    .line 102
    iput-object v11, v2, Lv0/d;->l:Lb3/q;

    .line 103
    .line 104
    iput-object v11, v2, Lv0/d;->n:Lb3/l0;

    .line 105
    .line 106
    iput v4, v2, Lv0/d;->p:I

    .line 107
    .line 108
    iput v4, v2, Lv0/d;->o:I

    .line 109
    .line 110
    :cond_3
    iput-object v5, v2, Lv0/d;->b:Lf3/d;

    .line 111
    .line 112
    iput v6, v2, Lv0/d;->c:I

    .line 113
    .line 114
    iput-boolean v7, v2, Lv0/d;->d:Z

    .line 115
    .line 116
    iput v8, v2, Lv0/d;->e:I

    .line 117
    .line 118
    iput v9, v2, Lv0/d;->f:I

    .line 119
    .line 120
    iput-object v10, v2, Lv0/d;->g:Ljava/util/List;

    .line 121
    .line 122
    iget-wide v5, v2, Lv0/d;->q:J

    .line 123
    .line 124
    shl-long/2addr v5, v12

    .line 125
    const-wide/16 v7, 0x2

    .line 126
    .line 127
    or-long/2addr v5, v7

    .line 128
    iput-wide v5, v2, Lv0/d;->q:J

    .line 129
    .line 130
    iput-object v11, v2, Lv0/d;->l:Lb3/q;

    .line 131
    .line 132
    iput-object v11, v2, Lv0/d;->n:Lb3/l0;

    .line 133
    .line 134
    iput v4, v2, Lv0/d;->p:I

    .line 135
    .line 136
    iput v4, v2, Lv0/d;->o:I

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    new-instance v11, Lv0/m;

    .line 140
    .line 141
    iget-object v2, v1, Lv0/n;->o:Lb3/g;

    .line 142
    .line 143
    invoke-direct {v11, v2, v3}, Lv0/m;-><init>(Lb3/g;Lb3/g;)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lv0/d;

    .line 147
    .line 148
    iget-object v4, v1, Lv0/n;->p:Lb3/o0;

    .line 149
    .line 150
    iget-object v5, v1, Lv0/n;->q:Lf3/d;

    .line 151
    .line 152
    iget v6, v1, Lv0/n;->s:I

    .line 153
    .line 154
    iget-boolean v7, v1, Lv0/n;->t:Z

    .line 155
    .line 156
    iget v8, v1, Lv0/n;->u:I

    .line 157
    .line 158
    iget v9, v1, Lv0/n;->v:I

    .line 159
    .line 160
    invoke-direct/range {v2 .. v10}, Lv0/d;-><init>(Lb3/g;Lb3/o0;Lf3/d;IZIILs8/w;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lv0/n;->B0()Lv0/d;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v3, v3, Lv0/d;->j:Ln3/c;

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Lv0/d;->d(Ln3/c;)V

    .line 170
    .line 171
    .line 172
    iput-object v2, v11, Lv0/m;->d:Lv0/d;

    .line 173
    .line 174
    iput-object v11, v1, Lv0/n;->B:Lv0/m;

    .line 175
    .line 176
    :cond_5
    :goto_1
    invoke-static {v1}, Lq2/f;->n(Lq2/y1;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1}, Lq2/f;->m(Lq2/x;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lq2/f;->l(Lq2/o;)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 186
    .line 187
    return-object v1

    .line 188
    :pswitch_1
    move-object/from16 v1, p1

    .line 189
    .line 190
    check-cast v1, Ljava/util/List;

    .line 191
    .line 192
    iget-object v2, v0, Lv0/l;->b:Lv0/n;

    .line 193
    .line 194
    invoke-virtual {v2}, Lv0/n;->B0()Lv0/d;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget-object v3, v3, Lv0/d;->n:Lb3/l0;

    .line 199
    .line 200
    if-eqz v3, :cond_7

    .line 201
    .line 202
    iget-object v4, v3, Lb3/l0;->a:Lb3/k0;

    .line 203
    .line 204
    new-instance v5, Lb3/k0;

    .line 205
    .line 206
    iget-object v6, v4, Lb3/k0;->a:Lb3/g;

    .line 207
    .line 208
    iget-object v7, v2, Lv0/n;->p:Lb3/o0;

    .line 209
    .line 210
    iget-object v2, v2, Lv0/n;->x:Ly1/r;

    .line 211
    .line 212
    if-eqz v2, :cond_6

    .line 213
    .line 214
    invoke-interface {v2}, Ly1/r;->a()J

    .line 215
    .line 216
    .line 217
    move-result-wide v8

    .line 218
    goto :goto_2

    .line 219
    :cond_6
    sget-wide v8, Ly1/q;->m:J

    .line 220
    .line 221
    :goto_2
    const-wide/16 v16, 0x0

    .line 222
    .line 223
    const v18, 0xfffffe

    .line 224
    .line 225
    .line 226
    const-wide/16 v10, 0x0

    .line 227
    .line 228
    const/4 v12, 0x0

    .line 229
    const-wide/16 v13, 0x0

    .line 230
    .line 231
    const/4 v15, 0x0

    .line 232
    invoke-static/range {v7 .. v18}, Lb3/o0;->e(Lb3/o0;JJLf3/k;JIJI)Lb3/o0;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    iget-object v8, v4, Lb3/k0;->c:Ljava/util/List;

    .line 237
    .line 238
    iget v9, v4, Lb3/k0;->d:I

    .line 239
    .line 240
    iget-boolean v10, v4, Lb3/k0;->e:Z

    .line 241
    .line 242
    iget v11, v4, Lb3/k0;->f:I

    .line 243
    .line 244
    iget-object v12, v4, Lb3/k0;->g:Ln3/c;

    .line 245
    .line 246
    iget-object v13, v4, Lb3/k0;->h:Ln3/m;

    .line 247
    .line 248
    iget-object v14, v4, Lb3/k0;->i:Lf3/d;

    .line 249
    .line 250
    move-object/from16 p1, v5

    .line 251
    .line 252
    iget-wide v4, v4, Lb3/k0;->j:J

    .line 253
    .line 254
    move-wide v15, v4

    .line 255
    move-object/from16 v5, p1

    .line 256
    .line 257
    invoke-direct/range {v5 .. v16}, Lb3/k0;-><init>(Lb3/g;Lb3/o0;Ljava/util/List;IZILn3/c;Ln3/m;Lf3/d;J)V

    .line 258
    .line 259
    .line 260
    iget-wide v6, v3, Lb3/l0;->c:J

    .line 261
    .line 262
    new-instance v2, Lb3/l0;

    .line 263
    .line 264
    iget-object v3, v3, Lb3/l0;->b:Lb3/o;

    .line 265
    .line 266
    invoke-direct {v2, v5, v3, v6, v7}, Lb3/l0;-><init>(Lb3/k0;Lb3/o;J)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_7
    const/4 v2, 0x0

    .line 274
    :goto_3
    if-eqz v2, :cond_8

    .line 275
    .line 276
    const/4 v1, 0x1

    .line 277
    goto :goto_4

    .line 278
    :cond_8
    const/4 v1, 0x0

    .line 279
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    return-object v1

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
