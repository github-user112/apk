.class public final Lcom/tencent/bugly/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v3, "native_record_lock"

    .line 10
    .line 11
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "[Native] Failed to lock file for handling native crash record."

    .line 19
    .line 20
    new-array v2, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "false"

    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v0, v5, v6}, Lcom/tencent/bugly/proguard/be;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v5, 0x1

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const-string v6, "[Native] Get crash from native record."

    .line 57
    .line 58
    new-array v7, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/proguard/as;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6, v0, v5}, Lcom/tencent/bugly/proguard/as;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/proguard/as;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6, v0, v4}, Lcom/tencent/bugly/proguard/as;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/be;->a(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    sget-wide v8, Lcom/tencent/bugly/proguard/at;->j:J

    .line 92
    .line 93
    sub-long/2addr v6, v8

    .line 94
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    const-wide/32 v10, 0x5265c00

    .line 99
    .line 100
    .line 101
    add-long/2addr v8, v10

    .line 102
    new-instance v0, Ljava/io/File;

    .line 103
    .line 104
    sget-object v10, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_9

    .line 120
    .line 121
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    array-length v10, v0

    .line 128
    if-nez v10, :cond_4

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_4
    new-instance v10, Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 133
    .line 134
    invoke-direct {v10, v4}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 138
    .line 139
    .line 140
    array-length v10, v0

    .line 141
    const-wide/16 v11, 0x0

    .line 142
    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v14, 0x0

    .line 145
    const/4 v15, 0x0

    .line 146
    :goto_0
    if-ge v13, v10, :cond_8

    .line 147
    .line 148
    aget-object v16, v0, v13

    .line 149
    .line 150
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    .line 151
    .line 152
    .line 153
    move-result-wide v17

    .line 154
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    .line 155
    .line 156
    .line 157
    move-result-wide v19

    .line 158
    add-long v11, v11, v19

    .line 159
    .line 160
    cmp-long v19, v17, v6

    .line 161
    .line 162
    if-ltz v19, :cond_5

    .line 163
    .line 164
    cmp-long v19, v17, v8

    .line 165
    .line 166
    if-gez v19, :cond_5

    .line 167
    .line 168
    sget-wide v17, Lcom/tencent/bugly/proguard/at;->i:J

    .line 169
    .line 170
    cmp-long v19, v11, v17

    .line 171
    .line 172
    if-ltz v19, :cond_6

    .line 173
    .line 174
    :cond_5
    const/16 v17, 0x0

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    move-object/from16 v19, v0

    .line 178
    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    goto :goto_3

    .line 184
    :goto_1
    const-string v4, "[Native] Delete record file: %s"

    .line 185
    .line 186
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v18

    .line 190
    move-object/from16 v19, v0

    .line 191
    .line 192
    new-array v0, v5, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v18, v0, v17

    .line 195
    .line 196
    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_7

    .line 206
    .line 207
    add-int/lit8 v15, v15, 0x1

    .line 208
    .line 209
    :cond_7
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 210
    .line 211
    move-object/from16 v0, v19

    .line 212
    .line 213
    const/4 v4, 0x0

    .line 214
    goto :goto_0

    .line 215
    :cond_8
    const/16 v17, 0x0

    .line 216
    .line 217
    const-string v0, "[Native] Number of record files overdue: %d, has deleted: %d"

    .line 218
    .line 219
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    const/4 v7, 0x2

    .line 228
    new-array v7, v7, [Ljava/lang/Object;

    .line 229
    .line 230
    aput-object v4, v7, v17

    .line 231
    .line 232
    aput-object v6, v7, v5

    .line 233
    .line 234
    invoke-static {v0, v7}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :goto_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 239
    .line 240
    .line 241
    :cond_9
    :goto_4
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    return-void
.end method
