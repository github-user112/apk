.class public final Ly9/p0;
.super Ly9/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:Z


# direct methods
.method public constructor <init>(Lv9/k;Lw9/h;ZLlb/y0;Lua/e;ILkb/o;)V
    .locals 10

    .line 1
    sget-object v8, Lv9/n0;->c:Lv9/n0;

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    if-eqz p4, :cond_2

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    if-eqz p7, :cond_0

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move v6, p3

    .line 18
    move-object v5, p4

    .line 19
    move-object v4, p5

    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    move-object/from16 v1, p7

    .line 23
    .line 24
    invoke-direct/range {v0 .. v8}, Ly9/h;-><init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Llb/y0;ZILv9/n0;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Ly9/p0;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Ly9/p0;->l:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/16 p1, 0x19

    .line 40
    .line 41
    invoke-static {p1}, Ly9/p0;->x(I)V

    .line 42
    .line 43
    .line 44
    throw v9

    .line 45
    :cond_1
    const/16 p1, 0x16

    .line 46
    .line 47
    invoke-static {p1}, Ly9/p0;->x(I)V

    .line 48
    .line 49
    .line 50
    throw v9

    .line 51
    :cond_2
    const/16 p1, 0x15

    .line 52
    .line 53
    invoke-static {p1}, Ly9/p0;->x(I)V

    .line 54
    .line 55
    .line 56
    throw v9

    .line 57
    :cond_3
    const/16 p1, 0x14

    .line 58
    .line 59
    invoke-static {p1}, Ly9/p0;->x(I)V

    .line 60
    .line 61
    .line 62
    throw v9

    .line 63
    :cond_4
    const/16 p1, 0x13

    .line 64
    .line 65
    invoke-static {p1}, Ly9/p0;->x(I)V

    .line 66
    .line 67
    .line 68
    throw v9
.end method

.method public static E0(Lv9/k;Lw9/h;ZLlb/y0;Lua/e;ILkb/o;)Ly9/p0;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    if-eqz p6, :cond_0

    .line 11
    .line 12
    new-instance v1, Ly9/p0;

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    move v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move-object v6, p4

    .line 19
    move v7, p5

    .line 20
    move-object v8, p6

    .line 21
    invoke-direct/range {v1 .. v8}, Ly9/p0;-><init>(Lv9/k;Lw9/h;ZLlb/y0;Lua/e;ILkb/o;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    const/16 p0, 0xb

    .line 26
    .line 27
    invoke-static {p0}, Ly9/p0;->x(I)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    const/16 p0, 0x9

    .line 32
    .line 33
    invoke-static {p0}, Ly9/p0;->x(I)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    const/16 p0, 0x8

    .line 38
    .line 39
    invoke-static {p0}, Ly9/p0;->x(I)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_3
    const/4 p0, 0x7

    .line 44
    invoke-static {p0}, Ly9/p0;->x(I)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_4
    const/4 p0, 0x6

    .line 49
    invoke-static {p0}, Ly9/p0;->x(I)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public static F0(Ly9/b;Llb/y0;Lua/e;ILkb/o;)Ly9/p0;
    .locals 7

    .line 1
    if-eqz p4, :cond_3

    .line 2
    .line 3
    sget-object v1, Lw9/g;->a:Lw9/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-static/range {v0 .. v6}, Ly9/p0;->E0(Lv9/k;Lw9/h;ZLlb/y0;Lua/e;ILkb/o;)Ly9/p0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ls9/i;->n()Llb/a0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-boolean p2, p0, Ly9/p0;->l:Z

    .line 24
    .line 25
    const-string p3, "Type parameter descriptor is already initialized: "

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    invoke-static {p1}, Llb/c;->j(Llb/w;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Ly9/p0;->k:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-boolean p1, p0, Ly9/p0;->l:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Ly9/p0;->l:Z

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ly9/p0;->G0()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ly9/p0;->G0()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    const/4 p0, 0x4

    .line 94
    invoke-static {p0}, Ly9/p0;->x(I)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    throw p0
.end method

.method public static synthetic x(I)V
    .locals 8

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq p0, v1, :cond_0

    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    .line 12
    .line 13
    :goto_0
    const/4 v3, 0x2

    .line 14
    if-eq p0, v1, :cond_1

    .line 15
    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v4, 0x2

    .line 21
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    packed-switch p0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    const-string v7, "containingDeclaration"

    .line 30
    .line 31
    aput-object v7, v4, v6

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_1
    const-string v7, "type"

    .line 35
    .line 36
    aput-object v7, v4, v6

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :pswitch_2
    const-string v7, "bound"

    .line 40
    .line 41
    aput-object v7, v4, v6

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :pswitch_3
    const-string v7, "supertypeLoopsChecker"

    .line 45
    .line 46
    aput-object v7, v4, v6

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :pswitch_4
    const-string v7, "supertypeLoopsResolver"

    .line 50
    .line 51
    aput-object v7, v4, v6

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :pswitch_5
    const-string v7, "source"

    .line 55
    .line 56
    aput-object v7, v4, v6

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_6
    aput-object v5, v4, v6

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :pswitch_7
    const-string v7, "storageManager"

    .line 63
    .line 64
    aput-object v7, v4, v6

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :pswitch_8
    const-string v7, "name"

    .line 68
    .line 69
    aput-object v7, v4, v6

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_9
    const-string v7, "variance"

    .line 73
    .line 74
    aput-object v7, v4, v6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_a
    const-string v7, "annotations"

    .line 78
    .line 79
    aput-object v7, v4, v6

    .line 80
    .line 81
    :goto_2
    const-string v6, "createWithDefaultBound"

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    if-eq p0, v1, :cond_3

    .line 85
    .line 86
    if-eq p0, v0, :cond_2

    .line 87
    .line 88
    aput-object v5, v4, v7

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    const-string v5, "resolveUpperBounds"

    .line 92
    .line 93
    aput-object v5, v4, v7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    aput-object v6, v4, v7

    .line 97
    .line 98
    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 99
    .line 100
    .line 101
    aput-object v6, v4, v3

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :pswitch_b
    const-string v5, "reportSupertypeLoopError"

    .line 105
    .line 106
    aput-object v5, v4, v3

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :pswitch_c
    const-string v5, "addUpperBound"

    .line 110
    .line 111
    aput-object v5, v4, v3

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :pswitch_d
    const-string v5, "<init>"

    .line 115
    .line 116
    aput-object v5, v4, v3

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :pswitch_e
    const-string v5, "createForFurtherModification"

    .line 120
    .line 121
    aput-object v5, v4, v3

    .line 122
    .line 123
    :goto_4
    :pswitch_f
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eq p0, v1, :cond_4

    .line 128
    .line 129
    if-eq p0, v0, :cond_4

    .line 130
    .line 131
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_5
    throw p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
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
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ly9/p0;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ly9/p0;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/16 v0, 0x1c

    .line 11
    .line 12
    invoke-static {v0}, Ly9/p0;->x(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    throw v0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Type parameter descriptor is not initialized: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ly9/p0;->G0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final G0()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " declared in "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ly9/n;->k()Lv9/k;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
