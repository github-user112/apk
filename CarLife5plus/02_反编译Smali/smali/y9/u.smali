.class public abstract Ly9/u;
.super Ly9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/t;


# instance fields
.field public final A:I

.field public B:Lv9/t;

.field public C:Ljava/util/Map;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Llb/w;

.field public h:Ljava/util/List;

.field public i:Ly9/v;

.field public j:Ly9/v;

.field public k:Lv9/x;

.field public l:Lea/o;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Ljava/util/Collection;

.field public volatile y:La8/f0;

.field public final z:Lv9/t;


# direct methods
.method public constructor <init>(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_5

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p6, :cond_4

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p3, p6, p2, p5}, Ly9/n;-><init>(Lv9/k;Lw9/h;Lua/e;Lv9/m0;)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lv9/o;->i:Lea/o;

    .line 18
    .line 19
    iput-object p2, p0, Ly9/u;->l:Lea/o;

    .line 20
    .line 21
    iput-boolean v1, p0, Ly9/u;->m:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Ly9/u;->n:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Ly9/u;->o:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Ly9/u;->p:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Ly9/u;->q:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Ly9/u;->r:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Ly9/u;->s:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Ly9/u;->t:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Ly9/u;->u:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Ly9/u;->v:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Ly9/u;->w:Z

    .line 42
    .line 43
    iput-object v0, p0, Ly9/u;->x:Ljava/util/Collection;

    .line 44
    .line 45
    iput-object v0, p0, Ly9/u;->y:La8/f0;

    .line 46
    .line 47
    iput-object v0, p0, Ly9/u;->B:Lv9/t;

    .line 48
    .line 49
    iput-object v0, p0, Ly9/u;->C:Ljava/util/Map;

    .line 50
    .line 51
    if-nez p4, :cond_0

    .line 52
    .line 53
    move-object p4, p0

    .line 54
    :cond_0
    iput-object p4, p0, Ly9/u;->z:Lv9/t;

    .line 55
    .line 56
    iput p1, p0, Ly9/u;->A:I

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const/4 p1, 0x4

    .line 60
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    const/4 p1, 0x3

    .line 65
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    const/4 p1, 0x2

    .line 70
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_4
    invoke-static {v2}, Ly9/u;->x(I)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_5
    invoke-static {v1}, Ly9/u;->x(I)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public static G0(Lv9/t;Ljava/util/List;Llb/s0;ZZ[Z)Ljava/util/ArrayList;
    .locals 21

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_9

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_8

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ly9/r0;

    .line 30
    .line 31
    move-object v5, v4

    .line 32
    check-cast v5, Ly9/s0;

    .line 33
    .line 34
    invoke-virtual {v5}, Ly9/s0;->getType()Llb/w;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    sget-object v7, Llb/y0;->d:Llb/y0;

    .line 39
    .line 40
    invoke-virtual {v0, v6, v7}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    iget-object v6, v4, Ly9/r0;->j:Llb/w;

    .line 45
    .line 46
    if-nez v6, :cond_0

    .line 47
    .line 48
    move-object v7, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v0, v6, v7}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    :goto_1
    if-nez v14, :cond_1

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_1
    invoke-virtual {v5}, Ly9/s0;->getType()Llb/w;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-ne v14, v5, :cond_2

    .line 62
    .line 63
    if-eq v6, v7, :cond_3

    .line 64
    .line 65
    :cond_2
    if-eqz p5, :cond_3

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x1

    .line 69
    aput-boolean v6, p5, v5

    .line 70
    .line 71
    :cond_3
    instance-of v5, v4, Ly9/q0;

    .line 72
    .line 73
    if-eqz v5, :cond_4

    .line 74
    .line 75
    move-object v5, v4

    .line 76
    check-cast v5, Ly9/q0;

    .line 77
    .line 78
    iget-object v5, v5, Ly9/q0;->l:Lr8/o;

    .line 79
    .line 80
    invoke-virtual {v5}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/util/List;

    .line 85
    .line 86
    new-instance v6, Ly9/s;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-direct {v6, v8, v5}, Ly9/s;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v20, v6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object/from16 v20, v1

    .line 96
    .line 97
    :goto_2
    if-eqz p3, :cond_5

    .line 98
    .line 99
    move-object v10, v1

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    move-object v10, v4

    .line 102
    :goto_3
    iget v11, v4, Ly9/r0;->f:I

    .line 103
    .line 104
    move-object v5, v4

    .line 105
    check-cast v5, Lfb/a;

    .line 106
    .line 107
    invoke-virtual {v5}, Lfb/a;->getAnnotations()Lw9/h;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    move-object v5, v4

    .line 112
    check-cast v5, Ly9/m;

    .line 113
    .line 114
    invoke-virtual {v5}, Ly9/m;->getName()Lua/e;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    invoke-virtual {v4}, Ly9/r0;->D0()Z

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    iget-boolean v5, v4, Ly9/r0;->h:Z

    .line 123
    .line 124
    iget-boolean v6, v4, Ly9/r0;->i:Z

    .line 125
    .line 126
    if-eqz p4, :cond_6

    .line 127
    .line 128
    check-cast v4, Ly9/n;

    .line 129
    .line 130
    invoke-virtual {v4}, Ly9/n;->getSource()Lv9/m0;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    sget-object v4, Lv9/m0;->e0:Lv9/n0;

    .line 136
    .line 137
    :goto_4
    const-string v8, "annotations"

    .line 138
    .line 139
    invoke-static {v12, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v8, "name"

    .line 143
    .line 144
    invoke-static {v13, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v8, "source"

    .line 148
    .line 149
    invoke-static {v4, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    if-nez v20, :cond_7

    .line 153
    .line 154
    new-instance v8, Ly9/r0;

    .line 155
    .line 156
    move-object/from16 v9, p0

    .line 157
    .line 158
    move-object/from16 v19, v4

    .line 159
    .line 160
    move/from16 v16, v5

    .line 161
    .line 162
    move/from16 v17, v6

    .line 163
    .line 164
    move-object/from16 v18, v7

    .line 165
    .line 166
    invoke-direct/range {v8 .. v19}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_7
    move-object/from16 v19, v4

    .line 171
    .line 172
    move/from16 v16, v5

    .line 173
    .line 174
    move/from16 v17, v6

    .line 175
    .line 176
    move-object/from16 v18, v7

    .line 177
    .line 178
    new-instance v8, Ly9/q0;

    .line 179
    .line 180
    move-object/from16 v9, p0

    .line 181
    .line 182
    invoke-direct/range {v8 .. v20}, Ly9/q0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;Lf9/a;)V

    .line 183
    .line 184
    .line 185
    :goto_5
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_8
    return-object v2

    .line 191
    :cond_9
    const/16 v0, 0x1e

    .line 192
    .line 193
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 194
    .line 195
    .line 196
    throw v1
.end method

.method public static synthetic x(I)V
    .locals 7

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    .line 8
    .line 9
    :goto_0
    const/4 v1, 0x2

    .line 10
    packed-switch p0, :pswitch_data_1

    .line 11
    .line 12
    .line 13
    :pswitch_2
    const/4 v2, 0x3

    .line 14
    goto :goto_1

    .line 15
    :pswitch_3
    const/4 v2, 0x2

    .line 16
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    packed-switch p0, :pswitch_data_2

    .line 22
    .line 23
    .line 24
    const-string v5, "containingDeclaration"

    .line 25
    .line 26
    aput-object v5, v2, v4

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :pswitch_4
    const-string v5, "configuration"

    .line 30
    .line 31
    aput-object v5, v2, v4

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_5
    const-string v5, "substitutor"

    .line 35
    .line 36
    aput-object v5, v2, v4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :pswitch_6
    const-string v5, "originalSubstitutor"

    .line 40
    .line 41
    aput-object v5, v2, v4

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :pswitch_7
    const-string v5, "overriddenDescriptors"

    .line 45
    .line 46
    aput-object v5, v2, v4

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :pswitch_8
    const-string v5, "extensionReceiverParameter"

    .line 50
    .line 51
    aput-object v5, v2, v4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :pswitch_9
    const-string v5, "unsubstitutedReturnType"

    .line 55
    .line 56
    aput-object v5, v2, v4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_a
    aput-object v3, v2, v4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :pswitch_b
    const-string v5, "visibility"

    .line 63
    .line 64
    aput-object v5, v2, v4

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :pswitch_c
    const-string v5, "unsubstitutedValueParameters"

    .line 68
    .line 69
    aput-object v5, v2, v4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_d
    const-string v5, "typeParameters"

    .line 73
    .line 74
    aput-object v5, v2, v4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_e
    const-string v5, "contextReceiverParameters"

    .line 78
    .line 79
    aput-object v5, v2, v4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_f
    const-string v5, "source"

    .line 83
    .line 84
    aput-object v5, v2, v4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :pswitch_10
    const-string v5, "kind"

    .line 88
    .line 89
    aput-object v5, v2, v4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_11
    const-string v5, "name"

    .line 93
    .line 94
    aput-object v5, v2, v4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_12
    const-string v5, "annotations"

    .line 98
    .line 99
    aput-object v5, v2, v4

    .line 100
    .line 101
    :goto_2
    const-string v4, "initialize"

    .line 102
    .line 103
    const-string v5, "newCopyBuilder"

    .line 104
    .line 105
    const/4 v6, 0x1

    .line 106
    packed-switch p0, :pswitch_data_3

    .line 107
    .line 108
    .line 109
    :pswitch_13
    aput-object v3, v2, v6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :pswitch_14
    const-string v3, "getSourceToUseForCopy"

    .line 113
    .line 114
    aput-object v3, v2, v6

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :pswitch_15
    const-string v3, "copy"

    .line 118
    .line 119
    aput-object v3, v2, v6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :pswitch_16
    aput-object v5, v2, v6

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :pswitch_17
    const-string v3, "getKind"

    .line 126
    .line 127
    aput-object v3, v2, v6

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :pswitch_18
    const-string v3, "getOriginal"

    .line 131
    .line 132
    aput-object v3, v2, v6

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :pswitch_19
    const-string v3, "getValueParameters"

    .line 136
    .line 137
    aput-object v3, v2, v6

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :pswitch_1a
    const-string v3, "getTypeParameters"

    .line 141
    .line 142
    aput-object v3, v2, v6

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :pswitch_1b
    const-string v3, "getVisibility"

    .line 146
    .line 147
    aput-object v3, v2, v6

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :pswitch_1c
    const-string v3, "getModality"

    .line 151
    .line 152
    aput-object v3, v2, v6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :pswitch_1d
    const-string v3, "getOverriddenDescriptors"

    .line 156
    .line 157
    aput-object v3, v2, v6

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :pswitch_1e
    const-string v3, "getContextReceiverParameters"

    .line 161
    .line 162
    aput-object v3, v2, v6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :pswitch_1f
    aput-object v4, v2, v6

    .line 166
    .line 167
    :goto_3
    packed-switch p0, :pswitch_data_4

    .line 168
    .line 169
    .line 170
    const-string v3, "<init>"

    .line 171
    .line 172
    aput-object v3, v2, v1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :pswitch_20
    const-string v3, "getSubstitutedValueParameters"

    .line 176
    .line 177
    aput-object v3, v2, v1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :pswitch_21
    const-string v3, "doSubstitute"

    .line 181
    .line 182
    aput-object v3, v2, v1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :pswitch_22
    aput-object v5, v2, v1

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :pswitch_23
    const-string v3, "substitute"

    .line 189
    .line 190
    aput-object v3, v2, v1

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :pswitch_24
    const-string v3, "setOverriddenDescriptors"

    .line 194
    .line 195
    aput-object v3, v2, v1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :pswitch_25
    const-string v3, "setExtensionReceiverParameter"

    .line 199
    .line 200
    aput-object v3, v2, v1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :pswitch_26
    const-string v3, "setReturnType"

    .line 204
    .line 205
    aput-object v3, v2, v1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :pswitch_27
    const-string v3, "setVisibility"

    .line 209
    .line 210
    aput-object v3, v2, v1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :pswitch_28
    aput-object v4, v2, v1

    .line 214
    .line 215
    :goto_4
    :pswitch_29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    packed-switch p0, :pswitch_data_5

    .line 220
    .line 221
    .line 222
    :pswitch_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 223
    .line 224
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :pswitch_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_5
    throw p0

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

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
    .line 276
    .line 277
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_5
    .end packed-switch

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_1f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_13
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_24
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_23
        :pswitch_29
        :pswitch_22
        :pswitch_21
        :pswitch_29
        :pswitch_29
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public final C0(Lv9/k;Lv9/x;Lea/o;)Lv9/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly9/u;->r0()Lv9/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lv9/s;->D(Lv9/k;)Lv9/s;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p2}, Lv9/s;->p(Lv9/x;)Lv9/s;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1, p3}, Lv9/s;->g(Lea/o;)Lv9/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    invoke-interface {p1, p2}, Lv9/s;->k(I)Lv9/s;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lv9/s;->u()Lv9/s;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lv9/s;->build()Lv9/t;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    const/16 p1, 0x1a

    .line 34
    .line 35
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    throw p1
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public D0(Lv9/k;Lv9/x;Lea/o;)Ly9/l0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ly9/u;->C0(Lv9/k;Lv9/x;Lea/o;)Lv9/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ly9/l0;

    .line 6
    .line 7
    return-object p1
