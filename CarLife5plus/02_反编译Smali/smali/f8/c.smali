.class public abstract Lf8/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf8/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lf8/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf8/c;->a:Lf8/b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    sget-object v0, Lf8/c;->a:Lf8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lf8/b;->e:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setAction(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    float-to-int v2, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    mul-int v2, v2, v4

    .line 41
    .line 42
    div-int/2addr v2, v3

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setX(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    float-to-int v2, v2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    mul-int v2, v2, v4

    .line 66
    .line 67
    div-int/2addr v2, v3

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setY(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x1

    .line 86
    if-le v4, v6, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    float-to-int v4, v4

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    mul-int v4, v4, v3

    .line 99
    .line 100
    div-int/2addr v4, v2

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/4 v4, 0x0

    .line 103
    :cond_6
    :goto_2
    invoke-virtual {v1, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setPointerx(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-le v2, v6, :cond_9

    .line 120
    .line 121
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    float-to-int p1, p1

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    mul-int p1, p1, v0

    .line 132
    .line 133
    div-int/2addr p1, p0

    .line 134
    :cond_8
    :goto_3
    move v5, p1

    .line 135
    :cond_9
    invoke-virtual {v1, v5}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setPointery(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 140
    .line 141
    const p1, 0x68001

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const/4 v4, 0x4

    .line 149
    const/4 v5, 0x0

    .line 150
    const/4 v1, 0x6

    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p1, p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    invoke-virtual {p1, v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setTag(J)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-interface {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    return-void
.end method
