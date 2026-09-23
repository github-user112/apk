.class public abstract synthetic Lp9/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static synthetic A(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const-string p0, "null"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "SYNTHESIZED"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string p0, "DELEGATION"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "FAKE_OVERRIDE"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    const-string p0, "DECLARATION"

    .line 26
    .line 27
    return-object p0
.end method

.method public static synthetic B(Ljava/lang/String;)I
    .locals 2

    .line 1
    if-eqz p0, :cond_10

    .line 2
    .line 3
    const-string v0, "GET"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const-string v0, "PUT"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    return p0

    .line 23
    :cond_1
    const-string v0, "POST"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    return p0

    .line 33
    :cond_2
    const-string v0, "DELETE"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x4

    .line 42
    return p0

    .line 43
    :cond_3
    const-string v0, "HEAD"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    const/4 p0, 0x5

    .line 52
    return p0

    .line 53
    :cond_4
    const-string v0, "OPTIONS"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const/4 p0, 0x6

    .line 62
    return p0

    .line 63
    :cond_5
    const-string v0, "TRACE"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    const/4 p0, 0x7

    .line 72
    return p0

    .line 73
    :cond_6
    const-string v0, "CONNECT"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    const/16 p0, 0x8

    .line 82
    .line 83
    return p0

    .line 84
    :cond_7
    const-string v0, "PATCH"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    const/16 p0, 0x9

    .line 93
    .line 94
    return p0

    .line 95
    :cond_8
    const-string v0, "PROPFIND"

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    const/16 p0, 0xa

    .line 104
    .line 105
    return p0

    .line 106
    :cond_9
    const-string v0, "PROPPATCH"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_a

    .line 113
    .line 114
    const/16 p0, 0xb

    .line 115
    .line 116
    return p0

    .line 117
    :cond_a
    const-string v0, "MKCOL"

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    const/16 p0, 0xc

    .line 126
    .line 127
    return p0

    .line 128
    :cond_b
    const-string v0, "MOVE"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_c

    .line 135
    .line 136
    const/16 p0, 0xd

    .line 137
    .line 138
    return p0

    .line 139
    :cond_c
    const-string v0, "COPY"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_d

    .line 146
    .line 147
    const/16 p0, 0xe

    .line 148
    .line 149
    return p0

    .line 150
    :cond_d
    const-string v0, "LOCK"

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_e

    .line 157
    .line 158
    const/16 p0, 0xf

    .line 159
    .line 160
    return p0

    .line 161
    :cond_e
    const-string v0, "UNLOCK"

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_f

    .line 168
    .line 169
    const/16 p0, 0x10

    .line 170
    .line 171
    return p0

    .line 172
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    const-string v1, "No enum constant fi.iki.elonen.NanoHTTPD.Method."

    .line 175
    .line 176
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    .line 185
    .line 186
    const-string v0, "Name is null"

    .line 187
    .line 188
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0
.end method

.method public static a(Lv/f;J)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lv/f;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, p1, v0

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static b(Lq2/x;Lo2/r;Lo2/l0;I)I
    .locals 4

    .line 1
    new-instance v0, Lo2/k;

    .line 2
    .line 3
    sget-object v1, Lq2/k1;->b:Lq2/k1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lq2/j1;->b:Lq2/j1;

    .line 7
    .line 8
    invoke-direct {v0, p2, v3, v1, v2}, Lo2/k;-><init>(Lo2/l0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    invoke-static {p3, p2, v1}, Ln3/b;->b(III)J

    .line 15
    .line 16
    .line 17
    move-result-wide p2

    .line 18
    new-instance v1, Lo2/v;

    .line 19
    .line 20
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, p1, v2}, Lo2/v;-><init>(Lo2/r;Ln3/m;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v1, v0, p2, p3}, Lq2/x;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Lo2/n0;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public static c(Lq2/x;Lo2/r;Lo2/l0;I)I
    .locals 4

    .line 1
    new-instance v0, Lo2/k;

    .line 2
    .line 3
    sget-object v1, Lq2/k1;->a:Lq2/k1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lq2/j1;->b:Lq2/j1;

    .line 7
    .line 8
    invoke-direct {v0, p2, v3, v1, v2}, Lo2/k;-><init>(Lo2/l0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    const/4 v1, 0x7

    .line 13
    invoke-static {p2, p3, v1}, Ln3/b;->b(III)J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    new-instance v1, Lo2/v;

    .line 18
    .line 19
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, p1, v2}, Lo2/v;-><init>(Lo2/r;Ln3/m;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v1, v0, p2, p3}, Lq2/x;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lo2/n0;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static d(Lq2/x;Lo2/r;Lo2/l0;I)I
    .locals 4

    .line 1
    new-instance v0, Lo2/k;

    .line 2
    .line 3
    sget-object v1, Lq2/k1;->b:Lq2/k1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lq2/j1;->a:Lq2/j1;

    .line 7
    .line 8
    invoke-direct {v0, p2, v3, v1, v2}, Lo2/k;-><init>(Lo2/l0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    invoke-static {p3, p2, v1}, Ln3/b;->b(III)J

    .line 15
    .line 16
    .line 17
    move-result-wide p2

    .line 18
    new-instance v1, Lo2/v;

    .line 19
    .line 20
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, p1, v2}, Lo2/v;-><init>(Lo2/r;Ln3/m;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v1, v0, p2, p3}, Lq2/x;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Lo2/n0;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public static e(Lq2/x;Lo2/r;Lo2/l0;I)I
    .locals 4

    .line 1
    new-instance v0, Lo2/k;

    .line 2
    .line 3
    sget-object v1, Lq2/k1;->a:Lq2/k1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lq2/j1;->a:Lq2/j1;

    .line 7
    .line 8
    invoke-direct {v0, p2, v3, v1, v2}, Lo2/k;-><init>(Lo2/l0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    const/4 v1, 0x7

    .line 13
    invoke-static {p2, p3, v1}, Ln3/b;->b(III)J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    new-instance v1, Lo2/v;

    .line 18
    .line 19
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, p1, v2}, Lo2/v;-><init>(Lo2/r;Ln3/m;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v1, v0, p2, p3}, Lq2/x;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lo2/n0;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static f(Lr1/p;Lr1/p;)Lr1/p;
    .locals 1

    .line 1
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lr1/j;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lr1/j;-><init>(Lr1/p;Lr1/p;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Lp9/v;->B(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    return v0
.end method

.method public static h(Ly1/e0;Lx1/d;)V
    .locals 12

    .line 1
    check-cast p0, Ly1/h;

    .line 2
    .line 3
    iget-object v0, p0, Ly1/h;->b:Landroid/graphics/RectF;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ly1/h;->b:Landroid/graphics/RectF;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Ly1/h;->b:Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget v1, p1, Lx1/d;->a:F

    .line 20
    .line 21
    iget-wide v2, p1, Lx1/d;->h:J

    .line 22
    .line 23
    iget-wide v4, p1, Lx1/d;->g:J

    .line 24
    .line 25
    iget-wide v6, p1, Lx1/d;->f:J

    .line 26
    .line 27
    iget-wide v8, p1, Lx1/d;->e:J

    .line 28
    .line 29
    iget v10, p1, Lx1/d;->b:F

    .line 30
    .line 31
    iget v11, p1, Lx1/d;->c:F

    .line 32
    .line 33
    iget p1, p1, Lx1/d;->d:F

    .line 34
    .line 35
    invoke-virtual {v0, v1, v10, v11, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Ly1/h;->c:[F

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const/16 p1, 0x8

    .line 43
    .line 44
    new-array p1, p1, [F

    .line 45
    .line 46
    iput-object p1, p0, Ly1/h;->c:[F

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Ly1/h;->c:[F

    .line 49
    .line 50
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/16 v0, 0x20

    .line 54
    .line 55
    shr-long v10, v8, v0

    .line 56
    .line 57
    long-to-int v1, v10

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v10, 0x0

    .line 63
    aput v1, p1, v10

    .line 64
    .line 65
    const-wide v10, 0xffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v8, v10

    .line 71
    long-to-int v1, v8

    .line 72
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v8, 0x1

    .line 77
    aput v1, p1, v8

    .line 78
    .line 79
    shr-long v8, v6, v0

    .line 80
    .line 81
    long-to-int v1, v8

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v8, 0x2

    .line 87
    aput v1, p1, v8

    .line 88
    .line 89
    and-long/2addr v6, v10

    .line 90
    long-to-int v1, v6

    .line 91
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v6, 0x3

    .line 96
    aput v1, p1, v6

    .line 97
    .line 98
    shr-long v6, v4, v0

    .line 99
    .line 100
    long-to-int v1, v6

    .line 101
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v6, 0x4

    .line 106
    aput v1, p1, v6

    .line 107
    .line 108
    and-long/2addr v4, v10

    .line 109
    long-to-int v1, v4

    .line 110
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v4, 0x5

    .line 115
    aput v1, p1, v4

    .line 116
    .line 117
    shr-long v0, v2, v0

    .line 118
    .line 119
    long-to-int v1, v0

    .line 120
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    const/4 v1, 0x6

    .line 125
    aput v0, p1, v1

    .line 126
    .line 127
    and-long v0, v2, v10

    .line 128
    .line 129
    long-to-int v1, v0

    .line 130
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v1, 0x7

    .line 135
    aput v0, p1, v1

    .line 136
    .line 137
    iget-object p1, p0, Ly1/h;->a:Landroid/graphics/Path;

    .line 138
    .line 139
    iget-object v0, p0, Ly1/h;->b:Landroid/graphics/RectF;

    .line 140
    .line 141
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Ly1/h;->c:[F

    .line 145
    .line 146
    invoke-static {p0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 150
    .line 151
    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public static i(FII)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    mul-int p0, p0, p2

    .line 7
    .line 8
    return p0
.end method

.method public static j(IIJ)I
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lr8/u;->a(J)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    add-int/2addr p2, p0

    .line 6
    mul-int p2, p2, p1

    .line 7
    .line 8
    return p2
.end method

.method public static k(Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    mul-int p0, p0, p2

    .line 7
    .line 8
    return p0
.end method

.method public static l(Ljava/lang/Object;)Lac/p;
    .locals 0

    .line 1
    invoke-static {p0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lac/p;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Lac/p;
    .locals 0

    .line 1
    invoke-static {p0}, Ln2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lac/p;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public static n(Lf1/s;)Lb0/k;
    .locals 1

    .line 1
    new-instance v0, Lb0/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lb0/k;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static p(Ljava/lang/StringBuilder;FC)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/k;
    .locals 1

    .line 1
    new-instance v0, Lg9/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lg9/o;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Lg9/z;->e(Lg9/o;)Lm9/k;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;
    .locals 1

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static u(ILf1/s;ILq2/h;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p3, p0}, Lf1/s;->b(Lf9/n;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static v(JLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly1/q;->i(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static w(La2/b;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/b;->z()Ly1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ly1/o;->n()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, La2/b;->c0(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic x(Ljava/lang/AutoCloseable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    invoke-static {p0}, La4/h;->w(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    instance-of v0, p0, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p0, Landroid/content/res/TypedArray;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    instance-of v0, p0, Landroid/media/MediaDrm;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    check-cast p0, Landroid/media/MediaDrm;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    check-cast p0, Landroid/content/ContentProviderClient;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static synthetic y(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public static synthetic z(Lw1/s;)Z
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lw1/s;->E0(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method
