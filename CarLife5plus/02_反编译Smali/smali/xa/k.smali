.class public abstract Lxa/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lfc/s;

.field public static final b:Lfc/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfc/s;

    .line 2
    .line 3
    const-string v1, "ResolutionAnchorProvider"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lxa/k;->a:Lfc/s;

    .line 10
    .line 11
    new-instance v0, Lfc/s;

    .line 12
    .line 13
    const-string v1, "StdlibClassFinder"

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lxa/k;->b:Lfc/s;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(I)V
    .locals 11

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    if-eq p0, v2, :cond_0

    .line 8
    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    .line 17
    .line 18
    :goto_0
    const/4 v4, 0x2

    .line 19
    if-eq p0, v2, :cond_1

    .line 20
    .line 21
    if-eq p0, v1, :cond_1

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v5, 0x2

    .line 28
    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    const-string v8, "propertyDescriptor"

    .line 37
    .line 38
    aput-object v8, v5, v7

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :pswitch_1
    const-string v8, "owner"

    .line 42
    .line 43
    aput-object v8, v5, v7

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :pswitch_2
    const-string v8, "descriptor"

    .line 47
    .line 48
    aput-object v8, v5, v7

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :pswitch_3
    const-string v8, "enumClass"

    .line 52
    .line 53
    aput-object v8, v5, v7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :pswitch_4
    const-string v8, "source"

    .line 57
    .line 58
    aput-object v8, v5, v7

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :pswitch_5
    const-string v8, "containingClass"

    .line 62
    .line 63
    aput-object v8, v5, v7

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_6
    aput-object v6, v5, v7

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :pswitch_7
    const-string v8, "visibility"

    .line 70
    .line 71
    aput-object v8, v5, v7

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_8
    const-string v8, "sourceElement"

    .line 75
    .line 76
    aput-object v8, v5, v7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :pswitch_9
    const-string v8, "parameterAnnotations"

    .line 80
    .line 81
    aput-object v8, v5, v7

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :pswitch_a
    const-string v8, "annotations"

    .line 85
    .line 86
    aput-object v8, v5, v7

    .line 87
    .line 88
    :goto_2
    const-string v7, "createSetter"

    .line 89
    .line 90
    const-string v8, "createEnumValuesMethod"

    .line 91
    .line 92
    const-string v9, "createEnumValueOfMethod"

    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    if-eq p0, v2, :cond_4

    .line 96
    .line 97
    if-eq p0, v1, :cond_3

    .line 98
    .line 99
    if-eq p0, v0, :cond_2

    .line 100
    .line 101
    aput-object v6, v5, v10

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    aput-object v9, v5, v10

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    aput-object v8, v5, v10

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    aput-object v7, v5, v10

    .line 111
    .line 112
    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 113
    .line 114
    .line 115
    const-string v6, "createDefaultSetter"

    .line 116
    .line 117
    aput-object v6, v5, v4

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :pswitch_b
    const-string v6, "createContextReceiverParameterForClass"

    .line 121
    .line 122
    aput-object v6, v5, v4

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :pswitch_c
    const-string v6, "createContextReceiverParameterForCallable"

    .line 126
    .line 127
    aput-object v6, v5, v4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :pswitch_d
    const-string v6, "createExtensionReceiverParameterForCallable"

    .line 131
    .line 132
    aput-object v6, v5, v4

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :pswitch_e
    const-string v6, "isEnumSpecialMethod"

    .line 136
    .line 137
    aput-object v6, v5, v4

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :pswitch_f
    const-string v6, "isEnumValueOfMethod"

    .line 141
    .line 142
    aput-object v6, v5, v4

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :pswitch_10
    const-string v6, "isEnumValuesMethod"

    .line 146
    .line 147
    aput-object v6, v5, v4

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :pswitch_11
    const-string v6, "createEnumEntriesProperty"

    .line 151
    .line 152
    aput-object v6, v5, v4

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :pswitch_12
    aput-object v9, v5, v4

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :pswitch_13
    aput-object v8, v5, v4

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :pswitch_14
    const-string v6, "createPrimaryConstructorForObject"

    .line 162
    .line 163
    aput-object v6, v5, v4

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :pswitch_15
    const-string v6, "createGetter"

    .line 167
    .line 168
    aput-object v6, v5, v4

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :pswitch_16
    const-string v6, "createDefaultGetter"

    .line 172
    .line 173
    aput-object v6, v5, v4

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :pswitch_17
    aput-object v7, v5, v4

    .line 177
    .line 178
    :goto_4
    :pswitch_18
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    if-eq p0, v2, :cond_5

    .line 183
    .line 184
    if-eq p0, v1, :cond_5

    .line 185
    .line 186
    if-eq p0, v0, :cond_5

    .line 187
    .line 188
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_5
    throw p0

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
    .end packed-switch

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
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_18
        :pswitch_12
        :pswitch_18
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static final c(Lv9/e;Ljava/util/LinkedHashSet;Leb/o;Z)V
    .locals 5

    .line 1
    sget-object v0, Leb/f;->o:Leb/f;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {p2, v0, v1}, Lm9/e0;->f0(Leb/q;Leb/f;I)Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_7

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lv9/k;

    .line 23
    .line 24
    instance-of v2, v1, Lv9/e;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Lv9/e;

    .line 29
    .line 30
    invoke-interface {v1}, Lv9/w;->H()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-interface {v1}, Lv9/k;->getName()Lua/e;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "getName(...)"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lda/b;->d:Lda/b;

    .line 46
    .line 47
    invoke-interface {p2, v1, v2}, Leb/q;->e(Lua/e;Lda/b;)Lv9/h;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    instance-of v2, v1, Lv9/e;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    check-cast v1, Lv9/e;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    instance-of v2, v1, Lv9/p0;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    check-cast v1, Lv9/p0;

    .line 63
    .line 64
    check-cast v1, Ljb/u;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljb/u;->C0()Lv9/e;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v1, 0x0

    .line 72
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    sget v2, Lxa/d;->a:I

    .line 76
    .line 77
    invoke-interface {v1}, Lv9/h;->t()Llb/k0;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Llb/k0;->l()Ljava/util/Collection;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Llb/w;

    .line 100
    .line 101
    invoke-interface {p0}, Lv9/e;->a()Lv9/e;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v3, v4}, Lxa/d;->p(Llb/w;Lv9/k;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_6
    if-eqz p3, :cond_0

    .line 115
    .line 116
    invoke-interface {v1}, Lv9/e;->m0()Leb/o;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "getUnsubstitutedInnerClassesScope(...)"

    .line 121
    .line 122
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1, v1, p3}, Lxa/k;->c(Lv9/e;Ljava/util/LinkedHashSet;Leb/o;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_7
    return-void
.end method

.method public static e(Lv9/b;Llb/w;Lua/e;Lw9/h;I)Ly9/v;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ly9/v;

    .line 8
    .line 9
    new-instance v1, Lfb/b;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, p2}, Lfb/b;-><init>(Lv9/b;Llb/w;Lua/e;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lua/f;->a:Lg9/x;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lua/f;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 p2, 0x5f

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p0, v1, p3, p1}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;Lua/e;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    const/16 p0, 0x21

    .line 47
    .line 48
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public static f(Lv9/k0;Lw9/h;)Ly9/j0;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {p0, p1, v0, v1}, Lxa/k;->l(Lv9/k0;Lw9/h;ZLv9/m0;)Ly9/j0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static g(Lv9/k0;Lw9/h;)Ly9/k0;
    .locals 6

    .line 1
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    if-eqz v5, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lv9/w;->d()Lea/o;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sget-object v2, Lw9/g;->a:Lw9/f;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    invoke-static/range {v0 .. v5}, Lxa/k;->m(Lv9/k0;Lw9/h;Lw9/h;ZLea/o;Lv9/m0;)Ly9/k0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x6

    .line 22
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public static h(Ly9/b;)Ly9/i0;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-static {p0}, Lxa/d;->d(Lv9/k;)Lv9/y;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "<this>"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lxa/k;->b:Lfc/s;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Lv9/y;->v0(Lfc/s;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lxa/l;

    .line 20
    .line 21
    sget-object v2, Lua/h;->w:Lua/b;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    sget-object v4, Lv9/o;->e:Lea/o;

    .line 31
    .line 32
    sget-object v6, Ls9/p;->b:Lua/e;

    .line 33
    .line 34
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    sget-object v3, Lv9/x;->b:Lv9/x;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v7, 0x4

    .line 42
    move-object v2, p0

    .line 43
    invoke-static/range {v2 .. v8}, Ly9/i0;->D0(Lv9/k;Lv9/x;Lea/o;ZLua/e;ILv9/m0;)Ly9/i0;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    new-instance v2, Ly9/j0;

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    move-object v6, v4

    .line 55
    sget-object v4, Lw9/g;->a:Lw9/f;

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v5, v3

    .line 61
    move-object v3, v9

    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-direct/range {v2 .. v12}, Ly9/j0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/j0;Lv9/m0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2, v0, v0, v0}, Ly9/i0;->G0(Ly9/j0;Ly9/k0;Ly9/r;Ly9/r;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Llb/h0;->b:Lu0/j;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v0, Llb/h0;->c:Llb/h0;

    .line 75
    .line 76
    invoke-interface {v1}, Lv9/h;->t()Llb/k0;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v4, Llb/f0;

    .line 81
    .line 82
    invoke-virtual {p0}, Ly9/b;->n()Llb/a0;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v4, p0}, Llb/f0;-><init>(Llb/w;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v4, "attributes"

    .line 94
    .line 95
    invoke-static {v0, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v4, "constructor"

    .line 99
    .line 100
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v4, "arguments"

    .line 104
    .line 105
    invoke-static {p0, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    invoke-static {p0, v0, v1, v4}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    move-object v14, v11

    .line 118
    move-object v9, v3

    .line 119
    invoke-virtual/range {v9 .. v14}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ly9/i0;->p()Llb/w;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v2, p0}, Ly9/j0;->F0(Llb/w;)V

    .line 127
    .line 128
    .line 129
    return-object v3

    .line 130
    :cond_1
    const/16 p0, 0x1a

    .line 131
    .line 132
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public static i(Ly9/b;)Ly9/l0;
    .locals 15

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ls9/p;->c:Lua/e;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p0, v0, v1, v2}, Ly9/l0;->N0(Ly9/b;Lua/e;ILv9/m0;)Ly9/l0;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object v4, v3

    .line 15
    new-instance v3, Ly9/r0;

    .line 16
    .line 17
    const-string v0, "value"

    .line 18
    .line 19
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    invoke-static {p0}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ls9/i;->v()Llb/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const/4 v13, 0x0

    .line 32
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    sget-object v7, Lw9/g;->a:Lw9/f;

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    invoke-direct/range {v3 .. v14}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 44
    .line 45
    .line 46
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {p0}, Ly9/b;->n()Llb/a0;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    sget-object v10, Lv9/x;->b:Lv9/x;

    .line 57
    .line 58
    sget-object v11, Lv9/o;->e:Lea/o;

    .line 59
    .line 60
    move-object v3, v4

    .line 61
    const/4 v4, 0x0

    .line 62
    move-object v7, v6

    .line 63
    invoke-virtual/range {v3 .. v11}, Ly9/l0;->P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_0
    const/16 p0, 0x18

    .line 69
    .line 70
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public static j(Ly9/b;)Ly9/l0;
    .locals 12

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ls9/p;->a:Lua/e;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {p0}, Lv9/l;->getSource()Lv9/m0;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p0, v0, v1, v2}, Ly9/l0;->N0(Ly9/b;Lua/e;ILv9/m0;)Ly9/l0;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {p0}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ly9/b;->n()Llb/a0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ls9/i;->h(Llb/x0;)Llb/a0;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    sget-object v10, Lv9/x;->b:Lv9/x;

    .line 29
    .line 30
    sget-object v11, Lv9/o;->e:Lea/o;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v7, v6

    .line 35
    move-object v8, v6

    .line 36
    invoke-virtual/range {v3 .. v11}, Ly9/l0;->P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    const/16 p0, 0x16

    .line 42
    .line 43
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    throw p0
.end method

