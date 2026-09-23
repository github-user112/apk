.class public final Lv/p0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/v2;


# instance fields
.field public final a:Lv/w0;

.field public final b:Lf1/k1;

.field public final c:Lf1/k1;

.field public final d:Lf1/k1;

.field public final e:Lf1/k1;

.field public final f:Lf1/g1;

.field public g:Z

.field public final h:Lf1/k1;

.field public i:Lv/p;

.field public final j:Lf1/i1;

.field public k:Z

.field public final l:Lv/g0;

.field public final synthetic m:Lv/s0;


# direct methods
.method public constructor <init>(Lv/s0;Ljava/lang/Object;Lv/p;Lv/w0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv/p0;->m:Lv/s0;

    .line 5
    .line 6
    iput-object p4, p0, Lv/p0;->a:Lv/w0;

    .line 7
    .line 8
    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lv/p0;->b:Lf1/k1;

    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lv/d;->j(ILjava/lang/Object;)Lv/g0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lv/p0;->c:Lf1/k1;

    .line 25
    .line 26
    new-instance v2, Lv/m0;

    .line 27
    .line 28
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v3, v0

    .line 33
    check-cast v3, Lv/v;

    .line 34
    .line 35
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    move-object v5, p2

    .line 40
    move-object v7, p3

    .line 41
    move-object v4, p4

    .line 42
    invoke-direct/range {v2 .. v7}, Lv/m0;-><init>(Lv/j;Lv/w0;Ljava/lang/Object;Ljava/lang/Object;Lv/p;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lv/p0;->d:Lf1/k1;

    .line 50
    .line 51
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lv/p0;->e:Lf1/k1;

    .line 58
    .line 59
    new-instance p1, Lf1/g1;

    .line 60
    .line 61
    const/high16 p2, -0x40800000    # -1.0f

    .line 62
    .line 63
    invoke-direct {p1, p2}, Lf1/g1;-><init>(F)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lv/p0;->f:Lf1/g1;

    .line 67
    .line 68
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lv/p0;->h:Lf1/k1;

    .line 73
    .line 74
    iput-object v7, p0, Lv/p0;->i:Lv/p;

    .line 75
    .line 76
    invoke-virtual {p0}, Lv/p0;->b()Lv/m0;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lv/m0;->b()J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    new-instance p3, Lf1/i1;

    .line 85
    .line 86
    invoke-direct {p3, p1, p2}, Lf1/i1;-><init>(J)V

    .line 87
    .line 88
    .line 89
    iput-object p3, p0, Lv/p0;->j:Lf1/i1;

    .line 90
    .line 91
    sget-object p1, Lv/b1;->a:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/lang/Float;

    .line 98
    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget-object p2, v4, Lv/w0;->a:Lf9/k;

    .line 106
    .line 107
    invoke-interface {p2, v5}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lv/p;

    .line 112
    .line 113
    invoke-virtual {p2}, Lv/p;->b()I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    const/4 p4, 0x0

    .line 118
    :goto_0
    if-ge p4, p3, :cond_0

    .line 119
    .line 120
    invoke-virtual {p2, p1, p4}, Lv/p;->e(FI)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 p4, p4, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lv/p0;->a:Lv/w0;

    .line 127
    .line 128
    iget-object p1, p1, Lv/w0;->b:Lf9/k;

    .line 129
    .line 130
    invoke-interface {p1, p2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :cond_1
    const/4 p1, 0x3

    .line 135
    invoke-static {p1, v1}, Lv/d;->j(ILjava/lang/Object;)Lv/g0;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lv/p0;->l:Lv/g0;

    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final b()Lv/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/p0;->d:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv/m0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lv/p0;->m:Lv/s0;

    .line 4
    .line 5
    iget-object v2, v1, Lv/s0;->f:Lf1/k1;

    .line 6
    .line 7
    iget-object v3, v0, Lv/p0;->b:Lf1/k1;

    .line 8
    .line 9
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v5, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget-object v5, v0, Lv/p0;->j:Lf1/i1;

    .line 19
    .line 20
    iget-object v6, v0, Lv/p0;->d:Lf1/k1;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    iget-object v9, v0, Lv/p0;->l:Lv/g0;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    new-instance v8, Lv/m0;

    .line 28
    .line 29
    iget-object v1, v0, Lv/p0;->i:Lv/p;

    .line 30
    .line 31
    invoke-virtual {v1}, Lv/p;->c()Lv/p;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    iget-object v10, v0, Lv/p0;->a:Lv/w0;

    .line 36
    .line 37
    move-object/from16 v12, p1

    .line 38
    .line 39
    move-object/from16 v11, p1

    .line 40
    .line 41
    invoke-direct/range {v8 .. v13}, Lv/m0;-><init>(Lv/j;Lv/w0;Ljava/lang/Object;Ljava/lang/Object;Lv/p;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v8}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-boolean v7, v0, Lv/p0;->g:Z

    .line 48
    .line 49
    invoke-virtual {v0}, Lv/p0;->b()Lv/m0;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lv/m0;->b()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-virtual {v5, v1, v2}, Lf1/i1;->f(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object v4, v0, Lv/p0;->c:Lf1/k1;

    .line 62
    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    iget-boolean v8, v0, Lv/p0;->k:Z

    .line 66
    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lv/v;

    .line 74
    .line 75
    instance-of v8, v8, Lv/g0;

    .line 76
    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v9, v4

    .line 84
    check-cast v9, Lv/v;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v4}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    move-object v9, v4

    .line 92
    check-cast v9, Lv/v;

    .line 93
    .line 94
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lv/s0;->d()J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    const-wide/16 v12, 0x0

    .line 99
    .line 100
    cmp-long v4, v10, v12

    .line 101
    .line 102
    if-gtz v4, :cond_3

    .line 103
    .line 104
    move-object v11, v9

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v1}, Lv/s0;->d()J

    .line 107
    .line 108
    .line 109
    move-result-wide v10

    .line 110
    new-instance v4, Lv/h0;

    .line 111
    .line 112
    invoke-direct {v4, v9, v10, v11}, Lv/h0;-><init>(Lv/v;J)V

    .line 113
    .line 114
    .line 115
    move-object v11, v4

    .line 116
    :goto_1
    new-instance v10, Lv/m0;

    .line 117
    .line 118
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    iget-object v15, v0, Lv/p0;->i:Lv/p;

    .line 123
    .line 124
    move-wide v3, v12

    .line 125
    iget-object v12, v0, Lv/p0;->a:Lv/w0;

    .line 126
    .line 127
    move-object/from16 v13, p1

    .line 128
    .line 129
    invoke-direct/range {v10 .. v15}, Lv/m0;-><init>(Lv/j;Lv/w0;Ljava/lang/Object;Ljava/lang/Object;Lv/p;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v10}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lv/p0;->b()Lv/m0;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6}, Lv/m0;->b()J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    invoke-virtual {v5, v8, v9}, Lf1/i1;->f(J)V

    .line 144
    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    iput-boolean v5, v0, Lv/p0;->g:Z

    .line 148
    .line 149
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-virtual {v2, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v6, v1, Lv/s0;->i:Lf1/k1;

    .line 155
    .line 156
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_7

    .line 167
    .line 168
    iget-object v1, v1, Lv/s0;->g:Lp1/p;

    .line 169
    .line 170
    invoke-virtual {v1}, Lp1/p;->size()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    move-wide v12, v3

    .line 175
    :goto_2
    if-ge v5, v6, :cond_6

    .line 176
    .line 177
    invoke-virtual {v1, v5}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    check-cast v8, Lv/p0;

    .line 182
    .line 183
    iget-object v9, v8, Lv/p0;->j:Lf1/i1;

    .line 184
    .line 185
    iget-object v10, v8, Lv/p0;->h:Lf1/k1;

    .line 186
    .line 187
    iget-object v11, v9, Lf1/i1;->b:Lf1/n2;

    .line 188
    .line 189
    invoke-static {v11, v9}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    check-cast v9, Lf1/n2;

    .line 194
    .line 195
    iget-wide v14, v9, Lf1/n2;->c:J

    .line 196
    .line 197
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    iget-object v9, v8, Lv/p0;->f:Lf1/g1;

    .line 202
    .line 203
    invoke-virtual {v9}, Lf1/g1;->f()F

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    const/high16 v11, -0x40800000    # -1.0f

    .line 208
    .line 209
    cmpg-float v9, v9, v11

    .line 210
    .line 211
    if-nez v9, :cond_5

    .line 212
    .line 213
    iput-boolean v7, v8, Lv/p0;->k:Z

    .line 214
    .line 215
    invoke-virtual {v8}, Lv/p0;->b()Lv/m0;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    iget-object v9, v9, Lv/m0;->c:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-virtual {v8}, Lv/p0;->b()Lv/m0;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    iget-object v11, v11, Lv/m0;->d:Ljava/lang/Object;

    .line 226
    .line 227
    invoke-static {v9, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_4

    .line 232
    .line 233
    invoke-virtual {v8}, Lv/p0;->b()Lv/m0;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    iget-object v8, v8, Lv/m0;->c:Ljava/lang/Object;

    .line 238
    .line 239
    invoke-virtual {v10, v8}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_4
    invoke-virtual {v8}, Lv/p0;->b()Lv/m0;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-virtual {v9, v3, v4}, Lv/m0;->f(J)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    invoke-virtual {v10, v9}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Lv/p0;->b()Lv/m0;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-virtual {v9, v3, v4}, Lv/m0;->d(J)Lv/p;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    iput-object v9, v8, Lv/p0;->i:Lv/p;

    .line 263
    .line 264
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-virtual {v2, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_7
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/p0;->h:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "current value: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv/p0;->h:Lf1/k1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", target: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lv/p0;->b:Lf1/k1;

    .line 23
    .line 24
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", spec: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lv/p0;->c:Lf1/k1;

    .line 37
    .line 38
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lv/v;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
