.class public final Lpa/h0;
.super Lva/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lpa/s0;

.field public i:I

.field public j:Ljava/util/List;

.field public k:Lpa/s0;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Lpa/a1;

.field public p:I

.field public q:I

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;


# direct methods
.method public static f()Lpa/h0;
    .locals 3

    .line 1
    new-instance v0, Lpa/h0;

    .line 2
    .line 3
    invoke-direct {v0}, Lva/j;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x206

    .line 7
    .line 8
    iput v1, v0, Lpa/h0;->e:I

    .line 9
    .line 10
    const/16 v1, 0x806

    .line 11
    .line 12
    iput v1, v0, Lpa/h0;->f:I

    .line 13
    .line 14
    sget-object v1, Lpa/s0;->t:Lpa/s0;

    .line 15
    .line 16
    iput-object v1, v0, Lpa/h0;->h:Lpa/s0;

    .line 17
    .line 18
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 19
    .line 20
    iput-object v2, v0, Lpa/h0;->j:Ljava/util/List;

    .line 21
    .line 22
    iput-object v1, v0, Lpa/h0;->k:Lpa/s0;

    .line 23
    .line 24
    iput-object v2, v0, Lpa/h0;->m:Ljava/util/List;

    .line 25
    .line 26
    iput-object v2, v0, Lpa/h0;->n:Ljava/util/List;

    .line 27
    .line 28
    sget-object v1, Lpa/a1;->l:Lpa/a1;

    .line 29
    .line 30
    iput-object v1, v0, Lpa/h0;->o:Lpa/a1;

    .line 31
    .line 32
    iput-object v2, v0, Lpa/h0;->r:Ljava/util/List;

    .line 33
    .line 34
    iput-object v2, v0, Lpa/h0;->s:Ljava/util/List;

    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public final a()Lva/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpa/h0;->e()Lpa/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpa/i0;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lac/p;

    .line 13
    .line 14
    invoke-direct {v0}, Lac/p;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final b(Lva/e;Lva/g;)Lva/i;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lpa/i0;->w:Lpa/a;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v1, Lpa/i0;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Lpa/i0;-><init>(Lva/e;Lva/g;)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lpa/h0;->g(Lpa/i0;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    iget-object p2, p1, Lva/q;->a:Lva/a;

    .line 20
    .line 21
    check-cast p2, Lpa/i0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    move-object v0, p2

    .line 26
    :goto_0
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lpa/h0;->g(Lpa/i0;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lva/n;)Lva/i;
    .locals 0

    .line 1
    check-cast p1, Lpa/i0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lpa/h0;->g(Lpa/i0;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lpa/h0;->f()Lpa/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lpa/h0;->e()Lpa/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lpa/h0;->g(Lpa/i0;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final e()Lpa/i0;
    .locals 5

    .line 1
    new-instance v0, Lpa/i0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lpa/i0;-><init>(Lpa/h0;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lpa/h0;->d:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lpa/h0;->e:I

    .line 16
    .line 17
    iput v2, v0, Lpa/i0;->d:I

    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x2

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v2, v4, :cond_1

    .line 23
    .line 24
    or-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    :cond_1
    iget v2, p0, Lpa/h0;->f:I

    .line 27
    .line 28
    iput v2, v0, Lpa/i0;->e:I

    .line 29
    .line 30
    and-int/lit8 v2, v1, 0x4

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne v2, v4, :cond_2

    .line 34
    .line 35
    or-int/lit8 v3, v3, 0x4

    .line 36
    .line 37
    :cond_2
    iget v2, p0, Lpa/h0;->g:I

    .line 38
    .line 39
    iput v2, v0, Lpa/i0;->f:I

    .line 40
    .line 41
    and-int/lit8 v2, v1, 0x8

    .line 42
    .line 43
    const/16 v4, 0x8

    .line 44
    .line 45
    if-ne v2, v4, :cond_3

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x8

    .line 48
    .line 49
    :cond_3
    iget-object v2, p0, Lpa/h0;->h:Lpa/s0;

    .line 50
    .line 51
    iput-object v2, v0, Lpa/i0;->g:Lpa/s0;

    .line 52
    .line 53
    and-int/lit8 v2, v1, 0x10

    .line 54
    .line 55
    const/16 v4, 0x10

    .line 56
    .line 57
    if-ne v2, v4, :cond_4

    .line 58
    .line 59
    or-int/lit8 v3, v3, 0x10

    .line 60
    .line 61
    :cond_4
    iget v2, p0, Lpa/h0;->i:I

    .line 62
    .line 63
    iput v2, v0, Lpa/i0;->h:I

    .line 64
    .line 65
    and-int/lit8 v2, v1, 0x20

    .line 66
    .line 67
    const/16 v4, 0x20

    .line 68
    .line 69
    if-ne v2, v4, :cond_5

    .line 70
    .line 71
    iget-object v2, p0, Lpa/h0;->j:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iput-object v2, p0, Lpa/h0;->j:Ljava/util/List;

    .line 78
    .line 79
    iget v2, p0, Lpa/h0;->d:I

    .line 80
    .line 81
    and-int/lit8 v2, v2, -0x21

    .line 82
    .line 83
    iput v2, p0, Lpa/h0;->d:I

    .line 84
    .line 85
    :cond_5
    iget-object v2, p0, Lpa/h0;->j:Ljava/util/List;

    .line 86
    .line 87
    iput-object v2, v0, Lpa/i0;->i:Ljava/util/List;

    .line 88
    .line 89
    and-int/lit8 v2, v1, 0x40

    .line 90
    .line 91
    const/16 v4, 0x40

    .line 92
    .line 93
    if-ne v2, v4, :cond_6

    .line 94
    .line 95
    or-int/lit8 v3, v3, 0x20

    .line 96
    .line 97
    :cond_6
    iget-object v2, p0, Lpa/h0;->k:Lpa/s0;

    .line 98
    .line 99
    iput-object v2, v0, Lpa/i0;->j:Lpa/s0;

    .line 100
    .line 101
    and-int/lit16 v2, v1, 0x80

    .line 102
    .line 103
    const/16 v4, 0x80

    .line 104
    .line 105
    if-ne v2, v4, :cond_7

    .line 106
    .line 107
    or-int/lit8 v3, v3, 0x40

    .line 108
    .line 109
    :cond_7
    iget v2, p0, Lpa/h0;->l:I

    .line 110
    .line 111
    iput v2, v0, Lpa/i0;->k:I

    .line 112
    .line 113
    iget v2, p0, Lpa/h0;->d:I

    .line 114
    .line 115
    const/16 v4, 0x100

    .line 116
    .line 117
    and-int/2addr v2, v4

    .line 118
    if-ne v2, v4, :cond_8

    .line 119
    .line 120
    iget-object v2, p0, Lpa/h0;->m:Ljava/util/List;

    .line 121
    .line 122
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, p0, Lpa/h0;->m:Ljava/util/List;

    .line 127
    .line 128
    iget v2, p0, Lpa/h0;->d:I

    .line 129
    .line 130
    and-int/lit16 v2, v2, -0x101

    .line 131
    .line 132
    iput v2, p0, Lpa/h0;->d:I

    .line 133
    .line 134
    :cond_8
    iget-object v2, p0, Lpa/h0;->m:Ljava/util/List;

    .line 135
    .line 136
    iput-object v2, v0, Lpa/i0;->l:Ljava/util/List;

    .line 137
    .line 138
    iget v2, p0, Lpa/h0;->d:I

    .line 139
    .line 140
    const/16 v4, 0x200

    .line 141
    .line 142
    and-int/2addr v2, v4

    .line 143
    if-ne v2, v4, :cond_9

    .line 144
    .line 145
    iget-object v2, p0, Lpa/h0;->n:Ljava/util/List;

    .line 146
    .line 147
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, p0, Lpa/h0;->n:Ljava/util/List;

    .line 152
    .line 153
    iget v2, p0, Lpa/h0;->d:I

    .line 154
    .line 155
    and-int/lit16 v2, v2, -0x201

    .line 156
    .line 157
    iput v2, p0, Lpa/h0;->d:I

    .line 158
    .line 159
    :cond_9
    iget-object v2, p0, Lpa/h0;->n:Ljava/util/List;

    .line 160
    .line 161
    iput-object v2, v0, Lpa/i0;->m:Ljava/util/List;

    .line 162
    .line 163
    and-int/lit16 v2, v1, 0x400

    .line 164
    .line 165
    const/16 v4, 0x400

    .line 166
    .line 167
    if-ne v2, v4, :cond_a

    .line 168
    .line 169
    or-int/lit16 v3, v3, 0x80

    .line 170
    .line 171
    :cond_a
    iget-object v2, p0, Lpa/h0;->o:Lpa/a1;

    .line 172
    .line 173
    iput-object v2, v0, Lpa/i0;->o:Lpa/a1;

    .line 174
    .line 175
    and-int/lit16 v2, v1, 0x800

    .line 176
    .line 177
    const/16 v4, 0x800

    .line 178
    .line 179
    if-ne v2, v4, :cond_b

    .line 180
    .line 181
    or-int/lit16 v3, v3, 0x100

    .line 182
    .line 183
    :cond_b
    iget v2, p0, Lpa/h0;->p:I

    .line 184
    .line 185
    iput v2, v0, Lpa/i0;->p:I

    .line 186
    .line 187
    const/16 v2, 0x1000

    .line 188
    .line 189
    and-int/2addr v1, v2

    .line 190
    if-ne v1, v2, :cond_c

    .line 191
    .line 192
    or-int/lit16 v3, v3, 0x200

    .line 193
    .line 194
    :cond_c
    iget v1, p0, Lpa/h0;->q:I

    .line 195
    .line 196
    iput v1, v0, Lpa/i0;->q:I

    .line 197
    .line 198
    iget v1, p0, Lpa/h0;->d:I

    .line 199
    .line 200
    const/16 v2, 0x2000

    .line 201
    .line 202
    and-int/2addr v1, v2

    .line 203
    if-ne v1, v2, :cond_d

    .line 204
    .line 205
    iget-object v1, p0, Lpa/h0;->r:Ljava/util/List;

    .line 206
    .line 207
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, p0, Lpa/h0;->r:Ljava/util/List;

    .line 212
    .line 213
    iget v1, p0, Lpa/h0;->d:I

    .line 214
    .line 215
    and-int/lit16 v1, v1, -0x2001

    .line 216
    .line 217
    iput v1, p0, Lpa/h0;->d:I

    .line 218
    .line 219
    :cond_d
    iget-object v1, p0, Lpa/h0;->r:Ljava/util/List;

    .line 220
    .line 221
    iput-object v1, v0, Lpa/i0;->r:Ljava/util/List;

    .line 222
    .line 223
    iget v1, p0, Lpa/h0;->d:I

    .line 224
    .line 225
    const/16 v2, 0x4000

    .line 226
    .line 227
    and-int/2addr v1, v2

    .line 228
    if-ne v1, v2, :cond_e

    .line 229
    .line 230
    iget-object v1, p0, Lpa/h0;->s:Ljava/util/List;

    .line 231
    .line 232
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iput-object v1, p0, Lpa/h0;->s:Ljava/util/List;

    .line 237
    .line 238
    iget v1, p0, Lpa/h0;->d:I

    .line 239
    .line 240
    and-int/lit16 v1, v1, -0x4001

    .line 241
    .line 242
    iput v1, p0, Lpa/h0;->d:I

    .line 243
    .line 244
    :cond_e
    iget-object v1, p0, Lpa/h0;->s:Ljava/util/List;

    .line 245
    .line 246
    iput-object v1, v0, Lpa/i0;->s:Ljava/util/List;

    .line 247
    .line 248
    iput v3, v0, Lpa/i0;->c:I

    .line 249
    .line 250
    return-object v0
.end method

.method public final g(Lpa/i0;)V
    .locals 7

    .line 1
    sget-object v0, Lpa/i0;->v:Lpa/i0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lpa/i0;->c:I

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    iget v1, p1, Lpa/i0;->d:I

    .line 14
    .line 15
    iget v3, p0, Lpa/h0;->d:I

    .line 16
    .line 17
    or-int/2addr v2, v3

    .line 18
    iput v2, p0, Lpa/h0;->d:I

    .line 19
    .line 20
    iput v1, p0, Lpa/h0;->e:I

    .line 21
    .line 22
    :cond_1
    and-int/lit8 v1, v0, 0x2

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p1, Lpa/i0;->e:I

    .line 28
    .line 29
    iget v3, p0, Lpa/h0;->d:I

    .line 30
    .line 31
    or-int/2addr v2, v3

    .line 32
    iput v2, p0, Lpa/h0;->d:I

    .line 33
    .line 34
    iput v1, p0, Lpa/h0;->f:I

    .line 35
    .line 36
    :cond_2
    and-int/lit8 v1, v0, 0x4

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    if-ne v1, v2, :cond_3

    .line 40
    .line 41
    iget v1, p1, Lpa/i0;->f:I

    .line 42
    .line 43
    iget v3, p0, Lpa/h0;->d:I

    .line 44
    .line 45
    or-int/2addr v2, v3

    .line 46
    iput v2, p0, Lpa/h0;->d:I

    .line 47
    .line 48
    iput v1, p0, Lpa/h0;->g:I

    .line 49
    .line 50
    :cond_3
    const/16 v1, 0x8

    .line 51
    .line 52
    and-int/2addr v0, v1

    .line 53
    if-ne v0, v1, :cond_5

    .line 54
    .line 55
    iget-object v0, p1, Lpa/i0;->g:Lpa/s0;

    .line 56
    .line 57
    iget v2, p0, Lpa/h0;->d:I

    .line 58
    .line 59
    and-int/2addr v2, v1

    .line 60
    if-ne v2, v1, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Lpa/h0;->h:Lpa/s0;

    .line 63
    .line 64
    sget-object v3, Lpa/s0;->t:Lpa/s0;

    .line 65
    .line 66
    if-eq v2, v3, :cond_4

    .line 67
    .line 68
    invoke-static {v2}, Lpa/s0;->o(Lpa/s0;)Lpa/r0;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, v0}, Lpa/r0;->g(Lpa/s0;)Lpa/r0;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lpa/r0;->e()Lpa/s0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lpa/h0;->h:Lpa/s0;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iput-object v0, p0, Lpa/h0;->h:Lpa/s0;

    .line 83
    .line 84
    :goto_0
    iget v0, p0, Lpa/h0;->d:I

    .line 85
    .line 86
    or-int/2addr v0, v1

    .line 87
    iput v0, p0, Lpa/h0;->d:I

    .line 88
    .line 89
    :cond_5
    iget v0, p1, Lpa/i0;->c:I

    .line 90
    .line 91
    const/16 v1, 0x10

    .line 92
    .line 93
    and-int/2addr v0, v1

    .line 94
    if-ne v0, v1, :cond_6

    .line 95
    .line 96
    iget v0, p1, Lpa/i0;->h:I

    .line 97
    .line 98
    iget v2, p0, Lpa/h0;->d:I

    .line 99
    .line 100
    or-int/2addr v1, v2

    .line 101
    iput v1, p0, Lpa/h0;->d:I

    .line 102
    .line 103
    iput v0, p0, Lpa/h0;->i:I

    .line 104
    .line 105
    :cond_6
    iget-object v0, p1, Lpa/i0;->i:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/16 v1, 0x20

    .line 112
    .line 113
    if-nez v0, :cond_9

    .line 114
    .line 115
    iget-object v0, p0, Lpa/h0;->j:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    iget-object v0, p1, Lpa/i0;->i:Ljava/util/List;

    .line 124
    .line 125
    iput-object v0, p0, Lpa/h0;->j:Ljava/util/List;

    .line 126
    .line 127
    iget v0, p0, Lpa/h0;->d:I

    .line 128
    .line 129
    and-int/lit8 v0, v0, -0x21

    .line 130
    .line 131
    iput v0, p0, Lpa/h0;->d:I

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    iget v0, p0, Lpa/h0;->d:I

    .line 135
    .line 136
    and-int/2addr v0, v1

    .line 137
    if-eq v0, v1, :cond_8

    .line 138
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    iget-object v2, p0, Lpa/h0;->j:Ljava/util/List;

    .line 142
    .line 143
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lpa/h0;->j:Ljava/util/List;

    .line 147
    .line 148
    iget v0, p0, Lpa/h0;->d:I

    .line 149
    .line 150
    or-int/2addr v0, v1

    .line 151
    iput v0, p0, Lpa/h0;->d:I

    .line 152
    .line 153
    :cond_8
    iget-object v0, p0, Lpa/h0;->j:Ljava/util/List;

    .line 154
    .line 155
    iget-object v2, p1, Lpa/i0;->i:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_1
    iget v0, p1, Lpa/i0;->c:I

    .line 161
    .line 162
    and-int/2addr v0, v1

    .line 163
    const/16 v2, 0x40

    .line 164
    .line 165
    if-ne v0, v1, :cond_b

    .line 166
    .line 167
    iget-object v0, p1, Lpa/i0;->j:Lpa/s0;

    .line 168
    .line 169
    iget v1, p0, Lpa/h0;->d:I

    .line 170
    .line 171
    and-int/2addr v1, v2

    .line 172
    if-ne v1, v2, :cond_a

    .line 173
    .line 174
    iget-object v1, p0, Lpa/h0;->k:Lpa/s0;

    .line 175
    .line 176
    sget-object v3, Lpa/s0;->t:Lpa/s0;

    .line 177
    .line 178
    if-eq v1, v3, :cond_a

    .line 179
    .line 180
    invoke-static {v1}, Lpa/s0;->o(Lpa/s0;)Lpa/r0;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Lpa/r0;->g(Lpa/s0;)Lpa/r0;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lpa/r0;->e()Lpa/s0;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lpa/h0;->k:Lpa/s0;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_a
    iput-object v0, p0, Lpa/h0;->k:Lpa/s0;

    .line 195
    .line 196
    :goto_2
    iget v0, p0, Lpa/h0;->d:I

    .line 197
    .line 198
    or-int/2addr v0, v2

    .line 199
    iput v0, p0, Lpa/h0;->d:I

    .line 200
    .line 201
    :cond_b
    iget v0, p1, Lpa/i0;->c:I

    .line 202
    .line 203
    and-int/2addr v0, v2

    .line 204
    const/16 v1, 0x80

    .line 205
    .line 206
    if-ne v0, v2, :cond_c

    .line 207
    .line 208
    iget v0, p1, Lpa/i0;->k:I

    .line 209
    .line 210
    iget v2, p0, Lpa/h0;->d:I

    .line 211
    .line 212
    or-int/2addr v2, v1

    .line 213
    iput v2, p0, Lpa/h0;->d:I

    .line 214
    .line 215
    iput v0, p0, Lpa/h0;->l:I

    .line 216
    .line 217
    :cond_c
    iget-object v0, p1, Lpa/i0;->l:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    const/16 v2, 0x100

    .line 224
    .line 225
    if-nez v0, :cond_f

    .line 226
    .line 227
    iget-object v0, p0, Lpa/h0;->m:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_d

    .line 234
    .line 235
    iget-object v0, p1, Lpa/i0;->l:Ljava/util/List;

    .line 236
    .line 237
    iput-object v0, p0, Lpa/h0;->m:Ljava/util/List;

    .line 238
    .line 239
    iget v0, p0, Lpa/h0;->d:I

    .line 240
    .line 241
    and-int/lit16 v0, v0, -0x101

    .line 242
    .line 243
    iput v0, p0, Lpa/h0;->d:I

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_d
    iget v0, p0, Lpa/h0;->d:I

    .line 247
    .line 248
    and-int/2addr v0, v2

    .line 249
    if-eq v0, v2, :cond_e

    .line 250
    .line 251
    new-instance v0, Ljava/util/ArrayList;

    .line 252
    .line 253
    iget-object v3, p0, Lpa/h0;->m:Ljava/util/List;

    .line 254
    .line 255
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    .line 257
    .line 258
    iput-object v0, p0, Lpa/h0;->m:Ljava/util/List;

    .line 259
    .line 260
    iget v0, p0, Lpa/h0;->d:I

    .line 261
    .line 262
    or-int/2addr v0, v2

    .line 263
    iput v0, p0, Lpa/h0;->d:I

    .line 264
    .line 265
    :cond_e
    iget-object v0, p0, Lpa/h0;->m:Ljava/util/List;

    .line 266
    .line 267
    iget-object v3, p1, Lpa/i0;->l:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    .line 271
    .line 272
    :cond_f
    :goto_3
    iget-object v0, p1, Lpa/i0;->m:Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    const/16 v3, 0x200

    .line 279
    .line 280
    if-nez v0, :cond_12

    .line 281
    .line 282
    iget-object v0, p0, Lpa/h0;->n:Ljava/util/List;

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_10

    .line 289
    .line 290
    iget-object v0, p1, Lpa/i0;->m:Ljava/util/List;

    .line 291
    .line 292
    iput-object v0, p0, Lpa/h0;->n:Ljava/util/List;

    .line 293
    .line 294
    iget v0, p0, Lpa/h0;->d:I

    .line 295
    .line 296
    and-int/lit16 v0, v0, -0x201

    .line 297
    .line 298
    iput v0, p0, Lpa/h0;->d:I

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_10
    iget v0, p0, Lpa/h0;->d:I

    .line 302
    .line 303
    and-int/2addr v0, v3

    .line 304
    if-eq v0, v3, :cond_11

    .line 305
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    .line 307
    .line 308
    iget-object v4, p0, Lpa/h0;->n:Ljava/util/List;

    .line 309
    .line 310
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .line 312
    .line 313
    iput-object v0, p0, Lpa/h0;->n:Ljava/util/List;

    .line 314
    .line 315
    iget v0, p0, Lpa/h0;->d:I

    .line 316
    .line 317
    or-int/2addr v0, v3

    .line 318
    iput v0, p0, Lpa/h0;->d:I

    .line 319
    .line 320
    :cond_11
    iget-object v0, p0, Lpa/h0;->n:Ljava/util/List;

    .line 321
    .line 322
    iget-object v4, p1, Lpa/i0;->m:Ljava/util/List;

    .line 323
    .line 324
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    .line 326
    .line 327
    :cond_12
    :goto_4
    iget v0, p1, Lpa/i0;->c:I

    .line 328
    .line 329
    and-int/2addr v0, v1

    .line 330
    if-ne v0, v1, :cond_14

    .line 331
    .line 332
    iget-object v0, p1, Lpa/i0;->o:Lpa/a1;

    .line 333
    .line 334
    iget v1, p0, Lpa/h0;->d:I

    .line 335
    .line 336
    const/16 v4, 0x400

    .line 337
    .line 338
    and-int/2addr v1, v4

    .line 339
    if-ne v1, v4, :cond_13

    .line 340
    .line 341
    iget-object v1, p0, Lpa/h0;->o:Lpa/a1;

    .line 342
    .line 343
    sget-object v5, Lpa/a1;->l:Lpa/a1;

    .line 344
    .line 345
    if-eq v1, v5, :cond_13

    .line 346
    .line 347
    new-instance v5, Lpa/z0;

    .line 348
    .line 349
    invoke-direct {v5}, Lva/j;-><init>()V

    .line 350
    .line 351
    .line 352
    sget-object v6, Lpa/s0;->t:Lpa/s0;

    .line 353
    .line 354
    iput-object v6, v5, Lpa/z0;->g:Lpa/s0;

    .line 355
    .line 356
    iput-object v6, v5, Lpa/z0;->i:Lpa/s0;

    .line 357
    .line 358
    invoke-virtual {v5, v1}, Lpa/z0;->f(Lpa/a1;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v0}, Lpa/z0;->f(Lpa/a1;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Lpa/z0;->e()Lpa/a1;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    iput-object v0, p0, Lpa/h0;->o:Lpa/a1;

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_13
    iput-object v0, p0, Lpa/h0;->o:Lpa/a1;

    .line 372
    .line 373
    :goto_5
    iget v0, p0, Lpa/h0;->d:I

    .line 374
    .line 375
    or-int/2addr v0, v4

    .line 376
    iput v0, p0, Lpa/h0;->d:I

    .line 377
    .line 378
    :cond_14
    iget v0, p1, Lpa/i0;->c:I

    .line 379
    .line 380
    and-int/lit16 v1, v0, 0x100

    .line 381
    .line 382
    if-ne v1, v2, :cond_15

    .line 383
    .line 384
    iget v1, p1, Lpa/i0;->p:I

    .line 385
    .line 386
    iget v2, p0, Lpa/h0;->d:I

    .line 387
    .line 388
    or-int/lit16 v2, v2, 0x800

    .line 389
    .line 390
    iput v2, p0, Lpa/h0;->d:I

    .line 391
    .line 392
    iput v1, p0, Lpa/h0;->p:I

    .line 393
    .line 394
    :cond_15
    and-int/2addr v0, v3

    .line 395
    if-ne v0, v3, :cond_16

    .line 396
    .line 397
    iget v0, p1, Lpa/i0;->q:I

    .line 398
    .line 399
    iget v1, p0, Lpa/h0;->d:I

    .line 400
    .line 401
    or-int/lit16 v1, v1, 0x1000

    .line 402
    .line 403
    iput v1, p0, Lpa/h0;->d:I

    .line 404
    .line 405
    iput v0, p0, Lpa/h0;->q:I

    .line 406
    .line 407
    :cond_16
    iget-object v0, p1, Lpa/i0;->r:Ljava/util/List;

    .line 408
    .line 409
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_19

    .line 414
    .line 415
    iget-object v0, p0, Lpa/h0;->r:Ljava/util/List;

    .line 416
    .line 417
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_17

    .line 422
    .line 423
    iget-object v0, p1, Lpa/i0;->r:Ljava/util/List;

    .line 424
    .line 425
    iput-object v0, p0, Lpa/h0;->r:Ljava/util/List;

    .line 426
    .line 427
    iget v0, p0, Lpa/h0;->d:I

    .line 428
    .line 429
    and-int/lit16 v0, v0, -0x2001

    .line 430
    .line 431
    iput v0, p0, Lpa/h0;->d:I

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_17
    iget v0, p0, Lpa/h0;->d:I

    .line 435
    .line 436
    const/16 v1, 0x2000

    .line 437
    .line 438
    and-int/2addr v0, v1

    .line 439
    if-eq v0, v1, :cond_18

    .line 440
    .line 441
    new-instance v0, Ljava/util/ArrayList;

    .line 442
    .line 443
    iget-object v2, p0, Lpa/h0;->r:Ljava/util/List;

    .line 444
    .line 445
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 446
    .line 447
    .line 448
    iput-object v0, p0, Lpa/h0;->r:Ljava/util/List;

    .line 449
    .line 450
    iget v0, p0, Lpa/h0;->d:I

    .line 451
    .line 452
    or-int/2addr v0, v1

    .line 453
    iput v0, p0, Lpa/h0;->d:I

    .line 454
    .line 455
    :cond_18
    iget-object v0, p0, Lpa/h0;->r:Ljava/util/List;

    .line 456
    .line 457
    iget-object v1, p1, Lpa/i0;->r:Ljava/util/List;

    .line 458
    .line 459
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    .line 461
    .line 462
    :cond_19
    :goto_6
    iget-object v0, p1, Lpa/i0;->s:Ljava/util/List;

    .line 463
    .line 464
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-nez v0, :cond_1c

    .line 469
    .line 470
    iget-object v0, p0, Lpa/h0;->s:Ljava/util/List;

    .line 471
    .line 472
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_1a

    .line 477
    .line 478
    iget-object v0, p1, Lpa/i0;->s:Ljava/util/List;

    .line 479
    .line 480
    iput-object v0, p0, Lpa/h0;->s:Ljava/util/List;

    .line 481
    .line 482
    iget v0, p0, Lpa/h0;->d:I

    .line 483
    .line 484
    and-int/lit16 v0, v0, -0x4001

    .line 485
    .line 486
    iput v0, p0, Lpa/h0;->d:I

    .line 487
    .line 488
    goto :goto_7

    .line 489
    :cond_1a
    iget v0, p0, Lpa/h0;->d:I

    .line 490
    .line 491
    const/16 v1, 0x4000

    .line 492
    .line 493
    and-int/2addr v0, v1

    .line 494
    if-eq v0, v1, :cond_1b

    .line 495
    .line 496
    new-instance v0, Ljava/util/ArrayList;

    .line 497
    .line 498
    iget-object v2, p0, Lpa/h0;->s:Ljava/util/List;

    .line 499
    .line 500
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 501
    .line 502
    .line 503
    iput-object v0, p0, Lpa/h0;->s:Ljava/util/List;

    .line 504
    .line 505
    iget v0, p0, Lpa/h0;->d:I

    .line 506
    .line 507
    or-int/2addr v0, v1

    .line 508
    iput v0, p0, Lpa/h0;->d:I

    .line 509
    .line 510
    :cond_1b
    iget-object v0, p0, Lpa/h0;->s:Ljava/util/List;

    .line 511
    .line 512
    iget-object v1, p1, Lpa/i0;->s:Ljava/util/List;

    .line 513
    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 515
    .line 516
    .line 517
    :cond_1c
    :goto_7
    invoke-virtual {p0, p1}, Lva/j;->d(Lva/k;)V

    .line 518
    .line 519
    .line 520
    iget-object v0, p0, Lva/i;->a:Lva/d;

    .line 521
    .line 522
    iget-object p1, p1, Lpa/i0;->b:Lva/d;

    .line 523
    .line 524
    invoke-virtual {v0, p1}, Lva/d;->d(Lva/d;)Lva/d;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    iput-object p1, p0, Lva/i;->a:Lva/d;

    .line 529
    .line 530
    return-void
.end method
