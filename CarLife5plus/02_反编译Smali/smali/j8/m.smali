.class public final Lj8/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lf9/n;

.field public final synthetic c:I

.field public final synthetic d:Lf9/n;

.field public final synthetic e:Lf9/n;

.field public final synthetic f:Lf9/n;

.field public final synthetic g:Lf9/n;


# direct methods
.method public constructor <init>(JLf9/n;ILf9/n;Lf9/n;Lf9/n;Lf9/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lj8/m;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lj8/m;->b:Lf9/n;

    .line 7
    .line 8
    iput p4, p0, Lj8/m;->c:I

    .line 9
    .line 10
    iput-object p5, p0, Lj8/m;->d:Lf9/n;

    .line 11
    .line 12
    iput-object p6, p0, Lj8/m;->e:Lf9/n;

    .line 13
    .line 14
    iput-object p7, p0, Lj8/m;->f:Lf9/n;

    .line 15
    .line 16
    iput-object p8, p0, Lj8/m;->g:Lf9/n;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    check-cast v6, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v1, v1, 0x3

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    :goto_0
    sget-object v1, Lr2/i1;->h:Lf1/w2;

    .line 33
    .line 34
    invoke-virtual {v6, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ln3/c;

    .line 39
    .line 40
    sget-object v2, Lr2/n0;->c:Lf1/c0;

    .line 41
    .line 42
    invoke-virtual {v6, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/content/res/Resources;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    add-int/lit8 v3, v3, -0x80

    .line 55
    .line 56
    invoke-interface {v1, v3}, Ln3/c;->H(I)F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x1

    .line 62
    invoke-static {v4, v3, v5}, Landroidx/compose/foundation/layout/c;->l(FFI)Lr1/p;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    .line 68
    add-int/lit8 v2, v2, -0x80

    .line 69
    .line 70
    invoke-interface {v1, v2}, Ln3/c;->H(I)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v3, v4, v1, v5}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x4

    .line 79
    int-to-float v2, v2

    .line 80
    const/16 v3, 0x3e

    .line 81
    .line 82
    invoke-static {v2, v3}, Lc1/g1;->e(FI)Lc1/m;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget-object v2, Lc1/y;->a:Lf1/w2;

    .line 87
    .line 88
    const v2, -0x64310eb0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v2}, Lf1/s;->W(I)V

    .line 92
    .line 93
    .line 94
    sget-object v2, Lc1/y;->a:Lf1/w2;

    .line 95
    .line 96
    invoke-virtual {v6, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lc1/w;

    .line 101
    .line 102
    iget-wide v7, v0, Lj8/m;->a:J

    .line 103
    .line 104
    invoke-static {v3, v7, v8}, Lc1/y;->a(Lc1/w;J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    const-wide/16 v11, 0x10

    .line 109
    .line 110
    cmp-long v3, v9, v11

    .line 111
    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    sget-object v3, Lc1/a0;->a:Lf1/c0;

    .line 116
    .line 117
    invoke-virtual {v6, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Ly1/q;

    .line 122
    .line 123
    iget-wide v9, v3, Ly1/q;->a:J

    .line 124
    .line 125
    :goto_1
    const/4 v3, 0x0

    .line 126
    invoke-virtual {v6, v3}, Lf1/s;->p(Z)V

    .line 127
    .line 128
    .line 129
    sget-wide v13, Ly1/q;->m:J

    .line 130
    .line 131
    const v3, 0x3ec28f5c    # 0.38f

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v9, v10}, Ly1/q;->b(FJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v15

    .line 138
    invoke-virtual {v6, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Lc1/w;

    .line 143
    .line 144
    invoke-static {v2}, Lc1/g1;->f(Lc1/w;)Lc1/l;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    cmp-long v3, v7, v11

    .line 149
    .line 150
    if-eqz v3, :cond_3

    .line 151
    .line 152
    :goto_2
    move-wide/from16 v18, v7

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    iget-wide v7, v2, Lc1/l;->a:J

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :goto_3
    cmp-long v3, v9, v11

    .line 159
    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    :goto_4
    move-wide/from16 v20, v9

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_4
    iget-wide v9, v2, Lc1/l;->b:J

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :goto_5
    cmp-long v3, v13, v11

    .line 169
    .line 170
    if-eqz v3, :cond_5

    .line 171
    .line 172
    :goto_6
    move-wide/from16 v22, v13

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_5
    iget-wide v13, v2, Lc1/l;->c:J

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :goto_7
    cmp-long v3, v15, v11

    .line 179
    .line 180
    if-eqz v3, :cond_6

    .line 181
    .line 182
    move-wide/from16 v24, v15

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_6
    iget-wide v2, v2, Lc1/l;->d:J

    .line 186
    .line 187
    move-wide/from16 v24, v2

    .line 188
    .line 189
    :goto_8
    new-instance v17, Lc1/l;

    .line 190
    .line 191
    invoke-direct/range {v17 .. v25}, Lc1/l;-><init>(JJJJ)V

    .line 192
    .line 193
    .line 194
    const/16 v2, 0xc

    .line 195
    .line 196
    invoke-static {v2, v6}, Lg5/a;->B(ILf1/s;)F

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v2}, Lk0/e;->a(F)Lk0/d;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    new-instance v7, Lj8/l;

    .line 205
    .line 206
    iget-object v12, v0, Lj8/m;->f:Lf9/n;

    .line 207
    .line 208
    iget-object v13, v0, Lj8/m;->g:Lf9/n;

    .line 209
    .line 210
    iget-object v8, v0, Lj8/m;->b:Lf9/n;

    .line 211
    .line 212
    iget v9, v0, Lj8/m;->c:I

    .line 213
    .line 214
    iget-object v10, v0, Lj8/m;->d:Lf9/n;

    .line 215
    .line 216
    iget-object v11, v0, Lj8/m;->e:Lf9/n;

    .line 217
    .line 218
    invoke-direct/range {v7 .. v13}, Lj8/l;-><init>(Lf9/n;ILf9/n;Lf9/n;Lf9/n;Lf9/n;)V

    .line 219
    .line 220
    .line 221
    const v3, 0x65a10be2

    .line 222
    .line 223
    .line 224
    invoke-static {v3, v7, v6}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const/high16 v7, 0x30000

    .line 229
    .line 230
    const/16 v8, 0x10

    .line 231
    .line 232
    move-object/from16 v3, v17

    .line 233
    .line 234
    invoke-static/range {v1 .. v8}, Lc1/g1;->b(Lr1/p;Ly1/l0;Lc1/l;Lc1/m;Ln1/c;Lf1/s;II)V

    .line 235
    .line 236
    .line 237
    :goto_9
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 238
    .line 239
    return-object v1
.end method
