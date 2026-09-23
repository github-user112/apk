.class public final Lga/e;
.super Ly9/l0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lga/a;


# static fields
.field public static final F:Lab/b;

.field public static final G:Lab/b;


# instance fields
.field public D:I

.field public final E:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lab/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lga/e;->F:Lab/b;

    .line 7
    .line 8
    new-instance v0, Lab/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lga/e;->G:Lab/b;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    if-eqz p4, :cond_1

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    invoke-direct/range {p0 .. p6}, Ly9/l0;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;)V

    .line 12
    .line 13
    .line 14
    move-object p1, p0

    .line 15
    iput v0, p1, Lga/e;->D:I

    .line 16
    .line 17
    iput-boolean p7, p1, Lga/e;->E:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    move-object p1, p0

    .line 21
    const/4 p2, 0x3

    .line 22
    invoke-static {p2}, Lga/e;->x(I)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    move-object p1, p0

    .line 27
    const/4 p2, 0x2

    .line 28
    invoke-static {p2}, Lga/e;->x(I)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_2
    move-object p1, p0

    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-static {p2}, Lga/e;->x(I)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_3
    move-object p1, p0

    .line 39
    invoke-static {v0}, Lga/e;->x(I)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public static R0(Lv9/k;Lha/c;Lua/e;Laa/g;Z)Lga/e;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-instance v1, Lga/e;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    move-object v2, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v7, p3

    .line 14
    move v8, p4

    .line 15
    invoke-direct/range {v1 .. v8}, Lga/e;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;Z)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    const/4 p0, 0x7

    .line 20
    invoke-static {p0}, Lga/e;->x(I)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    const/4 p0, 0x5

    .line 25
    invoke-static {p0}, Lga/e;->x(I)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static synthetic x(I)V
    .locals 11

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    const/16 v2, 0xd

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
    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    const-string v8, "containingDeclaration"

    .line 37
    .line 38
    aput-object v8, v5, v7

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :pswitch_1
    const-string v8, "enhancedReturnType"

    .line 42
    .line 43
    aput-object v8, v5, v7

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :pswitch_2
    const-string v8, "enhancedValueParameterTypes"

    .line 47
    .line 48
    aput-object v8, v5, v7

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :pswitch_3
    const-string v8, "newOwner"

    .line 52
    .line 53
    aput-object v8, v5, v7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :pswitch_4
    aput-object v6, v5, v7

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_5
    const-string v8, "visibility"

    .line 60
    .line 61
    aput-object v8, v5, v7

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :pswitch_6
    const-string v8, "unsubstitutedValueParameters"

    .line 65
    .line 66
    aput-object v8, v5, v7

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :pswitch_7
    const-string v8, "typeParameters"

    .line 70
    .line 71
    aput-object v8, v5, v7

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_8
    const-string v8, "contextReceiverParameters"

    .line 75
    .line 76
    aput-object v8, v5, v7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :pswitch_9
    const-string v8, "source"

    .line 80
    .line 81
    aput-object v8, v5, v7

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :pswitch_a
    const-string v8, "kind"

    .line 85
    .line 86
    aput-object v8, v5, v7

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_b
    const-string v8, "name"

    .line 90
    .line 91
    aput-object v8, v5, v7

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :pswitch_c
    const-string v8, "annotations"

    .line 95
    .line 96
    aput-object v8, v5, v7

    .line 97
    .line 98
    :goto_2
    const-string v7, "initialize"

    .line 99
    .line 100
    const-string v8, "createSubstitutedCopy"

    .line 101
    .line 102
    const-string v9, "enhance"

    .line 103
    .line 104
    const/4 v10, 0x1

    .line 105
    if-eq p0, v2, :cond_4

    .line 106
    .line 107
    if-eq p0, v1, :cond_3

    .line 108
    .line 109
    if-eq p0, v0, :cond_2

    .line 110
    .line 111
    aput-object v6, v5, v10

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    aput-object v9, v5, v10

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    aput-object v8, v5, v10

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    aput-object v7, v5, v10

    .line 121
    .line 122
    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 123
    .line 124
    .line 125
    const-string v6, "<init>"

    .line 126
    .line 127
    aput-object v6, v5, v4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :pswitch_d
    aput-object v9, v5, v4

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :pswitch_e
    aput-object v8, v5, v4

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :pswitch_f
    aput-object v7, v5, v4

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :pswitch_10
    const-string v6, "createJavaMethod"

    .line 140
    .line 141
    aput-object v6, v5, v4

    .line 142
    .line 143
    :goto_4
    :pswitch_11
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eq p0, v2, :cond_5

    .line 148
    .line 149
    if-eq p0, v1, :cond_5

    .line 150
    .line 151
    if-eq p0, v0, :cond_5

    .line 152
    .line 153
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_5
    throw p0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

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
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public final D()Z
    .locals 1

    .line 1
    iget v0, p0, Lga/e;->D:I

    .line 2
    .line 3
    invoke-static {v0}, La2/f;->A(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_6

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    if-eqz p6, :cond_4

    .line 7
    .line 8
    new-instance v1, Lga/e;

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
    move-object v5, p2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-boolean v8, p0, Lga/e;->E:Z

    .line 23
    .line 24
    move v6, p1

    .line 25
    move-object v2, p3

    .line 26
    move-object v7, p5

    .line 27
    move-object v4, p6

    .line 28
    invoke-direct/range {v1 .. v8}, Lga/e;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;Z)V

    .line 29
    .line 30
    .line 31
    iget p1, p0, Lga/e;->D:I

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    const/4 p3, 0x1

    .line 35
    if-eq p1, p3, :cond_3

    .line 36
    .line 37
    const/4 p4, 0x2

    .line 38
    if-eq p1, p4, :cond_1

    .line 39
    .line 40
    const/4 p4, 0x3

    .line 41
    if-eq p1, p4, :cond_3

    .line 42
    .line 43
    const/4 p2, 0x4

    .line 44
    if-ne p1, p2, :cond_2

    .line 45
    .line 46
    :cond_1
    const/4 p2, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    throw p1

    .line 50
    :cond_3
    :goto_2
    invoke-static {p1}, La2/f;->A(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v1, p2, p1}, Lga/e;->S0(ZZ)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_4
    const/16 p1, 0x10

    .line 59
    .line 60
    invoke-static {p1}, Lga/e;->x(I)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_5
    const/16 p1, 0xf

    .line 65
    .line 66
    invoke-static {p1}, Lga/e;->x(I)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_6
    const/16 p1, 0xe

    .line 71
    .line 72
    invoke-static {p1}, Lga/e;->x(I)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public final Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_a

    .line 3
    .line 4
    if-eqz p4, :cond_9

    .line 5
    .line 6
    if-eqz p5, :cond_8

    .line 7
    .line 8
    if-eqz p8, :cond_7

    .line 9
    .line 10
    invoke-super/range {p0 .. p9}, Ly9/l0;->Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;

    .line 11
    .line 12
    .line 13
    move-object p1, p0

    .line 14
    sget-object p2, Lrb/r;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_6

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Lrb/i;

    .line 31
    .line 32
    iget-object p4, p3, Lrb/i;->b:Lg9/x;

    .line 33
    .line 34
    iget-object p5, p3, Lrb/i;->a:Lua/e;

    .line 35
    .line 36
    if-eqz p5, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 39
    .line 40
    .line 41
    move-result-object p6

    .line 42
    invoke-static {p6, p5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p5

    .line 46
    if-nez p5, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-eqz p4, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 52
    .line 53
    .line 54
    move-result-object p5

    .line 55
    invoke-virtual {p5}, Lua/e;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    const-string p6, "asString(...)"

    .line 60
    .line 61
    invoke-static {p5, p6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p4, p4, Lg9/x;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p4, Ljava/util/regex/Pattern;

    .line 67
    .line 68
    invoke-virtual {p4, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p4}, Ljava/util/regex/Matcher;->matches()Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-nez p4, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object p4, p3, Lrb/i;->c:Ljava/util/Collection;

    .line 80
    .line 81
    if-eqz p4, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 84
    .line 85
    .line 86
    move-result-object p5

    .line 87
    invoke-interface {p4, p5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-nez p4, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object p2, p3, Lrb/i;->e:[Lrb/e;

    .line 95
    .line 96
    array-length p4, p2

    .line 97
    const/4 p5, 0x0

    .line 98
    const/4 p6, 0x0

    .line 99
    :goto_1
    if-ge p6, p4, :cond_4

    .line 100
    .line 101
    aget-object p7, p2, p6

    .line 102
    .line 103
    invoke-interface {p7, p0}, Lrb/e;->c(Lga/e;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p7

    .line 107
    if-eqz p7, :cond_3

    .line 108
    .line 109
    new-instance p2, Lrb/f;

    .line 110
    .line 111
    invoke-direct {p2, p5}, Lrb/g;-><init>(Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    add-int/lit8 p6, p6, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    iget-object p2, p3, Lrb/i;->d:Lf9/k;

    .line 119
    .line 120
    invoke-interface {p2, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz p2, :cond_5

    .line 127
    .line 128
    new-instance p2, Lrb/f;

    .line 129
    .line 130
    invoke-direct {p2, p5}, Lrb/g;-><init>(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    sget-object p2, Lrb/f;->c:Lrb/f;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    sget-object p2, Lrb/f;->b:Lrb/f;

    .line 138
    .line 139
    :goto_2
    iget-boolean p2, p2, Lrb/g;->a:Z

    .line 140
    .line 141
    iput-boolean p2, p1, Ly9/u;->m:Z

    .line 142
    .line 143
    return-object p1

    .line 144
    :cond_7
    move-object p1, p0

    .line 145
    const/16 p2, 0xc

    .line 146
    .line 147
    invoke-static {p2}, Lga/e;->x(I)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_8
    move-object p1, p0

    .line 152
    const/16 p2, 0xb

    .line 153
    .line 154
    invoke-static {p2}, Lga/e;->x(I)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_9
    move-object p1, p0

    .line 159
    const/16 p2, 0xa

    .line 160
    .line 161
    invoke-static {p2}, Lga/e;->x(I)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_a
    move-object p1, p0

    .line 166
    const/16 p2, 0x9

    .line 167
    .line 168
    invoke-static {p2}, Lga/e;->x(I)V

    .line 169
    .line 170
    .line 171
    throw v0
.end method

.method public final S0(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    if-eqz p2, :cond_2

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    goto :goto_0

    .line 13
    :cond_2
    const/4 p1, 0x1

    .line 14
    :goto_0
    iput p1, p0, Lga/e;->D:I

    .line 15
    .line 16
    return-void
.end method

.method public final g0(Llb/w;Ljava/util/ArrayList;Llb/w;Lr8/j;)Lga/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly9/u;->S()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, v0, p0}, Li9/a;->r(Ljava/util/ArrayList;Ljava/util/List;Lv9/t;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    move-object p1, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lw9/g;->a:Lw9/f;

    .line 15
    .line 16
    invoke-static {p0, p1, v1}, Lxa/k;->k(Lv9/b;Llb/w;Lw9/h;)Ly9/v;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    sget-object v1, Llb/s0;->b:Llb/s0;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ly9/u;->I0(Llb/s0;)Ly9/t;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object p2, v1, Ly9/t;->g:Ljava/util/List;

    .line 27
    .line 28
    iput-object p3, v1, Ly9/t;->k:Llb/w;

    .line 29
    .line 30
    iput-object p1, v1, Ly9/t;->i:Ly9/v;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, v1, Ly9/t;->p:Z

    .line 34
    .line 35
    iput-boolean p1, v1, Ly9/t;->o:Z

    .line 36
    .line 37
    iget-object p1, v1, Ly9/t;->x:Ly9/u;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ly9/u;->F0(Ly9/t;)Ly9/u;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lga/e;

    .line 44
    .line 45
    if-eqz p4, :cond_1

    .line 46
    .line 47
    iget-object p2, p4, Lr8/j;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Lv9/a;

    .line 50
    .line 51
    iget-object p3, p4, Lr8/j;->b:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p1, p2, p3}, Ly9/u;->J0(Lv9/a;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    if-eqz p1, :cond_2

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    const/16 p1, 0x15

    .line 60
    .line 61
    invoke-static {p1}, Lga/e;->x(I)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method