.end method

.method public abstract E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
.end method

.method public F0(Ly9/t;)Ly9/u;
    .locals 21

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    sget-object v8, Llb/y0;->d:Llb/y0;

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    new-array v10, v9, [Z

    .line 7
    .line 8
    iget-object v0, v7, Ly9/t;->s:Lw9/h;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lfb/a;->getAnnotations()Lw9/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v7, Ly9/t;->s:Lw9/h;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lp4/o;->A(Lw9/h;Lw9/h;)Lw9/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    move-object v6, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lfb/a;->getAnnotations()Lw9/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v3, v7, Ly9/t;->b:Lv9/k;

    .line 30
    .line 31
    iget-object v4, v7, Ly9/t;->e:Lv9/t;

    .line 32
    .line 33
    iget v1, v7, Ly9/t;->f:I

    .line 34
    .line 35
    iget-object v2, v7, Ly9/t;->l:Lua/e;

    .line 36
    .line 37
    iget-boolean v0, v7, Ly9/t;->o:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    move-object v0, v4

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ly9/u;->a()Lv9/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_2
    check-cast v0, Ly9/n;

    .line 50
    .line 51
    invoke-virtual {v0}, Ly9/n;->getSource()Lv9/m0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_3
    move-object v5, v0

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_4
    if-eqz v5, :cond_1e

    .line 61
    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    invoke-virtual/range {v0 .. v6}, Ly9/u;->E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    move-object v6, v0

    .line 69
    iget-object v0, v7, Ly9/t;->r:Ls8/w;

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v6}, Ly9/u;->getTypeParameters()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_3
    const/4 v13, 0x0

    .line 78
    aget-boolean v1, v10, v13

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    xor-int/2addr v2, v9

    .line 85
    or-int/2addr v1, v2

    .line 86
    aput-boolean v1, v10, v13

    .line 87
    .line 88
    new-instance v14, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v7, Ly9/t;->a:Llb/q0;

    .line 98
    .line 99
    invoke-static {v0, v1, v12, v14, v10}, Llb/c;->A(Ljava/util/List;Llb/q0;Lv9/k;Ljava/util/List;[Z)Llb/s0;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez v2, :cond_4

    .line 104
    .line 105
    :goto_5
    const/4 v11, 0x0

    .line 106
    goto/16 :goto_e

    .line 107
    .line 108
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v0, v7, Ly9/t;->h:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_7

    .line 120
    .line 121
    iget-object v0, v7, Ly9/t;->h:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/4 v1, 0x0

    .line 128
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ly9/v;

    .line 139
    .line 140
    invoke-virtual {v3}, Ly9/v;->getType()Llb/w;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4, v8}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-nez v4, :cond_5

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_5
    invoke-virtual {v3}, Ly9/v;->C0()Lfb/e;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Lfb/b;

    .line 156
    .line 157
    invoke-virtual {v5}, Lfb/b;->u0()Lua/e;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    const/16 v16, 0x0

    .line 162
    .line 163
    invoke-virtual {v3}, Lfb/a;->getAnnotations()Lw9/h;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    add-int/lit8 v17, v1, 0x1

    .line 168
    .line 169
    invoke-static {v12, v4, v5, v11, v1}, Lxa/k;->e(Lv9/b;Llb/w;Lua/e;Lw9/h;I)Ly9/v;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    aget-boolean v1, v10, v13

    .line 177
    .line 178
    invoke-virtual {v3}, Ly9/v;->getType()Llb/w;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    if-eq v4, v3, :cond_6

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    goto :goto_7

    .line 186
    :cond_6
    const/4 v3, 0x0

    .line 187
    :goto_7
    or-int/2addr v1, v3

    .line 188
    aput-boolean v1, v10, v13

    .line 189
    .line 190
    move/from16 v1, v17

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_7
    const/16 v16, 0x0

    .line 194
    .line 195
    iget-object v0, v7, Ly9/t;->i:Ly9/v;

    .line 196
    .line 197
    if-eqz v0, :cond_a

    .line 198
    .line 199
    invoke-virtual {v0}, Ly9/v;->getType()Llb/w;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v2, v0, v8}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-nez v0, :cond_8

    .line 208
    .line 209
    :goto_8
    move-object/from16 v11, v16

    .line 210
    .line 211
    goto/16 :goto_e

    .line 212
    .line 213
    :cond_8
    new-instance v1, Ly9/v;

    .line 214
    .line 215
    new-instance v3, Lfb/c;

    .line 216
    .line 217
    iget-object v4, v7, Ly9/t;->i:Ly9/v;

    .line 218
    .line 219
    invoke-virtual {v4}, Ly9/v;->C0()Lfb/e;

    .line 220
    .line 221
    .line 222
    invoke-direct {v3, v12, v0}, Lfb/c;-><init>(Lv9/b;Llb/w;)V

    .line 223
    .line 224
    .line 225
    iget-object v4, v7, Ly9/t;->i:Ly9/v;

    .line 226
    .line 227
    invoke-virtual {v4}, Lfb/a;->getAnnotations()Lw9/h;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-direct {v1, v12, v3, v4}, Ly9/v;-><init>(Lv9/k;Lfb/a;Lw9/h;)V

    .line 232
    .line 233
    .line 234
    aget-boolean v3, v10, v13

    .line 235
    .line 236
    iget-object v4, v7, Ly9/t;->i:Ly9/v;

    .line 237
    .line 238
    invoke-virtual {v4}, Ly9/v;->getType()Llb/w;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    if-eq v0, v4, :cond_9

    .line 243
    .line 244
    const/4 v0, 0x1

    .line 245
    goto :goto_9

    .line 246
    :cond_9
    const/4 v0, 0x0

    .line 247
    :goto_9
    or-int/2addr v0, v3

    .line 248
    aput-boolean v0, v10, v13

    .line 249
    .line 250
    move-object v13, v1

    .line 251
    :goto_a
    const/4 v8, 0x0

    .line 252
    goto :goto_b

    .line 253
    :cond_a
    move-object/from16 v13, v16

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :goto_b
    iget-object v0, v7, Ly9/t;->j:Ly9/v;

    .line 257
    .line 258
    if-eqz v0, :cond_d

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ly9/v;->D0(Llb/s0;)Ly9/v;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-nez v0, :cond_b

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_b
    aget-boolean v1, v10, v8

    .line 268
    .line 269
    iget-object v3, v7, Ly9/t;->j:Ly9/v;

    .line 270
    .line 271
    if-eq v0, v3, :cond_c

    .line 272
    .line 273
    const/4 v3, 0x1

    .line 274
    goto :goto_c

    .line 275
    :cond_c
    const/4 v3, 0x0

    .line 276
    :goto_c
    or-int/2addr v1, v3

    .line 277
    aput-boolean v1, v10, v8

    .line 278
    .line 279
    move-object/from16 v11, v16

    .line 280
    .line 281
    move-object/from16 v16, v14

    .line 282
    .line 283
    move-object v14, v0

    .line 284
    goto :goto_d

    .line 285
    :cond_d
    move-object/from16 v11, v16

    .line 286
    .line 287
    move-object/from16 v16, v14

    .line 288
    .line 289
    move-object v14, v11

    .line 290
    :goto_d
    iget-object v1, v7, Ly9/t;->g:Ljava/util/List;

    .line 291
    .line 292
    iget-boolean v3, v7, Ly9/t;->p:Z

    .line 293
    .line 294
    iget-boolean v4, v7, Ly9/t;->o:Z

    .line 295
    .line 296
    move-object v5, v10

    .line 297
    move-object v0, v12

    .line 298
    invoke-static/range {v0 .. v5}, Ly9/u;->G0(Lv9/t;Ljava/util/List;Llb/s0;ZZ[Z)Ljava/util/ArrayList;

    .line 299
    .line 300
    .line 301
    move-result-object v17

    .line 302
    if-nez v17, :cond_e

    .line 303
    .line 304
    goto :goto_e

    .line 305
    :cond_e
    iget-object v1, v7, Ly9/t;->k:Llb/w;

    .line 306
    .line 307
    sget-object v3, Llb/y0;->e:Llb/y0;

    .line 308
    .line 309
    invoke-virtual {v2, v1, v3}, Llb/s0;->i(Llb/w;Llb/y0;)Llb/w;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-nez v1, :cond_f

    .line 314
    .line 315
    :goto_e
    return-object v11

    .line 316
    :cond_f
    aget-boolean v3, v5, v8

    .line 317
    .line 318
    iget-object v4, v7, Ly9/t;->k:Llb/w;

    .line 319
    .line 320
    if-eq v1, v4, :cond_10

    .line 321
    .line 322
    const/4 v4, 0x1

    .line 323
    goto :goto_f

    .line 324
    :cond_10
    const/4 v4, 0x0

    .line 325
    :goto_f
    or-int/2addr v3, v4

    .line 326
    aput-boolean v3, v5, v8

    .line 327
    .line 328
    if-nez v3, :cond_11

    .line 329
    .line 330
    iget-boolean v3, v7, Ly9/t;->w:Z

    .line 331
    .line 332
    if-eqz v3, :cond_11

    .line 333
    .line 334
    return-object v6

    .line 335
    :cond_11
    iget-object v3, v7, Ly9/t;->c:Lv9/x;

    .line 336
    .line 337
    iget-object v4, v7, Ly9/t;->d:Lea/o;

    .line 338
    .line 339
    move-object v12, v0

    .line 340
    move-object/from16 v18, v1

    .line 341
    .line 342
    move-object/from16 v19, v3

    .line 343
    .line 344
    move-object/from16 v20, v4

    .line 345
    .line 346
    invoke-virtual/range {v12 .. v20}, Ly9/u;->H0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)V

    .line 347
    .line 348
    .line 349
    iget-boolean v1, v6, Ly9/u;->m:Z

    .line 350
    .line 351
    iput-boolean v1, v0, Ly9/u;->m:Z

    .line 352
    .line 353
    iget-boolean v1, v6, Ly9/u;->n:Z

    .line 354
    .line 355
    iput-boolean v1, v0, Ly9/u;->n:Z

    .line 356
    .line 357
    iget-boolean v1, v6, Ly9/u;->o:Z

    .line 358
    .line 359
    iput-boolean v1, v0, Ly9/u;->o:Z

    .line 360
    .line 361
    iget-boolean v1, v6, Ly9/u;->p:Z

    .line 362
    .line 363
    iput-boolean v1, v0, Ly9/u;->p:Z

    .line 364
    .line 365
    iget-boolean v1, v6, Ly9/u;->q:Z

    .line 366
    .line 367
    iput-boolean v1, v0, Ly9/u;->q:Z

    .line 368
    .line 369
    iget-boolean v1, v6, Ly9/u;->u:Z

    .line 370
    .line 371
    iput-boolean v1, v0, Ly9/u;->u:Z

    .line 372
    .line 373
    iget-boolean v1, v6, Ly9/u;->r:Z

    .line 374
    .line 375
    iput-boolean v1, v0, Ly9/u;->r:Z

    .line 376
    .line 377
    iget-boolean v1, v6, Ly9/u;->v:Z

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Ly9/u;->K0(Z)V

    .line 380
    .line 381
    .line 382
    iget-boolean v1, v7, Ly9/t;->q:Z

    .line 383
    .line 384
    iput-boolean v1, v0, Ly9/u;->s:Z

    .line 385
    .line 386
    iget-boolean v1, v7, Ly9/t;->t:Z

    .line 387
    .line 388
    iput-boolean v1, v0, Ly9/u;->t:Z

    .line 389
    .line 390
    iget-object v1, v7, Ly9/t;->v:Ljava/lang/Boolean;

    .line 391
    .line 392
    if-eqz v1, :cond_12

    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    goto :goto_10

    .line 399
    :cond_12
    iget-boolean v1, v6, Ly9/u;->w:Z

    .line 400
    .line 401
    :goto_10
    invoke-virtual {v0, v1}, Ly9/u;->L0(Z)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v7, Ly9/t;->u:Ljava/util/LinkedHashMap;

    .line 405
    .line 406
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_13

    .line 411
    .line 412
    iget-object v1, v6, Ly9/u;->C:Ljava/util/Map;

    .line 413
    .line 414
    if-eqz v1, :cond_17

    .line 415
    .line 416
    :cond_13
    iget-object v1, v7, Ly9/t;->u:Ljava/util/LinkedHashMap;

    .line 417
    .line 418
    iget-object v3, v6, Ly9/u;->C:Ljava/util/Map;

    .line 419
    .line 420
    if-eqz v3, :cond_15

    .line 421
    .line 422
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    :cond_14
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    if-eqz v4, :cond_15

    .line 435
    .line 436
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    check-cast v4, Ljava/util/Map$Entry;

    .line 441
    .line 442
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-nez v5, :cond_14

    .line 451
    .line 452
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    goto :goto_11

    .line 464
    :cond_15
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-ne v3, v9, :cond_16

    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    iput-object v1, v0, Ly9/u;->C:Ljava/util/Map;

    .line 499
    .line 500
    goto :goto_12

    .line 501
    :cond_16
    iput-object v1, v0, Ly9/u;->C:Ljava/util/Map;

    .line 502
    .line 503
    :cond_17
    :goto_12
    iget-boolean v1, v7, Ly9/t;->n:Z

    .line 504
    .line 505
    if-nez v1, :cond_18

    .line 506
    .line 507
    iget-object v1, v6, Ly9/u;->B:Lv9/t;

    .line 508
    .line 509
    if-eqz v1, :cond_1a

    .line 510
    .line 511
    :cond_18
    iget-object v1, v6, Ly9/u;->B:Lv9/t;

    .line 512
    .line 513
    if-eqz v1, :cond_19

    .line 514
    .line 515
    goto :goto_13

    .line 516
    :cond_19
    move-object v1, v6

    .line 517
    :goto_13
    invoke-interface {v1, v2}, Lv9/t;->e(Llb/s0;)Lv9/t;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    iput-object v1, v0, Ly9/u;->B:Lv9/t;

    .line 522
    .line 523
    :cond_1a
    iget-boolean v1, v7, Ly9/t;->m:Z

    .line 524
    .line 525
    if-eqz v1, :cond_1d

    .line 526
    .line 527
    invoke-virtual {v6}, Ly9/u;->a()Lv9/t;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-interface {v1}, Lv9/c;->m()Ljava/util/Collection;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-nez v1, :cond_1d

    .line 540
    .line 541
    iget-object v1, v7, Ly9/t;->a:Llb/q0;

    .line 542
    .line 543
    invoke-virtual {v1}, Llb/q0;->e()Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_1c

    .line 548
    .line 549
    iget-object v1, v6, Ly9/u;->y:La8/f0;

    .line 550
    .line 551
    if-eqz v1, :cond_1b

    .line 552
    .line 553
    iput-object v1, v0, Ly9/u;->y:La8/f0;

    .line 554
    .line 555
    return-object v0

    .line 556
    :cond_1b
    invoke-virtual {v6}, Ly9/u;->m()Ljava/util/Collection;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v0, v1}, Ly9/u;->l0(Ljava/util/Collection;)V

    .line 561
    .line 562
    .line 563
    return-object v0

    .line 564
    :cond_1c
    new-instance v1, La8/f0;

    .line 565
    .line 566
    const/16 v3, 0x13

    .line 567
    .line 568
    invoke-direct {v1, v6, v2, v3}, La8/f0;-><init>(Ly9/n;Ljava/lang/Object;I)V

    .line 569
    .line 570
    .line 571
    iput-object v1, v0, Ly9/u;->y:La8/f0;

    .line 572
    .line 573
    :cond_1d
    return-object v0

    .line 574
    :cond_1e
    move-object/from16 v6, p0

    .line 575
    .line 576
    const/4 v11, 0x0

    .line 577
    const/16 v0, 0x1b

    .line 578
    .line 579
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 580
    .line 581
    .line 582
    throw v11
