.class public abstract Lva/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final a:Lva/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lva/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lva/t;-><init>([B)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lva/d;->a:Lva/t;

    .line 10
    .line 11
    return-void
.end method

.method public static b(Ljava/util/Iterator;I)Lva/d;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lva/d;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 12
    .line 13
    invoke-static {p0, v0}, Lva/d;->b(Ljava/util/Iterator;I)Lva/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sub-int/2addr p1, v0

    .line 18
    invoke-static {p0, p1}, Lva/d;->b(Ljava/util/Iterator;I)Lva/d;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Lva/d;->d(Lva/d;)Lva/d;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static o()Lva/c;
    .locals 1

    .line 1
    new-instance v0, Lva/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lva/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final d(Lva/d;)Lva/d;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lva/d;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lva/d;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v2, v0

    .line 10
    int-to-long v4, v1

    .line 11
    add-long/2addr v2, v4

    .line 12
    const-wide/32 v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    cmp-long v6, v2, v4

    .line 16
    .line 17
    if-gez v6, :cond_8

    .line 18
    .line 19
    sget-object v0, Lva/y;->h:[I

    .line 20
    .line 21
    instance-of v0, p0, Lva/y;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    check-cast v0, Lva/y;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p1}, Lva/d;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lva/d;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    invoke-virtual {p0}, Lva/d;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Lva/d;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v1

    .line 53
    const/4 v1, 0x0

    .line 54
    const/16 v3, 0x80

    .line 55
    .line 56
    if-ge v2, v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lva/d;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Lva/d;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    add-int v3, v0, v2

    .line 67
    .line 68
    new-array v3, v3, [B

    .line 69
    .line 70
    invoke-virtual {p0, v1, v3, v1, v0}, Lva/d;->j(I[BII)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, v3, v0, v2}, Lva/d;->j(I[BII)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lva/t;

    .line 77
    .line 78
    invoke-direct {p1, v3}, Lva/t;-><init>([B)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v4, v0, Lva/y;->d:Lva/d;

    .line 85
    .line 86
    invoke-virtual {v4}, Lva/d;->size()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {p1}, Lva/d;->size()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    add-int/2addr v6, v5

    .line 95
    if-ge v6, v3, :cond_4

    .line 96
    .line 97
    invoke-virtual {v4}, Lva/d;->size()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {p1}, Lva/d;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    add-int v5, v2, v3

    .line 106
    .line 107
    new-array v5, v5, [B

    .line 108
    .line 109
    invoke-virtual {v4, v1, v5, v1, v2}, Lva/d;->j(I[BII)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1, v5, v2, v3}, Lva/d;->j(I[BII)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lva/t;

    .line 116
    .line 117
    invoke-direct {p1, v5}, Lva/t;-><init>([B)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lva/y;

    .line 121
    .line 122
    iget-object v0, v0, Lva/y;->c:Lva/d;

    .line 123
    .line 124
    invoke-direct {v1, v0, p1}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_4
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget-object v1, v0, Lva/y;->d:Lva/d;

    .line 131
    .line 132
    iget-object v3, v0, Lva/y;->c:Lva/d;

    .line 133
    .line 134
    invoke-virtual {v3}, Lva/d;->l()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v1}, Lva/d;->l()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-le v4, v5, :cond_5

    .line 143
    .line 144
    iget v0, v0, Lva/y;->f:I

    .line 145
    .line 146
    invoke-virtual {p1}, Lva/d;->l()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-le v0, v4, :cond_5

    .line 151
    .line 152
    new-instance v0, Lva/y;

    .line 153
    .line 154
    invoke-direct {v0, v1, p1}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Lva/y;

    .line 158
    .line 159
    invoke-direct {p1, v3, v0}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_5
    invoke-virtual {p0}, Lva/d;->l()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {p1}, Lva/d;->l()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    .line 177
    sget-object v1, Lva/y;->h:[I

    .line 178
    .line 179
    aget v0, v1, v0

    .line 180
    .line 181
    if-lt v2, v0, :cond_6

    .line 182
    .line 183
    new-instance v0, Lva/y;

    .line 184
    .line 185
    invoke-direct {v0, p0, p1}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 186
    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_6
    new-instance v0, Lv/a1;

    .line 190
    .line 191
    const/4 v1, 0x2

    .line 192
    invoke-direct {v0, v1}, Lv/a1;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p0}, Lv/a1;->f(Lva/d;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lv/a1;->f(Lva/d;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Ljava/util/Stack;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lva/d;

    .line 210
    .line 211
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_7

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lva/d;

    .line 222
    .line 223
    new-instance v2, Lva/y;

    .line 224
    .line 225
    invoke-direct {v2, v1, v0}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 226
    .line 227
    .line 228
    move-object v0, v2

    .line 229
    goto :goto_1

    .line 230
    :cond_7
    return-object v0

    .line 231
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 232
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const/16 v3, 0x35

    .line 236
    .line 237
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .line 239
    .line 240
    const-string v3, "ByteString would be too long: "

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v0, "+"

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1
.end method

.method public final j(I[BII)V
    .locals 3

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-ltz p1, :cond_5

    .line 4
    .line 5
    if-ltz p3, :cond_4

    .line 6
    .line 7
    if-ltz p4, :cond_3

    .line 8
    .line 9
    add-int v0, p1, p4

    .line 10
    .line 11
    invoke-virtual {p0}, Lva/d;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x22

    .line 16
    .line 17
    if-gt v0, v1, :cond_2

    .line 18
    .line 19
    add-int v0, p3, p4

    .line 20
    .line 21
    array-length v1, p2

    .line 22
    if-gt v0, v1, :cond_1

    .line 23
    .line 24
    if-lez p4, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lva/d;->k(I[BII)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const-string p3, "Target end offset < 0: "

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const-string p3, "Source end offset < 0: "

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const/16 p3, 0x17

    .line 81
    .line 82
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-string p3, "Length < 0: "

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .line 107
    .line 108
    const-string p4, "Target offset < 0: "

    .line 109
    .line 110
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 125
    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .line 130
    .line 131
    const-string p4, "Source offset < 0: "

    .line 132
    .line 133
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p2
.end method

.method public abstract k(I[BII)V
.end method

.method public abstract l()I
.end method

.method public abstract m()Z
.end method

.method public abstract n()Z
.end method

.method public abstract p(III)I
.end method

.method public abstract q(III)I
.end method

.method public abstract r()I
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public abstract size()I
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lva/d;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    const-string v2, "UTF-8 not supported?"

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lva/d;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    const-string v0, "<ByteString@%s size=%d>"

    .line 27
    .line 28
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public abstract u(Ljava/io/OutputStream;II)V
.end method
