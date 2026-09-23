.class public Ly9/l0;
.super Ly9/u;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public constructor <init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-eqz p3, :cond_3

    .line 5
    .line 6
    if-eqz p4, :cond_2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    if-eqz p6, :cond_0

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move-object v7, p3

    .line 16
    move-object v3, p4

    .line 17
    move v2, p5

    .line 18
    move-object v6, p6

    .line 19
    invoke-direct/range {v1 .. v7}, Ly9/u;-><init>(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 p1, 0x4

    .line 24
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    const/4 p1, 0x3

    .line 29
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_2
    const/4 p1, 0x2

    .line 34
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_3
    const/4 p1, 0x1

    .line 39
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_4
    const/4 p1, 0x0

    .line 44
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public static N0(Ly9/b;Lua/e;ILv9/m0;)Ly9/l0;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    new-instance v1, Ly9/l0;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    sget-object v4, Lw9/g;->a:Lw9/f;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move-object v5, p1

    .line 17
    move v6, p2

    .line 18
    move-object v7, p3

    .line 19
    invoke-direct/range {v1 .. v7}, Ly9/l0;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    const/16 p0, 0x9

    .line 24
    .line 25
    invoke-static {p0}, Ly9/l0;->x(I)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    const/16 p0, 0x8

    .line 30
    .line 31
    invoke-static {p0}, Ly9/l0;->x(I)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    const/4 p0, 0x7

    .line 36
    invoke-static {p0}, Ly9/l0;->x(I)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_3
    const/4 p0, 0x5

    .line 41
    invoke-static {p0}, Ly9/l0;->x(I)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public static synthetic x(I)V
    .locals 12

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const/16 v3, 0x17

    .line 8
    .line 9
    const/16 v4, 0x12

    .line 10
    .line 11
    const/16 v5, 0xd

    .line 12
    .line 13
    if-eq p0, v5, :cond_0

    .line 14
    .line 15
    if-eq p0, v4, :cond_0

    .line 16
    .line 17
    if-eq p0, v3, :cond_0

    .line 18
    .line 19
    if-eq p0, v2, :cond_0

    .line 20
    .line 21
    if-eq p0, v1, :cond_0

    .line 22
    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v6, "@NotNull method %s.%s must not return null"

    .line 29
    .line 30
    :goto_0
    const/4 v7, 0x2

    .line 31
    if-eq p0, v5, :cond_1

    .line 32
    .line 33
    if-eq p0, v4, :cond_1

    .line 34
    .line 35
    if-eq p0, v3, :cond_1

    .line 36
    .line 37
    if-eq p0, v2, :cond_1

    .line 38
    .line 39
    if-eq p0, v1, :cond_1

    .line 40
    .line 41
    if-eq p0, v0, :cond_1

    .line 42
    .line 43
    const/4 v8, 0x3

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v8, 0x2

    .line 46
    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v9, "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl"

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    packed-switch p0, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    :pswitch_0
    const-string v11, "containingDeclaration"

    .line 55
    .line 56
    aput-object v11, v8, v10

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_1
    const-string v11, "newOwner"

    .line 60
    .line 61
    aput-object v11, v8, v10

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :pswitch_2
    const-string v11, "contextReceiverParameters"

    .line 65
    .line 66
    aput-object v11, v8, v10

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :pswitch_3
    aput-object v9, v8, v10

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_4
    const-string v11, "visibility"

    .line 73
    .line 74
    aput-object v11, v8, v10

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_5
    const-string v11, "unsubstitutedValueParameters"

    .line 78
    .line 79
    aput-object v11, v8, v10

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_6
    const-string v11, "typeParameters"

    .line 83
    .line 84
    aput-object v11, v8, v10

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :pswitch_7
    const-string v11, "source"

    .line 88
    .line 89
    aput-object v11, v8, v10

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_8
    const-string v11, "kind"

    .line 93
    .line 94
    aput-object v11, v8, v10

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_9
    const-string v11, "name"

    .line 98
    .line 99
    aput-object v11, v8, v10

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_a
    const-string v11, "annotations"

    .line 103
    .line 104
    aput-object v11, v8, v10

    .line 105
    .line 106
    :goto_2
    const-string v10, "initialize"

    .line 107
    .line 108
    const/4 v11, 0x1

    .line 109
    if-eq p0, v5, :cond_5

    .line 110
    .line 111
    if-eq p0, v4, :cond_5

    .line 112
    .line 113
    if-eq p0, v3, :cond_5

    .line 114
    .line 115
    if-eq p0, v2, :cond_4

    .line 116
    .line 117
    if-eq p0, v1, :cond_3

    .line 118
    .line 119
    if-eq p0, v0, :cond_2

    .line 120
    .line 121
    aput-object v9, v8, v11

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    const-string v9, "newCopyBuilder"

    .line 125
    .line 126
    aput-object v9, v8, v11

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    const-string v9, "copy"

    .line 130
    .line 131
    aput-object v9, v8, v11

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    const-string v9, "getOriginal"

    .line 135
    .line 136
    aput-object v9, v8, v11

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    aput-object v10, v8, v11

    .line 140
    .line 141
    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 142
    .line 143
    .line 144
    const-string v9, "<init>"

    .line 145
    .line 146
    aput-object v9, v8, v7

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :pswitch_b
    const-string v9, "createSubstitutedCopy"

    .line 150
    .line 151
    aput-object v9, v8, v7

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :pswitch_c
    aput-object v10, v8, v7

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :pswitch_d
    const-string v9, "create"

    .line 158
    .line 159
    aput-object v9, v8, v7

    .line 160
    .line 161
    :goto_4
    :pswitch_e
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-eq p0, v5, :cond_6

    .line 166
    .line 167
    if-eq p0, v4, :cond_6

    .line 168
    .line 169
    if-eq p0, v3, :cond_6

    .line 170
    .line 171
    if-eq p0, v2, :cond_6

    .line 172
    .line 173
    if-eq p0, v1, :cond_6

    .line 174
    .line 175
    if-eq p0, v0, :cond_6

    .line 176
    .line 177
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_5
    throw p0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic B0()Lv9/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly9/l0;->O0()Ly9/l0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p6, :cond_1

    .line 7
    .line 8
    new-instance v1, Ly9/l0;

    .line 9
    .line 10
    move-object v3, p4

    .line 11
    check-cast v3, Ly9/l0;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    :goto_0
    move v6, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v2, p3

    .line 18
    move-object v7, p5

    .line 19
    move-object v4, p6

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    invoke-direct/range {v1 .. v7}, Ly9/l0;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    const/16 p1, 0x1b

    .line 31
    .line 32
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_2
    const/16 p1, 0x1a

    .line 37
    .line 38
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    const/16 p1, 0x19

    .line 43
    .line 44
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final bridge synthetic H0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Ly9/l0;->P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final O0()Ly9/l0;
    .locals 1

    .line 1
    invoke-super {p0}, Ly9/u;->a()Lv9/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ly9/l0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/16 v0, 0x18

    .line 11
    .line 12
    invoke-static {v0}, Ly9/l0;->x(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    throw v0
.end method

.method public final P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    if-eqz p4, :cond_2

    .line 5
    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    if-eqz p8, :cond_0

    .line 9
    .line 10
    const/4 v10, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move-object/from16 v6, p5

    .line 17
    .line 18
    move-object/from16 v7, p6

    .line 19
    .line 20
    move-object/from16 v8, p7

    .line 21
    .line 22
    move-object/from16 v9, p8

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v10}, Ly9/l0;->Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const/16 p1, 0x11

    .line 30
    .line 31
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    const/16 p1, 0x10

    .line 36
    .line 37
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    const/16 p1, 0xf

    .line 42
    .line 43
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    const/16 p1, 0xe

    .line 48
    .line 49
    invoke-static {p1}, Ly9/l0;->x(I)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_4

    .line 3
    .line 4
    if-eqz p4, :cond_3

    .line 5
    .line 6
    if-eqz p5, :cond_2

    .line 7
    .line 8
    if-eqz p8, :cond_1

    .line 9
    .line 10
    invoke-super/range {p0 .. p8}, Ly9/u;->H0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)V

    .line 11
    .line 12
    .line 13
    move-object p1, p0

    .line 14
    if-eqz p9, :cond_0

    .line 15
    .line 16
    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {p2, p9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p1, Ly9/u;->C:Ljava/util/Map;

    .line 28
    .line 29
    :cond_0
    return-object p1

    .line 30
    :cond_1
    move-object p1, p0

    .line 31
    const/16 p2, 0x16

    .line 32
    .line 33
    invoke-static {p2}, Ly9/l0;->x(I)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    move-object p1, p0

    .line 38
    const/16 p2, 0x15

    .line 39
    .line 40
    invoke-static {p2}, Ly9/l0;->x(I)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_3
    move-object p1, p0

    .line 45
    const/16 p2, 0x14

    .line 46
    .line 47
    invoke-static {p2}, Ly9/l0;->x(I)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_4
    move-object p1, p0

    .line 52
    const/16 p2, 0x13

    .line 53
    .line 54
    invoke-static {p2}, Ly9/l0;->x(I)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final bridge synthetic a()Lv9/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly9/l0;->O0()Ly9/l0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/c;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ly9/l0;->O0()Ly9/l0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/k;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ly9/l0;->O0()Ly9/l0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/t;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ly9/l0;->O0()Ly9/l0;

    move-result-object v0

    return-object v0
.end method

.method public r0()Lv9/s;
    .locals 1

    .line 1
    sget-object v0, Llb/s0;->b:Llb/s0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly9/u;->I0(Llb/s0;)Ly9/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