.end method

.method public G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lv9/m;->v(Lv9/t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public H0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_7

    .line 3
    .line 4
    if-eqz p4, :cond_6

    .line 5
    .line 6
    if-eqz p5, :cond_5

    .line 7
    .line 8
    if-eqz p8, :cond_4

    .line 9
    .line 10
    invoke-static {p4}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Ly9/u;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {p5}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ly9/u;->f:Ljava/util/List;

    .line 21
    .line 22
    iput-object p6, p0, Ly9/u;->g:Llb/w;

    .line 23
    .line 24
    iput-object p7, p0, Ly9/u;->k:Lv9/x;

    .line 25
    .line 26
    iput-object p8, p0, Ly9/u;->l:Lea/o;

    .line 27
    .line 28
    iput-object p1, p0, Ly9/u;->i:Ly9/v;

    .line 29
    .line 30
    iput-object p2, p0, Ly9/u;->j:Ly9/v;

    .line 31
    .line 32
    iput-object p3, p0, Ly9/u;->h:Ljava/util/List;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const-string p6, " but position is "

    .line 41
    .line 42
    if-ge p2, p3, :cond_1

    .line 43
    .line 44
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Lv9/q0;

    .line 49
    .line 50
    invoke-interface {p3}, Lv9/q0;->getIndex()I

    .line 51
    .line 52
    .line 53
    move-result p7

    .line 54
    if-ne p7, p2, :cond_0

    .line 55
    .line 56
    add-int/lit8 p2, p2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p5, " index is "

    .line 70
    .line 71
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-interface {p3}, Lv9/q0;->getIndex()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_1
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-ge p1, p2, :cond_3

    .line 100
    .line 101
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Ly9/r0;

    .line 106
    .line 107
    iget p3, p2, Ly9/r0;->f:I

    .line 108
    .line 109
    if-ne p3, p1, :cond_2

    .line 110
    .line 111
    add-int/lit8 p1, p1, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    new-instance p4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p5, "index is "

    .line 125
    .line 126
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget p2, p2, Ly9/r0;->f:I

    .line 130
    .line 131
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p3

    .line 148
    :cond_3
    return-void

    .line 149
    :cond_4
    const/16 p1, 0x8

    .line 150
    .line 151
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_5
    const/4 p1, 0x7

    .line 156
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_6
    const/4 p1, 0x6

    .line 161
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_7
    const/4 p1, 0x5

    .line 166
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 167
    .line 168
    .line 169
    throw v0
.end method

.method public final I0(Llb/s0;)Ly9/t;
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ly9/t;

    .line 4
    .line 5
    invoke-virtual {p1}, Llb/s0;->f()Llb/q0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Ly9/n;->k()Lv9/k;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Ly9/u;->h()Lv9/x;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p0}, Ly9/u;->d()Lea/o;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p0}, Ly9/u;->f()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Ly9/u;->S()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {p0}, Ly9/u;->f0()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget-object v9, p0, Ly9/u;->i:Ly9/v;

    .line 34
    .line 35
    invoke-virtual {p0}, Ly9/u;->p()Llb/w;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    move-object v1, p0

    .line 40
    invoke-direct/range {v0 .. v10}, Ly9/t;-><init>(Ly9/u;Llb/q0;Lv9/k;Lv9/x;Lea/o;ILjava/util/List;Ljava/util/List;Ly9/v;Llb/w;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    const/16 p1, 0x18

    .line 45
    .line 46
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    throw p1
.end method

.method public final J0(Lv9/a;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->C:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly9/u;->C:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ly9/u;->C:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public K0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly9/u;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public L0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly9/u;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public final M()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly9/u;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ly9/u;->a()Lv9/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lv9/c;->m()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lv9/t;

    .line 29
    .line 30
    invoke-interface {v1}, Lv9/t;->M()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    return v0
.end method

.method public final M0(Llb/a0;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Ly9/u;->g:Llb/w;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 p1, 0xb

    .line 7
    .line 8
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final S()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x13

    .line 7
    .line 8
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final V()Lv9/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->B:Lv9/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Ly9/v;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->j:Ly9/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()Lv9/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->z:Lv9/t;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lv9/t;->a()Lv9/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    const/16 v0, 0x14

    .line 15
    .line 16
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    throw v0
.end method

.method public final a0()Ly9/v;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->i:Ly9/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lea/o;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->l:Lea/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x10

    .line 7
    .line 8
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public bridge synthetic e(Llb/s0;)Lv9/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly9/u;->e(Llb/s0;)Lv9/t;

    move-result-object p1

    return-object p1
.end method

.method public e(Llb/s0;)Lv9/t;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Llb/s0;->a:Llb/q0;

    .line 3
    invoke-virtual {v0}, Llb/q0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ly9/u;->I0(Llb/s0;)Ly9/t;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ly9/u;->a()Lv9/t;

    move-result-object v0

    .line 6
    iput-object v0, p1, Ly9/t;->e:Lv9/t;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Ly9/t;->o:Z

    .line 8
    iput-boolean v0, p1, Ly9/t;->w:Z

    .line 9
    iget-object v0, p1, Ly9/t;->x:Ly9/u;

    invoke-virtual {v0, p1}, Ly9/u;->F0(Ly9/t;)Ly9/u;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x16

    .line 10
    invoke-static {p1}, Ly9/u;->x(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Ly9/u;->A:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const/16 v0, 0x15

    .line 7
    .line 8
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final f0()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0xd

    .line 7
    .line 8
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Ly9/u;->e:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "typeParameters == null for "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final h()Lv9/x;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->k:Lv9/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0xf

    .line 7
    .line 8
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public j0(Lv9/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->C:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public l0(Ljava/util/Collection;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iput-object p1, p0, Ly9/u;->x:Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lv9/t;

    .line 20
    .line 21
    invoke-interface {v0}, Lv9/t;->q0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Ly9/u;->t:Z

    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    const/16 p1, 0x11

    .line 32
    .line 33
    invoke-static {p1}, Ly9/u;->x(I)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method public m()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ly9/u;->y:La8/f0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, La8/f0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    iput-object v0, p0, Ly9/u;->x:Ljava/util/Collection;

    .line 13
    .line 14
    iput-object v1, p0, Ly9/u;->y:La8/f0;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Ly9/u;->x:Ljava/util/Collection;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_2
    const/16 v0, 0xe

    .line 27
    .line 28
    invoke-static {v0}, Ly9/u;->x(I)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public bridge synthetic n0(Lv9/e;Lv9/x;Lea/o;)Lv9/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ly9/u;->D0(Lv9/k;Lv9/x;Lea/o;)Ly9/l0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->g:Llb/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->t:Z

    .line 2
    .line 3
    return v0
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

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly9/u;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final x0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly9/u;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ly9/u;->a()Lv9/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lv9/c;->m()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lv9/t;

    .line 29
    .line 30
    invoke-interface {v1}, Lv9/t;->x0()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    return v0
.end method
