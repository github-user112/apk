.class public final Lz7/s1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(I)V
    .locals 4

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    if-eq p0, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0x55

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    const/16 v2, 0x1f

    .line 10
    .line 11
    if-eq p0, v0, :cond_4

    .line 12
    .line 13
    if-eq p0, v2, :cond_1

    .line 14
    .line 15
    if-eq p0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object p0, Li7/j;->a:Lib/d;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p0, Li7/j;->c:Ldc/l0;

    .line 24
    .line 25
    invoke-virtual {p0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    :goto_0
    const/16 p0, 0x20

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sget-object p0, Li7/j;->a:Lib/d;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object p0, Li7/j;->c:Ldc/l0;

    .line 46
    .line 47
    invoke-virtual {p0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :cond_3
    const/16 p0, 0x1f

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    sget-object p0, Li7/j;->a:Lib/d;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object p0, Li7/j;->c:Ldc/l0;

    .line 69
    .line 70
    invoke-virtual {p0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p0}, Lcom/baidu/carlife/sdk/CarLifeContext;->isConnected()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_6

    .line 92
    .line 93
    sget-object p0, Ll8/c;->a:Lfc/c;

    .line 94
    .line 95
    invoke-static {}, Ll8/c;->d()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    const/16 p0, 0xe

    .line 100
    .line 101
    :goto_1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 102
    .line 103
    const v1, 0x68008

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x6

    .line 112
    invoke-virtual {v0, v3, v1, v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, p0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;->setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {v0, p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-interface {p0, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
