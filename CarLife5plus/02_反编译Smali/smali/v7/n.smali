.class public final Lv7/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# instance fields
.field public final a:Lcom/baidu/carlife/sdk/CarLifeContext;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv7/n;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    int-to-double v0, p1

    .line 6
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    div-double/2addr v0, v2

    .line 12
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    rem-double v2, v0, v2

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmpg-double p1, v2, v4

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    double-to-int p1, v0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, "\u516c\u91cc"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    new-array v2, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    aput-object v0, v2, v3

    .line 54
    .line 55
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "%.1f\u516c\u91cc"

    .line 60
    .line 61
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, "\u7c73"

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public final varargs b([Lr8/j;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_3

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    iget-object v4, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of v5, v3, Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    check-cast v3, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    instance-of v5, v3, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    check-cast v3, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object p1, p0, Lv7/n;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final synthetic onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->b(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->c(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->d(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->f(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "message"

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const v3, 0x10030

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-ne v1, v3, :cond_3

    .line 26
    .line 27
    const/16 v1, 0x2723

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v3, v2, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-eqz v2, :cond_3

    .line 46
    .line 47
    new-instance v3, Lr8/j;

    .line 48
    .line 49
    const-string v5, "KEY_TYPE"

    .line 50
    .line 51
    invoke-direct {v3, v5, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const-string v7, "\u76ee\u7684\u5730"

    .line 59
    .line 60
    invoke-static {v6, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/16 v8, 0x8

    .line 65
    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    const/16 v6, 0x27

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/16 v6, 0x8

    .line 72
    .line 73
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    new-instance v9, Lr8/j;

    .line 78
    .line 79
    const-string v10, "EXTRA_STATE"

    .line 80
    .line 81
    invoke-direct {v9, v10, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 v6, 0x2

    .line 85
    new-array v11, v6, [Lr8/j;

    .line 86
    .line 87
    aput-object v3, v11, v4

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    aput-object v9, v11, v3

    .line 91
    .line 92
    invoke-virtual {v0, v11}, Lv7/n;->b([Lr8/j;)V

    .line 93
    .line 94
    .line 95
    new-instance v9, Lr8/j;

    .line 96
    .line 97
    invoke-direct {v9, v5, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/16 v11, 0x9

    .line 109
    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    const/16 v1, 0x8

    .line 116
    .line 117
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-instance v12, Lr8/j;

    .line 122
    .line 123
    invoke-direct {v12, v10, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-array v1, v6, [Lr8/j;

    .line 127
    .line 128
    aput-object v9, v1, v4

    .line 129
    .line 130
    aput-object v12, v1, v3

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lv7/n;->b([Lr8/j;)V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0x2f4b

    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-instance v9, Lr8/j;

    .line 142
    .line 143
    invoke-direct {v9, v5, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v7, Lr8/j;

    .line 159
    .line 160
    const-string v10, "HUD_IS_OPEN"

    .line 161
    .line 162
    invoke-direct {v7, v10, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    new-array v1, v6, [Lr8/j;

    .line 166
    .line 167
    aput-object v9, v1, v4

    .line 168
    .line 169
    aput-object v7, v1, v3

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lv7/n;->b([Lr8/j;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    new-instance v7, Lr8/j;

    .line 179
    .line 180
    const-string v9, "TYPE"

    .line 181
    .line 182
    invoke-direct {v7, v9, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const/16 v1, 0x2711

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v9, Lr8/j;

    .line 192
    .line 193
    invoke-direct {v9, v5, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getAction()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v5, Lr8/j;

    .line 205
    .line 206
    const-string v10, "ACTION"

    .line 207
    .line 208
    invoke-direct {v5, v10, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getNextTurn()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v10, Lr8/j;

    .line 220
    .line 221
    const-string v12, "ICON"

    .line 222
    .line 223
    invoke-direct {v10, v12, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getNextTurn()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    new-instance v12, Lr8/j;

    .line 235
    .line 236
    const-string v13, "NEW_ICON"

    .line 237
    .line 238
    invoke-direct {v12, v13, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    new-instance v13, Lr8/j;

    .line 246
    .line 247
    const-string v14, "NEXT_ROAD_NAME"

    .line 248
    .line 249
    invoke-direct {v13, v14, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRemainDistance()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    new-instance v14, Lr8/j;

    .line 261
    .line 262
    const-string v15, "SEG_REMAIN_DIS"

    .line 263
    .line 264
    invoke-direct {v14, v15, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRemainDistance()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-virtual {v0, v1}, Lv7/n;->a(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    new-instance v15, Lr8/j;

    .line 276
    .line 277
    const/16 p1, 0x1

    .line 278
    .line 279
    const-string v3, "SEG_REMAIN_DIS_AUTO"

    .line 280
    .line 281
    invoke-direct {v15, v3, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTotalDistance()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    new-instance v3, Lr8/j;

    .line 293
    .line 294
    const/16 v16, 0x0

    .line 295
    .line 296
    const-string v4, "ROUTE_ALL_DIS"

    .line 297
    .line 298
    invoke-direct {v3, v4, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTotalDistance()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    new-instance v4, Lr8/j;

    .line 310
    .line 311
    const/16 p2, 0x2

    .line 312
    .line 313
    const-string v6, "ROUTE_REMAIN_DIS"

    .line 314
    .line 315
    invoke-direct {v4, v6, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTotalDistance()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {v0, v1}, Lv7/n;->a(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    new-instance v2, Lr8/j;

    .line 327
    .line 328
    const-string v6, "ROUTE_REMAIN_DIS_AUTO"

    .line 329
    .line 330
    invoke-direct {v2, v6, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    const/16 v1, 0xb

    .line 334
    .line 335
    new-array v1, v1, [Lr8/j;

    .line 336
    .line 337
    aput-object v7, v1, v16

    .line 338
    .line 339
    aput-object v9, v1, p1

    .line 340
    .line 341
    aput-object v5, v1, p2

    .line 342
    .line 343
    const/4 v5, 0x3

    .line 344
    aput-object v10, v1, v5

    .line 345
    .line 346
    const/4 v5, 0x4

    .line 347
    aput-object v12, v1, v5

    .line 348
    .line 349
    const/4 v5, 0x5

    .line 350
    aput-object v13, v1, v5

    .line 351
    .line 352
    const/4 v5, 0x6

    .line 353
    aput-object v14, v1, v5

    .line 354
    .line 355
    const/4 v5, 0x7

    .line 356
    aput-object v15, v1, v5

    .line 357
    .line 358
    aput-object v3, v1, v8

    .line 359
    .line 360
    aput-object v4, v1, v11

    .line 361
    .line 362
    const/16 v3, 0xa

    .line 363
    .line 364
    aput-object v2, v1, v3

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Lv7/n;->b([Lr8/j;)V

    .line 367
    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_3
    const/16 v16, 0x0

    .line 371
    .line 372
    :goto_3
    return v16
.end method

.method public final synthetic onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->b(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
