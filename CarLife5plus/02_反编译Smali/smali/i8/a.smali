.class public abstract Li8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a()V
    .locals 11

    .line 1
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    .line 2
    .line 3
    invoke-static {v0}, Lu7/j;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "CarLife_Vehicle"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v4, "\u3010\u65e0\u969c\u788d\u670d\u52a1\u3011\u4fee\u6539\u5b89\u5168\u8bbe\u7f6e\u672a\u6388\u6743"

    .line 18
    .line 19
    aput-object v4, v1, v2

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->f:Lr8/o;

    .line 26
    .line 27
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/Context;

    .line 32
    .line 33
    const-string v4, "accessibility"

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v4, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 40
    .line 41
    invoke-static {v0, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v4, "getInstalledAccessibilityServiceList(...)"

    .line 51
    .line 52
    invoke-static {v0, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    move-object v6, v4

    .line 71
    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 78
    .line 79
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    sget-object v7, Lcom/muyetuge/carlifevehicle/service/AccessService;->f:Lr8/o;

    .line 82
    .line 83
    invoke-virtual {v7}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v6, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move-object v4, v5

    .line 101
    :goto_0
    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 102
    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move-object v0, v5

    .line 111
    :goto_1
    const-string v4, ""

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    move-object v0, v4

    .line 116
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_5

    .line 121
    .line 122
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 123
    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    const-string v4, "\u3010\u65e0\u969c\u788d\u670d\u52a1\u3011\u672a\u627e\u5230\u5f53\u524d\u5e94\u7528\u7684\u65e0\u969c\u788d\u670d\u52a1"

    .line 127
    .line 128
    aput-object v4, v1, v2

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    sget-object v6, Lcom/muyetuge/carlifevehicle/service/AccessService;->f:Lr8/o;

    .line 135
    .line 136
    invoke-virtual {v6}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    const-string v8, "enabled_accessibility_services"

    .line 147
    .line 148
    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    if-nez v7, :cond_6

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    move-object v4, v7

    .line 156
    :goto_2
    invoke-static {v4, v0, v2}, Lxb/i;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_7

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_7
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 164
    .line 165
    new-array v9, v1, [Ljava/lang/Object;

    .line 166
    .line 167
    const-string v10, "\u3010\u65e0\u969c\u788d\u670d\u52a1\u3011\u5c1d\u8bd5\u4fdd\u6d3b\u65e0\u969c\u788d\u670d\u52a1"

    .line 168
    .line 169
    aput-object v10, v9, v2

    .line 170
    .line 171
    invoke-virtual {v7, v3, v9}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-lez v7, :cond_8

    .line 179
    .line 180
    move-object v5, v4

    .line 181
    :cond_8
    if-eqz v5, :cond_a

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v5, ":"

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    if-nez v4, :cond_9

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    move-object v0, v4

    .line 207
    goto :goto_3

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    goto :goto_4

    .line 210
    :cond_a
    :goto_3
    invoke-virtual {v6}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {v4, v8, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    goto :goto_5

    .line 229
    :goto_4
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_5
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_b

    .line 238
    .line 239
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 240
    .line 241
    const/4 v5, 0x2

    .line 242
    new-array v5, v5, [Ljava/lang/Object;

    .line 243
    .line 244
    const-string v6, "\u3010\u65e0\u969c\u788d\u670d\u52a1\u3011\u4fee\u6539\u65e0\u969c\u788d\u670d\u52a1\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    .line 245
    .line 246
    aput-object v6, v5, v2

    .line 247
    .line 248
    aput-object v0, v5, v1

    .line 249
    .line 250
    invoke-virtual {v4, v3, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_b
    :goto_6
    return-void
.end method
