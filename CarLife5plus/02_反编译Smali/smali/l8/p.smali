.class public final Ll8/p;
.super Lq8/l;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:Ldc/l0;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Z

.field public final k:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ll8/p;->l:Ldc/l0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq8/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lq8/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq8/l;->c:Lq8/d;

    .line 10
    .line 11
    iput-object p1, p0, Ll8/p;->h:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Ll8/p;->i:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p2, Ljava/io/File;

    .line 16
    .line 17
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Ll8/p;->k:Ljava/io/File;

    .line 30
    .line 31
    return-void
.end method

.method public static h(Ljava/lang/String;Lf9/a;)V
    .locals 5

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "CarLife_SDK"

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 31
    .line 32
    const-string v0, "\u3010\u4f20\u8f93\u670d\u52a1\u3011\u6587\u4ef6\u5df2\u5220\u9664: "

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-array v0, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p0, v0, v2

    .line 41
    .line 42
    invoke-virtual {p1, v4, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "\u3010\u4f20\u8f93\u670d\u52a1\u3011\u5220\u9664\u5931\u8d25: "

    .line 53
    .line 54
    invoke-static {v0, p1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-array v0, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p1, v0, v2

    .line 61
    .line 62
    invoke-virtual {p0, v4, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 67
    .line 68
    const-string v0, "\u3010\u4f20\u8f93\u670d\u52a1\u3011\u6587\u4ef6\u4e0d\u5b58\u5728: "

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-array v0, v3, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p0, v0, v2

    .line 77
    .line 78
    invoke-virtual {p1, v4, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ll8/g;->a:Lr8/o;

    .line 2
    .line 3
    invoke-static {}, Ll8/g;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "http://"

    .line 8
    .line 9
    const-string v2, ":18080"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method


# virtual methods
.method public final e(Lq8/f;)Lq8/j;
    .locals 14

    .line 1
    iget v0, p1, Lq8/f;->g:I

    .line 2
    .line 3
    sget-object v1, Lq8/i;->d:Lq8/i;

    .line 4
    .line 5
    const-string v2, "text/plain"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "file"

    .line 9
    .line 10
    sget-object v6, Lq8/i;->c:Lq8/i;

    .line 11
    .line 12
    iget-object v5, p0, Ll8/p;->h:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    if-ne v0, v3, :cond_3

    .line 16
    .line 17
    iget-object v0, p1, Lq8/f;->f:Ljava/lang/String;

    .line 18
    .line 19
    const-string v8, "/download"

    .line 20
    .line 21
    invoke-static {v0, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object p1, p1, Lq8/f;->h:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/util/List;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-static {p1}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p1, v7

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance v0, Ljava/io/File;

    .line 48
    .line 49
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, "/"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    new-instance v8, Ljava/io/FileInputStream;

    .line 87
    .line 88
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Lq8/j;

    .line 92
    .line 93
    const-wide/16 v9, -0x1

    .line 94
    .line 95
    const-string v7, "application/octet-stream"

    .line 96
    .line 97
    invoke-direct/range {v5 .. v10}, Lq8/j;-><init>(Lq8/i;Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 98
    .line 99
    .line 100
    const-string v0, "attachment; filename=\""

    .line 101
    .line 102
    const-string v1, "\""

    .line 103
    .line 104
    invoke-static {v0, p1, v1}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v0, "Content-Disposition"

    .line 109
    .line 110
    iget-object v1, v5, Lq8/j;->e:Lq8/g;

    .line 111
    .line 112
    invoke-virtual {v1, v0, p1}, Lq8/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-object v5

    .line 116
    :cond_1
    const-string p1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 117
    .line 118
    invoke-static {v1, v2, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_2
    const-string p1, "\u7f3a\u5c11 file \u53c2\u6570"

    .line 124
    .line 125
    invoke-static {v1, v2, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :cond_3
    iget v0, p1, Lq8/f;->g:I

    .line 131
    .line 132
    const-string v8, "toString(...)"

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    if-ne v0, v3, :cond_7

    .line 136
    .line 137
    const-string p1, "log"

    .line 138
    .line 139
    invoke-static {v5, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    const/16 v0, 0x2000

    .line 144
    .line 145
    const-string v1, "text/html"

    .line 146
    .line 147
    const-string v2, "open(...)"

    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string v3, "download.html"

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object v2, Lxb/a;->a:Ljava/nio/charset/Charset;

    .line 169
    .line 170
    new-instance v3, Ljava/io/InputStreamReader;

    .line 171
    .line 172
    invoke-direct {v3, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 173
    .line 174
    .line 175
    new-instance p1, Ljava/io/BufferedReader;

    .line 176
    .line 177
    invoke-direct {p1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 178
    .line 179
    .line 180
    :try_start_0
    invoke-static {p1}, Lm9/e0;->v0(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ll8/p;->i()[Ljava/io/File;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    array-length v2, p1

    .line 192
    if-nez v2, :cond_4

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    array-length v3, p1

    .line 201
    :goto_1
    if-ge v9, v3, :cond_5

    .line 202
    .line 203
    aget-object v4, p1, v9

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v7, "<li><a href=\"/download?file="

    .line 212
    .line 213
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v7, "\">"

    .line 220
    .line 221
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v4, "</a></li>"

    .line 228
    .line 229
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string v2, "<li><a>\u6682\u65e0\u6587\u4ef6</a></li>"

    .line 250
    .line 251
    invoke-static {v0, v2, p1}, Lxb/p;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :goto_2
    invoke-static {v6, v1, v0}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    return-object p1

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    move-object v1, v0

    .line 262
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    invoke-static {p1, v1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    throw v0

    .line 268
    :cond_6
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const-string v3, "upload.html"

    .line 277
    .line 278
    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sget-object v2, Lxb/a;->a:Ljava/nio/charset/Charset;

    .line 286
    .line 287
    new-instance v3, Ljava/io/InputStreamReader;

    .line 288
    .line 289
    invoke-direct {v3, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 290
    .line 291
    .line 292
    new-instance p1, Ljava/io/BufferedReader;

    .line 293
    .line 294
    invoke-direct {p1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 295
    .line 296
    .line 297
    :try_start_2
    invoke-static {p1}, Lm9/e0;->v0(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 301
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 302
    .line 303
    .line 304
    const-string p1, "<!--\u6269\u5c55\u540d-->"

    .line 305
    .line 306
    iget-object v2, p0, Ll8/p;->i:Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {v0, p1, v2}, Lxb/p;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {v6, v1, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    return-object p1

    .line 317
    :catchall_2
    move-exception v0

    .line 318
    move-object v1, v0

    .line 319
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 320
    :catchall_3
    move-exception v0

    .line 321
    invoke-static {p1, v1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_7
    const/4 v10, 0x3

    .line 326
    if-ne v0, v10, :cond_1b

    .line 327
    .line 328
    new-instance v0, Ljava/util/HashMap;

    .line 329
    .line 330
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    .line 332
    .line 333
    :try_start_4
    invoke-virtual {p1, v0}, Lq8/f;->g(Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lq8/k; {:try_start_4 .. :try_end_4} :catch_0

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Ljava/lang/String;

    .line 341
    .line 342
    iget-object p1, p1, Lq8/f;->h:Ljava/util/HashMap;

    .line 343
    .line 344
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Ljava/util/List;

    .line 349
    .line 350
    if-eqz p1, :cond_8

    .line 351
    .line 352
    invoke-static {p1}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Ljava/lang/String;

    .line 357
    .line 358
    if-nez p1, :cond_9

    .line 359
    .line 360
    :cond_8
    const-string p1, "fileName.bin"

    .line 361
    .line 362
    :cond_9
    const/16 v4, 0x2e

    .line 363
    .line 364
    const-string v10, "bin"

    .line 365
    .line 366
    invoke-static {p1, v4, v10}, Lxb/i;->b0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    if-eqz v0, :cond_1a

    .line 371
    .line 372
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 373
    .line 374
    const-string v4, "yyyyMMdd_HHmmss"

    .line 375
    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    invoke-direct {v1, v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 381
    .line 382
    .line 383
    new-instance v4, Ljava/util/Date;

    .line 384
    .line 385
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, "."

    .line 401
    .line 402
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    new-instance v1, Ljava/io/File;

    .line 413
    .line 414
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {v4, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 426
    .line 427
    .line 428
    const-string v4, "relative"

    .line 429
    .line 430
    invoke-static {p1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    new-instance v4, Ljava/io/File;

    .line 434
    .line 435
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    const-string v10, "getPath(...)"

    .line 443
    .line 444
    invoke-static {v5, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    sget-char v10, Ljava/io/File;->separatorChar:C

    .line 448
    .line 449
    const/4 v11, 0x4

    .line 450
    invoke-static {v5, v10, v9, v11}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    if-nez v12, :cond_c

    .line 455
    .line 456
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    if-le v12, v3, :cond_b

    .line 461
    .line 462
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    if-ne v12, v10, :cond_b

    .line 467
    .line 468
    const/4 v12, 0x2

    .line 469
    invoke-static {v5, v10, v12, v11}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    .line 470
    .line 471
    .line 472
    move-result v12

    .line 473
    if-ltz v12, :cond_b

    .line 474
    .line 475
    add-int/2addr v12, v3

    .line 476
    invoke-static {v5, v10, v12, v11}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    .line 477
    .line 478
    .line 479
    move-result v11

    .line 480
    if-ltz v11, :cond_a

    .line 481
    .line 482
    add-int/2addr v11, v3

    .line 483
    goto :goto_3

    .line 484
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 485
    .line 486
    .line 487
    move-result v11

    .line 488
    goto :goto_3

    .line 489
    :cond_b
    const/4 v11, 0x1

    .line 490
    goto :goto_3

    .line 491
    :cond_c
    const/16 v11, 0x3a

    .line 492
    .line 493
    if-lez v12, :cond_d

    .line 494
    .line 495
    add-int/lit8 v13, v12, -0x1

    .line 496
    .line 497
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    if-ne v13, v11, :cond_d

    .line 502
    .line 503
    add-int/lit8 v11, v12, 0x1

    .line 504
    .line 505
    goto :goto_3

    .line 506
    :cond_d
    const/4 v13, -0x1

    .line 507
    if-ne v12, v13, :cond_e

    .line 508
    .line 509
    invoke-static {v11, v5}, Lxb/i;->J(CLjava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v11

    .line 513
    if-eqz v11, :cond_e

    .line 514
    .line 515
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 516
    .line 517
    .line 518
    move-result v11

    .line 519
    goto :goto_3

    .line 520
    :cond_e
    const/4 v11, 0x0

    .line 521
    :goto_3
    if-lez v11, :cond_f

    .line 522
    .line 523
    const/4 v5, 0x1

    .line 524
    goto :goto_4

    .line 525
    :cond_f
    const/4 v5, 0x0

    .line 526
    :goto_4
    if-eqz v5, :cond_10

    .line 527
    .line 528
    goto :goto_8

    .line 529
    :cond_10
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-static {v1, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    if-nez v5, :cond_11

    .line 541
    .line 542
    goto :goto_5

    .line 543
    :cond_11
    const/4 v3, 0x0

    .line 544
    :goto_5
    if-nez v3, :cond_13

    .line 545
    .line 546
    invoke-static {v10, v1}, Lxb/i;->J(CLjava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_12

    .line 551
    .line 552
    goto :goto_7

    .line 553
    :cond_12
    new-instance v3, Ljava/io/File;

    .line 554
    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :goto_6
    move-object v4, v3

    .line 577
    goto :goto_8

    .line 578
    :cond_13
    :goto_7
    new-instance v3, Ljava/io/File;

    .line 579
    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    goto :goto_6

    .line 599
    :goto_8
    new-instance v1, Ljava/io/File;

    .line 600
    .line 601
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_19

    .line 609
    .line 610
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_15

    .line 615
    .line 616
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-eqz v0, :cond_14

    .line 621
    .line 622
    goto :goto_9

    .line 623
    :cond_14
    new-instance p1, Ld9/a;

    .line 624
    .line 625
    const-string v0, "Tried to overwrite the destination, but failed to delete it."

    .line 626
    .line 627
    invoke-direct {p1, v1, v4, v0}, Ld9/b;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw p1

    .line 631
    :cond_15
    :goto_9
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_17

    .line 636
    .line 637
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_16

    .line 642
    .line 643
    goto :goto_a

    .line 644
    :cond_16
    new-instance p1, Ld9/b;

    .line 645
    .line 646
    const-string v0, "Failed to create target directory."

    .line 647
    .line 648
    invoke-direct {p1, v1, v4, v0}, Ld9/b;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw p1

    .line 652
    :cond_17
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    if-eqz v0, :cond_18

    .line 657
    .line 658
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 659
    .line 660
    .line 661
    :cond_18
    new-instance v3, Ljava/io/FileInputStream;

    .line 662
    .line 663
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 664
    .line 665
    .line 666
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    .line 667
    .line 668
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 669
    .line 670
    .line 671
    :try_start_6
    invoke-static {v3, v1}, Li2/c;->l(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 672
    .line 673
    .line 674
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 678
    .line 679
    .line 680
    :goto_a
    sget-object v0, Ll8/p;->l:Ldc/l0;

    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v7, p1}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    const-string v0, "\u5df2\u4e0a\u4f20 "

    .line 689
    .line 690
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    invoke-static {v6, v2, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    return-object p1

    .line 699
    :catchall_4
    move-exception v0

    .line 700
    move-object p1, v0

    .line 701
    goto :goto_b

    .line 702
    :catchall_5
    move-exception v0

    .line 703
    move-object p1, v0

    .line 704
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 705
    :catchall_6
    move-exception v0

    .line 706
    :try_start_9
    invoke-static {v1, p1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 707
    .line 708
    .line 709
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 710
    :goto_b
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 711
    :catchall_7
    move-exception v0

    .line 712
    invoke-static {v3, p1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 713
    .line 714
    .line 715
    throw v0

    .line 716
    :cond_19
    new-instance p1, Ld9/a;

    .line 717
    .line 718
    const-string v0, "The source file doesn\'t exist."

    .line 719
    .line 720
    invoke-direct {p1, v1, v7, v0}, Ld9/b;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    throw p1

    .line 724
    :cond_1a
    const-string p1, "\u4e0a\u4f20\u5931\u8d25\uff1a\u672a\u627e\u5230\u6587\u4ef6"

    .line 725
    .line 726
    invoke-static {v1, v2, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    return-object p1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    move-object p1, v0

    .line 733
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object p1

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    const-string v3, "Response Error: "

    .line 740
    .line 741
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object p1

    .line 751
    invoke-static {v1, v2, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    goto :goto_c

    .line 756
    :catch_1
    move-exception v0

    .line 757
    move-object p1, v0

    .line 758
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string v3, "IO Error: "

    .line 765
    .line 766
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    invoke-static {v1, v2, p1}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 777
    .line 778
    .line 779
    move-result-object p1

    .line 780
    :goto_c
    return-object p1

    .line 781
    :cond_1b
    sget-object p1, Lq8/i;->e:Lq8/i;

    .line 782
    .line 783
    const-string v0, "Unsupported method"

    .line 784
    .line 785
    invoke-static {p1, v2, v0}, Lq8/l;->c(Lq8/i;Ljava/lang/String;Ljava/lang/String;)Lq8/j;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    return-object p1
.end method

.method public final i()[Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Ll8/p;->k:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Ll8/p;->h:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "log"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-array v0, v2, [Ljava/io/File;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-direct {v1, v3}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Ls8/l;->i0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-static {v1, v0}, Ls8/p;->x0(ILjava/util/List;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-array v1, v2, [Ljava/io/File;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, [Ljava/io/File;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    new-array v0, v2, [Ljava/io/File;

    .line 63
    .line 64
    :cond_3
    return-object v0
.end method

.method public final k()V
    .locals 7

    .line 1
    const-string v0, "CarLife_Vehicle"

    .line 2
    .line 3
    const-string v1, "\u3010\u4f20\u8f93\u670d\u52a1\u3011"

    .line 4
    .line 5
    iget-boolean v2, p0, Ll8/p;->j:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lq8/l;->f()V

    .line 13
    .line 14
    .line 15
    iput-boolean v3, p0, Ll8/p;->j:Z

    .line 16
    .line 17
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 18
    .line 19
    invoke-static {}, Ll8/p;->j()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-array v5, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v1, v5, v2

    .line 38
    .line 39
    invoke-virtual {v4, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v5, "\u3010\u4f20\u8f93\u670d\u52a1\u3011\u670d\u52a1\u5668\u542f\u52a8\u5931\u8d25: "

    .line 51
    .line 52
    invoke-static {v5, v1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v1, v3, v2

    .line 59
    .line 60
    invoke-virtual {v4, v0, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ll8/p;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lq8/l;->a:Ljava/net/ServerSocket;

    .line 7
    .line 8
    invoke-static {v0}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lq8/l;->c:Lq8/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v0, v0, Lq8/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lq8/a;

    .line 40
    .line 41
    iget-object v2, v1, Lq8/a;->a:Ljava/io/InputStream;

    .line 42
    .line 43
    invoke-static {v2}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Lq8/a;->b:Ljava/net/Socket;

    .line 47
    .line 48
    invoke-static {v1}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lq8/l;->b:Ljava/lang/Thread;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lq8/l;->g:Ljava/util/logging/Logger;

    .line 62
    .line 63
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 64
    .line 65
    const-string v3, "Could not stop all connections"

    .line 66
    .line 67
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Ll8/p;->j:Z

    .line 72
    .line 73
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v3, "\u3010\u4f20\u8f93\u670d\u52a1\u3011\u670d\u52a1\u5668\u5df2\u505c\u6b62"

    .line 79
    .line 80
    aput-object v3, v2, v0

    .line 81
    .line 82
    const-string v0, "CarLife_Vehicle"

    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
