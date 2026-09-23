.class public final Lo7/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo7/g;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lo7/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Lk2/a0;Lw8/c;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    iget v1, v0, Lo7/g;->a:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    sget-object v11, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    sget-object v12, Lx8/a;->a:Lx8/a;

    .line 15
    .line 16
    iget-object v6, v0, Lo7/g;->b:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v1, Ll2/d;

    .line 22
    .line 23
    invoke-direct {v1}, Ll2/d;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lg9/w;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    check-cast v6, Lz/f0;

    .line 32
    .line 33
    invoke-static {v6}, Lq2/f;->u(Lq2/l;)Lq2/h1;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const-wide/16 v8, 0x0

    .line 38
    .line 39
    invoke-virtual {v7, v8, v9}, Lq2/h1;->s(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    iput-wide v7, v4, Lg9/w;->a:J

    .line 44
    .line 45
    new-instance v7, Lk3/a;

    .line 46
    .line 47
    invoke-direct {v7, v5, v6, v1}, Lk3/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Ll0/u;

    .line 51
    .line 52
    const/16 v9, 0xf

    .line 53
    .line 54
    invoke-direct {v8, v1, v2, v6, v9}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v9, Lz/z;

    .line 58
    .line 59
    invoke-direct {v9, v6, v3}, Lz/z;-><init>(Lz/f0;I)V

    .line 60
    .line 61
    .line 62
    move-object v3, v7

    .line 63
    new-instance v7, Lz/z;

    .line 64
    .line 65
    invoke-direct {v7, v6, v5}, Lz/z;-><init>(Lz/f0;I)V

    .line 66
    .line 67
    .line 68
    move-object v5, v8

    .line 69
    new-instance v8, Ll0/p;

    .line 70
    .line 71
    const/4 v13, 0x7

    .line 72
    invoke-direct {v8, v6, v4, v1, v13}, Ll0/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lz/a0;

    .line 76
    .line 77
    move-object v4, v3

    .line 78
    move-object v3, v6

    .line 79
    move-object v6, v9

    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-direct/range {v1 .. v9}, Lz/a0;-><init>(Lk2/a0;Lz/f0;Lk3/a;Ll0/u;Lz/z;Lz/z;Ll0/p;Lw8/c;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v10}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne v1, v12, :cond_0

    .line 89
    .line 90
    move-object v11, v1

    .line 91
    :cond_0
    return-object v11

    .line 92
    :pswitch_0
    check-cast v6, Lx/x;

    .line 93
    .line 94
    iget-boolean v1, v6, Lx/f;->v:Z

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    iget-object v1, v6, Lx/x;->K:Lf9/a;

    .line 100
    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    new-instance v1, Lx/v;

    .line 104
    .line 105
    invoke-direct {v1, v6, v3}, Lx/v;-><init>(Lx/x;I)V

    .line 106
    .line 107
    .line 108
    move-object v4, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move-object v4, v2

    .line 111
    :goto_0
    new-instance v3, Lx/w;

    .line 112
    .line 113
    invoke-direct {v3, v6, v2}, Lx/w;-><init>(Lx/x;Lw8/c;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lx/v;

    .line 117
    .line 118
    invoke-direct {v1, v6, v5}, Lx/v;-><init>(Lx/x;I)V

    .line 119
    .line 120
    .line 121
    sget-object v5, Lz/d2;->a:Lz/g0;

    .line 122
    .line 123
    move-object v6, v1

    .line 124
    new-instance v1, Lr2/z2;

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x4

    .line 128
    move-object v5, v2

    .line 129
    move-object/from16 v2, p1

    .line 130
    .line 131
    invoke-direct/range {v1 .. v8}, Lr2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v10}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-ne v1, v12, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    move-object v1, v11

    .line 142
    :goto_1
    if-ne v1, v12, :cond_3

    .line 143
    .line 144
    move-object v11, v1

    .line 145
    :cond_3
    return-object v11

    .line 146
    :pswitch_1
    new-instance v1, Lp0/b;

    .line 147
    .line 148
    check-cast v6, Lx/h;

    .line 149
    .line 150
    const/4 v3, 0x2

    .line 151
    invoke-direct {v1, v6, v4, v3}, Lp0/b;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v1, v10}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-ne v1, v12, :cond_4

    .line 159
    .line 160
    move-object v11, v1

    .line 161
    :cond_4
    return-object v11

    .line 162
    :pswitch_2
    new-instance v1, Lp0/b;

    .line 163
    .line 164
    check-cast v6, Lf9/k;

    .line 165
    .line 166
    invoke-direct {v1, v6, v4, v5}, Lp0/b;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 167
    .line 168
    .line 169
    check-cast v2, Lk2/n0;

    .line 170
    .line 171
    invoke-virtual {v2, v1, v10}, Lk2/n0;->A0(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-ne v1, v12, :cond_5

    .line 176
    .line 177
    move-object v11, v1

    .line 178
    :cond_5
    return-object v11

    .line 179
    :pswitch_3
    new-instance v1, Lo7/f;

    .line 180
    .line 181
    check-cast v6, Lt0/a;

    .line 182
    .line 183
    invoke-direct {v1, v6, v4}, Lo7/f;-><init>(Lt0/a;Lw8/c;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v2, v1, v10}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-ne v1, v12, :cond_6

    .line 191
    .line 192
    move-object v11, v1

    .line 193
    :cond_6
    return-object v11

    .line 194
    :pswitch_4
    new-instance v13, Lac/y0;

    .line 195
    .line 196
    move-object v15, v6

    .line 197
    check-cast v15, Lr0/e;

    .line 198
    .line 199
    const/16 v20, 0x0

    .line 200
    .line 201
    const/16 v21, 0x5

    .line 202
    .line 203
    const/4 v14, 0x1

    .line 204
    const-class v16, Lr0/e;

    .line 205
    .line 206
    const-string v17, "tryShowContextMenu"

    .line 207
    .line 208
    const-string v18, "tryShowContextMenu-k-4lQ0M(J)V"

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    invoke-direct/range {v13 .. v21}, Lac/y0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lp0/b;

    .line 216
    .line 217
    invoke-direct {v1, v13, v4, v3}, Lp0/b;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v1, v10}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-ne v1, v12, :cond_7

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_7
    move-object v1, v11

    .line 228
    :goto_2
    if-ne v1, v12, :cond_8

    .line 229
    .line 230
    move-object v11, v1

    .line 231
    :cond_8
    return-object v11

    .line 232
    :pswitch_5
    new-instance v5, Lg9/w;

    .line 233
    .line 234
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 235
    .line 236
    .line 237
    new-instance v4, Lg9/t;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 240
    .line 241
    .line 242
    new-instance v3, Lo7/f;

    .line 243
    .line 244
    check-cast v6, Lf9/a;

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    const/4 v8, 0x0

    .line 248
    invoke-direct/range {v3 .. v8}, Lo7/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 249
    .line 250
    .line 251
    move-object v1, v2

    .line 252
    check-cast v1, Lk2/n0;

    .line 253
    .line 254
    invoke-virtual {v1, v3, v10}, Lk2/n0;->A0(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    if-ne v1, v12, :cond_9

    .line 259
    .line 260
    move-object v11, v1

    .line 261
    :cond_9
    return-object v11

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
