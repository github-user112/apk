.class public final Lc8/t0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc8/t0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/t0;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/t0;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc8/t0;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lf1/s;

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    and-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const v2, -0x615d173a

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lf1/s;->W(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lf1/s;->K()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 47
    .line 48
    if-ne v2, v3, :cond_2

    .line 49
    .line 50
    new-instance v2, La8/n0;

    .line 51
    .line 52
    const/16 v3, 0x18

    .line 53
    .line 54
    iget-object v4, v0, Lc8/t0;->b:Lf1/b1;

    .line 55
    .line 56
    iget-object v5, v0, Lc8/t0;->c:Lf1/b1;

    .line 57
    .line 58
    invoke-direct {v2, v3, v4, v5}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    check-cast v2, Lf9/a;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v1, v3}, Lf1/s;->p(Z)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x36

    .line 71
    .line 72
    const-string v4, "\u6d4b\u8bd5"

    .line 73
    .line 74
    invoke-static {v4, v2, v1, v3}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 78
    .line 79
    return-object v1

    .line 80
    :pswitch_0
    move-object/from16 v9, p1

    .line 81
    .line 82
    check-cast v9, Lf1/s;

    .line 83
    .line 84
    move-object/from16 v1, p2

    .line 85
    .line 86
    check-cast v1, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    and-int/lit8 v1, v1, 0x3

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    if-ne v1, v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 109
    .line 110
    const/16 v1, 0xa

    .line 111
    .line 112
    sget-object v3, Lz7/r1;->d:Lz8/b;

    .line 113
    .line 114
    invoke-static {v3, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lz7/r1;

    .line 136
    .line 137
    new-instance v10, Lj8/k0;

    .line 138
    .line 139
    iget-object v4, v3, Lz7/r1;->a:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v3, v3, Lz7/r1;->b:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v4, ": "

    .line 152
    .line 153
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    new-instance v12, Lj8/n0;

    .line 164
    .line 165
    invoke-direct {v12, v3}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v15, 0x0

    .line 169
    const/16 v16, 0x1c

    .line 170
    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    invoke-direct/range {v10 .. v16}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    const v1, -0x615d173a

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v1}, Lf1/s;->W(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 191
    .line 192
    if-ne v1, v3, :cond_6

    .line 193
    .line 194
    new-instance v1, Lc8/s0;

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    iget-object v4, v0, Lc8/t0;->b:Lf1/b1;

    .line 198
    .line 199
    iget-object v5, v0, Lc8/t0;->c:Lf1/b1;

    .line 200
    .line 201
    invoke-direct {v1, v4, v5, v3}, Lc8/s0;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_6
    move-object v8, v1

    .line 208
    check-cast v8, Lf9/k;

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-virtual {v9, v1}, Lf1/s;->p(Z)V

    .line 212
    .line 213
    .line 214
    const v10, 0x180180

    .line 215
    .line 216
    .line 217
    const/16 v11, 0x3a

    .line 218
    .line 219
    const/4 v3, 0x0

    .line 220
    const/4 v4, 0x1

    .line 221
    const/4 v5, 0x0

    .line 222
    const/4 v6, 0x0

    .line 223
    const/4 v7, 0x0

    .line 224
    invoke-static/range {v2 .. v11}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 225
    .line 226
    .line 227
    :goto_4
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 228
    .line 229
    return-object v1

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
