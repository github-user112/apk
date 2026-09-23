.class public final Lm7/f;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final onStartFailure(I)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_3

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "\u8bbe\u5907\u4e0d\u652f\u6301\u5e7f\u64ad"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "\u5185\u90e8\u9519\u8bef"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string v0, "\u5e7f\u64ad\u5df2\u542f\u52a8"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const-string v0, "\u5e7f\u64ad\u5b9e\u4f8b\u8fc7\u591a"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    const-string v0, "\u5e7f\u64ad\u6570\u636e\u8fc7\u5927"

    .line 34
    .line 35
    :goto_0
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "\u3010\u65e0\u611f\u8fde\u63a5\u3011\u5e7f\u64ad\u5931\u8d25: "

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, " "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    aput-object v3, v1, v4

    .line 67
    .line 68
    const-string v3, "ConnectBLE"

    .line 69
    .line 70
    invoke-virtual {v2, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 74
    .line 75
    const-string v1, "BLE\u5e7f\u64ad\u5931\u8d25: "

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v4, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 85
    .line 86
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 87
    .line 88
    :cond_5
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object v2, v1

    .line 93
    check-cast v2, Lm7/z;

    .line 94
    .line 95
    const-string v3, "$this$update"

    .line 96
    .line 97
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    const/16 v15, 0x7ff

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    invoke-static/range {v2 .. v15}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    return-void
.end method

.method public final onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 16

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "\u3010\u65e0\u611f\u8fde\u63a5\u3011\u5e7f\u64ad\u6210\u529f: "

    .line 8
    .line 9
    invoke-static {v1, v2}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v1, v2, v3

    .line 18
    .line 19
    const-string v1, "ConnectBLE"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 25
    .line 26
    sget-object v0, Lm7/z;->m:Ldc/l0;

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lm7/z;

    .line 34
    .line 35
    const-string v3, "$this$update"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v14, 0x1

    .line 41
    const/16 v15, 0x7ff

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    invoke-static/range {v2 .. v15}, Lm7/z;->a(Lm7/z;ILm7/a0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lm7/z;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Ldc/l0;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    return-void
.end method
