.class public final La8/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lp1/p;

.field public final synthetic f:Lf1/b1;

.field public final synthetic g:Lf1/b1;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lp1/p;Lf1/b1;Lf1/b1;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p8, p0, La8/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/n;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p2, p0, La8/n;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, La8/n;->d:Ljava/util/List;

    .line 8
    .line 9
    iput-object p4, p0, La8/n;->e:Lp1/p;

    .line 10
    .line 11
    iput-object p5, p0, La8/n;->f:Lf1/b1;

    .line 12
    .line 13
    iput-object p6, p0, La8/n;->g:Lf1/b1;

    .line 14
    .line 15
    iput-object p7, p0, La8/n;->h:Ljava/util/List;

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
    iget v1, v0, La8/n;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lf1/s;

    .line 15
    .line 16
    move-object/from16 v5, p2

    .line 17
    .line 18
    check-cast v5, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    and-int/lit8 v5, v5, 0x3

    .line 25
    .line 26
    if-ne v5, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    new-instance v5, La8/n;

    .line 40
    .line 41
    iget-object v12, v0, La8/n;->h:Ljava/util/List;

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    iget-object v6, v0, La8/n;->b:Lf1/b1;

    .line 45
    .line 46
    iget-object v7, v0, La8/n;->c:Lf1/b1;

    .line 47
    .line 48
    iget-object v8, v0, La8/n;->d:Ljava/util/List;

    .line 49
    .line 50
    iget-object v9, v0, La8/n;->e:Lp1/p;

    .line 51
    .line 52
    iget-object v10, v0, La8/n;->f:Lf1/b1;

    .line 53
    .line 54
    iget-object v11, v0, La8/n;->g:Lf1/b1;

    .line 55
    .line 56
    invoke-direct/range {v5 .. v13}, La8/n;-><init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lp1/p;Lf1/b1;Lf1/b1;Ljava/util/List;I)V

    .line 57
    .line 58
    .line 59
    const v4, -0x160dd820

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/16 v5, 0x30

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-static {v6, v4, v1, v5, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

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
    if-ne v1, v4, :cond_3

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
    new-instance v1, La8/l;

    .line 117
    .line 118
    iget-object v5, v0, La8/n;->c:Lf1/b1;

    .line 119
    .line 120
    iget-object v6, v0, La8/n;->d:Ljava/util/List;

    .line 121
    .line 122
    iget-object v7, v0, La8/n;->b:Lf1/b1;

    .line 123
    .line 124
    iget-object v12, v0, La8/n;->e:Lp1/p;

    .line 125
    .line 126
    invoke-direct {v1, v7, v5, v6, v12}, La8/l;-><init>(Lf1/b1;Lf1/b1;Ljava/util/List;Lp1/p;)V

    .line 127
    .line 128
    .line 129
    const v5, 0x514887d7

    .line 130
    .line 131
    .line 132
    invoke-static {v5, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    new-instance v1, La8/m;

    .line 137
    .line 138
    iget-object v13, v0, La8/n;->f:Lf1/b1;

    .line 139
    .line 140
    const/4 v14, 0x0

    .line 141
    invoke-direct {v1, v13, v14}, La8/m;-><init>(Lf1/b1;I)V

    .line 142
    .line 143
    .line 144
    const v6, -0x42815428

    .line 145
    .line 146
    .line 147
    invoke-static {v6, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 148
    .line 149
    .line 150
    move-result-object v6

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
    move-result-object v7

    .line 161
    move-object/from16 v16, v12

    .line 162
    .line 163
    iget-object v12, v0, La8/n;->g:Lf1/b1;

    .line 164
    .line 165
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 166
    .line 167
    if-ne v7, v8, :cond_4

    .line 168
    .line 169
    new-instance v7, La8/f;

    .line 170
    .line 171
    invoke-direct {v7, v12, v3}, La8/f;-><init>(Lf1/b1;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v15, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    check-cast v7, Lf9/a;

    .line 178
    .line 179
    invoke-virtual {v15, v14}, Lf1/s;->p(Z)V

    .line 180
    .line 181
    .line 182
    const/16 v10, 0xdb6

    .line 183
    .line 184
    const/4 v11, 0x0

    .line 185
    move-object v3, v8

    .line 186
    move-object v8, v7

    .line 187
    const/4 v7, 0x0

    .line 188
    move-object v9, v15

    .line 189
    invoke-static/range {v5 .. v11}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 190
    .line 191
    .line 192
    sget-object v5, La8/t;->a:La8/t;

    .line 193
    .line 194
    invoke-interface {v12}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v5

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
    if-ne v1, v3, :cond_5

    .line 212
    .line 213
    new-instance v1, La8/f;

    .line 214
    .line 215
    invoke-direct {v1, v12, v4}, La8/f;-><init>(Lf1/b1;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v15, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    check-cast v1, Lf9/a;

    .line 222
    .line 223
    invoke-virtual {v15, v14}, Lf1/s;->p(Z)V

    .line 224
    .line 225
    .line 226
    new-instance v8, La8/l;

    .line 227
    .line 228
    iget-object v9, v0, La8/n;->h:Ljava/util/List;

    .line 229
    .line 230
    move-object v10, v13

    .line 231
    const/4 v13, 0x2

    .line 232
    move-object/from16 v11, v16

    .line 233
    .line 234
    invoke-direct/range {v8 .. v13}, La8/l;-><init>(Ljava/util/List;Lf1/b1;Lp1/p;Lf1/b1;I)V

    .line 235
    .line 236
    .line 237
    const v3, 0x6b2cef17

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v8, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    const/16 v16, 0x30

    .line 245
    .line 246
    const/16 v17, 0x3fc

    .line 247
    .line 248
    const-wide/16 v6, 0x0

    .line 249
    .line 250
    const/4 v8, 0x0

    .line 251
    const/4 v9, 0x0

    .line 252
    const/4 v10, 0x0

    .line 253
    const/4 v11, 0x0

    .line 254
    const/4 v12, 0x0

    .line 255
    const/4 v13, 0x0

    .line 256
    move v4, v5

    .line 257
    move-object v5, v1

    .line 258
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 259
    .line 260
    .line 261
    :goto_3
    return-object v2

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
