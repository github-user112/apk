.class public final Lc8/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lf1/b1;

.field public final synthetic f:Lf1/b1;

.field public final synthetic g:Lf1/b1;

.field public final synthetic h:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/b1;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p8, p0, Lc8/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/n;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/n;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/n;->d:Ljava/util/List;

    .line 8
    .line 9
    iput-object p4, p0, Lc8/n;->e:Lf1/b1;

    .line 10
    .line 11
    iput-object p5, p0, Lc8/n;->f:Lf1/b1;

    .line 12
    .line 13
    iput-object p6, p0, Lc8/n;->g:Lf1/b1;

    .line 14
    .line 15
    iput-object p7, p0, Lc8/n;->h:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/n;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Lf1/s;

    .line 14
    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    check-cast v4, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    and-int/lit8 v4, v4, 0x3

    .line 24
    .line 25
    if-ne v4, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    new-instance v4, Lc8/n;

    .line 39
    .line 40
    iget-object v11, v0, Lc8/n;->h:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    iget-object v5, v0, Lc8/n;->b:Lf1/b1;

    .line 44
    .line 45
    iget-object v6, v0, Lc8/n;->c:Lf1/b1;

    .line 46
    .line 47
    iget-object v7, v0, Lc8/n;->d:Ljava/util/List;

    .line 48
    .line 49
    iget-object v8, v0, Lc8/n;->e:Lf1/b1;

    .line 50
    .line 51
    iget-object v9, v0, Lc8/n;->f:Lf1/b1;

    .line 52
    .line 53
    iget-object v10, v0, Lc8/n;->g:Lf1/b1;

    .line 54
    .line 55
    invoke-direct/range {v4 .. v12}, Lc8/n;-><init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lf1/b1;Lf1/b1;Lf1/b1;Ljava/util/ArrayList;I)V

    .line 56
    .line 57
    .line 58
    const v3, -0x7e5e7bd

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/16 v4, 0x30

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x1

    .line 69
    invoke-static {v5, v3, v1, v4, v6}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 70
    .line 71
    .line 72
    const/16 v3, 0x10

    .line 73
    .line 74
    invoke-static {v3, v1}, Lg5/a;->B(ILf1/s;)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    sget-object v4, Lr1/m;->a:Lr1/m;

    .line 79
    .line 80
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v1, v3}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-object v2

    .line 88
    :pswitch_0
    move-object/from16 v15, p1

    .line 89
    .line 90
    check-cast v15, Lf1/s;

    .line 91
    .line 92
    move-object/from16 v1, p2

    .line 93
    .line 94
    check-cast v1, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    and-int/lit8 v1, v1, 0x3

    .line 101
    .line 102
    if-ne v1, v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_3
    :goto_2
    new-instance v1, Lc8/l;

    .line 117
    .line 118
    iget-object v3, v0, Lc8/n;->c:Lf1/b1;

    .line 119
    .line 120
    iget-object v4, v0, Lc8/n;->d:Ljava/util/List;

    .line 121
    .line 122
    iget-object v5, v0, Lc8/n;->b:Lf1/b1;

    .line 123
    .line 124
    iget-object v11, v0, Lc8/n;->e:Lf1/b1;

    .line 125
    .line 126
    invoke-direct {v1, v5, v3, v4, v11}, Lc8/l;-><init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lf1/b1;)V

    .line 127
    .line 128
    .line 129
    const v3, -0x31bac246

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    new-instance v1, La8/m;

    .line 137
    .line 138
    const/4 v3, 0x6

    .line 139
    iget-object v12, v0, Lc8/n;->f:Lf1/b1;

    .line 140
    .line 141
    invoke-direct {v1, v12, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 142
    .line 143
    .line 144
    const v3, -0xb1797c5

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    const v1, 0x4c5de2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object v13, v0, Lc8/n;->g:Lf1/b1;

    .line 162
    .line 163
    sget-object v14, Lf1/n;->a:Lf1/w0;

    .line 164
    .line 165
    if-ne v3, v14, :cond_4

    .line 166
    .line 167
    new-instance v3, La8/f;

    .line 168
    .line 169
    const/16 v6, 0xc

    .line 170
    .line 171
    invoke-direct {v3, v13, v6}, La8/f;-><init>(Lf1/b1;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v15, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    move-object v7, v3

    .line 178
    check-cast v7, Lf9/a;

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    .line 182
    .line 183
    .line 184
    const/16 v9, 0xdb6

    .line 185
    .line 186
    const/4 v10, 0x0

    .line 187
    const/4 v6, 0x0

    .line 188
    move-object v8, v15

    .line 189
    invoke-static/range {v4 .. v10}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 190
    .line 191
    .line 192
    sget v4, Lc8/v;->e:I

    .line 193
    .line 194
    invoke-interface {v13}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-ne v1, v14, :cond_5

    .line 212
    .line 213
    new-instance v1, La8/f;

    .line 214
    .line 215
    const/16 v5, 0xd

    .line 216
    .line 217
    invoke-direct {v1, v13, v5}, La8/f;-><init>(Lf1/b1;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v15, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_5
    move-object v5, v1

    .line 224
    check-cast v5, Lf9/a;

    .line 225
    .line 226
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    .line 227
    .line 228
    .line 229
    new-instance v6, Lc8/m;

    .line 230
    .line 231
    iget-object v7, v0, Lc8/n;->h:Ljava/util/ArrayList;

    .line 232
    .line 233
    move-object v10, v11

    .line 234
    const/4 v11, 0x0

    .line 235
    move-object v8, v12

    .line 236
    move-object v9, v13

    .line 237
    invoke-direct/range {v6 .. v11}, Lc8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    const v1, -0x75773b06

    .line 241
    .line 242
    .line 243
    invoke-static {v1, v6, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    const/16 v16, 0x30

    .line 248
    .line 249
    const/16 v17, 0x3fc

    .line 250
    .line 251
    const-wide/16 v6, 0x0

    .line 252
    .line 253
    const/4 v8, 0x0

    .line 254
    const/4 v9, 0x0

    .line 255
    const/4 v10, 0x0

    .line 256
    const/4 v11, 0x0

    .line 257
    const/4 v12, 0x0

    .line 258
    const/4 v13, 0x0

    .line 259
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 260
    .line 261
    .line 262
    :goto_3
    return-object v2

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
