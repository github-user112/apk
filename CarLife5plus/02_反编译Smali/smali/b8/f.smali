.class public abstract Lb8/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static a:Landroid/media/MediaPlayer;


# direct methods
.method public static a(Ljava/lang/String;IZ)V
    .locals 5

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lb8/f;->a:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    nop

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lb8/f;->a:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "audio"

    .line 42
    .line 43
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 53
    .line 54
    .line 55
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x1

    .line 65
    const-string v3, "CarLife_SDK"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 71
    .line 72
    const-string p1, "\u6587\u4ef6\u4e0d\u5b58\u5728: "

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v4, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {p1, p2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-array p2, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p1, p2, v4

    .line 94
    .line 95
    invoke-virtual {p0, v3, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    :try_start_1
    new-instance p0, Landroid/media/MediaPlayer;

    .line 100
    .line 101
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lb8/c;

    .line 105
    .line 106
    invoke-direct {v1, p1}, Lb8/c;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v1, 0x17

    .line 122
    .line 123
    if-lt v0, v1, :cond_5

    .line 124
    .line 125
    if-eqz p2, :cond_4

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    .line 129
    .line 130
    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const/4 v0, 0x2

    .line 138
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_1
    move-exception p0

    .line 151
    goto :goto_4

    .line 152
    :catch_2
    move-exception p0

    .line 153
    goto :goto_5

    .line 154
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 155
    .line 156
    .line 157
    :goto_3
    new-instance p2, Lb8/d;

    .line 158
    .line 159
    invoke-direct {p2, p0}, Lb8/d;-><init>(Landroid/media/MediaPlayer;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 163
    .line 164
    .line 165
    new-instance p2, Lb8/e;

    .line 166
    .line 167
    invoke-direct {p2, p0}, Lb8/e;-><init>(Landroid/media/MediaPlayer;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 174
    .line 175
    .line 176
    sput-object p0, Lb8/f;->a:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .line 178
    return-void

    .line 179
    :goto_4
    sget-object p2, Ll8/c;->a:Lfc/c;

    .line 180
    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v0, "\u97f3\u9891\u901a\u9053 "

    .line 184
    .line 185
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, " \u65e0\u6548"

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v4, p1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    const-string p2, "\u672a\u77e5\u9519\u8bef: "

    .line 210
    .line 211
    invoke-static {p2, p0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    new-array p2, v2, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object p0, p2, v4

    .line 218
    .line 219
    invoke-virtual {p1, v3, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :goto_5
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 224
    .line 225
    const-string p1, "\u97f3\u9891\u52a0\u8f7d\u5931\u8d25"

    .line 226
    .line 227
    invoke-static {v4, p1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 231
    .line 232
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    const-string p2, "IO \u9519\u8bef: "

    .line 237
    .line 238
    invoke-static {p2, p0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    new-array p2, v2, [Ljava/lang/Object;

    .line 243
    .line 244
    aput-object p0, p2, v4

    .line 245
    .line 246
    invoke-virtual {p1, v3, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :goto_6
    return-void
.end method
