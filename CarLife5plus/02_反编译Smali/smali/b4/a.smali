.class public final Lb4/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb4/a;->a:I

    iput-object p2, p0, Lb4/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb4/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, Lb4/a;->a:I

    iput-object p2, p0, Lb4/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lb4/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Register broadcast receiver of Bugly."

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/tencent/bugly/proguard/aq;

    .line 20
    .line 21
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/tencent/bugly/proguard/aq;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/tencent/bugly/proguard/aq;->b(Lcom/tencent/bugly/proguard/aq;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->b()Lcom/tencent/bugly/proguard/aq;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lcom/tencent/bugly/proguard/aq;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/tencent/bugly/proguard/aq;->a(Lcom/tencent/bugly/proguard/aq;)Landroid/content/IntentFilter;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "com.tencent.bugly.BuglyBroadcastReceiver.permission"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lb4/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v3, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    :try_start_0
    sget-object v4, Lu3/e;->d:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    new-array v6, v6, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v0, v6, v2

    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    aput-object v0, v6, v1

    .line 25
    .line 26
    const-string v0, "AppCompat recreation"

    .line 27
    .line 28
    aput-object v0, v6, v5

    .line 29
    .line 30
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget-object v4, Lu3/e;->e:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    new-array v5, v5, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v0, v5, v2

    .line 43
    .line 44
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    aput-object v0, v5, v1

    .line 47
    .line 48
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_0
    const-string v1, "ActivityRecreator"

    .line 53
    .line 54
    const-string v2, "Exception while invoking performStopActivity"

    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-class v2, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "Unable to stop"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    throw v0

    .line 88
    :cond_2
    :goto_2
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Landroid/app/Application;

    .line 92
    .line 93
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lu3/d;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lu3/d;

    .line 104
    .line 105
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v1, v0, Lu3/d;->a:Ljava/lang/Object;

    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_2
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lic/f;

    .line 113
    .line 114
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Lic/b;

    .line 117
    .line 118
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 119
    .line 120
    check-cast v0, Lic/e;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lic/e;->g(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_3
    iget-object v0, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lfc/g;

    .line 129
    .line 130
    iget-object v3, v0, Lfc/g;->d:Lac/s;

    .line 131
    .line 132
    :cond_3
    :try_start_1
    iget-object v4, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v4, Ljava/lang/Runnable;

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catchall_1
    move-exception v4

    .line 141
    sget-object v5, Lw8/i;->a:Lw8/i;

    .line 142
    .line 143
    invoke-static {v4, v5}, Lac/z;->n(Ljava/lang/Throwable;Lw8/h;)V

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {v0}, Lfc/g;->t()Ljava/lang/Runnable;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-nez v4, :cond_4

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    iput-object v4, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 154
    .line 155
    add-int/2addr v2, v1

    .line 156
    const/16 v4, 0x10

    .line 157
    .line 158
    if-lt v2, v4, :cond_3

    .line 159
    .line 160
    invoke-virtual {v3, v0}, Lac/s;->r(Lw8/h;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_3

    .line 165
    .line 166
    invoke-virtual {v3, v0, p0}, Lac/s;->n(Lw8/h;Ljava/lang/Runnable;)V

    .line 167
    .line 168
    .line 169
    :goto_4
    return-void

    .line 170
    :pswitch_4
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Landroid/content/Context;

    .line 173
    .line 174
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Lcom/tencent/bugly/BuglyStrategy;

    .line 177
    .line 178
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/s;->b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_5
    iget-object v0, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, Lcom/tencent/bugly/proguard/l0;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/tencent/bugly/proguard/l0;->b:Lcom/tencent/bugly/proguard/ay;

    .line 187
    .line 188
    iget-object v3, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v3, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->a(Z)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_9

    .line 197
    .line 198
    :try_start_2
    const-string v4, "read trace first dump for create time!"

    .line 199
    .line 200
    new-array v5, v2, [Ljava/lang/Object;

    .line 201
    .line 202
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v2}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const-wide/16 v5, -0x1

    .line 210
    .line 211
    if-eqz v4, :cond_5

    .line 212
    .line 213
    iget-wide v7, v4, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_2
    move-exception v0

    .line 217
    goto :goto_6

    .line 218
    :cond_5
    move-wide v7, v5

    .line 219
    :goto_5
    cmp-long v4, v7, v5

    .line 220
    .line 221
    if-nez v4, :cond_6

    .line 222
    .line 223
    const-string v4, "trace dump fail could not get time!"

    .line 224
    .line 225
    new-array v5, v2, [Ljava/lang/Object;

    .line 226
    .line 227
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v7

    .line 234
    :cond_6
    invoke-virtual {v0, v7, v8}, Lcom/tencent/bugly/proguard/ay;->a(J)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_7

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_7
    invoke-virtual {v0, v7, v8, v3}, Lcom/tencent/bugly/proguard/ay;->a(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :goto_6
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_8

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    .line 253
    .line 254
    :cond_8
    const-string v3, "handle anr error %s"

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    new-array v1, v1, [Ljava/lang/Object;

    .line 265
    .line 266
    aput-object v0, v1, v2

    .line 267
    .line 268
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    :cond_9
    :goto_7
    return-void

    .line 272
    :pswitch_6
    invoke-direct {p0}, Lb4/a;->a()V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_7
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Ljava/lang/Runnable;

    .line 279
    .line 280
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v0, Lcom/tencent/bugly/proguard/ai;

    .line 286
    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ai;->a(Lcom/tencent/bugly/proguard/ai;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Lcom/tencent/bugly/proguard/ai;

    .line 295
    .line 296
    invoke-static {v1}, Lcom/tencent/bugly/proguard/ai;->b(Lcom/tencent/bugly/proguard/ai;)I

    .line 297
    .line 298
    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 301
    :catchall_3
    move-exception v1

    .line 302
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 303
    throw v1

    .line 304
    :pswitch_8
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Lac/i;

    .line 307
    .line 308
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v1, Lbc/d;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lac/i;->C(Lac/s;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :pswitch_9
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Lb4/i;

    .line 319
    .line 320
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Lb4/i;->accept(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :pswitch_a
    iget-object v0, p0, Lb4/a;->b:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v0, Lv/a1;

    .line 329
    .line 330
    iget-object v1, p0, Lb4/a;->c:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v1, Landroid/graphics/Typeface;

    .line 333
    .line 334
    iget-object v0, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Ld3/e;

    .line 337
    .line 338
    if-eqz v0, :cond_a

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ld3/e;->v(Landroid/graphics/Typeface;)V

    .line 341
    .line 342
    .line 343
    :cond_a
    return-void

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
