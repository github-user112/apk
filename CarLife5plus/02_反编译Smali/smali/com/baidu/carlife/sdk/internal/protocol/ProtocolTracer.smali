.class public final Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;",
        "Lcom/baidu/carlife/sdk/internal/transport/TransportListener;",
        "",
        "isReceiver",
        "<init>",
        "(Z)V",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "monitorTraffic",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "onReceiveMessage",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z",
        "onSendMessage",
        "onConnectionDetached",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;)V",
        "onConnectionAttached",
        "onConnectionReattached",
        "onConnectionEstablished",
        "Z",
        "",
        "tick",
        "J",
        "",
        "frameCount",
        "I",
        "byteCount",
        "mIsDiscardMsg",
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
.field private byteCount:J

.field private frameCount:I

.field private final isReceiver:Z

.field private mIsDiscardMsg:Z

.field private tick:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->isReceiver:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->mIsDiscardMsg:Z

    .line 8
    .line 9
    return-void
.end method

.method private final monitorTraffic(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getChannel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->frameCount:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->frameCount:I

    .line 13
    .line 14
    :cond_0
    iget-wide v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->byteCount:J

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    add-int/2addr p1, v0

    .line 23
    int-to-long v5, p1

    .line 24
    add-long/2addr v3, v5

    .line 25
    iput-wide v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->byteCount:J

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->tick:J

    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    cmp-long p1, v3, v5

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iput-wide v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->tick:J

    .line 40
    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    iget-wide v7, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->tick:J

    .line 46
    .line 47
    sub-long v7, v3, v7

    .line 48
    .line 49
    const-wide/16 v9, 0x3e8

    .line 50
    .line 51
    cmp-long p1, v7, v9

    .line 52
    .line 53
    if-lez p1, :cond_2

    .line 54
    .line 55
    iget-wide v9, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->byteCount:J

    .line 56
    .line 57
    int-to-long v11, v0

    .line 58
    mul-long v9, v9, v11

    .line 59
    .line 60
    const/16 p1, 0x3e8

    .line 61
    .line 62
    int-to-long v11, p1

    .line 63
    mul-long v9, v9, v11

    .line 64
    .line 65
    div-long/2addr v9, v7

    .line 66
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->frameCount:I

    .line 67
    .line 68
    mul-int/lit16 v0, v0, 0x3e8

    .line 69
    .line 70
    int-to-long v11, v0

    .line 71
    div-long/2addr v11, v7

    .line 72
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 73
    .line 74
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const/4 v8, 0x4

    .line 83
    new-array v8, v8, [Ljava/lang/Object;

    .line 84
    .line 85
    const-string v9, "ProtocolTracer bitrate "

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    aput-object v9, v8, v10

    .line 89
    .line 90
    aput-object v0, v8, v1

    .line 91
    .line 92
    const-string v0, " frame rate "

    .line 93
    .line 94
    aput-object v0, v8, v2

    .line 95
    .line 96
    const/4 v0, 0x3

    .line 97
    aput-object v7, v8, v0

    .line 98
    .line 99
    const-string v0, "CarLife_SDK"

    .line 100
    .line 101
    invoke-virtual {p1, v0, v8}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-wide v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->tick:J

    .line 105
    .line 106
    iput v10, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->frameCount:I

    .line 107
    .line 108
    iput-wide v5, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->byteCount:J

    .line 109
    .line 110
    :cond_2
    return-void
.end method


# virtual methods
.method public onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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

.method public onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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

.method public onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const v0, 0x18001

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->mIsDiscardMsg:Z

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->isReceiver:Z

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->mIsDiscardMsg:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    const v0, 0x20001

    .line 34
    .line 35
    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    const v0, 0x58001

    .line 39
    .line 40
    .line 41
    if-eq p1, v0, :cond_2

    .line 42
    .line 43
    const v0, 0x10035

    .line 44
    .line 45
    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    const v0, 0x10036

    .line 49
    .line 50
    .line 51
    if-eq p1, v0, :cond_2

    .line 52
    .line 53
    const v0, 0x10026

    .line 54
    .line 55
    .line 56
    if-eq p1, v0, :cond_2

    .line 57
    .line 58
    const v0, 0x10030

    .line 59
    .line 60
    .line 61
    if-eq p1, v0, :cond_2

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    const/4 v3, 0x3

    .line 65
    const-string v4, " @"

    .line 66
    .line 67
    const-string v5, "ProtocolTracer onReceiveMessage "

    .line 68
    .line 69
    const-string v6, "CarLife_SDK"

    .line 70
    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 75
    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v4, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;

    .line 82
    .line 83
    invoke-virtual {v4, p1}, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->getMsgName(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v5, v3, v1

    .line 97
    .line 98
    aput-object p2, v3, v2

    .line 99
    .line 100
    aput-object p1, v3, v0

    .line 101
    .line 102
    invoke-virtual {v7, v6, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_0
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 107
    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v4, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;

    .line 114
    .line 115
    invoke-virtual {v4, p1}, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->getMsgName(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-array v3, v3, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v5, v3, v1

    .line 129
    .line 130
    aput-object p2, v3, v2

    .line 131
    .line 132
    aput-object p1, v3, v0

    .line 133
    .line 134
    invoke-virtual {v7, v6, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/baidu/carlife/sdk/internal/protocol/ProtocolTracer;->monitorTraffic(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 138
    .line 139
    .line 140
    return v1

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x20002 -> :sswitch_0
        0x30006 -> :sswitch_0
        0x30007 -> :sswitch_0
        0x40003 -> :sswitch_0
        0x50003 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const v0, 0x20001

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x0

    .line 22
    const-string v5, " @"

    .line 23
    .line 24
    const-string v6, "ProtocolTracer onSendMessage "

    .line 25
    .line 26
    const-string v7, "CarLife_SDK"

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const v0, 0x30006

    .line 31
    .line 32
    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    const v0, 0x58001

    .line 36
    .line 37
    .line 38
    if-eq p1, v0, :cond_1

    .line 39
    .line 40
    const v0, 0x50003

    .line 41
    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const v0, 0x10036

    .line 46
    .line 47
    .line 48
    if-eq p1, v0, :cond_1

    .line 49
    .line 50
    const v0, 0x68001

    .line 51
    .line 52
    .line 53
    if-eq p1, v0, :cond_1

    .line 54
    .line 55
    const v0, 0x10026

    .line 56
    .line 57
    .line 58
    if-eq p1, v0, :cond_1

    .line 59
    .line 60
    const v0, 0x20002

    .line 61
    .line 62
    .line 63
    if-ne p1, v0, :cond_0

    .line 64
    .line 65
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 66
    .line 67
    new-array v0, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v6, v0, v4

    .line 70
    .line 71
    aput-object p2, v0, v2

    .line 72
    .line 73
    const-string p2, " @MSG_VIDEO_HEARTBEAT"

    .line 74
    .line 75
    aput-object p2, v0, v1

    .line 76
    .line 77
    invoke-virtual {p1, v7, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 82
    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v5, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;

    .line 89
    .line 90
    invoke-virtual {v5, p1}, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->getMsgName(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v6, v3, v4

    .line 104
    .line 105
    aput-object p2, v3, v2

    .line 106
    .line 107
    aput-object p1, v3, v1

    .line 108
    .line 109
    invoke-virtual {v0, v7, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 114
    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v5, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;

    .line 121
    .line 122
    invoke-virtual {v5, p1}, Lcom/baidu/carlife/sdk/internal/protocol/ServiceTypes;->getMsgName(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-array v3, v3, [Ljava/lang/Object;

    .line 134
    .line 135
    aput-object v6, v3, v4

    .line 136
    .line 137
    aput-object p2, v3, v2

    .line 138
    .line 139
    aput-object p1, v3, v1

    .line 140
    .line 141
    invoke-virtual {v0, v7, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return v4
.end method
