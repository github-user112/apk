.class public abstract Lc7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static a:Le2/f; = null

.field public static b:Lu0/j; = null

.field public static c:Z = false

.field public static d:Ljava/lang/reflect/Method; = null

.field public static e:Z = false

.field public static f:Ljava/lang/reflect/Field;

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z


# direct methods
.method public static final A(Lv9/c;)Lv9/c;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lea/h0;->j:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lea/f;->d:Ljava/util/Set;

    .line 19
    .line 20
    invoke-static {p0}, Lbb/e;->k(Lv9/c;)Lv9/c;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lv9/k;->getName()Lua/e;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    instance-of v0, p0, Lv9/k0;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    instance-of v0, p0, Lv9/j0;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    instance-of v0, p0, Ly9/l0;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lea/d;->g:Lea/d;

    .line 49
    .line 50
    invoke-static {p0, v0}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_3
    :goto_1
    sget-object v0, Lea/d;->f:Lea/d;

    .line 58
    .line 59
    invoke-static {p0, v0}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static final B(Lv9/c;)Lv9/c;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lc7/a;->A(Lv9/c;)Lv9/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    sget v0, Lea/e;->l:I

    .line 14
    .line 15
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getName(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lea/e;->b(Lua/e;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object v0, Lea/d;->h:Lea/d;

    .line 33
    .line 34
    invoke-static {p0, v0}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static final C(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const v0, 0x7f0800c1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of v0, p0, Landroid/view/ViewParent;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Landroid/view/ViewParent;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static final D(Landroid/view/View;)Lj4/a;
    .locals 2

    .line 1
    const v0, 0x7f080080

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lj4/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lj4/a;

    .line 13
    .line 14
    invoke-direct {v1}, Lj4/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v1
.end method

.method public static final E(III)I
    .locals 1

    .line 1
    if-lez p2, :cond_4

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    rem-int v0, p1, p2

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    add-int/2addr v0, p2

    .line 12
    :goto_0
    rem-int/2addr p0, p2

    .line 13
    if-ltz p0, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    add-int/2addr p0, p2

    .line 17
    :goto_1
    sub-int/2addr v0, p0

    .line 18
    rem-int/2addr v0, p2

    .line 19
    if-ltz v0, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_3
    add-int/2addr v0, p2

    .line 23
    :goto_2
    sub-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_4
    if-gez p2, :cond_9

    .line 26
    .line 27
    if-gt p0, p1, :cond_5

    .line 28
    .line 29
    :goto_3
    return p1

    .line 30
    :cond_5
    neg-int p2, p2

    .line 31
    rem-int/2addr p0, p2

    .line 32
    if-ltz p0, :cond_6

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_6
    add-int/2addr p0, p2

    .line 36
    :goto_4
    rem-int v0, p1, p2

    .line 37
    .line 38
    if-ltz v0, :cond_7

    .line 39
    .line 40
    goto :goto_5

    .line 41
    :cond_7
    add-int/2addr v0, p2

    .line 42
    :goto_5
    sub-int/2addr p0, v0

    .line 43
    rem-int/2addr p0, p2

    .line 44
    if-ltz p0, :cond_8

    .line 45
    .line 46
    goto :goto_6

    .line 47
    :cond_8
    add-int/2addr p0, p2

    .line 48
    :goto_6
    add-int/2addr p0, p1

    .line 49
    return p0

    .line 50
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Step is zero."

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static final F(Ly1/f;)J
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-long v0, v0

    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    shl-long/2addr v0, v2

    .line 20
    int-to-long v2, p0

    .line 21
    const-wide v4, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v2, v4

    .line 27
    or-long/2addr v0, v2

    .line 28
    return-wide v0
.end method

.method public static final G(D)J
    .locals 2

    .line 1
    const-wide v0, 0x100000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    double-to-float p0, p0

    .line 7
    invoke-static {p0, v0, v1}, Lc7/a;->M(FJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final H(I)J
    .locals 2

    .line 1
    const-wide v0, 0x100000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    int-to-float p0, p0

    .line 7
    invoke-static {p0, v0, v1}, Lc7/a;->M(FJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final I(Lv9/e;Lv9/c;)Z
    .locals 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "specialCallableDescriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lv9/e;

    .line 21
    .line 22
    invoke-interface {p1}, Lv9/e;->n()Llb/a0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "getDefaultType(...)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lxa/d;->j(Lv9/e;)Lv9/e;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_f

    .line 37
    .line 38
    instance-of v1, p0, Lga/c;

    .line 39
    .line 40
    if-nez v1, :cond_e

    .line 41
    .line 42
    invoke-interface {p0}, Lv9/e;->n()Llb/a0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x3

    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v1, :cond_d

    .line 49
    .line 50
    new-instance v4, Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v5, Lmb/m;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-direct {v5, v1, v6}, Lmb/m;-><init>(Llb/w;Lmb/m;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_c

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lmb/m;

    .line 79
    .line 80
    iget-object v7, v5, Lmb/m;->a:Llb/w;

    .line 81
    .line 82
    invoke-virtual {v7}, Llb/w;->D0()Llb/k0;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    if-eqz v8, :cond_b

    .line 87
    .line 88
    if-eqz v1, :cond_a

    .line 89
    .line 90
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_9

    .line 95
    .line 96
    invoke-virtual {v7}, Llb/w;->E0()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget-object v5, v5, Lmb/m;->b:Lmb/m;

    .line 101
    .line 102
    :goto_1
    if-eqz v5, :cond_6

    .line 103
    .line 104
    iget-object v8, v5, Lmb/m;->a:Llb/w;

    .line 105
    .line 106
    invoke-virtual {v8}, Llb/w;->B0()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    sget-object v10, Llb/y0;->c:Llb/y0;

    .line 111
    .line 112
    sget-object v11, Llb/l0;->b:Llb/d;

    .line 113
    .line 114
    if-eqz v9, :cond_1

    .line 115
    .line 116
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_3

    .line 132
    .line 133
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    check-cast v12, Llb/n0;

    .line 138
    .line 139
    invoke-virtual {v12}, Llb/n0;->a()Llb/y0;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    if-eq v12, v10, :cond_2

    .line 144
    .line 145
    invoke-virtual {v8}, Llb/w;->D0()Llb/k0;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v8}, Llb/w;->B0()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v11, v9, v12}, Llb/d;->g(Llb/k0;Ljava/util/List;)Llb/q0;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-static {v9}, Lp9/x1;->Q(Llb/q0;)Llb/q0;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    new-instance v11, Llb/s0;

    .line 162
    .line 163
    invoke-direct {v11, v9}, Llb/s0;-><init>(Llb/q0;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v7, v10}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-static {v7}, Lp4/o;->t(Llb/w;)Lqb/a;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    iget-object v7, v7, Lqb/a;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v7, Llb/w;

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_3
    :goto_2
    invoke-virtual {v8}, Llb/w;->D0()Llb/k0;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v8}, Llb/w;->B0()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    invoke-virtual {v11, v9, v12}, Llb/d;->g(Llb/k0;Ljava/util/List;)Llb/q0;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    new-instance v11, Llb/s0;

    .line 192
    .line 193
    invoke-direct {v11, v9}, Llb/s0;-><init>(Llb/q0;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11, v7, v10}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    :goto_3
    if-nez v4, :cond_5

    .line 201
    .line 202
    invoke-virtual {v8}, Llb/w;->E0()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_4

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_4
    const/4 v4, 0x0

    .line 210
    goto :goto_5

    .line 211
    :cond_5
    :goto_4
    const/4 v4, 0x1

    .line 212
    :goto_5
    iget-object v5, v5, Lmb/m;->b:Lmb/m;

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_6
    invoke-virtual {v7}, Llb/w;->D0()Llb/k0;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_7

    .line 226
    .line 227
    invoke-static {v7, v4}, Llb/v0;->g(Llb/w;Z)Llb/x0;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    goto :goto_7

    .line 232
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    .line 233
    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v2, "Type constructors should be equals!\nsubstitutedSuperType: "

    .line 237
    .line 238
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Lmb/g;->n(Llb/k0;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v2, ", \n\nsupertype: "

    .line 249
    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-static {v1}, Lmb/g;->n(Llb/k0;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v2, " \n"

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :cond_8
    invoke-static {v2}, Lmb/g;->a(I)V

    .line 281
    .line 282
    .line 283
    throw v6

    .line 284
    :cond_9
    invoke-interface {v8}, Llb/k0;->l()Ljava/util/Collection;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_0

    .line 297
    .line 298
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    check-cast v8, Llb/w;

    .line 303
    .line 304
    new-instance v9, Lmb/m;

    .line 305
    .line 306
    invoke-static {v8}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-direct {v9, v8, v5}, Lmb/m;-><init>(Llb/w;Lmb/m;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_a
    const/4 p0, 0x4

    .line 317
    invoke-static {p0}, Lmb/g;->a(I)V

    .line 318
    .line 319
    .line 320
    throw v6

    .line 321
    :cond_b
    invoke-static {v2}, Lmb/g;->a(I)V

    .line 322
    .line 323
    .line 324
    throw v6

    .line 325
    :cond_c
    :goto_7
    if-eqz v6, :cond_e

    .line 326
    .line 327
    invoke-static {p0}, Ls9/i;->A(Lv9/k;)Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    xor-int/2addr p0, v3

    .line 332
    return p0

    .line 333
    :cond_d
    new-array p0, v2, [Ljava/lang/Object;

    .line 334
    .line 335
    const-string p1, "subtype"

    .line 336
    .line 337
    aput-object p1, p0, v0

    .line 338
    .line 339
    const-string p1, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    .line 340
    .line 341
    aput-object p1, p0, v3

    .line 342
    .line 343
    const-string p1, "findCorrespondingSupertype"

    .line 344
    .line 345
    const/4 v0, 0x2

    .line 346
    aput-object p1, p0, v0

    .line 347
    .line 348
    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 349
    .line 350
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 355
    .line 356
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw p1

    .line 360
    :cond_e
    invoke-static {p0}, Lxa/d;->j(Lv9/e;)Lv9/e;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_f
    return v0
.end method

.method public static final J(Lm9/b;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Lm9/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lm9/u;

    .line 8
    .line 9
    invoke-static {v0}, Li2/c;->x(Lm9/u;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    :goto_0
    if-eqz v2, :cond_14

    .line 22
    .line 23
    invoke-interface {v0}, Lm9/u;->b()Lm9/p;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Li2/c;->y(Lm9/f;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    :goto_1
    if-eqz v0, :cond_14

    .line 40
    .line 41
    check-cast p0, Lm9/l;

    .line 42
    .line 43
    invoke-interface {p0}, Lm9/l;->c()Lm9/g;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Li2/c;->y(Lm9/f;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 p0, 0x1

    .line 59
    :goto_2
    if-eqz p0, :cond_14

    .line 60
    .line 61
    goto/16 :goto_f

    .line 62
    .line 63
    :cond_3
    instance-of v0, p0, Lm9/u;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    check-cast p0, Lm9/u;

    .line 68
    .line 69
    invoke-static {p0}, Li2/c;->x(Lm9/u;)Ljava/lang/reflect/Field;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const/4 v0, 0x1

    .line 81
    :goto_3
    if-eqz v0, :cond_14

    .line 82
    .line 83
    invoke-interface {p0}, Lm9/u;->b()Lm9/p;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Li2/c;->y(Lm9/f;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    const/4 p0, 0x1

    .line 99
    :goto_4
    if-eqz p0, :cond_14

    .line 100
    .line 101
    goto/16 :goto_f

    .line 102
    .line 103
    :cond_6
    instance-of v0, p0, Lm9/p;

    .line 104
    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    move-object v0, p0

    .line 108
    check-cast v0, Lm9/p;

    .line 109
    .line 110
    invoke-interface {v0}, Lm9/o;->a()Lm9/u;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Li2/c;->x(Lm9/u;)Ljava/lang/reflect/Field;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    goto :goto_5

    .line 125
    :cond_7
    const/4 v0, 0x1

    .line 126
    :goto_5
    if-eqz v0, :cond_14

    .line 127
    .line 128
    check-cast p0, Lm9/f;

    .line 129
    .line 130
    invoke-static {p0}, Li2/c;->y(Lm9/f;)Ljava/lang/reflect/Method;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    goto :goto_6

    .line 141
    :cond_8
    const/4 p0, 0x1

    .line 142
    :goto_6
    if-eqz p0, :cond_14

    .line 143
    .line 144
    goto/16 :goto_f

    .line 145
    .line 146
    :cond_9
    instance-of v0, p0, Lm9/g;

    .line 147
    .line 148
    if-eqz v0, :cond_c

    .line 149
    .line 150
    move-object v0, p0

    .line 151
    check-cast v0, Lm9/g;

    .line 152
    .line 153
    invoke-interface {v0}, Lm9/o;->a()Lm9/u;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Li2/c;->x(Lm9/u;)Ljava/lang/reflect/Field;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    goto :goto_7

    .line 168
    :cond_a
    const/4 v0, 0x1

    .line 169
    :goto_7
    if-eqz v0, :cond_14

    .line 170
    .line 171
    check-cast p0, Lm9/f;

    .line 172
    .line 173
    invoke-static {p0}, Li2/c;->y(Lm9/f;)Ljava/lang/reflect/Method;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-eqz p0, :cond_b

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    goto :goto_8

    .line 184
    :cond_b
    const/4 p0, 0x1

    .line 185
    :goto_8
    if-eqz p0, :cond_14

    .line 186
    .line 187
    goto :goto_f

    .line 188
    :cond_c
    instance-of v0, p0, Lm9/f;

    .line 189
    .line 190
    if-eqz v0, :cond_15

    .line 191
    .line 192
    move-object v0, p0

    .line 193
    check-cast v0, Lm9/f;

    .line 194
    .line 195
    invoke-static {v0}, Li2/c;->y(Lm9/f;)Ljava/lang/reflect/Method;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_d

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    goto :goto_9

    .line 206
    :cond_d
    const/4 v2, 0x1

    .line 207
    :goto_9
    if-eqz v2, :cond_14

    .line 208
    .line 209
    invoke-static {p0}, Lp9/c2;->a(Lm9/b;)Lp9/t;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const/4 v2, 0x0

    .line 214
    if-eqz p0, :cond_e

    .line 215
    .line 216
    invoke-virtual {p0}, Lp9/t;->j()Lq9/g;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    if-eqz p0, :cond_e

    .line 221
    .line 222
    invoke-interface {p0}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    goto :goto_a

    .line 227
    :cond_e
    move-object p0, v2

    .line 228
    :goto_a
    instance-of v3, p0, Ljava/lang/reflect/AccessibleObject;

    .line 229
    .line 230
    if-eqz v3, :cond_f

    .line 231
    .line 232
    check-cast p0, Ljava/lang/reflect/AccessibleObject;

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_f
    move-object p0, v2

    .line 236
    :goto_b
    if-eqz p0, :cond_10

    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    goto :goto_c

    .line 243
    :cond_10
    const/4 p0, 0x1

    .line 244
    :goto_c
    if-eqz p0, :cond_14

    .line 245
    .line 246
    invoke-static {v0}, Lp9/c2;->a(Lm9/b;)Lp9/t;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-eqz p0, :cond_11

    .line 251
    .line 252
    invoke-virtual {p0}, Lp9/t;->f()Lq9/g;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    if-eqz p0, :cond_11

    .line 257
    .line 258
    invoke-interface {p0}, Lq9/g;->r()Ljava/lang/reflect/Member;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    goto :goto_d

    .line 263
    :cond_11
    move-object p0, v2

    .line 264
    :goto_d
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    .line 265
    .line 266
    if-eqz v0, :cond_12

    .line 267
    .line 268
    move-object v2, p0

    .line 269
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 270
    .line 271
    :cond_12
    if-eqz v2, :cond_13

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    goto :goto_e

    .line 278
    :cond_13
    const/4 p0, 0x1

    .line 279
    :goto_e
    if-eqz p0, :cond_14

    .line 280
    .line 281
    :goto_f
    return v1

    .line 282
    :cond_14
    const/4 p0, 0x0

    .line 283
    return p0

    .line 284
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 285
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v2, "Unknown callable: "

    .line 289
    .line 290
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v2, " ("

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const/16 p0, 0x29

    .line 309
    .line 310
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0
.end method

.method public static K(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ly6/a;

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_2
    return v1
.end method

.method public static final L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lna/g;->d:Lna/g;

    .line 8
    .line 9
    const-string v4, "kotlinType"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v4, v1, Lna/s;->c:Z

    .line 15
    .line 16
    const-string v5, "writeGenericType"

    .line 17
    .line 18
    invoke-static {v2, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lp9/q;->F(Llb/w;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const-string v6, "getType(...)"

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    sget-object v3, Ls9/q;->a:Ly9/b0;

    .line 31
    .line 32
    invoke-static {v0}, Lp9/q;->F(Llb/w;)Z

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lp4/o;->E(Llb/w;)Ls9/i;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v0}, Llb/w;->getAnnotations()Lw9/h;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-static {v0}, Lp9/q;->C(Llb/w;)Llb/w;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-static {v0}, Lp9/q;->A(Llb/w;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-static {v0}, Lp9/q;->D(Llb/w;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/16 v5, 0xa

    .line 58
    .line 59
    invoke-static {v3, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_0

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Llb/n0;

    .line 81
    .line 82
    invoke-virtual {v5}, Llb/n0;->b()Llb/w;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    sget-object v3, Llb/h0;->b:Lu0/j;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v3, Llb/h0;->c:Llb/h0;

    .line 96
    .line 97
    sget-object v5, Ls9/q;->a:Ly9/b0;

    .line 98
    .line 99
    invoke-virtual {v5}, Ly9/b0;->t()Llb/k0;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v0}, Lp9/q;->E(Llb/w;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-static {v12}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v12, Llb/n0;

    .line 115
    .line 116
    invoke-virtual {v12}, Llb/n0;->b()Llb/w;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-static {v12, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v12}, Lp4/o;->u(Llb/w;)Llb/f0;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-static {v6}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6, v3, v5, v7}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v4, v3}, Ls8/p;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    invoke-static {v0}, Lp4/o;->E(Llb/w;)Ls9/i;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ls9/i;->p()Llb/a0;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    const-string v3, "getNullableAnyType(...)"

    .line 148
    .line 149
    invoke-static {v13, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    invoke-static/range {v8 .. v14}, Lp9/q;->u(Ls9/i;Lw9/h;Llb/w;Ljava/util/List;Ljava/util/ArrayList;Llb/w;Z)Llb/a0;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v0}, Llb/w;->E0()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {v3, v0}, Llb/a0;->K0(Z)Llb/a0;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0, v1, v2}, Lc7/a;->L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    :cond_1
    invoke-static {v0}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    if-nez v5, :cond_3

    .line 175
    .line 176
    invoke-static {v0}, Lmb/g;->g(Lob/d;)Llb/p;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-eqz v5, :cond_2

    .line 181
    .line 182
    invoke-static {v5}, Lmb/g;->N(Llb/p;)Llb/a0;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    if-nez v5, :cond_3

    .line 187
    .line 188
    :cond_2
    invoke-static {v0}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_3
    invoke-static {v5}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {v5}, Lmb/g;->y(Lob/h;)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    const-string v9, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 204
    .line 205
    const-string v10, "["

    .line 206
    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x1

    .line 209
    if-nez v8, :cond_4

    .line 210
    .line 211
    goto/16 :goto_6

    .line 212
    .line 213
    :cond_4
    const-string v8, "$receiver"

    .line 214
    .line 215
    invoke-static {v5, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    instance-of v13, v5, Llb/k0;

    .line 219
    .line 220
    const-string v14, ", "

    .line 221
    .line 222
    const-string v15, "ClassicTypeSystemContext couldn\'t handle: "

    .line 223
    .line 224
    if-eqz v13, :cond_25

    .line 225
    .line 226
    move-object v13, v5

    .line 227
    check-cast v13, Llb/k0;

    .line 228
    .line 229
    invoke-interface {v13}, Llb/k0;->k()Lv9/h;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    invoke-static {v13, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    check-cast v13, Lv9/e;

    .line 237
    .line 238
    invoke-static {v13}, Ls9/i;->u(Lv9/e;)Ls9/k;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    if-eqz v13, :cond_7

    .line 243
    .line 244
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    packed-switch v5, :pswitch_data_0

    .line 249
    .line 250
    .line 251
    new-instance v0, Lac/p;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :pswitch_0
    sget-object v5, Lna/l;->h:Lna/k;

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :pswitch_1
    sget-object v5, Lna/l;->g:Lna/k;

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :pswitch_2
    sget-object v5, Lna/l;->f:Lna/k;

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :pswitch_3
    sget-object v5, Lna/l;->e:Lna/k;

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :pswitch_4
    sget-object v5, Lna/l;->d:Lna/k;

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :pswitch_5
    sget-object v5, Lna/l;->c:Lna/k;

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :pswitch_6
    sget-object v5, Lna/l;->b:Lna/k;

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :pswitch_7
    sget-object v5, Lna/l;->a:Lna/k;

    .line 279
    .line 280
    :goto_1
    invoke-static {v0}, Lmb/g;->H(Lob/d;)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-nez v8, :cond_6

    .line 285
    .line 286
    sget-object v8, Lea/y;->p:Lua/c;

    .line 287
    .line 288
    const-string v11, "ENHANCED_NULLABILITY_ANNOTATION"

    .line 289
    .line 290
    invoke-static {v8, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v8}, Lmb/g;->u(Lob/d;Lua/c;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_5

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_5
    const/4 v8, 0x0

    .line 301
    goto :goto_3

    .line 302
    :cond_6
    :goto_2
    const/4 v8, 0x1

    .line 303
    :goto_3
    invoke-static {v5, v8}, La/a;->n(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    goto/16 :goto_6

    .line 308
    .line 309
    :cond_7
    invoke-static {v5, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    instance-of v13, v5, Llb/k0;

    .line 313
    .line 314
    if-eqz v13, :cond_24

    .line 315
    .line 316
    move-object v13, v5

    .line 317
    check-cast v13, Llb/k0;

    .line 318
    .line 319
    invoke-interface {v13}, Llb/k0;->k()Lv9/h;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    invoke-static {v13, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    check-cast v13, Lv9/e;

    .line 327
    .line 328
    invoke-static {v13}, Ls9/i;->s(Lv9/h;)Ls9/k;

    .line 329
    .line 330
    .line 331
    move-result-object v13

    .line 332
    if-eqz v13, :cond_9

    .line 333
    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    sget-object v8, Lcb/c;->n:Ljava/util/EnumMap;

    .line 340
    .line 341
    invoke-virtual {v8, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    check-cast v8, Lcb/c;

    .line 346
    .line 347
    if-eqz v8, :cond_8

    .line 348
    .line 349
    invoke-virtual {v8}, Lcb/c;->c()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-static {v5}, Lna/g;->c(Ljava/lang/String;)Lna/l;

    .line 361
    .line 362
    .line 363
    move-result-object v11

    .line 364
    goto/16 :goto_6

    .line 365
    .line 366
    :cond_8
    const/4 v0, 0x6

    .line 367
    invoke-static {v0}, Lcb/c;->a(I)V

    .line 368
    .line 369
    .line 370
    throw v11

    .line 371
    :cond_9
    invoke-static {v5, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    instance-of v13, v5, Llb/k0;

    .line 375
    .line 376
    if-eqz v13, :cond_23

    .line 377
    .line 378
    move-object v13, v5

    .line 379
    check-cast v13, Llb/k0;

    .line 380
    .line 381
    invoke-interface {v13}, Llb/k0;->k()Lv9/h;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    if-eqz v13, :cond_a

    .line 386
    .line 387
    invoke-static {v13}, Ls9/i;->J(Lv9/h;)Z

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-ne v13, v12, :cond_a

    .line 392
    .line 393
    const/4 v13, 0x1

    .line 394
    goto :goto_4

    .line 395
    :cond_a
    const/4 v13, 0x0

    .line 396
    :goto_4
    if-eqz v13, :cond_f

    .line 397
    .line 398
    invoke-static {v5, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    instance-of v8, v5, Llb/k0;

    .line 402
    .line 403
    if-eqz v8, :cond_e

    .line 404
    .line 405
    check-cast v5, Llb/k0;

    .line 406
    .line 407
    invoke-interface {v5}, Llb/k0;->k()Lv9/h;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    invoke-static {v5, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    check-cast v5, Lv9/e;

    .line 415
    .line 416
    invoke-static {v5}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    sget-object v8, Lu9/d;->a:Ljava/lang/String;

    .line 421
    .line 422
    invoke-static {v5}, Lu9/d;->f(Lua/d;)Lua/b;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    if-eqz v5, :cond_f

    .line 427
    .line 428
    iget-boolean v8, v1, Lna/s;->g:Z

    .line 429
    .line 430
    if-nez v8, :cond_d

    .line 431
    .line 432
    sget-object v8, Lu9/d;->n:Ljava/util/List;

    .line 433
    .line 434
    if-eqz v8, :cond_b

    .line 435
    .line 436
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v13

    .line 440
    if-eqz v13, :cond_b

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_b
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v13

    .line 451
    if-eqz v13, :cond_d

    .line 452
    .line 453
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v13

    .line 457
    check-cast v13, Lu9/c;

    .line 458
    .line 459
    iget-object v13, v13, Lu9/c;->a:Lua/b;

    .line 460
    .line 461
    invoke-virtual {v13, v5}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    if-eqz v13, :cond_c

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_d
    :goto_5
    invoke-static {v5}, Lcb/b;->e(Lua/b;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-static {v5}, Lna/g;->d(Ljava/lang/String;)Lna/j;

    .line 473
    .line 474
    .line 475
    move-result-object v11

    .line 476
    goto :goto_6

    .line 477
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 493
    .line 494
    invoke-static {v2, v1, v0}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v1

    .line 508
    :cond_f
    :goto_6
    if-eqz v11, :cond_10

    .line 509
    .line 510
    iget-boolean v3, v1, Lna/s;->a:Z

    .line 511
    .line 512
    invoke-static {v11, v3}, La/a;->n(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-interface {v2, v0, v3, v1}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    return-object v3

    .line 520
    :cond_10
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    instance-of v8, v5, Llb/v;

    .line 525
    .line 526
    if-eqz v8, :cond_12

    .line 527
    .line 528
    check-cast v5, Llb/v;

    .line 529
    .line 530
    iget-object v0, v5, Llb/v;->a:Llb/w;

    .line 531
    .line 532
    if-eqz v0, :cond_11

    .line 533
    .line 534
    invoke-static {v0}, Lp4/o;->Z(Llb/w;)Llb/x0;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-static {v0, v1, v2}, Lc7/a;->L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    return-object v0

    .line 543
    :cond_11
    iget-object v1, v5, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 544
    .line 545
    const-string v0, "types"

    .line 546
    .line 547
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    new-instance v0, Ljava/lang/AssertionError;

    .line 551
    .line 552
    new-instance v7, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string v2, "There should be no intersection type in existing descriptors, but found: "

    .line 555
    .line 556
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    const/4 v5, 0x0

    .line 560
    const/16 v6, 0x3f

    .line 561
    .line 562
    const/4 v2, 0x0

    .line 563
    const/4 v3, 0x0

    .line 564
    const/4 v4, 0x0

    .line 565
    invoke-static/range {v1 .. v6}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_12
    invoke-interface {v5}, Llb/k0;->k()Lv9/h;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    if-eqz v5, :cond_22

    .line 585
    .line 586
    invoke-static {v5}, Lnb/l;->f(Lv9/k;)Z

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    if-eqz v8, :cond_13

    .line 591
    .line 592
    const-string v0, "error/NonExistentClass"

    .line 593
    .line 594
    invoke-static {v0}, Lna/g;->d(Ljava/lang/String;)Lna/j;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    check-cast v5, Lv9/e;

    .line 599
    .line 600
    return-object v0

    .line 601
    :cond_13
    instance-of v8, v5, Lv9/e;

    .line 602
    .line 603
    if-eqz v8, :cond_1a

    .line 604
    .line 605
    invoke-static {v0}, Ls9/i;->z(Llb/w;)Z

    .line 606
    .line 607
    .line 608
    move-result v11

    .line 609
    if-eqz v11, :cond_1a

    .line 610
    .line 611
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    if-ne v3, v12, :cond_19

    .line 620
    .line 621
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    check-cast v0, Llb/n0;

    .line 630
    .line 631
    invoke-virtual {v0}, Llb/n0;->b()Llb/w;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    invoke-static {v3, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0}, Llb/n0;->a()Llb/y0;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    sget-object v6, Llb/y0;->d:Llb/y0;

    .line 643
    .line 644
    if-ne v5, v6, :cond_14

    .line 645
    .line 646
    const-string v0, "java/lang/Object"

    .line 647
    .line 648
    invoke-static {v0}, Lna/g;->d(Ljava/lang/String;)Lna/j;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    goto :goto_8

    .line 653
    :cond_14
    invoke-virtual {v0}, Llb/n0;->a()Llb/y0;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    const-string v5, "getProjectionKind(...)"

    .line 658
    .line 659
    invoke-static {v0, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    if-eqz v4, :cond_15

    .line 663
    .line 664
    goto :goto_7

    .line 665
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eqz v0, :cond_17

    .line 670
    .line 671
    if-eq v0, v12, :cond_16

    .line 672
    .line 673
    iget-object v0, v1, Lna/s;->f:Lna/s;

    .line 674
    .line 675
    if-nez v0, :cond_18

    .line 676
    .line 677
    goto :goto_7

    .line 678
    :cond_16
    iget-object v0, v1, Lna/s;->h:Lna/s;

    .line 679
    .line 680
    if-nez v0, :cond_18

    .line 681
    .line 682
    goto :goto_7

    .line 683
    :cond_17
    iget-object v0, v1, Lna/s;->i:Lna/s;

    .line 684
    .line 685
    if-nez v0, :cond_18

    .line 686
    .line 687
    :goto_7
    move-object v0, v1

    .line 688
    :cond_18
    invoke-static {v3, v0, v2}, Lc7/a;->L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    check-cast v0, Lna/l;

    .line 698
    .line 699
    invoke-static {v0}, Lna/g;->h(Lna/l;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-static {v0}, Lna/g;->c(Ljava/lang/String;)Lna/l;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    return-object v0

    .line 715
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 716
    .line 717
    const-string v1, "arrays must have one type argument"

    .line 718
    .line 719
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    throw v0

    .line 723
    :cond_1a
    if-eqz v8, :cond_1e

    .line 724
    .line 725
    invoke-static {v5}, Lxa/f;->b(Lv9/k;)Z

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    if-eqz v6, :cond_1b

    .line 730
    .line 731
    iget-boolean v6, v1, Lna/s;->b:Z

    .line 732
    .line 733
    if-nez v6, :cond_1b

    .line 734
    .line 735
    new-instance v6, Ljava/util/HashSet;

    .line 736
    .line 737
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-static {v0, v6}, Llb/c;->d(Lob/d;Ljava/util/HashSet;)Lob/d;

    .line 741
    .line 742
    .line 743
    move-result-object v6

    .line 744
    check-cast v6, Llb/w;

    .line 745
    .line 746
    if-eqz v6, :cond_1b

    .line 747
    .line 748
    new-instance v10, Lna/s;

    .line 749
    .line 750
    iget-boolean v11, v1, Lna/s;->a:Z

    .line 751
    .line 752
    iget-boolean v13, v1, Lna/s;->c:Z

    .line 753
    .line 754
    iget-boolean v14, v1, Lna/s;->d:Z

    .line 755
    .line 756
    iget-boolean v15, v1, Lna/s;->e:Z

    .line 757
    .line 758
    iget-object v0, v1, Lna/s;->f:Lna/s;

    .line 759
    .line 760
    iget-boolean v3, v1, Lna/s;->g:Z

    .line 761
    .line 762
    iget-object v4, v1, Lna/s;->h:Lna/s;

    .line 763
    .line 764
    iget-object v1, v1, Lna/s;->i:Lna/s;

    .line 765
    .line 766
    const/16 v20, 0x200

    .line 767
    .line 768
    const/4 v12, 0x1

    .line 769
    move-object/from16 v16, v0

    .line 770
    .line 771
    move-object/from16 v19, v1

    .line 772
    .line 773
    move/from16 v17, v3

    .line 774
    .line 775
    move-object/from16 v18, v4

    .line 776
    .line 777
    invoke-direct/range {v10 .. v20}, Lna/s;-><init>(ZZZZZLna/s;ZLna/s;Lna/s;I)V

    .line 778
    .line 779
    .line 780
    invoke-static {v6, v10, v2}, Lc7/a;->L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    return-object v0

    .line 785
    :cond_1b
    if-eqz v4, :cond_1c

    .line 786
    .line 787
    move-object v4, v5

    .line 788
    check-cast v4, Lv9/e;

    .line 789
    .line 790
    sget-object v6, Ls9/i;->e:Lua/e;

    .line 791
    .line 792
    sget-object v6, Ls9/o;->Q:Lua/d;

    .line 793
    .line 794
    invoke-static {v4, v6}, Ls9/i;->b(Lv9/e;Lua/d;)Z

    .line 795
    .line 796
    .line 797
    move-result v4

    .line 798
    if-eqz v4, :cond_1c

    .line 799
    .line 800
    const-string v3, "java/lang/Class"

    .line 801
    .line 802
    invoke-static {v3}, Lna/g;->d(Ljava/lang/String;)Lna/j;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    goto :goto_9

    .line 807
    :cond_1c
    check-cast v5, Lv9/e;

    .line 808
    .line 809
    invoke-interface {v5}, Lv9/e;->a()Lv9/e;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    const-string v6, "getOriginal(...)"

    .line 814
    .line 815
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-interface {v5}, Lv9/e;->f()Lv9/f;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    sget-object v7, Lv9/f;->d:Lv9/f;

    .line 823
    .line 824
    if-ne v4, v7, :cond_1d

    .line 825
    .line 826
    invoke-interface {v5}, Lv9/k;->k()Lv9/k;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    invoke-static {v4, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    move-object v5, v4

    .line 834
    check-cast v5, Lv9/e;

    .line 835
    .line 836
    :cond_1d
    invoke-interface {v5}, Lv9/e;->a()Lv9/e;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v4, v3}, Lc7/a;->l(Lv9/e;Lna/g;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    invoke-static {v3}, Lna/g;->d(Ljava/lang/String;)Lna/j;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    :goto_9
    invoke-interface {v2, v0, v3, v1}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    return-object v3

    .line 855
    :cond_1e
    instance-of v3, v5, Lv9/q0;

    .line 856
    .line 857
    if-eqz v3, :cond_20

    .line 858
    .line 859
    check-cast v5, Lv9/q0;

    .line 860
    .line 861
    invoke-static {v5}, Lp4/o;->H(Lv9/q0;)Llb/w;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    invoke-virtual {v0}, Llb/w;->E0()Z

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    if-eqz v0, :cond_1f

    .line 870
    .line 871
    invoke-static {v2}, Lp4/o;->N(Llb/w;)Llb/x0;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    :cond_1f
    sget-object v0, Lub/c;->a:Lub/c;

    .line 876
    .line 877
    invoke-static {v2, v1, v0}, Lc7/a;->L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    return-object v0

    .line 882
    :cond_20
    instance-of v3, v5, Lv9/p0;

    .line 883
    .line 884
    if-eqz v3, :cond_21

    .line 885
    .line 886
    iget-boolean v3, v1, Lna/s;->j:Z

    .line 887
    .line 888
    if-eqz v3, :cond_21

    .line 889
    .line 890
    check-cast v5, Lv9/p0;

    .line 891
    .line 892
    check-cast v5, Ljb/u;

    .line 893
    .line 894
    invoke-virtual {v5}, Ljb/u;->D0()Llb/a0;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    :try_start_0
    invoke-static {v0, v1, v2}, Lc7/a;->L(Llb/w;Lna/s;Lf9/o;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    return-object v0

    .line 903
    :catchall_0
    move-exception v0

    .line 904
    throw v0

    .line 905
    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 906
    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    const-string v3, "Unknown type "

    .line 910
    .line 911
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    throw v1

    .line 925
    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 926
    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    .line 928
    .line 929
    const-string v3, "no descriptor for type constructor of "

    .line 930
    .line 931
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    throw v1

    .line 945
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 961
    .line 962
    invoke-static {v2, v1, v0}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 967
    .line 968
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    throw v1

    .line 976
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 977
    .line 978
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 992
    .line 993
    invoke-static {v2, v1, v0}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 998
    .line 999
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    throw v1

    .line 1007
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 1023
    .line 1024
    invoke-static {v2, v1, v0}, La2/f;->E(Lg9/z;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1029
    .line 1030
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    throw v1

    .line 1038
    nop

    .line 1039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final M(FJ)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    or-long/2addr p1, v0

    .line 13
    sget-object p0, Ln3/o;->b:[Ln3/p;

    .line 14
    .line 15
    return-wide p1
.end method

.method public static final N(Lda/a;Lda/b;Lv9/d0;Lua/e;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "from"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "scopeOwner"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "name"

    .line 17
    .line 18
    invoke-static {p3, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p2, Ly9/c0;

    .line 22
    .line 23
    iget-object p0, p2, Ly9/c0;->e:Lua/c;

    .line 24
    .line 25
    iget-object p0, p0, Lua/c;->a:Lua/d;

    .line 26
    .line 27
    iget-object p0, p0, Lua/d;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p3}, Lua/e;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "asString(...)"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "packageFqName"

    .line 39
    .line 40
    invoke-static {p0, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final O(JFLn3/c;)F
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ln3/o;->b(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ln3/p;->a(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p3}, Ln3/c;->M()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-double v0, v0

    .line 21
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpl-double v4, v0, v2

    .line 27
    .line 28
    if-lez v4, :cond_0

    .line 29
    .line 30
    invoke-interface {p3, p2}, Ln3/c;->D(F)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {p0, p1}, Ln3/o;->c(J)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {v0, v1}, Ln3/o;->c(J)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    div-float/2addr p0, p1

    .line 43
    :goto_0
    mul-float p0, p0, p2

    .line 44
    .line 45
    return p0

    .line 46
    :cond_0
    invoke-interface {p3, p0, p1}, Ln3/c;->h0(J)F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    const-wide v2, 0x200000000L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3}, Ln3/p;->a(JJ)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_2

    .line 61
    .line 62
    invoke-static {p0, p1}, Ln3/o;->c(J)F

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 68
    .line 69
    return p0
.end method

.method public static P(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;Z)Ljava/util/LinkedHashSet;
    .locals 2

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
    if-eqz p5, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    move-object v1, p4

    .line 18
    move-object p4, p3

    .line 19
    move-object p3, p2

    .line 20
    move-object p2, p1

    .line 21
    move-object p1, p0

    .line 22
    move-object p0, p5

    .line 23
    new-instance p5, Lfa/a;

    .line 24
    .line 25
    invoke-direct {p5, v1, v0, p6}, Lfa/a;-><init>(Lhb/m;Ljava/util/LinkedHashSet;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p5}, Lxa/j;->h(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lxa/k;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    const/16 p0, 0x11

    .line 33
    .line 34
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    const/16 p0, 0x10

    .line 39
    .line 40
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    const/16 p0, 0xf

    .line 45
    .line 46
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_3
    const/16 p0, 0xd

    .line 51
    .line 52
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_4
    const/16 p0, 0xc

    .line 57
    .line 58
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public static Q(Lua/e;Ljava/util/AbstractCollection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    const/4 v7, 0x0

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
    move-object v6, p5

    .line 17
    invoke-static/range {v1 .. v7}, Lc7/a;->P(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;Z)Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x5

    .line 23
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    const/4 p0, 0x4

    .line 28
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    const/4 p0, 0x3

    .line 33
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_3
    const/4 p0, 0x0

    .line 38
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static R(Lua/e;Ljava/util/Collection;Ljava/util/AbstractCollection;Lia/j;Lhb/m;Lxa/j;)Ljava/util/LinkedHashSet;
    .locals 8

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
    if-eqz p5, :cond_0

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p5

    .line 19
    invoke-static/range {v1 .. v7}, Lc7/a;->P(Lua/e;Ljava/util/Collection;Ljava/util/Collection;Lv9/e;Lhb/m;Lxa/j;Z)Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const/16 p0, 0xb

    .line 25
    .line 26
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    const/16 p0, 0xa

    .line 31
    .line 32
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_2
    const/16 p0, 0x9

    .line 37
    .line 38
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    const/4 p0, 0x7

    .line 43
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_4
    const/4 p0, 0x6

    .line 48
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public static final S(Landroid/text/Spannable;JII)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x10

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ly1/h0;->C(J)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x21

    .line 17
    .line 18
    invoke-interface {p0, v0, p3, p4, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final T(Landroid/text/Spannable;JLn3/c;II)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Ln3/o;->b(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ln3/p;->a(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x21

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 19
    .line 20
    invoke-interface {p3, p1, p2}, Ln3/c;->h0(J)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Li9/a;->N(F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-wide v4, 0x200000000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v4, v5}, Ln3/p;->a(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 48
    .line 49
    invoke-static {p1, p2}, Ln3/o;->c(J)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p3, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public static final U(Landroid/text/Spannable;Li3/b;II)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Li3/b;->a:Ljava/util/List;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-static {p1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Li3/a;

    .line 37
    .line 38
    iget-object v0, v0, Li3/a;->a:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    new-array p1, p1, [Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Ljava/util/Locale;

    .line 52
    .line 53
    array-length v0, p1

    .line 54
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [Ljava/util/Locale;

    .line 59
    .line 60
    invoke-static {p1}, Lr2/g0;->c([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, La4/h;->h(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    sget-object p1, Li3/d;->a:Li3/c;

    .line 76
    .line 77
    invoke-interface {p1}, Li3/c;->n()Li3/b;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Li3/b;->b()Li3/a;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Li3/b;->b()Li3/a;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_1
    new-instance v0, Landroid/text/style/LocaleSpan;

    .line 91
    .line 92
    iget-object p1, p1, Li3/a;->a:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 95
    .line 96
    .line 97
    move-object p1, v0

    .line 98
    :goto_2
    const/16 v0, 0x21

    .line 99
    .line 100
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public static final V(Lg1/m0;ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg1/m0;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lg1/m0;->h:I

    .line 4
    .line 5
    iget-object v2, p0, Lg1/m0;->c:[Lg1/j0;

    .line 6
    .line 7
    iget p0, p0, Lg1/m0;->d:I

    .line 8
    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    .line 11
    aget-object p0, v2, p0

    .line 12
    .line 13
    iget p0, p0, Lg1/j0;->c:I

    .line 14
    .line 15
    sub-int/2addr v1, p0

    .line 16
    add-int/2addr v1, p1

    .line 17
    aput-object p2, v0, v1

    .line 18
    .line 19
    return-void
.end method

.method public static final W(Lg1/m0;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lg1/m0;->h:I

    .line 2
    .line 3
    iget-object v1, p0, Lg1/m0;->c:[Lg1/j0;

    .line 4
    .line 5
    iget v2, p0, Lg1/m0;->d:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, -0x1

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    iget v1, v1, Lg1/j0;->c:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object p0, p0, Lg1/m0;->g:[Ljava/lang/Object;

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    aput-object p2, p0, p1

    .line 18
    .line 19
    add-int/2addr v0, p3

    .line 20
    aput-object p4, p0, v0

    .line 21
    .line 22
    return-void
.end method

.method public static X(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lp/e3;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lp/g3;->k:Lp/g3;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lp/g3;->a:Landroid/view/View;

    .line 17
    .line 18
    if-ne v0, p0, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Lp/g3;->b(Lp/g3;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    sget-object p1, Lp/g3;->l:Lp/g3;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Lp/g3;->a:Landroid/view/View;

    .line 34
    .line 35
    if-ne v0, p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lp/g3;->a()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    new-instance v0, Lp/g3;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lp/g3;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static Y(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "Unspecified"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "Text"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "Ascii"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "Number"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "Phone"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "Uri"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "Email"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    const-string p0, "Password"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    const-string p0, "NumberPassword"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "Decimal"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const-string p0, "Invalid"

    .line 63
    .line 64
    return-object p0
.end method

.method public static synthetic a(I)V
    .locals 7

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    .line 9
    .line 10
    :goto_0
    const/4 v2, 0x2

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v3, 0x2

    .line 16
    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    packed-switch p0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    :pswitch_0
    const-string v6, "name"

    .line 25
    .line 26
    aput-object v6, v3, v5

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :pswitch_1
    const-string v6, "annotationClass"

    .line 30
    .line 31
    aput-object v6, v3, v5

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_2
    aput-object v4, v3, v5

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :pswitch_3
    const-string v6, "overridingUtil"

    .line 38
    .line 39
    aput-object v6, v3, v5

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :pswitch_4
    const-string v6, "errorReporter"

    .line 43
    .line 44
    aput-object v6, v3, v5

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :pswitch_5
    const-string v6, "classDescriptor"

    .line 48
    .line 49
    aput-object v6, v3, v5

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :pswitch_6
    const-string v6, "membersFromCurrent"

    .line 53
    .line 54
    aput-object v6, v3, v5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :pswitch_7
    const-string v6, "membersFromSupertypes"

    .line 58
    .line 59
    aput-object v6, v3, v5

    .line 60
    .line 61
    :goto_2
    const-string v5, "resolveOverrides"

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    if-eq p0, v0, :cond_2

    .line 65
    .line 66
    aput-object v4, v3, v6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    aput-object v5, v3, v6

    .line 70
    .line 71
    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 72
    .line 73
    .line 74
    const-string v4, "resolveOverridesForNonStaticMembers"

    .line 75
    .line 76
    aput-object v4, v3, v2

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :pswitch_8
    const-string v4, "getAnnotationParameterByName"

    .line 80
    .line 81
    aput-object v4, v3, v2

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :pswitch_9
    aput-object v5, v3, v2

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :pswitch_a
    const-string v4, "resolveOverridesForStaticMembers"

    .line 88
    .line 89
    aput-object v4, v3, v2

    .line 90
    .line 91
    :goto_4
    :pswitch_b
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eq p0, v0, :cond_3

    .line 96
    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_5
    throw p0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static final b(IILd0/g;Ld0/h0;Lf0/u;Lf1/s;Lf9/k;Lr1/f;Lr1/p;Lx/h;Lz/h;Z)V
    .locals 23

    .line 1
    move/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    const v1, 0x3335543

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    or-int/lit8 v2, v10, 0x6

    .line 16
    .line 17
    move v3, v2

    .line 18
    move-object/from16 v2, p8

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit8 v2, v10, 0x6

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    move-object/from16 v2, p8

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v10

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object/from16 v2, p8

    .line 39
    .line 40
    move v3, v10

    .line 41
    :goto_1
    and-int/lit8 v4, p1, 0x2

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    move-object/from16 v4, p4

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move-object/from16 v4, p4

    .line 57
    .line 58
    :cond_4
    const/16 v5, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v3, v5

    .line 61
    and-int/lit8 v5, p1, 0x4

    .line 62
    .line 63
    if-eqz v5, :cond_6

    .line 64
    .line 65
    or-int/lit16 v3, v3, 0x180

    .line 66
    .line 67
    :cond_5
    move-object/from16 v6, p3

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_6
    and-int/lit16 v6, v10, 0x180

    .line 71
    .line 72
    if-nez v6, :cond_5

    .line 73
    .line 74
    move-object/from16 v6, p3

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_7

    .line 81
    .line 82
    const/16 v7, 0x100

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_7
    const/16 v7, 0x80

    .line 86
    .line 87
    :goto_3
    or-int/2addr v3, v7

    .line 88
    :goto_4
    or-int/lit16 v3, v3, 0xc00

    .line 89
    .line 90
    and-int/lit16 v7, v10, 0x6000

    .line 91
    .line 92
    if-nez v7, :cond_a

    .line 93
    .line 94
    and-int/lit8 v7, p1, 0x10

    .line 95
    .line 96
    if-nez v7, :cond_8

    .line 97
    .line 98
    move-object/from16 v7, p2

    .line 99
    .line 100
    invoke-virtual {v0, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_9

    .line 105
    .line 106
    const/16 v8, 0x4000

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_8
    move-object/from16 v7, p2

    .line 110
    .line 111
    :cond_9
    const/16 v8, 0x2000

    .line 112
    .line 113
    :goto_5
    or-int/2addr v3, v8

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    move-object/from16 v7, p2

    .line 116
    .line 117
    :goto_6
    const/high16 v8, 0x2cb0000

    .line 118
    .line 119
    or-int/2addr v3, v8

    .line 120
    const/high16 v8, 0x30000000

    .line 121
    .line 122
    and-int/2addr v8, v10

    .line 123
    if-nez v8, :cond_c

    .line 124
    .line 125
    invoke-virtual/range {p5 .. p6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_b

    .line 130
    .line 131
    const/high16 v8, 0x20000000

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    const/high16 v8, 0x10000000

    .line 135
    .line 136
    :goto_7
    or-int/2addr v3, v8

    .line 137
    :cond_c
    const v8, 0x12492493

    .line 138
    .line 139
    .line 140
    and-int/2addr v8, v3

    .line 141
    const v9, 0x12492492

    .line 142
    .line 143
    .line 144
    const/4 v11, 0x0

    .line 145
    const/4 v12, 0x1

    .line 146
    if-eq v8, v9, :cond_d

    .line 147
    .line 148
    const/4 v8, 0x1

    .line 149
    goto :goto_8

    .line 150
    :cond_d
    const/4 v8, 0x0

    .line 151
    :goto_8
    and-int/lit8 v9, v3, 0x1

    .line 152
    .line 153
    invoke-virtual {v0, v9, v8}, Lf1/s;->N(IZ)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_16

    .line 158
    .line 159
    invoke-virtual {v0}, Lf1/s;->S()V

    .line 160
    .line 161
    .line 162
    and-int/lit8 v8, v10, 0x1

    .line 163
    .line 164
    const v9, -0xe380001

    .line 165
    .line 166
    .line 167
    const v13, -0xe001

    .line 168
    .line 169
    .line 170
    if-eqz v8, :cond_11

    .line 171
    .line 172
    invoke-virtual {v0}, Lf1/s;->x()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_e

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_e
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 180
    .line 181
    .line 182
    and-int/lit8 v1, p1, 0x2

    .line 183
    .line 184
    if-eqz v1, :cond_f

    .line 185
    .line 186
    and-int/lit8 v3, v3, -0x71

    .line 187
    .line 188
    :cond_f
    and-int/lit8 v1, p1, 0x10

    .line 189
    .line 190
    if-eqz v1, :cond_10

    .line 191
    .line 192
    and-int/2addr v3, v13

    .line 193
    :cond_10
    and-int v1, v3, v9

    .line 194
    .line 195
    move-object/from16 v18, p7

    .line 196
    .line 197
    move-object/from16 v20, p9

    .line 198
    .line 199
    move-object/from16 v21, p10

    .line 200
    .line 201
    move/from16 v22, p11

    .line 202
    .line 203
    move-object/from16 v19, v2

    .line 204
    .line 205
    move-object v14, v6

    .line 206
    :goto_9
    move-object v15, v4

    .line 207
    move-object v13, v7

    .line 208
    goto :goto_d

    .line 209
    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 210
    .line 211
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 212
    .line 213
    goto :goto_b

    .line 214
    :cond_12
    move-object v1, v2

    .line 215
    :goto_b
    and-int/lit8 v2, p1, 0x2

    .line 216
    .line 217
    if-eqz v2, :cond_13

    .line 218
    .line 219
    invoke-static {v0}, Lf0/w;->a(Lf1/s;)Lf0/u;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    and-int/lit8 v3, v3, -0x71

    .line 224
    .line 225
    move-object v4, v2

    .line 226
    :cond_13
    if-eqz v5, :cond_14

    .line 227
    .line 228
    int-to-float v2, v11

    .line 229
    new-instance v5, Ld0/h0;

    .line 230
    .line 231
    invoke-direct {v5, v2, v2, v2, v2}, Ld0/h0;-><init>(FFFF)V

    .line 232
    .line 233
    .line 234
    goto :goto_c

    .line 235
    :cond_14
    move-object v5, v6

    .line 236
    :goto_c
    and-int/lit8 v2, p1, 0x10

    .line 237
    .line 238
    if-eqz v2, :cond_15

    .line 239
    .line 240
    sget-object v2, Ld0/h;->c:Ld0/b;

    .line 241
    .line 242
    and-int/2addr v3, v13

    .line 243
    move-object v7, v2

    .line 244
    :cond_15
    sget-object v2, Lr1/c;->m:Lr1/f;

    .line 245
    .line 246
    invoke-static {v0}, Lp9/l;->o(Lf1/s;)Lz/h;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-static {v0}, Lx/d1;->a(Lf1/s;)Lx/h;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    and-int/2addr v3, v9

    .line 255
    move-object/from16 v19, v1

    .line 256
    .line 257
    move-object/from16 v18, v2

    .line 258
    .line 259
    move v1, v3

    .line 260
    move-object v14, v5

    .line 261
    move-object/from16 v21, v6

    .line 262
    .line 263
    move-object/from16 v20, v8

    .line 264
    .line 265
    const/16 v22, 0x1

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :goto_d
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 269
    .line 270
    .line 271
    and-int/lit8 v2, v1, 0xe

    .line 272
    .line 273
    or-int/lit16 v2, v2, 0x6000

    .line 274
    .line 275
    and-int/lit8 v3, v1, 0x70

    .line 276
    .line 277
    or-int/2addr v2, v3

    .line 278
    and-int/lit16 v3, v1, 0x380

    .line 279
    .line 280
    or-int/2addr v2, v3

    .line 281
    const v3, 0x30180c00

    .line 282
    .line 283
    .line 284
    or-int v11, v2, v3

    .line 285
    .line 286
    shr-int/lit8 v2, v1, 0xc

    .line 287
    .line 288
    and-int/lit8 v2, v2, 0xe

    .line 289
    .line 290
    shr-int/lit8 v1, v1, 0x12

    .line 291
    .line 292
    and-int/lit16 v1, v1, 0x1c00

    .line 293
    .line 294
    or-int v12, v2, v1

    .line 295
    .line 296
    move-object/from16 v17, p6

    .line 297
    .line 298
    move-object/from16 v16, v0

    .line 299
    .line 300
    invoke-static/range {v11 .. v22}, Lg5/a;->k(IILd0/g;Ld0/h0;Lf0/u;Lf1/s;Lf9/k;Lr1/f;Lr1/p;Lx/h;Lz/h;Z)V

    .line 301
    .line 302
    .line 303
    move-object v4, v13

    .line 304
    move-object v3, v14

    .line 305
    move-object v2, v15

    .line 306
    move-object/from16 v5, v18

    .line 307
    .line 308
    move-object/from16 v1, v19

    .line 309
    .line 310
    move-object/from16 v8, v20

    .line 311
    .line 312
    move-object/from16 v6, v21

    .line 313
    .line 314
    move/from16 v7, v22

    .line 315
    .line 316
    goto :goto_e

    .line 317
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lf1/s;->Q()V

    .line 318
    .line 319
    .line 320
    move-object/from16 v5, p7

    .line 321
    .line 322
    move-object/from16 v8, p9

    .line 323
    .line 324
    move-object v1, v2

    .line 325
    move-object v2, v4

    .line 326
    move-object v3, v6

    .line 327
    move-object v4, v7

    .line 328
    move-object/from16 v6, p10

    .line 329
    .line 330
    move/from16 v7, p11

    .line 331
    .line 332
    :goto_e
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 333
    .line 334
    .line 335
    move-result-object v12

    .line 336
    if-eqz v12, :cond_17

    .line 337
    .line 338
    new-instance v0, Lf0/b;

    .line 339
    .line 340
    move/from16 v11, p1

    .line 341
    .line 342
    move-object/from16 v9, p6

    .line 343
    .line 344
    invoke-direct/range {v0 .. v11}, Lf0/b;-><init>(Lr1/p;Lf0/u;Ld0/h0;Ld0/g;Lr1/f;Lz/h;ZLx/h;Lf9/k;II)V

    .line 345
    .line 346
    .line 347
    iput-object v0, v12, Lf1/w1;->d:Lf9/n;

    .line 348
    .line 349
    :cond_17
    return-void
.end method

.method public static final c(Ljava/util/List;Ljava/lang/String;ZILf9/k;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    move/from16 v0, p6

    .line 12
    .line 13
    const-string v3, "key"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v3, 0x79c39f71

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 22
    .line 23
    .line 24
    and-int/lit8 v3, v0, 0x6

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v10, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v0

    .line 40
    :goto_1
    and-int/lit8 v6, v0, 0x30

    .line 41
    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    if-nez v6, :cond_3

    .line 45
    .line 46
    invoke-virtual {v10, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    const/16 v6, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v6, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v3, v6

    .line 58
    :cond_3
    and-int/lit16 v6, v0, 0x180

    .line 59
    .line 60
    move/from16 v8, p2

    .line 61
    .line 62
    if-nez v6, :cond_5

    .line 63
    .line 64
    invoke-virtual {v10, v8}, Lf1/s;->g(Z)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    const/16 v6, 0x100

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/16 v6, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v3, v6

    .line 76
    :cond_5
    and-int/lit16 v6, v0, 0xc00

    .line 77
    .line 78
    if-nez v6, :cond_7

    .line 79
    .line 80
    invoke-virtual {v10, v4}, Lf1/s;->d(I)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_6

    .line 85
    .line 86
    const/16 v6, 0x800

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    const/16 v6, 0x400

    .line 90
    .line 91
    :goto_4
    or-int/2addr v3, v6

    .line 92
    :cond_7
    and-int/lit16 v6, v0, 0x6000

    .line 93
    .line 94
    const/16 v9, 0x4000

    .line 95
    .line 96
    if-nez v6, :cond_9

    .line 97
    .line 98
    invoke-virtual {v10, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    const/16 v6, 0x4000

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    const/16 v6, 0x2000

    .line 108
    .line 109
    :goto_5
    or-int/2addr v3, v6

    .line 110
    :cond_9
    and-int/lit16 v6, v3, 0x2493

    .line 111
    .line 112
    const/16 v11, 0x2492

    .line 113
    .line 114
    if-ne v6, v11, :cond_b

    .line 115
    .line 116
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_a

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_a
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_a

    .line 127
    .line 128
    :cond_b
    :goto_6
    const v6, 0x6e3c21fe

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v6}, Lf1/s;->W(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    const/4 v13, 0x1

    .line 142
    if-ne v6, v11, :cond_d

    .line 143
    .line 144
    sget-object v6, Ll8/d;->a:Lr8/o;

    .line 145
    .line 146
    invoke-static {v4, v2}, Ll8/d;->b(ILjava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-ne v6, v13, :cond_c

    .line 151
    .line 152
    const/4 v6, 0x1

    .line 153
    goto :goto_7

    .line 154
    :cond_c
    const/4 v6, 0x0

    .line 155
    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v10, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_d
    check-cast v6, Lf1/b1;

    .line 167
    .line 168
    invoke-virtual {v10, v12}, Lf1/s;->p(Z)V

    .line 169
    .line 170
    .line 171
    new-instance v14, La8/j;

    .line 172
    .line 173
    const/16 v15, 0xb

    .line 174
    .line 175
    invoke-direct {v14, v15, v1}, La8/j;-><init>(ILjava/util/List;)V

    .line 176
    .line 177
    .line 178
    const v15, 0x41df579a

    .line 179
    .line 180
    .line 181
    invoke-static {v15, v14, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    new-instance v15, La8/m;

    .line 186
    .line 187
    const/16 v12, 0xf

    .line 188
    .line 189
    invoke-direct {v15, v6, v12}, La8/m;-><init>(Lf1/b1;I)V

    .line 190
    .line 191
    .line 192
    const v12, -0x31ac6b87    # -8.8743072E8f

    .line 193
    .line 194
    .line 195
    invoke-static {v12, v15, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    const v15, -0x6815fd56

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v15}, Lf1/s;->W(I)V

    .line 203
    .line 204
    .line 205
    const v15, 0xe000

    .line 206
    .line 207
    .line 208
    and-int/2addr v15, v3

    .line 209
    if-ne v15, v9, :cond_e

    .line 210
    .line 211
    const/4 v9, 0x1

    .line 212
    goto :goto_8

    .line 213
    :cond_e
    const/4 v9, 0x0

    .line 214
    :goto_8
    and-int/lit8 v15, v3, 0x70

    .line 215
    .line 216
    if-ne v15, v7, :cond_f

    .line 217
    .line 218
    const/4 v7, 0x1

    .line 219
    goto :goto_9

    .line 220
    :cond_f
    const/4 v7, 0x0

    .line 221
    :goto_9
    or-int/2addr v7, v9

    .line 222
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    if-nez v7, :cond_10

    .line 227
    .line 228
    if-ne v9, v11, :cond_11

    .line 229
    .line 230
    :cond_10
    new-instance v9, Lj8/e0;

    .line 231
    .line 232
    invoke-direct {v9, v5, v2, v6, v13}, Lj8/e0;-><init>(Lf9/k;Ljava/lang/String;Lf1/b1;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10, v9}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_11
    check-cast v9, Lf9/a;

    .line 239
    .line 240
    const/4 v6, 0x0

    .line 241
    invoke-virtual {v10, v6}, Lf1/s;->p(Z)V

    .line 242
    .line 243
    .line 244
    and-int/lit16 v3, v3, 0x380

    .line 245
    .line 246
    or-int/lit8 v11, v3, 0x36

    .line 247
    .line 248
    move-object v7, v12

    .line 249
    const/4 v12, 0x0

    .line 250
    move-object v6, v14

    .line 251
    invoke-static/range {v6 .. v12}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 252
    .line 253
    .line 254
    :goto_a
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    if-eqz v7, :cond_12

    .line 259
    .line 260
    new-instance v0, Lj8/a0;

    .line 261
    .line 262
    move/from16 v3, p2

    .line 263
    .line 264
    move/from16 v6, p6

    .line 265
    .line 266
    invoke-direct/range {v0 .. v6}, Lj8/a0;-><init>(Ljava/util/List;Ljava/lang/String;ZILf9/k;I)V

    .line 267
    .line 268
    .line 269
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 270
    .line 271
    :cond_12
    return-void
.end method

.method public static final d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v10, p5

    .line 8
    .line 9
    move/from16 v0, p6

    .line 10
    .line 11
    const-string v3, "key"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const v3, -0x7d797c28

    .line 17
    .line 18
    .line 19
    invoke-virtual {v10, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v3, v0, 0x6

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v10, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x2

    .line 35
    :goto_0
    or-int/2addr v3, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v0

    .line 38
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 39
    .line 40
    const/16 v6, 0x20

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v10, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v4, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v3, v4

    .line 56
    :cond_3
    and-int/lit8 v4, p7, 0x4

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    or-int/lit16 v3, v3, 0x180

    .line 61
    .line 62
    :cond_4
    move/from16 v7, p2

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_5
    and-int/lit16 v7, v0, 0x180

    .line 66
    .line 67
    if-nez v7, :cond_4

    .line 68
    .line 69
    move/from16 v7, p2

    .line 70
    .line 71
    invoke-virtual {v10, v7}, Lf1/s;->g(Z)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_6

    .line 76
    .line 77
    const/16 v8, 0x100

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    const/16 v8, 0x80

    .line 81
    .line 82
    :goto_3
    or-int/2addr v3, v8

    .line 83
    :goto_4
    and-int/lit8 v8, p7, 0x8

    .line 84
    .line 85
    if-eqz v8, :cond_8

    .line 86
    .line 87
    or-int/lit16 v3, v3, 0xc00

    .line 88
    .line 89
    :cond_7
    move/from16 v9, p3

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_8
    and-int/lit16 v9, v0, 0xc00

    .line 93
    .line 94
    if-nez v9, :cond_7

    .line 95
    .line 96
    move/from16 v9, p3

    .line 97
    .line 98
    invoke-virtual {v10, v9}, Lf1/s;->g(Z)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_9

    .line 103
    .line 104
    const/16 v11, 0x800

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_9
    const/16 v11, 0x400

    .line 108
    .line 109
    :goto_5
    or-int/2addr v3, v11

    .line 110
    :goto_6
    and-int/lit16 v11, v0, 0x6000

    .line 111
    .line 112
    const/16 v12, 0x4000

    .line 113
    .line 114
    if-nez v11, :cond_b

    .line 115
    .line 116
    invoke-virtual {v10, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_a

    .line 121
    .line 122
    const/16 v11, 0x4000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_a
    const/16 v11, 0x2000

    .line 126
    .line 127
    :goto_7
    or-int/2addr v3, v11

    .line 128
    :cond_b
    and-int/lit16 v11, v3, 0x2493

    .line 129
    .line 130
    const/16 v13, 0x2492

    .line 131
    .line 132
    if-ne v11, v13, :cond_d

    .line 133
    .line 134
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-nez v11, :cond_c

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_c
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 142
    .line 143
    .line 144
    move v3, v7

    .line 145
    move v4, v9

    .line 146
    goto/16 :goto_c

    .line 147
    .line 148
    :cond_d
    :goto_8
    if-eqz v4, :cond_e

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    :cond_e
    const/4 v4, 0x0

    .line 152
    if-eqz v8, :cond_f

    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    goto :goto_9

    .line 156
    :cond_f
    move v13, v9

    .line 157
    :goto_9
    const v8, 0x6e3c21fe

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v8}, Lf1/s;->W(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    sget-object v9, Lf1/n;->a:Lf1/w0;

    .line 168
    .line 169
    if-ne v8, v9, :cond_10

    .line 170
    .line 171
    sget-object v8, Ll8/d;->a:Lr8/o;

    .line 172
    .line 173
    invoke-static {v2, v13}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-static {v8}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v10, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_10
    check-cast v8, Lf1/b1;

    .line 189
    .line 190
    invoke-virtual {v10, v4}, Lf1/s;->p(Z)V

    .line 191
    .line 192
    .line 193
    new-instance v14, La8/j;

    .line 194
    .line 195
    const/16 v15, 0xa

    .line 196
    .line 197
    invoke-direct {v14, v15, v1}, La8/j;-><init>(ILjava/util/List;)V

    .line 198
    .line 199
    .line 200
    const v15, -0x17b8007f

    .line 201
    .line 202
    .line 203
    invoke-static {v15, v14, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    new-instance v15, La8/m;

    .line 208
    .line 209
    const/16 v11, 0xe

    .line 210
    .line 211
    invoke-direct {v15, v8, v11}, La8/m;-><init>(Lf1/b1;I)V

    .line 212
    .line 213
    .line 214
    const v11, 0x7484b4e0

    .line 215
    .line 216
    .line 217
    invoke-static {v11, v15, v10}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    const v15, -0x6815fd56

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10, v15}, Lf1/s;->W(I)V

    .line 225
    .line 226
    .line 227
    const v15, 0xe000

    .line 228
    .line 229
    .line 230
    and-int/2addr v15, v3

    .line 231
    if-ne v15, v12, :cond_11

    .line 232
    .line 233
    const/4 v12, 0x1

    .line 234
    goto :goto_a

    .line 235
    :cond_11
    const/4 v12, 0x0

    .line 236
    :goto_a
    and-int/lit8 v15, v3, 0x70

    .line 237
    .line 238
    if-ne v15, v6, :cond_12

    .line 239
    .line 240
    const/16 v16, 0x1

    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_12
    const/16 v16, 0x0

    .line 244
    .line 245
    :goto_b
    or-int v6, v12, v16

    .line 246
    .line 247
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    if-nez v6, :cond_13

    .line 252
    .line 253
    if-ne v12, v9, :cond_14

    .line 254
    .line 255
    :cond_13
    new-instance v12, Lj8/e0;

    .line 256
    .line 257
    invoke-direct {v12, v5, v2, v8, v4}, Lj8/e0;-><init>(Lf9/k;Ljava/lang/String;Lf1/b1;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_14
    move-object v9, v12

    .line 264
    check-cast v9, Lf9/a;

    .line 265
    .line 266
    invoke-virtual {v10, v4}, Lf1/s;->p(Z)V

    .line 267
    .line 268
    .line 269
    and-int/lit16 v3, v3, 0x380

    .line 270
    .line 271
    or-int/lit8 v3, v3, 0x36

    .line 272
    .line 273
    const/4 v12, 0x0

    .line 274
    move v8, v7

    .line 275
    move-object v7, v11

    .line 276
    move-object v6, v14

    .line 277
    move v11, v3

    .line 278
    invoke-static/range {v6 .. v12}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 279
    .line 280
    .line 281
    move v3, v8

    .line 282
    move v4, v13

    .line 283
    :goto_c
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    if-eqz v8, :cond_15

    .line 288
    .line 289
    new-instance v0, Lj8/f0;

    .line 290
    .line 291
    move/from16 v6, p6

    .line 292
    .line 293
    move/from16 v7, p7

    .line 294
    .line 295
    invoke-direct/range {v0 .. v7}, Lj8/f0;-><init>(Ljava/util/List;Ljava/lang/String;ZZLf9/k;II)V

    .line 296
    .line 297
    .line 298
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 299
    .line 300
    :cond_15
    return-void
.end method

.method public static final e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V
    .locals 8

    .line 1
    iget-object v0, p1, Lr8/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    const v1, -0x491fe75

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p5, 0x6

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p4, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    :goto_0
    or-int/2addr v1, p5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, p5

    .line 25
    :goto_1
    and-int/lit8 v2, p5, 0x30

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p4, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v2, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v1, v2

    .line 41
    :cond_3
    and-int/lit8 v2, p6, 0x4

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    or-int/lit16 v1, v1, 0x180

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    and-int/lit16 v3, p5, 0x180

    .line 49
    .line 50
    if-nez v3, :cond_6

    .line 51
    .line 52
    invoke-virtual {p4, p2}, Lf1/s;->g(Z)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    const/16 v3, 0x100

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    const/16 v3, 0x80

    .line 62
    .line 63
    :goto_3
    or-int/2addr v1, v3

    .line 64
    :cond_6
    :goto_4
    and-int/lit8 v3, p6, 0x8

    .line 65
    .line 66
    if-eqz v3, :cond_7

    .line 67
    .line 68
    or-int/lit16 v1, v1, 0xc00

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_7
    and-int/lit16 v4, p5, 0xc00

    .line 72
    .line 73
    if-nez v4, :cond_9

    .line 74
    .line 75
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_8

    .line 80
    .line 81
    const/16 v4, 0x800

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_8
    const/16 v4, 0x400

    .line 85
    .line 86
    :goto_5
    or-int/2addr v1, v4

    .line 87
    :cond_9
    :goto_6
    and-int/lit16 v4, v1, 0x493

    .line 88
    .line 89
    const/16 v6, 0x492

    .line 90
    .line 91
    if-ne v4, v6, :cond_b

    .line 92
    .line 93
    invoke-virtual {p4}, Lf1/s;->z()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_a

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_a
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 101
    .line 102
    .line 103
    move v3, p2

    .line 104
    move-object v4, p3

    .line 105
    goto/16 :goto_a

    .line 106
    .line 107
    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    .line 108
    .line 109
    const/4 p2, 0x1

    .line 110
    const/4 v2, 0x1

    .line 111
    goto :goto_8

    .line 112
    :cond_c
    move v2, p2

    .line 113
    :goto_8
    const/4 p2, 0x0

    .line 114
    if-eqz v3, :cond_e

    .line 115
    .line 116
    const p3, 0x6e3c21fe

    .line 117
    .line 118
    .line 119
    invoke-virtual {p4, p3}, Lf1/s;->W(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 127
    .line 128
    if-ne p3, v3, :cond_d

    .line 129
    .line 130
    new-instance p3, Lc8/y0;

    .line 131
    .line 132
    const/16 v3, 0xc

    .line 133
    .line 134
    invoke-direct {p3, v3}, Lc8/y0;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, p3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_d
    check-cast p3, Lf9/k;

    .line 141
    .line 142
    invoke-virtual {p4, p2}, Lf1/s;->p(Z)V

    .line 143
    .line 144
    .line 145
    :cond_e
    move-object v4, p3

    .line 146
    iget-object p3, p1, Lr8/j;->b:Ljava/lang/Object;

    .line 147
    .line 148
    instance-of v3, p3, Ljava/lang/Boolean;

    .line 149
    .line 150
    const v6, 0xe000

    .line 151
    .line 152
    .line 153
    if-eqz v3, :cond_f

    .line 154
    .line 155
    const v3, 0x26892f61

    .line 156
    .line 157
    .line 158
    invoke-virtual {p4, v3}, Lf1/s;->W(I)V

    .line 159
    .line 160
    .line 161
    check-cast v0, Ljava/lang/String;

    .line 162
    .line 163
    check-cast p3, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    and-int/lit16 p3, v1, 0x38e

    .line 170
    .line 171
    shl-int/lit8 v1, v1, 0x3

    .line 172
    .line 173
    and-int/2addr v1, v6

    .line 174
    or-int v6, p3, v1

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    move-object v5, p4

    .line 178
    move-object v1, v0

    .line 179
    move-object v0, p0

    .line 180
    invoke-static/range {v0 .. v7}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p4, p2}, Lf1/s;->p(Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_f
    instance-of v3, p3, Ljava/lang/Integer;

    .line 188
    .line 189
    if-eqz v3, :cond_11

    .line 190
    .line 191
    const v3, 0x268c3e21

    .line 192
    .line 193
    .line 194
    invoke-virtual {p4, v3}, Lf1/s;->W(I)V

    .line 195
    .line 196
    .line 197
    check-cast v0, Ljava/lang/String;

    .line 198
    .line 199
    check-cast p3, Ljava/lang/Number;

    .line 200
    .line 201
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    and-int/lit16 p3, v1, 0x38e

    .line 206
    .line 207
    shl-int/lit8 v1, v1, 0x3

    .line 208
    .line 209
    and-int/2addr v1, v6

    .line 210
    or-int v6, p3, v1

    .line 211
    .line 212
    move-object v5, p4

    .line 213
    move-object v1, v0

    .line 214
    move-object v0, p0

    .line 215
    invoke-static/range {v0 .. v6}, Lc7/a;->c(Ljava/util/List;Ljava/lang/String;ZILf9/k;Lf1/s;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p4, p2}, Lf1/s;->p(Z)V

    .line 219
    .line 220
    .line 221
    :goto_9
    move v3, v2

    .line 222
    :goto_a
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    if-eqz p2, :cond_10

    .line 227
    .line 228
    new-instance v0, Lj8/g;

    .line 229
    .line 230
    const/4 v7, 0x1

    .line 231
    move-object v1, p0

    .line 232
    move-object v2, p1

    .line 233
    move v5, p5

    .line 234
    move v6, p6

    .line 235
    invoke-direct/range {v0 .. v7}, Lj8/g;-><init>(Ljava/util/List;Lr8/j;ZLf9/k;III)V

    .line 236
    .line 237
    .line 238
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 239
    .line 240
    :cond_10
    return-void

    .line 241
    :cond_11
    const p0, -0x280be580

    .line 242
    .line 243
    .line 244
    invoke-virtual {p4, p0}, Lf1/s;->W(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p4, p2}, Lf1/s;->p(Z)V

    .line 248
    .line 249
    .line 250
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 251
    .line 252
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    sget-object p2, Lg9/y;->a:Lg9/z;

    .line 257
    .line 258
    invoke-virtual {p2, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-interface {p1}, Lm9/c;->k()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string p3, "Unsupported type: "

    .line 269
    .line 270
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0
.end method

.method public static final f(FJJ)Ld7/q;
    .locals 9

    .line 1
    float-to-int v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v0, v1}, Ly1/h0;->f(III)Ly1/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ly1/h0;->a(Ly1/f;)Ly1/b;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual {v7, v1}, Ld7/q;->r(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v7, Ld7/q;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroid/graphics/Paint;

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, p1, p2}, Ld7/q;->k(J)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move v6, p0

    .line 34
    move v5, p0

    .line 35
    invoke-virtual/range {v2 .. v7}, Ly1/b;->a(FFFFLd7/q;)V

    .line 36
    .line 37
    .line 38
    add-float/2addr v3, v5

    .line 39
    add-float/2addr v5, v5

    .line 40
    move v4, v3

    .line 41
    move v6, v5

    .line 42
    invoke-virtual/range {v2 .. v7}, Ly1/b;->a(FFFFLd7/q;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, p3, p4}, Ld7/q;->k(J)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    move v5, v3

    .line 50
    move v4, v3

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual/range {v2 .. v7}, Ly1/b;->a(FFFFLd7/q;)V

    .line 53
    .line 54
    .line 55
    move v3, v4

    .line 56
    move v5, v6

    .line 57
    const/4 v4, 0x0

    .line 58
    move v6, v3

    .line 59
    invoke-virtual/range {v2 .. v7}, Ly1/b;->a(FFFFLd7/q;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object p1, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Landroid/graphics/BitmapShader;

    .line 74
    .line 75
    invoke-static {v0}, Ly1/h0;->j(Ly1/f;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {v8}, Ly1/h0;->B(I)Landroid/graphics/Shader$TileMode;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-static {v8}, Ly1/h0;->B(I)Landroid/graphics/Shader$TileMode;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-direct {p1, p2, p3, p4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method

.method public static final g(II)V
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    const-string v1, "index: "

    .line 9
    .line 10
    const-string v2, ", size: "

    .line 11
    .line 12
    invoke-static {p0, p1, v1, v2}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static final i(II)V
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    const-string v1, "index: "

    .line 9
    .line 10
    const-string v2, ", size: "

    .line 11
    .line 12
    invoke-static {p0, p1, v1, v2}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static final j(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, " > toIndex: "

    .line 13
    .line 14
    invoke-static {p0, p1, v0, v1}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p2

    .line 22
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ", toIndex: "

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ", size: "

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public static final k(Lb0/k;Lf1/s;I)Lf1/b1;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    check-cast v0, Lf1/b1;

    .line 19
    .line 20
    and-int/lit8 v2, p2, 0xe

    .line 21
    .line 22
    xor-int/lit8 v2, v2, 0x6

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-le v2, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    :cond_1
    and-int/lit8 p2, p2, 0x6

    .line 34
    .line 35
    if-ne p2, v3, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 p2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 p2, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez p2, :cond_4

    .line 45
    .line 46
    if-ne v2, v1, :cond_5

    .line 47
    .line 48
    :cond_4
    new-instance v2, Lb0/g;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v2, p0, v0, v1, p2}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    check-cast v2, Lf9/n;

    .line 59
    .line 60
    invoke-static {p1, v2, p0}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public static final l(Lv9/e;Lna/g;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "klass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeMappingConfiguration"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getContainingDeclaration(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    sget-object v2, Lua/g;->a:Lua/e;

    .line 27
    .line 28
    iget-boolean v2, v1, Lua/e;->b:Z

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Lua/g;->c:Lua/e;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v1}, Lua/e;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v2, v0, Lv9/d0;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v0, Lv9/d0;

    .line 44
    .line 45
    check-cast v0, Ly9/c0;

    .line 46
    .line 47
    iget-object p0, v0, Ly9/c0;->e:Lua/c;

    .line 48
    .line 49
    iget-object p1, p0, Lua/c;->a:Lua/d;

    .line 50
    .line 51
    invoke-virtual {p1}, Lua/d;->c()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lua/c;->a:Lua/d;

    .line 64
    .line 65
    iget-object p0, p0, Lua/d;->a:Ljava/lang/String;

    .line 66
    .line 67
    const/16 v0, 0x2e

    .line 68
    .line 69
    const/16 v2, 0x2f

    .line 70
    .line 71
    invoke-static {p0, v0, v2}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_2
    instance-of v2, v0, Lv9/e;

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    check-cast v2, Lv9/e;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v2, 0x0

    .line 98
    :goto_1
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-static {v2, p1}, Lc7/a;->l(Lv9/e;Lna/g;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/16 p0, 0x24

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, "Unexpected container: "

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, " for "

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
.end method

.method public static m(Landroid/content/Context;)Ll4/r;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ll4/c;

    .line 8
    .line 9
    const/16 v1, 0x16

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lib/d;-><init>(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lib/d;

    .line 16
    .line 17
    const/16 v1, 0x16

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lib/d;-><init>(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "Package manager required to locate emoji font provider"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lc7/a;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 59
    .line 60
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 65
    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    and-int/2addr v6, v7

    .line 72
    if-ne v6, v7, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v4, v5

    .line 76
    :goto_1
    if-nez v4, :cond_3

    .line 77
    .line 78
    :goto_2
    move-object v1, v5

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    :try_start_0
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v4}, Lib/d;->h(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    array-length v6, v0

    .line 94
    :goto_3
    if-ge v3, v6, :cond_4

    .line 95
    .line 96
    aget-object v7, v0, v3

    .line 97
    .line 98
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lb4/g;

    .line 113
    .line 114
    const-string v3, "emojicompat-emoji-font"

    .line 115
    .line 116
    invoke-direct {v1, v2, v4, v3, v0}, Lb4/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 122
    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_4
    if-nez v1, :cond_5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v5, Ll4/r;

    .line 131
    .line 132
    new-instance v0, Ll4/q;

    .line 133
    .line 134
    invoke-direct {v0, p0, v1}, Ll4/q;-><init>(Landroid/content/Context;Lb4/g;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v0}, Ll4/r;-><init>(Ll4/i;)V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v5
.end method

.method public static n(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Le4/j0;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    const v0, 0x7f0800b0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Le4/j0;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Le4/j0;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, v1, Le4/j0;->a:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    iput-object v2, v1, Le4/j0;->b:Landroid/util/SparseArray;

    .line 33
    .line 34
    iput-object v2, v1, Le4/j0;->c:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, v1, Le4/j0;->c:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object p0, v1, Le4/j0;->c:Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    iget-object p0, v1, Le4/j0;->b:Landroid/util/SparseArray;

    .line 58
    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    new-instance p0, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p0, v1, Le4/j0;->b:Landroid/util/SparseArray;

    .line 67
    .line 68
    :cond_3
    iget-object p0, v1, Le4/j0;->b:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v1, 0x1

    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ltz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    if-nez v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    move-object v2, p0

    .line 107
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    :cond_5
    if-eqz v2, :cond_8

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Landroid/view/View;

    .line 116
    .line 117
    if-eqz p0, :cond_7

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    const p1, 0x7f0800b1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/util/ArrayList;

    .line 133
    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sub-int/2addr p1, v1

    .line 141
    if-gez p1, :cond_6

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance p0, Ljava/lang/ClassCastException;

    .line 152
    .line 153
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_7
    :goto_0
    return v1

    .line 158
    :cond_8
    :goto_1
    const/4 p0, 0x0

    .line 159
    return p0
.end method

.method public static o(Le4/j;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_4

    .line 5
    .line 6
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, p3}, Le4/j;->c(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    check-cast p2, Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x52

    .line 49
    .line 50
    if-ne v1, v4, :cond_5

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    sget-boolean v1, Lc7/a;->c:Z

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "onMenuKeyEvent"

    .line 63
    .line 64
    new-array v5, v3, [Ljava/lang/Class;

    .line 65
    .line 66
    const-class v6, Landroid/view/KeyEvent;

    .line 67
    .line 68
    aput-object v6, v5, v0

    .line 69
    .line 70
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sput-object v1, Lc7/a;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    :catch_0
    sput-boolean v3, Lc7/a;->c:Z

    .line 77
    .line 78
    :cond_2
    sget-object v1, Lc7/a;->d:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p3, v4, v0

    .line 85
    .line 86
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    nop

    .line 101
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0, p3}, Le4/k0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    if-eqz p0, :cond_8

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :cond_8
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    :goto_1
    return v3

    .line 133
    :cond_9
    instance-of v1, p2, Landroid/app/Dialog;

    .line 134
    .line 135
    if-eqz v1, :cond_10

    .line 136
    .line 137
    check-cast p2, Landroid/app/Dialog;

    .line 138
    .line 139
    sget-boolean p0, Lc7/a;->e:Z

    .line 140
    .line 141
    if-nez p0, :cond_a

    .line 142
    .line 143
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 144
    .line 145
    const-string p1, "mOnKeyListener"

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sput-object p0, Lc7/a;->f:Ljava/lang/reflect/Field;

    .line 152
    .line 153
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    .line 155
    .line 156
    :catch_2
    sput-boolean v3, Lc7/a;->e:Z

    .line 157
    .line 158
    :cond_a
    sget-object p0, Lc7/a;->f:Ljava/lang/reflect/Field;

    .line 159
    .line 160
    if-eqz p0, :cond_b

    .line 161
    .line 162
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_3
    nop

    .line 170
    :cond_b
    move-object p0, v2

    .line 171
    :goto_2
    if-eqz p0, :cond_c

    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_c

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_c
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_d

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_d
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {p0, p3}, Le4/k0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_e

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_e
    if-eqz p0, :cond_f

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :cond_f
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    :goto_3
    return v3

    .line 217
    :cond_10
    if-eqz p1, :cond_11

    .line 218
    .line 219
    invoke-static {p1, p3}, Le4/k0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_12

    .line 224
    .line 225
    :cond_11
    invoke-interface {p0, p3}, Le4/j;->c(Landroid/view/KeyEvent;)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_13

    .line 230
    .line 231
    :cond_12
    return v3

    .line 232
    :cond_13
    :goto_4
    return v0
.end method

.method public static p(IIII)J
    .locals 4

    .line 1
    const v0, 0x3fffe

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p3, v1, :cond_0

    .line 12
    .line 13
    const p3, 0x7fffffff

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    :goto_0
    if-ne p3, v1, :cond_1

    .line 22
    .line 23
    move v2, p2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v2, p3

    .line 26
    :goto_1
    const/16 v3, 0x1fff

    .line 27
    .line 28
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/16 v0, 0x7fff

    .line 32
    .line 33
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    const v0, 0xfffe

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    const v0, 0xffff

    .line 40
    .line 41
    .line 42
    if-ge v2, v0, :cond_4

    .line 43
    .line 44
    const/16 v0, 0x7ffe

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const v0, 0x3ffff

    .line 48
    .line 49
    .line 50
    if-ge v2, v0, :cond_6

    .line 51
    .line 52
    const/16 v0, 0x1ffe

    .line 53
    .line 54
    :goto_2
    if-ne p1, v1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {p0, v1, p2, p3}, Ln3/b;->a(IIII)J

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    return-wide p0

    .line 70
    :cond_6
    invoke-static {v2}, Ln3/b;->l(I)Ljava/lang/Void;

    .line 71
    .line 72
    .line 73
    new-instance p0, Lac/p;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public static q(IIII)J
    .locals 4

    .line 1
    const v0, 0x3fffe

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    const p1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    move v2, p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v2, p1

    .line 26
    :goto_1
    const/16 v3, 0x1fff

    .line 27
    .line 28
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/16 v0, 0x7fff

    .line 32
    .line 33
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    const v0, 0xfffe

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    const v0, 0xffff

    .line 40
    .line 41
    .line 42
    if-ge v2, v0, :cond_4

    .line 43
    .line 44
    const/16 v0, 0x7ffe

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const v0, 0x3ffff

    .line 48
    .line 49
    .line 50
    if-ge v2, v0, :cond_6

    .line 51
    .line 52
    const/16 v0, 0x1ffe

    .line 53
    .line 54
    :goto_2
    if-ne p3, v1, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p0, p1, p2, v1}, Ln3/b;->a(IIII)J

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    return-wide p0

    .line 70
    :cond_6
    invoke-static {v2}, Ln3/b;->l(I)Ljava/lang/Void;

    .line 71
    .line 72
    .line 73
    new-instance p0, Lac/p;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public static final r(Ljava/lang/annotation/Annotation;)Lm9/c;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "annotationType(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static s(Lua/e;Lv9/e;)Ly9/r0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-interface {p1}, Lv9/e;->w()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ly9/i;

    .line 27
    .line 28
    check-cast p1, Ly9/u;

    .line 29
    .line 30
    invoke-virtual {p1}, Ly9/u;->S()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ly9/r0;

    .line 49
    .line 50
    move-object v2, v1

    .line 51
    check-cast v2, Ly9/m;

    .line 52
    .line 53
    invoke-virtual {v2}, Ly9/m;->getName()Lua/e;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, p0}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_2
    return-object v0

    .line 65
    :cond_3
    const/16 p0, 0x14

    .line 66
    .line 67
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_4
    const/16 p0, 0x13

    .line 72
    .line 73
    invoke-static {p0}, Lc7/a;->a(I)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public static t(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Li9/a;->C(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ly6/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Ly6/a;->h()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    if-le v2, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v1}, Ly6/a;->k()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ly6/a;->l(Landroid/content/Context;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v4, 0x2

    .line 65
    if-eq v1, v4, :cond_5

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ly6/a;

    .line 89
    .line 90
    invoke-virtual {v3, p0}, Ly6/a;->l(Landroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ne v3, v4, :cond_4

    .line 95
    .line 96
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    invoke-static {p0}, Li9/a;->C(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    const/4 v1, 0x0

    .line 116
    const/4 v2, 0x1

    .line 117
    if-ne p1, v2, :cond_8

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Ly6/a;

    .line 124
    .line 125
    invoke-virtual {p1, p0, p2}, Ly6/a;->o(Landroid/content/Context;Z)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Ly6/a;

    .line 135
    .line 136
    invoke-virtual {p1, p0, p2}, Ly6/a;->o(Landroid/content/Context;Z)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const/4 v3, 0x1

    .line 141
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-ge v3, v4, :cond_d

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Ly6/a;

    .line 152
    .line 153
    invoke-virtual {v4, p0, p2}, Ly6/a;->o(Landroid/content/Context;Z)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eq v5, v6, :cond_9

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_9
    const/4 v5, 0x0

    .line 169
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-ge v5, v6, :cond_b

    .line 174
    .line 175
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Landroid/content/Intent;

    .line 180
    .line 181
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Landroid/content/Intent;

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_a

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    sub-int/2addr p1, v2

    .line 202
    if-ne v3, p1, :cond_c

    .line 203
    .line 204
    return-object v4

    .line 205
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    move-object p1, v4

    .line 208
    goto :goto_1

    .line 209
    :cond_d
    :goto_3
    invoke-static {p0}, Li9/a;->C(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0
.end method

.method public static final u(IILandroid/text/TextPaint;Ljava/lang/CharSequence;)Landroid/graphics/Rect;
    .locals 11

    .line 1
    instance-of v0, p3, Landroid/text/Spanned;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    move-object v0, p3

    .line 8
    check-cast v0, Landroid/text/Spanned;

    .line 9
    .line 10
    add-int/lit8 v2, p0, -0x1

    .line 11
    .line 12
    const-class v3, Landroid/text/style/MetricAffectingSpan;

    .line 13
    .line 14
    invoke-interface {v0, v2, p1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v2, p1, :cond_4

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v4, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Landroid/text/TextPaint;

    .line 31
    .line 32
    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    if-ge p0, p1, :cond_3

    .line 36
    .line 37
    invoke-interface {v0, p0, p1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-interface {v0, p0, v6, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, [Landroid/text/style/MetricAffectingSpan;

    .line 46
    .line 47
    invoke-virtual {v5, p2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v7}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    :cond_0
    :goto_1
    invoke-virtual {v7}, Lg9/b;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    invoke-virtual {v7}, Lg9/b;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Landroid/text/style/MetricAffectingSpan;

    .line 65
    .line 66
    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-eq v9, v10, :cond_0

    .line 75
    .line 76
    invoke-virtual {v8, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    if-lt v7, v1, :cond_2

    .line 83
    .line 84
    invoke-static {v5, p3, p0, v6, v4}, Lc/w;->o(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v5, v7, p0, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    add-int/2addr v7, p0

    .line 102
    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 103
    .line 104
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 107
    .line 108
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 113
    .line 114
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 117
    .line 118
    invoke-static {p0, v7}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 123
    .line 124
    move p0, v6

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    return-object v2

    .line 127
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    .line 128
    .line 129
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 130
    .line 131
    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    if-lt v2, v1, :cond_5

    .line 135
    .line 136
    invoke-static {p2, p3, p0, p1, v0}, Lc/w;->o(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p2, p3, p0, p1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method

.method public static final v(Lm9/c;)Ljava/lang/Class;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lg9/e;

    .line 7
    .line 8
    invoke-interface {p0}, Lg9/e;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public static final w(Lm9/c;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lg9/e;

    .line 7
    .line 8
    invoke-interface {p0}, Lg9/e;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sparse-switch v1, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_0
    const-string v1, "short"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_1
    const-string v1, "float"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v1, "boolean"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :sswitch_3
    const-string v1, "void"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :sswitch_4
    const-string v1, "long"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :sswitch_5
    const-string v1, "char"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    const-string v1, "byte"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :sswitch_7
    const-string v1, "int"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :sswitch_8
    const-string v1, "double"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 140
    .line 141
    :goto_0
    return-object p0

    .line 142
    nop

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final x(Lm9/c;)Ljava/lang/Class;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lg9/e;

    .line 7
    .line 8
    invoke-interface {p0}, Lg9/e;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sparse-switch v0, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_0
    const-string v0, "java.lang.Double"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    return-object p0

    .line 44
    :sswitch_1
    const-string v0, "java.lang.Void"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    return-object p0

    .line 56
    :sswitch_2
    const-string v0, "java.lang.Long"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    return-object p0

    .line 68
    :sswitch_3
    const-string v0, "java.lang.Byte"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    return-object p0

    .line 80
    :sswitch_4
    const-string v0, "java.lang.Boolean"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    return-object p0

    .line 92
    :sswitch_5
    const-string v0, "java.lang.Character"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    return-object p0

    .line 104
    :sswitch_6
    const-string v0, "java.lang.Short"

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    return-object p0

    .line 116
    :sswitch_7
    const-string v0, "java.lang.Float"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-nez p0, :cond_8

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_8
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 126
    .line 127
    return-object p0

    .line 128
    :sswitch_8
    const-string v0, "java.lang.Integer"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_9

    .line 135
    .line 136
    :goto_0
    const/4 p0, 0x0

    .line 137
    return-object p0

    .line 138
    :cond_9
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 139
    .line 140
    return-object p0

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_8
        -0x1f76ce78 -> :sswitch_7
        -0x1ec16c58 -> :sswitch_6
        0x9415455 -> :sswitch_5
        0x148d6054 -> :sswitch_4
        0x17c0bc5c -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x17c9ace8 -> :sswitch_1
        0x2d605225 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final y(Lv9/t;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ls9/i;->A(Lv9/k;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lc7/a;->A(Lv9/c;)Lv9/c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_4

    .line 15
    .line 16
    invoke-static {p0}, Lbb/e;->k(Lv9/c;)Lv9/c;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    instance-of v0, p0, Lv9/k0;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Ls9/i;->A(Lv9/k;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lbb/e;->k(Lv9/c;)Lv9/c;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object v0, Lea/d;->d:Lea/d;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    sget-object v0, Lea/f;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {p0}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lua/e;

    .line 51
    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Lua/e;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    instance-of v0, p0, Ly9/l0;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    sget v0, Lea/c;->l:I

    .line 64
    .line 65
    check-cast p0, Ly9/l0;

    .line 66
    .line 67
    sget-object v0, Lea/h0;->i:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-static {p0}, Lm9/e0;->Q(Lv9/b;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    move-object p0, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lua/e;

    .line 82
    .line 83
    :goto_1
    if-eqz p0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Lua/e;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static final z(Ljava/lang/Class;)Lm9/c;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