.method public static k(Lv9/b;Llb/w;Lw9/h;)Ly9/v;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ly9/v;

    .line 6
    .line 7
    new-instance v1, Lfb/c;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lfb/c;-><init>(Lv9/b;Llb/w;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1, p2}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static l(Lv9/k0;Lw9/h;ZLv9/m0;)Ly9/j0;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    new-instance v1, Ly9/j0;

    .line 7
    .line 8
    invoke-interface {p0}, Lv9/w;->h()Lv9/x;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-interface {p0}, Lv9/w;->d()Lea/o;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move v6, p2

    .line 23
    move-object v11, p3

    .line 24
    invoke-direct/range {v1 .. v11}, Ly9/j0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/j0;Lv9/m0;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    const/16 p0, 0x13

    .line 29
    .line 30
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    const/16 p0, 0x12

    .line 35
    .line 36
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public static m(Lv9/k0;Lw9/h;Lw9/h;ZLea/o;Lv9/m0;)Ly9/k0;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    new-instance v1, Ly9/k0;

    .line 11
    .line 12
    invoke-interface {p0}, Lv9/w;->h()Lv9/x;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move v6, p3

    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    move-object/from16 v11, p5

    .line 26
    .line 27
    invoke-direct/range {v1 .. v11}, Ly9/k0;-><init>(Lv9/k0;Lw9/h;Lv9/x;Lea/o;ZZZILy9/k0;Lv9/m0;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lv9/s0;->getType()Llb/w;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v1, p0, p2}, Ly9/k0;->E0(Ly9/k0;Llb/w;Lw9/h;)Ly9/r0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, v1, Ly9/k0;->m:Ly9/r0;

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    const/16 p0, 0xb

    .line 42
    .line 43
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    const/16 p0, 0xa

    .line 48
    .line 49
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    const/16 p0, 0x9

    .line 54
    .line 55
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_3
    const/16 p0, 0x8

    .line 60
    .line 61
    invoke-static {p0}, Lxa/k;->a(I)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public static n(Lv9/t;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lv9/c;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget v0, Lxa/d;->a:I

    .line 13
    .line 14
    sget-object v0, Lv9/f;->c:Lv9/f;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static final o(Ljava/util/Collection;Lf9/k;)Ljava/util/Collection;
    .locals 8

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    sget p0, Lub/h;->c:I

    .line 20
    .line 21
    invoke-static {}, Lub/k;->e()Lub/h;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_5

    .line 30
    .line 31
    invoke-static {v0}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget v3, Lub/h;->c:I

    .line 36
    .line 37
    invoke-static {}, Lub/k;->e()Lub/h;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v4, Lba/j;

    .line 42
    .line 43
    const/16 v5, 0x18

    .line 44
    .line 45
    invoke-direct {v4, v5, v3}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v0, p1, v4}, Lxa/j;->g(Ljava/lang/Object;Ljava/util/LinkedList;Lf9/k;Lf9/k;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-static {v2}, Ls8/p;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "single(...)"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v2, p1}, Lxa/j;->s(Ljava/util/Collection;Lf9/k;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-interface {p1, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lv9/b;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_3

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v6}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Lv9/b;

    .line 109
    .line 110
    invoke-static {v5, v7}, Lxa/j;->k(Lv9/b;Lv9/b;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v7, :cond_2

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {p0, v4}, Lub/h;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    return-object p0
.end method


# virtual methods
.method public abstract b(Lv9/c;)V
.end method

.method public abstract d(Lv9/c;Lv9/c;)V
.end method

.method public p(Lv9/c;Ljava/util/Collection;)V
    .locals 1

    .line 1
    const-string v0, "member"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lv9/c;->l0(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
