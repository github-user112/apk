.class public final Lcom/tencent/bugly/proguard/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/tencent/bugly/proguard/u;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/bugly/proguard/u;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/tencent/bugly/proguard/s0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s0;->c:Lcom/tencent/bugly/proguard/u;

    .line 4
    .line 5
    iput p2, p0, Lcom/tencent/bugly/proguard/s0;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/tencent/bugly/proguard/s0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/s0;->c:Lcom/tencent/bugly/proguard/u;

    .line 7
    .line 8
    iget v1, p0, Lcom/tencent/bugly/proguard/s0;->b:I

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->c(Lcom/tencent/bugly/proguard/u;)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "_"

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    xor-int/lit8 v1, v2, 0x1

    .line 47
    .line 48
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_0
    const/16 v0, 0x3ec

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s0;->c:Lcom/tencent/bugly/proguard/u;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    :try_start_0
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_0
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;I)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-nez v4, :cond_1

    .line 82
    .line 83
    new-instance v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_2

    .line 97
    .line 98
    new-instance v5, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;)Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Ljava/util/Map;

    .line 119
    .line 120
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget v6, p0, Lcom/tencent/bugly/proguard/s0;->b:I

    .line 129
    .line 130
    if-nez v5, :cond_3

    .line 131
    .line 132
    :try_start_1
    new-instance v5, Lcom/tencent/bugly/proguard/t;

    .line 133
    .line 134
    invoke-direct {v5}, Lcom/tencent/bugly/proguard/t;-><init>()V

    .line 135
    .line 136
    .line 137
    int-to-long v7, v0

    .line 138
    iput-wide v7, v5, Lcom/tencent/bugly/proguard/t;->a:J

    .line 139
    .line 140
    sget-wide v7, Lcom/tencent/bugly/proguard/u;->a:J

    .line 141
    .line 142
    iput-wide v7, v5, Lcom/tencent/bugly/proguard/t;->g:J

    .line 143
    .line 144
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    iput-object v7, v5, Lcom/tencent/bugly/proguard/t;->b:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    iget-object v7, v7, Lcom/tencent/bugly/proguard/aa;->o:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v7, v5, Lcom/tencent/bugly/proguard/t;->f:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    iget-object v7, v7, Lcom/tencent/bugly/proguard/aa;->h:Ljava/lang/String;

    .line 163
    .line 164
    iput-object v7, v5, Lcom/tencent/bugly/proguard/t;->e:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v7

    .line 170
    iput-wide v7, v5, Lcom/tencent/bugly/proguard/t;->c:J

    .line 171
    .line 172
    iput v6, v5, Lcom/tencent/bugly/proguard/t;->d:I

    .line 173
    .line 174
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;)Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/util/Map;

    .line 183
    .line 184
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_3
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/u;)Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Ljava/util/Map;

    .line 201
    .line 202
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move-object v5, v1

    .line 211
    check-cast v5, Lcom/tencent/bugly/proguard/t;

    .line 212
    .line 213
    iput v6, v5, Lcom/tencent/bugly/proguard/t;->d:I

    .line 214
    .line 215
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const/4 v7, 0x0

    .line 225
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_6

    .line 230
    .line 231
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Lcom/tencent/bugly/proguard/t;

    .line 236
    .line 237
    invoke-static {v8, v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/t;Lcom/tencent/bugly/proguard/t;)Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-eqz v9, :cond_5

    .line 242
    .line 243
    iget v7, v5, Lcom/tencent/bugly/proguard/t;->d:I

    .line 244
    .line 245
    iput v7, v8, Lcom/tencent/bugly/proguard/t;->d:I

    .line 246
    .line 247
    const/4 v7, 0x1

    .line 248
    :cond_5
    invoke-static {v8, v5}, Lcom/tencent/bugly/proguard/u;->b(Lcom/tencent/bugly/proguard/t;Lcom/tencent/bugly/proguard/t;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eqz v9, :cond_4

    .line 253
    .line 254
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 259
    .line 260
    .line 261
    if-nez v7, :cond_7

    .line 262
    .line 263
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-static {v2, v0, v4}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catch_0
    const-string v0, "saveCrashRecord failed"

    .line 271
    .line 272
    new-array v1, v3, [Ljava/lang/Object;

    .line 273
    .line 274
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :goto_2
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
