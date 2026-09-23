.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "androidx.profileinstaller.action.INSTALL_PROFILE"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance p2, Lz4/b;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lv/a1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {p1, p2, v0, v1}, Lz4/d;->t(Landroid/content/Context;Ljava/util/concurrent/Executor;Lz4/c;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string v1, "androidx.profileinstaller.action.SKIP_FILE"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0xa

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_b

    .line 48
    .line 49
    const-string v0, "EXTRA_SKIP_FILE_OPERATION"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "WRITE_SKIP_FILE"

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    new-instance p2, Lv/a1;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v4, 0x0

    .line 81
    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Lz4/d;->e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2, v3}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :catch_0
    move-exception p1

    .line 98
    const/4 v0, 0x7

    .line 99
    invoke-virtual {p2, v0, p1}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_2
    const-string v0, "DELETE_SKIP_FILE"

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_b

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/io/File;

    .line 117
    .line 118
    const-string v0, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 119
    .line 120
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 124
    .line 125
    .line 126
    const-string p1, "ProfileInstaller"

    .line 127
    .line 128
    const-string p2, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 129
    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    const/16 p1, 0xb

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    const-string v1, "androidx.profileinstaller.action.SAVE_PROFILE"

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const/16 v4, 0x18

    .line 146
    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    new-instance p1, Lv/a1;

    .line 150
    .line 151
    invoke-direct {p1, p0}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    .line 156
    if-lt p2, v4, :cond_4

    .line 157
    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    invoke-static {p2, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 163
    .line 164
    .line 165
    const/16 p2, 0xc

    .line 166
    .line 167
    invoke-virtual {p1, p2, v3}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    const/16 p2, 0xd

    .line 172
    .line 173
    invoke-virtual {p1, p2, v3}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_5
    const-string v1, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    if-eqz p2, :cond_b

    .line 190
    .line 191
    const-string v0, "EXTRA_BENCHMARK_OPERATION"

    .line 192
    .line 193
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    new-instance v0, Lv/a1;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    const-string v1, "DROP_SHADER_CACHE"

    .line 203
    .line 204
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_a

    .line 209
    .line 210
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 211
    .line 212
    const/16 v1, 0x22

    .line 213
    .line 214
    if-lt p2, v1, :cond_6

    .line 215
    .line 216
    invoke-static {p1}, Lr2/g0;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    goto :goto_0

    .line 225
    :cond_6
    if-lt p2, v4, :cond_7

    .line 226
    .line 227
    invoke-static {p1}, Lr2/g0;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    goto :goto_0

    .line 236
    :cond_7
    const/16 v1, 0x17

    .line 237
    .line 238
    if-ne p2, v1, :cond_8

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    goto :goto_0

    .line 245
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    :goto_0
    invoke-static {p1}, Lz4/d;->c(Ljava/io/File;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_9

    .line 254
    .line 255
    const/16 p1, 0xe

    .line 256
    .line 257
    invoke-virtual {v0, p1, v3}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_9
    const/16 p1, 0xf

    .line 262
    .line 263
    invoke-virtual {v0, p1, v3}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_a
    const/16 p1, 0x10

    .line 268
    .line 269
    invoke-virtual {v0, p1, v3}, Lv/a1;->e(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_b
    :goto_1
    return-void
.end method
