.class public abstract La6/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm5/k;


# direct methods
.method public static d([I[IF)F
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aget v5, p0, v2

    .line 9
    .line 10
    add-int/2addr v3, v5

    .line 11
    aget v5, p1, v2

    .line 12
    .line 13
    add-int/2addr v4, v5

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 18
    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    int-to-float v3, v3

    .line 23
    int-to-float v4, v4

    .line 24
    div-float v4, v3, v4

    .line 25
    .line 26
    mul-float p2, p2, v4

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_1
    if-ge v1, v0, :cond_4

    .line 30
    .line 31
    aget v6, p0, v1

    .line 32
    .line 33
    aget v7, p1, v1

    .line 34
    .line 35
    int-to-float v7, v7

    .line 36
    mul-float v7, v7, v4

    .line 37
    .line 38
    int-to-float v6, v6

    .line 39
    cmpl-float v8, v6, v7

    .line 40
    .line 41
    if-lez v8, :cond_2

    .line 42
    .line 43
    sub-float/2addr v6, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    sub-float v6, v7, v6

    .line 46
    .line 47
    :goto_2
    cmpl-float v7, v6, p2

    .line 48
    .line 49
    if-lez v7, :cond_3

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    add-float/2addr v5, v6

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    div-float/2addr v5, v3

    .line 57
    return v5
.end method

.method public static e(ILs5/a;[I)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    .line 5
    .line 6
    iget v2, p1, Ls5/a;->b:I

    .line 7
    .line 8
    if-ge p0, v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ls5/a;->d(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    xor-int/2addr v3, v4

    .line 16
    :goto_0
    if-ge p0, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ls5/a;->d(I)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eq v5, v3, :cond_0

    .line 23
    .line 24
    aget v5, p2, v1

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    aput v5, p2, v1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    if-eq v1, v0, :cond_1

    .line 33
    .line 34
    aput v4, p2, v1

    .line 35
    .line 36
    xor-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eq v1, v0, :cond_3

    .line 42
    .line 43
    sub-int/2addr v0, v4

    .line 44
    if-ne v1, v0, :cond_2

    .line 45
    .line 46
    if-ne p0, v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    sget-object p0, Lm5/i;->c:Lm5/i;

    .line 50
    .line 51
    throw p0

    .line 52
    :cond_3
    :goto_2
    return-void

    .line 53
    :cond_4
    sget-object p0, Lm5/i;->c:Lm5/i;

    .line 54
    .line 55
    throw p0
.end method

.method public static f(ILs5/a;[I)V
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    invoke-virtual {p1, p0}, Ls5/a;->d(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    :cond_0
    :goto_0
    if-lez p0, :cond_1

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ls5/a;->d(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    xor-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-gez v0, :cond_2

    .line 24
    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    invoke-static {p0, p1, p2}, La6/h;->e(ILs5/a;[I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object p0, Lm5/i;->c:Lm5/i;

    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public a(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, La6/h;->c(Lm5/b;Ljava/util/Map;)Lm5/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lm5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception v0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    sget-object v1, Lm5/d;->d:Lm5/d;

    .line 10
    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p1, Lm5/b;->a:Ls5/e;

    .line 18
    .line 19
    iget-object v1, v1, Ls5/e;->a:Lg1/j0;

    .line 20
    .line 21
    invoke-virtual {v1}, Lg1/j0;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object p1, p1, Lm5/b;->a:Ls5/e;

    .line 28
    .line 29
    iget-object p1, p1, Ls5/e;->a:Lg1/j0;

    .line 30
    .line 31
    invoke-virtual {p1}, Lg1/j0;->h()Lg1/j0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lm5/b;

    .line 36
    .line 37
    new-instance v1, Ls5/e;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Ls5/e;-><init>(Lg1/j0;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lm5/b;-><init>(Ls5/e;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, p2}, La6/h;->c(Lm5/b;Ljava/util/Map;)Lm5/m;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object v0, p2, Lm5/m;->e:Ljava/util/Map;

    .line 50
    .line 51
    sget-object v1, Lm5/n;->a:Lm5/n;

    .line 52
    .line 53
    const/16 v2, 0x10e

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v0, v2

    .line 74
    rem-int/lit16 v2, v0, 0x168

    .line 75
    .line 76
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2, v1, v0}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p2, Lm5/m;->c:[Lm5/o;

    .line 84
    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget p1, p1, Lg1/j0;->c:I

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    :goto_0
    array-length v2, v0

    .line 91
    if-ge v1, v2, :cond_1

    .line 92
    .line 93
    new-instance v2, Lm5/o;

    .line 94
    .line 95
    int-to-float v3, p1

    .line 96
    aget-object v4, v0, v1

    .line 97
    .line 98
    iget v5, v4, Lm5/o;->b:F

    .line 99
    .line 100
    sub-float/2addr v3, v5

    .line 101
    const/high16 v5, 0x3f800000    # 1.0f

    .line 102
    .line 103
    sub-float/2addr v3, v5

    .line 104
    iget v4, v4, Lm5/o;->a:F

    .line 105
    .line 106
    invoke-direct {v2, v3, v4}, Lm5/o;-><init>(FF)V

    .line 107
    .line 108
    .line 109
    aput-object v2, v0, v1

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return-object p2

    .line 115
    :cond_2
    throw v0
.end method

.method public abstract b(ILs5/a;Ljava/util/Map;)Lm5/m;
.end method

.method public final c(Lm5/b;Ljava/util/Map;)Lm5/m;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lm5/b;->a:Ls5/e;

    .line 6
    .line 7
    iget-object v2, v2, Ls5/e;->a:Lg1/j0;

    .line 8
    .line 9
    iget v3, v2, Lg1/j0;->b:I

    .line 10
    .line 11
    iget v2, v2, Lg1/j0;->c:I

    .line 12
    .line 13
    new-instance v4, Ls5/a;

    .line 14
    .line 15
    invoke-direct {v4, v3}, Ls5/a;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v7, Lm5/d;->d:Lm5/d;

    .line 22
    .line 23
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 32
    :goto_0
    if-eqz v7, :cond_1

    .line 33
    .line 34
    const/16 v8, 0x8

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v8, 0x5

    .line 38
    :goto_1
    shr-int v8, v2, v8

    .line 39
    .line 40
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    move v7, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v7, 0xf

    .line 49
    .line 50
    :goto_2
    div-int/lit8 v9, v2, 0x2

    .line 51
    .line 52
    const/4 v10, 0x0

    .line 53
    :goto_3
    if-ge v10, v7, :cond_7

    .line 54
    .line 55
    add-int/lit8 v11, v10, 0x1

    .line 56
    .line 57
    div-int/lit8 v12, v11, 0x2

    .line 58
    .line 59
    and-int/lit8 v10, v10, 0x1

    .line 60
    .line 61
    if-nez v10, :cond_3

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    neg-int v12, v12

    .line 65
    :goto_4
    mul-int v12, v12, v8

    .line 66
    .line 67
    add-int/2addr v12, v9

    .line 68
    if-ltz v12, :cond_7

    .line 69
    .line 70
    if-ge v12, v2, :cond_7

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {v0, v4, v12}, Lm5/b;->b(Ls5/a;I)Ls5/a;

    .line 73
    .line 74
    .line 75
    move-result-object v4
    :try_end_0
    .catch Lm5/i; {:try_start_0 .. :try_end_0} :catch_4

    .line 76
    const/4 v10, 0x0

    .line 77
    :goto_5
    const/4 v13, 0x2

    .line 78
    if-ge v10, v13, :cond_6

    .line 79
    .line 80
    if-ne v10, v6, :cond_4

    .line 81
    .line 82
    invoke-virtual {v4}, Ls5/a;->i()V

    .line 83
    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    sget-object v13, Lm5/d;->j:Lm5/d;

    .line 88
    .line 89
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    if-eqz v14, :cond_4

    .line 94
    .line 95
    new-instance v14, Ljava/util/EnumMap;

    .line 96
    .line 97
    const-class v15, Lm5/d;

    .line 98
    .line 99
    invoke-direct {v14, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-object v1, v14

    .line 109
    :cond_4
    move-object/from16 v13, p0

    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v13, v12, v4, v1}, La6/h;->b(ILs5/a;Ljava/util/Map;)Lm5/m;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    if-ne v10, v6, :cond_5

    .line 116
    .line 117
    sget-object v15, Lm5/n;->a:Lm5/n;
    :try_end_1
    .catch Lm5/l; {:try_start_1 .. :try_end_1} :catch_2

    .line 118
    .line 119
    const/16 v16, 0xb4

    .line 120
    .line 121
    const/16 v17, 0x0

    .line 122
    .line 123
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v14, v15, v5}, Lm5/m;->b(Lm5/n;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v5, v14, Lm5/m;->c:[Lm5/o;

    .line 131
    .line 132
    if-eqz v5, :cond_5

    .line 133
    .line 134
    new-instance v15, Lm5/o;
    :try_end_2
    .catch Lm5/l; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    .line 136
    const/16 v16, 0x1

    .line 137
    .line 138
    int-to-float v6, v3

    .line 139
    :try_start_3
    aget-object v0, v5, v17
    :try_end_3
    .catch Lm5/l; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    .line 141
    move-object/from16 p2, v1

    .line 142
    .line 143
    :try_start_4
    iget v1, v0, Lm5/o;->a:F

    .line 144
    .line 145
    sub-float v1, v6, v1

    .line 146
    .line 147
    const/high16 v18, 0x3f800000    # 1.0f

    .line 148
    .line 149
    sub-float v1, v1, v18

    .line 150
    .line 151
    iget v0, v0, Lm5/o;->b:F

    .line 152
    .line 153
    invoke-direct {v15, v1, v0}, Lm5/o;-><init>(FF)V

    .line 154
    .line 155
    .line 156
    aput-object v15, v5, v17

    .line 157
    .line 158
    new-instance v0, Lm5/o;

    .line 159
    .line 160
    aget-object v1, v5, v16

    .line 161
    .line 162
    iget v15, v1, Lm5/o;->a:F

    .line 163
    .line 164
    sub-float/2addr v6, v15

    .line 165
    sub-float v6, v6, v18

    .line 166
    .line 167
    iget v1, v1, Lm5/o;->b:F

    .line 168
    .line 169
    invoke-direct {v0, v6, v1}, Lm5/o;-><init>(FF)V

    .line 170
    .line 171
    .line 172
    aput-object v0, v5, v16
    :try_end_4
    .catch Lm5/l; {:try_start_4 .. :try_end_4} :catch_3

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :catch_0
    move-object/from16 p2, v1

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :catch_1
    move-object/from16 p2, v1

    .line 179
    .line 180
    const/16 v16, 0x1

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :catch_2
    move-object/from16 p2, v1

    .line 184
    .line 185
    const/16 v16, 0x1

    .line 186
    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_5
    :goto_6
    return-object v14

    .line 191
    :catch_3
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 192
    .line 193
    move-object/from16 v0, p1

    .line 194
    .line 195
    move-object/from16 v1, p2

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    goto :goto_5

    .line 199
    :cond_6
    move-object/from16 v13, p0

    .line 200
    .line 201
    const/16 v16, 0x1

    .line 202
    .line 203
    const/16 v17, 0x0

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :catch_4
    move-object/from16 v13, p0

    .line 207
    .line 208
    const/16 v16, 0x1

    .line 209
    .line 210
    const/16 v17, 0x0

    .line 211
    .line 212
    nop

    .line 213
    :goto_8
    move-object/from16 v0, p1

    .line 214
    .line 215
    move v10, v11

    .line 216
    const/4 v6, 0x1

    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_7
    move-object/from16 v13, p0

    .line 220
    .line 221
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 222
    .line 223
    throw v0
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
