.class public final Ly7/f0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# instance fields
.field public final a:Lz7/u1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz7/u1;->b:Lz7/u1;

    .line 5
    .line 6
    iput-object v0, p0, Ly7/f0;->a:Lz7/u1;

    .line 7
    .line 8
    return-void
.end method

.method public static d(Z)V
    .locals 9

    .line 1
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "wifi"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1d

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    sget-object v4, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    const-string v5, "CarLife_Vehicle"

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-ge v1, v2, :cond_3

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :goto_1
    invoke-static {v4}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    const-string p0, "\u6253\u5f00"

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const-string p0, "\u5173\u95ed"

    .line 62
    .line 63
    :goto_2
    const-string v1, "\u5931\u8d25"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v6, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "\u3010WiFi\u5f00\u5173\u3011Android9- \u76f4\u63a5\u5f00\u5173\u5931\u8d25: "

    .line 79
    .line 80
    invoke-static {v1, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-array v1, v3, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v0, v1, v6

    .line 87
    .line 88
    invoke-virtual {p0, v5, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "setWifiEnabled"

    .line 98
    .line 99
    new-array v7, v3, [Ljava/lang/Class;

    .line 100
    .line 101
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    aput-object v8, v7, v6

    .line 104
    .line 105
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    new-array v2, v3, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object p0, v2, v6

    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 124
    .line 125
    const-string p0, "\u8c03\u7528\u9690\u85cf API"

    .line 126
    .line 127
    invoke-static {v6, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    invoke-static {p0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :goto_3
    invoke-static {p0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 146
    .line 147
    const-string p0, "\u9690\u85cf API \u8c03\u7528\u5931\u8d25"

    .line 148
    .line 149
    invoke-static {v6, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "\u3010WiFi\u5f00\u5173\u3011\u9690\u85cf API \u8c03\u7528\u5931\u8d25: "

    .line 159
    .line 160
    invoke-static {v1, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-array v1, v3, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v0, v1, v6

    .line 167
    .line 168
    invoke-virtual {p0, v5, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 172
    .line 173
    :goto_4
    check-cast p0, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-nez p0, :cond_5

    .line 180
    .line 181
    :try_start_2
    new-instance p0, Landroid/content/Intent;

    .line 182
    .line 183
    const-string v0, "android.settings.panel.action.WIFI"

    .line 184
    .line 185
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/high16 v0, 0x10000000

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    .line 199
    .line 200
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 201
    .line 202
    const-string p0, "\u6253\u5f00 Wi-Fi \u8bbe\u7f6e\u9875"

    .line 203
    .line 204
    invoke-static {v6, p0}, Ll8/c;->g(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :catchall_2
    move-exception p0

    .line 209
    invoke-static {p0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    :goto_5
    invoke-static {v4}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    if-eqz p0, :cond_5

    .line 218
    .line 219
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 220
    .line 221
    const-string v0, "\u65e0\u6cd5\u8df3\u8f6c Wi-Fi \u8bbe\u7f6e\u9875"

    .line 222
    .line 223
    invoke-static {v6, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    const-string v1, "\u3010WiFi\u5f00\u5173\u3011\u65e0\u6cd5\u8df3\u8f6c Wi-Fi \u8bbe\u7f6e\u9875: "

    .line 233
    .line 234
    invoke-static {v1, p0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    new-array v1, v3, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object p0, v1, v6

    .line 241
    .line 242
    invoke-virtual {v0, v5, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_5
    :goto_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lb8/g;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x19

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WiFi\u5f00\u5173"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    const-string v2, "onDismissRequest"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "onConfigured"

    .line 15
    .line 16
    invoke-static {v4, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v2, 0x5ed85e1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 23
    .line 24
    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lf1/s;->g(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x2

    .line 36
    :goto_0
    or-int v5, p5, v5

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v6, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v5, v6

    .line 50
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const/16 v6, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v6, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v5, v6

    .line 62
    and-int/lit16 v6, v5, 0x493

    .line 63
    .line 64
    const/16 v7, 0x492

    .line 65
    .line 66
    if-ne v6, v7, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    :goto_3
    const v6, 0x6e3c21fe

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 90
    .line 91
    if-ne v6, v7, :cond_5

    .line 92
    .line 93
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-static {v6}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    check-cast v6, Lf1/b1;

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 106
    .line 107
    .line 108
    new-instance v7, La8/p0;

    .line 109
    .line 110
    const/16 v8, 0x10

    .line 111
    .line 112
    invoke-direct {v7, v3, v8}, La8/p0;-><init>(Lf9/a;I)V

    .line 113
    .line 114
    .line 115
    const v8, -0x13aa4278

    .line 116
    .line 117
    .line 118
    invoke-static {v8, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    new-instance v7, Lc8/s;

    .line 123
    .line 124
    const/16 v8, 0x16

    .line 125
    .line 126
    invoke-direct {v7, v8, v1, v6}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const v8, -0x3d8b0577

    .line 130
    .line 131
    .line 132
    invoke-static {v8, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    new-instance v7, La8/m0;

    .line 137
    .line 138
    const/4 v8, 0x6

    .line 139
    invoke-direct {v7, v4, v1, v6, v8}, La8/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 140
    .line 141
    .line 142
    const v8, -0x676bc876

    .line 143
    .line 144
    .line 145
    invoke-static {v8, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    new-instance v7, Ly7/s;

    .line 150
    .line 151
    const/4 v8, 0x6

    .line 152
    invoke-direct {v7, v6, v8}, Ly7/s;-><init>(Lf1/b1;I)V

    .line 153
    .line 154
    .line 155
    const v6, 0x1541cdd8

    .line 156
    .line 157
    .line 158
    invoke-static {v6, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    and-int/lit8 v5, v5, 0xe

    .line 163
    .line 164
    const/high16 v6, 0x36c00000

    .line 165
    .line 166
    or-int v17, v5, v6

    .line 167
    .line 168
    const/16 v18, 0x7e

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    const-wide/16 v7, 0x0

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v11, 0x0

    .line 176
    move-object/from16 v16, v0

    .line 177
    .line 178
    move v5, v2

    .line 179
    invoke-static/range {v5 .. v18}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 180
    .line 181
    .line 182
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-eqz v7, :cond_6

    .line 187
    .line 188
    new-instance v0, Lc8/h;

    .line 189
    .line 190
    const/16 v6, 0x16

    .line 191
    .line 192
    move/from16 v2, p1

    .line 193
    .line 194
    move/from16 v5, p5

    .line 195
    .line 196
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 197
    .line 198
    .line 199
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 200
    .line 201
    :cond_6
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Wifi"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/f0;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method
