.class final Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;
.super Ljava/lang/Thread;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiConnectThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;",
        "Ljava/lang/Thread;",
        "<init>",
        "(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)V",
        "Lr8/z;",
        "run",
        "()V",
        "stopConnect",
        "",
        "isRunning",
        "Z",
        "",
        "manualIp",
        "Ljava/lang/String;",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isRunning:Z

.field private manualIp:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->isRunning:Z

    .line 8
    .line 9
    const-string p1, "WIFIConnectThread"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getContext(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "CarLifePrefs"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "CONNECT_TARGET_IP_ADDRESS"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lez v2, :cond_0

    .line 34
    .line 35
    iput-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->manualIp:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->isRunning:Z

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->manualIp:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "using manual IP: "

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->manualIp:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-array v6, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v5, v6, v3

    .line 70
    .line 71
    invoke-virtual {v2, v0, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 75
    .line 76
    invoke-static {v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMWirlessConnector$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->manualIp:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->startConnect(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_1

    .line 90
    .line 91
    new-array v5, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    const-string v6, "manual IP onConnectionAttached"

    .line 94
    .line 95
    aput-object v6, v5, v3

    .line 96
    .line 97
    invoke-virtual {v2, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionAttached()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v2

    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v6, "manual IP connection failed: "

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->manualIp:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    new-array v6, v1, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v5, v6, v3

    .line 131
    .line 132
    invoke-virtual {v2, v0, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    iput-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->manualIp:Ljava/lang/String;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 139
    .line 140
    new-instance v5, Ljava/net/DatagramPacket;

    .line 141
    .line 142
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 143
    .line 144
    invoke-static {v6}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getReceiveBuf$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)[B

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    iget-object v7, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 149
    .line 150
    invoke-static {v7}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getReceiveBuf$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)[B

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    array-length v7, v7

    .line 158
    invoke-direct {v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$setMPacket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;Ljava/net/DatagramPacket;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 165
    .line 166
    invoke-static {v2}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$isConnecting(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_3

    .line 171
    .line 172
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 173
    .line 174
    new-array v5, v1, [Ljava/lang/Object;

    .line 175
    .line 176
    const-string v6, "start read broadcast socket"

    .line 177
    .line 178
    aput-object v6, v5, v3

    .line 179
    .line 180
    invoke-virtual {v2, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 184
    .line 185
    invoke-static {v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMSocket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Ljava/net/DatagramSocket;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 193
    .line 194
    invoke-static {v6}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMPacket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Ljava/net/DatagramPacket;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 199
    .line 200
    .line 201
    new-array v5, v1, [Ljava/lang/Object;

    .line 202
    .line 203
    const-string v6, "read broadcast socket"

    .line 204
    .line 205
    aput-object v6, v5, v3

    .line 206
    .line 207
    invoke-virtual {v2, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-boolean v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->isRunning:Z

    .line 211
    .line 212
    if-eqz v5, :cond_0

    .line 213
    .line 214
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 215
    .line 216
    invoke-static {v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMPacket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Ljava/net/DatagramPacket;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    if-eqz v5, :cond_0

    .line 221
    .line 222
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 223
    .line 224
    invoke-static {v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$isConnecting(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_0

    .line 229
    .line 230
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 231
    .line 232
    invoke-static {v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMPacket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Ljava/net/DatagramPacket;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v7, "connect  packet:"

    .line 249
    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    new-array v7, v1, [Ljava/lang/Object;

    .line 265
    .line 266
    aput-object v6, v7, v3

    .line 267
    .line 268
    invoke-virtual {v2, v0, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 272
    .line 273
    invoke-static {v6}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMWirlessConnector$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v5}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->startConnect(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_0

    .line 289
    .line 290
    new-array v5, v1, [Ljava/lang/Object;

    .line 291
    .line 292
    const-string v6, "wifi onConnectionAttached"

    .line 293
    .line 294
    aput-object v6, v5, v3

    .line 295
    .line 296
    invoke-virtual {v2, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionAttached()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_3
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 307
    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v6, "is connected stop wifi :"

    .line 314
    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 319
    .line 320
    invoke-static {v6}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->access$getMCarLifeContext$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-interface {v6}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConnectionType()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    new-array v6, v1, [Ljava/lang/Object;

    .line 336
    .line 337
    aput-object v5, v6, v3

    .line 338
    .line 339
    invoke-virtual {v2, v0, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->stopConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :goto_2
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 348
    .line 349
    const/4 v6, 0x2

    .line 350
    new-array v6, v6, [Ljava/lang/Object;

    .line 351
    .line 352
    const-string v7, "UDPSocket IOException:"

    .line 353
    .line 354
    aput-object v7, v6, v3

    .line 355
    .line 356
    aput-object v2, v6, v1

    .line 357
    .line 358
    invoke-virtual {v5, v0, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    const-wide/16 v1, 0x3e8

    .line 362
    .line 363
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :catch_1
    nop

    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_4
    return-void
.end method

.method public final stopConnect()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->isRunning:Z

    .line 3
    .line 4
    return-void
.end method
