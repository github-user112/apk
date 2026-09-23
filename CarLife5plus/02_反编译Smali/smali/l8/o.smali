.class public abstract Ll8/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb3/f0;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Ll8/o;->a:Lr8/o;

    .line 13
    .line 14
    return-void
.end method

.method public static a()V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "CarLife_Vehicle"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "connectivity"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v5, "stopTethering"

    .line 33
    .line 34
    new-array v6, v2, [Ljava/lang/Class;

    .line 35
    .line 36
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v7, v6, v4

    .line 39
    .line 40
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-array v6, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v5, v6, v4

    .line 54
    .line 55
    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 61
    .line 62
    const-string v1, "stopTethering \u5931\u8d25"

    .line 63
    .line 64
    invoke-static {v4, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v5, "\u3010\u70ed\u70b9\u5f00\u5173\u3011stopTethering \u5931\u8d25: "

    .line 74
    .line 75
    invoke-static {v5, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v0, v2, v4

    .line 82
    .line 83
    invoke-virtual {v1, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "setWifiApEnabled"

    .line 96
    .line 97
    const/4 v5, 0x2

    .line 98
    new-array v6, v5, [Ljava/lang/Class;

    .line 99
    .line 100
    const-class v7, Landroid/net/wifi/WifiConfiguration;

    .line 101
    .line 102
    aput-object v7, v6, v4

    .line 103
    .line 104
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v7, v6, v2

    .line 107
    .line 108
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-array v5, v5, [Ljava/lang/Object;

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    aput-object v6, v5, v4

    .line 120
    .line 121
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    .line 123
    aput-object v6, v5, v2

    .line 124
    .line 125
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 131
    .line 132
    const-string v1, "\u5173\u95ed\u70ed\u70b9\u5931\u8d25"

    .line 133
    .line 134
    invoke-static {v4, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v5, "\u3010\u70ed\u70b9\u5f00\u5173\u3011\u5173\u95ed\u70ed\u70b9\u5931\u8d25: "

    .line 144
    .line 145
    invoke-static {v5, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-array v2, v2, [Ljava/lang/Object;

    .line 150
    .line 151
    aput-object v0, v2, v4

    .line 152
    .line 153
    invoke-virtual {v1, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 7
    .line 8
    const-string p0, "\""

    .line 9
    .line 10
    invoke-static {p0, p1, p0}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "apBand"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-object v0
.end method

.method public static c()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 1
    sget-object v0, Ll8/o;->a:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "ssid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "password"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1e

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const-string v3, "startSoftAp"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    const-string v6, "CarLife_Vehicle"

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    const-class v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :try_start_0
    const-string v8, "android.net.wifi.SoftApConfiguration$Builder"

    .line 32
    .line 33
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const-string v10, "setSsid"

    .line 46
    .line 47
    new-array v11, v5, [Ljava/lang/Class;

    .line 48
    .line 49
    aput-object v0, v11, v7

    .line 50
    .line 51
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    new-array v11, v5, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p0, v11, v7

    .line 58
    .line 59
    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string p0, "setPassphrase"

    .line 63
    .line 64
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    new-array v11, v2, [Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v0, v11, v7

    .line 69
    .line 70
    aput-object v10, v11, v5

    .line 71
    .line 72
    invoke-virtual {v8, p0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-array v0, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object p1, v0, v7

    .line 79
    .line 80
    aput-object v1, v0, v5

    .line 81
    .line 82
    invoke-virtual {p0, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .line 84
    .line 85
    :try_start_1
    const-string p0, "setBand"

    .line 86
    .line 87
    new-array p1, v5, [Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v10, p1, v7

    .line 90
    .line 91
    invoke-virtual {v8, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    new-array p1, v5, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v1, p1, v7

    .line 98
    .line 99
    invoke-virtual {p0, v9, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    :catch_0
    :try_start_2
    const-string p0, "build"

    .line 103
    .line 104
    invoke-virtual {v8, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v0, "android.net.wifi.SoftApConfiguration"

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-array v1, v5, [Ljava/lang/Class;

    .line 127
    .line 128
    aput-object v0, v1, v7

    .line 129
    .line 130
    invoke-virtual {p1, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-array v1, v5, [Ljava/lang/Object;

    .line 142
    .line 143
    aput-object p0, v1, v7

    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :catch_1
    move-exception p0

    .line 151
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 152
    .line 153
    const-string p1, "SoftApConfiguration \u53cd\u5c04\u5931\u8d25"

    .line 154
    .line 155
    invoke-static {v7, p1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string v0, "\u3010\u70ed\u70b9\u5f00\u5173\u3011SoftApConfiguration \u53cd\u5c04\u5931\u8d25: "

    .line 165
    .line 166
    invoke-static {v0, p0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    new-array v0, v5, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object p0, v0, v7

    .line 173
    .line 174
    invoke-virtual {p1, v6, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_3

    .line 178
    .line 179
    :cond_0
    const/16 v1, 0x1a

    .line 180
    .line 181
    const-class v8, Landroid/net/wifi/WifiConfiguration;

    .line 182
    .line 183
    if-lt v0, v1, :cond_3

    .line 184
    .line 185
    :try_start_3
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "getWifiApConfiguration"

    .line 194
    .line 195
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    instance-of v1, v0, Landroid/net/wifi/WifiConfiguration;

    .line 208
    .line 209
    if-eqz v1, :cond_1

    .line 210
    .line 211
    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    .line 213
    move-object v4, v0

    .line 214
    goto :goto_0

    .line 215
    :catch_2
    nop

    .line 216
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 217
    .line 218
    :try_start_4
    invoke-static {p0, p1}, Ll8/o;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 219
    .line 220
    .line 221
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    goto :goto_1

    .line 223
    :catch_3
    move-exception p0

    .line 224
    goto :goto_2

    .line 225
    :cond_2
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-string p1, "apBand"

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p0, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 236
    .line 237
    .line 238
    :catch_4
    :try_start_6
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    new-array p1, v5, [Ljava/lang/Class;

    .line 247
    .line 248
    aput-object v8, p1, v7

    .line 249
    .line 250
    invoke-virtual {p0, v3, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {p0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-array v0, v5, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object v4, v0, v7

    .line 264
    .line 265
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :goto_2
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 270
    .line 271
    const-string p1, "startSoftAp(WifiConfiguration) \u5931\u8d25"

    .line 272
    .line 273
    invoke-static {v7, p1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 277
    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    const-string v0, "\u3010\u70ed\u70b9\u5f00\u5173\u3011startSoftAp(WifiConfiguration) \u5931\u8d25: "

    .line 283
    .line 284
    invoke-static {v0, p0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    new-array v0, v5, [Ljava/lang/Object;

    .line 289
    .line 290
    aput-object p0, v0, v7

    .line 291
    .line 292
    invoke-virtual {p1, v6, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_3
    :try_start_7
    invoke-static {p0, p1}, Ll8/o;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const-string v0, "setWifiApEnabled"

    .line 309
    .line 310
    new-array v1, v2, [Ljava/lang/Class;

    .line 311
    .line 312
    aput-object v8, v1, v7

    .line 313
    .line 314
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 315
    .line 316
    aput-object v3, v1, v5

    .line 317
    .line 318
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {}, Ll8/o;->c()Landroid/net/wifi/WifiManager;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    new-array v1, v2, [Ljava/lang/Object;

    .line 327
    .line 328
    aput-object p0, v1, v7

    .line 329
    .line 330
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 331
    .line 332
    aput-object p0, v1, v5

    .line 333
    .line 334
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 335
    .line 336
    .line 337
    goto :goto_3

    .line 338
    :catch_5
    move-exception p0

    .line 339
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 340
    .line 341
    const-string p1, "setWifiApEnabled \u5931\u8d25"

    .line 342
    .line 343
    invoke-static {v7, p1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 344
    .line 345
    .line 346
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 347
    .line 348
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    const-string v0, "\u3010\u70ed\u70b9\u5f00\u5173\u3011setWifiApEnabled \u5931\u8d25: "

    .line 353
    .line 354
    invoke-static {v0, p0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    new-array v0, v5, [Ljava/lang/Object;

    .line 359
    .line 360
    aput-object p0, v0, v7

    .line 361
    .line 362
    invoke-virtual {p1, v6, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    :goto_3
    return-void
.end method
