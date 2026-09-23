.class public abstract Lm7/f0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;

.field public static final b:Lr8/o;

.field public static final c:Lr8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm7/e;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lm7/f0;->a:Lr8/o;

    .line 12
    .line 13
    new-instance v0, Lm7/e;

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lm7/f0;->b:Lr8/o;

    .line 24
    .line 25
    new-instance v0, Lm7/e;

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    invoke-direct {v0, v1}, Lm7/e;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lm7/f0;->c:Lr8/o;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Landroid/app/Activity;ILf9/k;)V
    .locals 10

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-ne p1, v0, :cond_8

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget-object v3, Lu7/j;->a:Lr8/o;

    .line 12
    .line 13
    invoke-static {}, Lw6/a;->f()Ly6/a;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {}, Lw6/a;->e()Ly6/a;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Lw6/a;->d()Ly6/a;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {}, Lw6/a;->a()Ly6/a;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const/4 v9, 0x6

    .line 38
    new-array v9, v9, [Ly6/a;

    .line 39
    .line 40
    aput-object v3, v9, v2

    .line 41
    .line 42
    aput-object v4, v9, v0

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    aput-object v5, v9, v3

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    aput-object v6, v9, v3

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    aput-object v7, v9, v3

    .line 52
    .line 53
    const/4 v3, 0x5

    .line 54
    aput-object v8, v9, v3

    .line 55
    .line 56
    invoke-static {v9}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "WiFi\u76f8\u5173"

    .line 61
    .line 62
    invoke-static {p0, v4, v3}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 69
    .line 70
    const-string p0, "\u84dd\u7259\u76f8\u5173\u6743\u9650\u672a\u5f00\u542f"

    .line 71
    .line 72
    invoke-static {v2, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    if-lt v3, v1, :cond_1

    .line 79
    .line 80
    const-string v3, "android.permission.NEARBY_WIFI_DEVICES"

    .line 81
    .line 82
    invoke-static {p0, v3}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    filled-new-array {v3}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1, v0}, Lu3/f;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 96
    .line 97
    const-string p0, "\u9644\u8fd1\u8bbe\u5907\u6743\u9650\u672a\u5f00\u542f"

    .line 98
    .line 99
    invoke-static {v2, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_1
    sget-object p0, Lm7/f0;->b:Lr8/o;

    .line 104
    .line 105
    invoke-virtual {p0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 110
    .line 111
    if-eqz p0, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-ne p0, v0, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 121
    .line 122
    const-string p0, "WiFi\u672a\u5f00\u542f"

    .line 123
    .line 124
    invoke-static {v2, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-eqz p0, :cond_7

    .line 132
    .line 133
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const/4 v0, 0x0

    .line 138
    if-eqz p0, :cond_3

    .line 139
    .line 140
    invoke-static {}, Lm7/f0;->b()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {}, Lm7/f0;->b()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {p0, v3, v4, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :cond_3
    if-nez v0, :cond_4

    .line 157
    .line 158
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 159
    .line 160
    const-string p0, "WLAN\u76f4\u8fde\u521d\u59cb\u5316\u5931\u8d25"

    .line 161
    .line 162
    invoke-static {v2, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_4
    new-instance p0, Lg9/x;

    .line 167
    .line 168
    invoke-direct {p0}, Lg9/x;-><init>()V

    .line 169
    .line 170
    .line 171
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 172
    .line 173
    if-lt v2, v1, :cond_5

    .line 174
    .line 175
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_5

    .line 180
    .line 181
    new-instance v2, Lm7/d0;

    .line 182
    .line 183
    invoke-direct {v2, p0}, Lm7/d0;-><init>(Lg9/x;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v0, v2}, Lk2/n;->m(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lm7/d0;)V

    .line 187
    .line 188
    .line 189
    :cond_5
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    new-instance v2, Lm7/e0;

    .line 196
    .line 197
    invoke-direct {v2, p0, p2, p1}, Lm7/e0;-><init>(Lg9/x;Lf9/k;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 201
    .line 202
    .line 203
    :cond_6
    return-void

    .line 204
    :cond_7
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 205
    .line 206
    const-string p0, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301WLAN\u76f4\u8fde"

    .line 207
    .line 208
    invoke-static {v2, p0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-interface {p2, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lm7/f0;->a:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public static c(Ljava/lang/String;Lf9/k;)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lt8/b;

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lt8/b;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v4, 0x1f

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    const/16 v4, 0x21

    .line 34
    .line 35
    if-lt v3, v4, :cond_1

    .line 36
    .line 37
    const-string v3, "android.permission.NEARBY_WIFI_DEVICES"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lt8/b;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {v2}, Lp9/x1;->c(Lt8/b;)Lt8/b;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lt8/b;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v5, 0x0

    .line 57
    invoke-virtual {v2, v5}, Lt8/b;->listIterator(I)Ljava/util/ListIterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    move-object v6, v2

    .line 62
    check-cast v6, Lp1/v;

    .line 63
    .line 64
    invoke-virtual {v6}, Lp1/v;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_4

    .line 69
    .line 70
    invoke-virtual {v6}, Lp1/v;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {}, Lm7/f0;->b()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static {v7, v6}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v3, 0x0

    .line 88
    :cond_4
    :goto_1
    const-string v2, "BLUETOOTH"

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    const-string v5, "\u84dd\u7259\u4e0d\u53ef\u7528"

    .line 93
    .line 94
    :goto_2
    move-object v7, v5

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    if-nez v3, :cond_6

    .line 97
    .line 98
    const-string v5, "\u672a\u83b7\u53d6\u84dd\u7259\u6743\u9650"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_7

    .line 106
    .line 107
    const-string v5, "\u672a\u83b7\u53d6\u5230\u84dd\u7259\u5217\u8868"

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    sget-object v5, Ll8/g;->a:Lr8/o;

    .line 111
    .line 112
    invoke-static {}, Ll8/g;->b()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    goto :goto_2

    .line 117
    :goto_3
    new-instance v6, Lj8/k0;

    .line 118
    .line 119
    new-instance v8, Lj8/n0;

    .line 120
    .line 121
    const-string v5, ""

    .line 122
    .line 123
    invoke-direct {v8, v5}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 v11, 0x0

    .line 127
    const/16 v12, 0x1c

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    invoke-direct/range {v6 .. v12}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    if-eqz v0, :cond_14

    .line 138
    .line 139
    if-nez v3, :cond_8

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-eqz p0, :cond_d

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-nez p0, :cond_9

    .line 154
    .line 155
    sget-object p0, Ls8/y;->a:Ls8/y;

    .line 156
    .line 157
    :cond_9
    move-object v0, p0

    .line 158
    check-cast v0, Ljava/util/Collection;

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_c

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 167
    .line 168
    .line 169
    check-cast p0, Ljava/lang/Iterable;

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_c

    .line 180
    .line 181
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 186
    .line 187
    new-instance v2, Lj8/k0;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "\u672a\u77e5\u8bbe\u5907"

    .line 194
    .line 195
    if-nez v3, :cond_a

    .line 196
    .line 197
    move-object v3, v4

    .line 198
    move-object v5, v3

    .line 199
    goto :goto_5

    .line 200
    :cond_a
    move-object v5, v4

    .line 201
    :goto_5
    new-instance v4, Lj8/n0;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-nez v0, :cond_b

    .line 208
    .line 209
    move-object v0, v5

    .line 210
    :cond_b
    invoke-direct {v4, v0}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    const/16 v8, 0x1c

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    const/4 v6, 0x0

    .line 218
    invoke-direct/range {v2 .. v8}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_c
    invoke-interface {p1, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    if-eqz v6, :cond_e

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 236
    .line 237
    .line 238
    new-instance v5, Lj8/k0;

    .line 239
    .line 240
    new-instance v7, Lj8/n0;

    .line 241
    .line 242
    invoke-direct {v7, v6}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/4 v10, 0x0

    .line 246
    const/16 v11, 0x1c

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    invoke-direct/range {v5 .. v11}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    :cond_e
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 257
    .line 258
    const/16 v0, 0x1d

    .line 259
    .line 260
    if-lt p0, v0, :cond_13

    .line 261
    .line 262
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_13

    .line 267
    .line 268
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const/4 v2, 0x0

    .line 273
    if-eqz v0, :cond_f

    .line 274
    .line 275
    invoke-static {}, Lm7/f0;->b()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v0, v3, v5, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    :cond_f
    if-nez v2, :cond_10

    .line 288
    .line 289
    invoke-interface {p1, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_10
    if-lt p0, v4, :cond_11

    .line 294
    .line 295
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    if-eqz p0, :cond_12

    .line 300
    .line 301
    new-instance v0, Lm7/b0;

    .line 302
    .line 303
    invoke-direct {v0, p1, v1}, Lm7/b0;-><init>(Lf9/k;Ljava/util/ArrayList;)V

    .line 304
    .line 305
    .line 306
    invoke-static {p0, v2, v0}, Lk2/n;->l(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lm7/b0;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_11
    invoke-static {}, Lm7/f0;->d()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    if-eqz p0, :cond_12

    .line 315
    .line 316
    new-instance v0, Lm7/c0;

    .line 317
    .line 318
    invoke-direct {v0, p1, v1}, Lm7/c0;-><init>(Lf9/k;Ljava/util/ArrayList;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 322
    .line 323
    .line 324
    :cond_12
    return-void

    .line 325
    :cond_13
    invoke-interface {p1, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_14
    :goto_6
    invoke-interface {p1, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    return-void
.end method

.method public static d()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .line 1
    sget-object v0, Lm7/f0;->c:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 8
    .line 9
    return-object v0
.end method
