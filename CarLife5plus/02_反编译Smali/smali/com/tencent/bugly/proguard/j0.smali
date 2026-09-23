.class public final Lcom/tencent/bugly/proguard/j0;
.super Ljava/lang/Thread;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/bugly/proguard/j0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/bugly/proguard/j0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/tencent/bugly/proguard/j0;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/tencent/bugly/proguard/j0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lf9/a;

    .line 11
    .line 12
    invoke-interface {v2}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v2, Lcom/tencent/bugly/proguard/at;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/tencent/bugly/proguard/at;->b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "local_crash_lock"

    .line 23
    .line 24
    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const-string v1, "Failed to lock file for uploading local crash."

    .line 32
    .line 33
    new-array v2, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ag$a;->a()Lcom/tencent/bugly/proguard/ag;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {}, Lcom/tencent/bugly/proguard/ag;->a()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v6, 0x1

    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    new-array v8, v6, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v7, v8, v4

    .line 69
    .line 70
    const-string v7, "sla load local data list size:%s"

    .line 71
    .line 72
    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v8, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_3

    .line 89
    .line 90
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Lcom/tencent/bugly/proguard/ag$b;

    .line 95
    .line 96
    iget-wide v10, v9, Lcom/tencent/bugly/proguard/ag$b;->b:J

    .line 97
    .line 98
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    .line 99
    .line 100
    .line 101
    move-result-wide v12

    .line 102
    const-wide/32 v14, 0x240c8400

    .line 103
    .line 104
    .line 105
    sub-long/2addr v12, v14

    .line 106
    cmp-long v14, v10, v12

    .line 107
    .line 108
    if-gez v14, :cond_2

    .line 109
    .line 110
    iget-object v10, v9, Lcom/tencent/bugly/proguard/ag$b;->c:Ljava/lang/String;

    .line 111
    .line 112
    new-array v11, v6, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v10, v11, v4

    .line 115
    .line 116
    const-string v10, "sla local data is expired:%s"

    .line 117
    .line 118
    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v8}, Lcom/tencent/bugly/proguard/ag;->d(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/ag;->b(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    :goto_1
    const-string v1, "sla local data is null"

    .line 136
    .line 137
    new-array v5, v4, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-static {}, Lcom/tencent/bugly/proguard/as;->a()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-lez v5, :cond_7

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-array v7, v6, [Ljava/lang/Object;

    .line 163
    .line 164
    aput-object v5, v7, v4

    .line 165
    .line 166
    const-string v5, "Size of crash list: %s"

    .line 167
    .line 168
    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    int-to-long v7, v5

    .line 176
    const-wide/16 v9, 0x14

    .line 177
    .line 178
    cmp-long v11, v7, v9

    .line 179
    .line 180
    if-lez v11, :cond_6

    .line 181
    .line 182
    new-instance v7, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    int-to-long v11, v4

    .line 191
    cmp-long v8, v11, v9

    .line 192
    .line 193
    if-gez v8, :cond_5

    .line 194
    .line 195
    add-int/lit8 v8, v5, -0x1

    .line 196
    .line 197
    sub-int/2addr v8, v4

    .line 198
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_5
    move-object v12, v7

    .line 209
    goto :goto_4

    .line 210
    :cond_6
    move-object v12, v1

    .line 211
    :goto_4
    iget-object v11, v2, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    .line 212
    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    const/16 v17, 0x0

    .line 216
    .line 217
    const-wide/16 v13, 0x0

    .line 218
    .line 219
    const/4 v15, 0x0

    .line 220
    invoke-virtual/range {v11 .. v17}, Lcom/tencent/bugly/proguard/as;->a(Ljava/util/List;JZZZ)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_7
    const-string v1, "no crash need to be uploaded at this start"

    .line 225
    .line 226
    new-array v4, v4, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :goto_5
    invoke-static {v2}, Lcom/tencent/bugly/proguard/at;->b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    :goto_6
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
