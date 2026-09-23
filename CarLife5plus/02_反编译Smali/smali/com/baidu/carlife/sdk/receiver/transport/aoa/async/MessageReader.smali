.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\n \u001a*\u0004\u0018\u00010\u00190\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0018R\u001c\u0010 \u001a\n \u001a*\u0004\u0018\u00010\u00190\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;",
        "",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "pool",
        "<init>",
        "(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;)V",
        "Landroid/hardware/usb/UsbRequest;",
        "request",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "readAfterApi26",
        "(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "readBelowApi26",
        "",
        "channel",
        "size",
        "",
        "verifyHeader",
        "(II)Z",
        "Lr8/z;",
        "reset",
        "()V",
        "read",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "messageSize",
        "I",
        "Ljava/nio/ByteBuffer;",
        "kotlin.jvm.PlatformType",
        "header",
        "Ljava/nio/ByteBuffer;",
        "readingMessage",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "readSize",
        "queuedBuffer",
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
.field private final header:Ljava/nio/ByteBuffer;

.field private messageSize:I

.field private final pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

.field private final queuedBuffer:Ljava/nio/ByteBuffer;

.field private readSize:I

.field private readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;)V
    .locals 1

    .line 1
    const-string v0, "pool"

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    const/16 p1, 0x4000

    .line 20
    .line 21
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    return-void
.end method

.method private final readAfterApi26(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 2
    .line 3
    const-string v1, "MessageReader queue read message failed"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    new-array v1, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v4, "MessageReader read zero header length"

    .line 23
    .line 24
    aput-object v4, v1, v3

    .line 25
    .line 26
    const-string v3, "CarLife_SDK"

    .line 27
    .line 28
    invoke-virtual {v0, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->read()V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v5, "header.array()"

    .line 47
    .line 48
    invoke-static {v0, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v3, v4, v2}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt$default([BIILjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x4

    .line 65
    invoke-static {v0, v3}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 70
    .line 71
    invoke-direct {p0, v7, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->verifyHeader(II)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    sget-object v6, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 78
    .line 79
    iget v9, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 80
    .line 81
    const/4 v10, 0x2

    .line 82
    const/4 v11, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    invoke-static/range {v6 .. v11}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-string v5, "message.wrappedBody"

    .line 111
    .line 112
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 116
    .line 117
    invoke-virtual {v3, p1, v4, v5}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_1

    .line 122
    .line 123
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 124
    .line 125
    return-object v2

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Ljava/io/IOException;

    .line 135
    .line 136
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Ljava/io/IOException;

    .line 146
    .line 147
    const-string v0, "invalid message channel "

    .line 148
    .line 149
    const-string v1, " or message size "

    .line 150
    .line 151
    invoke-static {v0, v1, v7}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_3
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iget v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 180
    .line 181
    sub-int v4, v3, v0

    .line 182
    .line 183
    if-ne v0, v3, :cond_4

    .line 184
    .line 185
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 191
    .line 192
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iput-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 199
    .line 200
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 201
    .line 202
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const-string v5, "readingMessage!!.wrappedBody"

    .line 210
    .line 211
    invoke-static {v3, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1, v3, v4}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    return-object v2

    .line 221
    :cond_5
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->reset()V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 225
    .line 226
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Ljava/io/IOException;

    .line 230
    .line 231
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1
.end method

.method private final readBelowApi26(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 2
    .line 3
    const-string v1, "MessageReader queue read message failed"

    .line 4
    .line 5
    const-string v2, "queuedBuffer"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 21
    .line 22
    new-array v1, v5, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v2, "MessageReader read zero header length"

    .line 25
    .line 26
    aput-object v2, v1, v4

    .line 27
    .line 28
    const-string v2, "CarLife_SDK"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->read()V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v6, "header.array()"

    .line 49
    .line 50
    invoke-static {v0, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v4, v5, v3}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt$default([BIILjava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x4

    .line 67
    invoke-static {v0, v4}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 72
    .line 73
    invoke-direct {p0, v8, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->verifyHeader(II)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    sget-object v7, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 80
    .line 81
    iget v10, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 82
    .line 83
    const/4 v11, 0x2

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-static/range {v7 .. v12}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 96
    .line 97
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    invoke-static {v5, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v4, p1, v5, v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_1

    .line 113
    .line 114
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Ljava/io/IOException;

    .line 126
    .line 127
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Ljava/io/IOException;

    .line 137
    .line 138
    const-string v0, "invalid message channel "

    .line 139
    .line 140
    const-string v1, " or message size "

    .line 141
    .line 142
    invoke-static {v0, v1, v8}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    iget-object v5, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 173
    .line 174
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getBody()[B

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    iget v6, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readSize:I

    .line 182
    .line 183
    invoke-virtual {v4, v5, v6, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    .line 186
    iget v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readSize:I

    .line 187
    .line 188
    add-int/2addr v4, v0

    .line 189
    iput v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readSize:I

    .line 190
    .line 191
    iget v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 192
    .line 193
    sub-int v5, v0, v4

    .line 194
    .line 195
    if-ne v4, v0, :cond_4

    .line 196
    .line 197
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 203
    .line 204
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iput-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 208
    .line 209
    return-object p1

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 216
    .line 217
    iget-object v4, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    invoke-static {v4, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->queuedBuffer:Ljava/nio/ByteBuffer;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-le v5, v2, :cond_5

    .line 229
    .line 230
    move v5, v2

    .line 231
    :cond_5
    invoke-virtual {v0, p1, v4, v5}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_6

    .line 236
    .line 237
    return-object v3

    .line 238
    :cond_6
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->reset()V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 244
    .line 245
    .line 246
    new-instance p1, Ljava/io/IOException;

    .line 247
    .line 248
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p1
.end method

.method private final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readSize:I

    .line 3
    .line 4
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final verifyHeader(II)Z
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    if-lt p1, p2, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->messageSize:I

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method


# virtual methods
.method public final read(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readAfterApi26(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->readBelowApi26(Landroid/hardware/usb/UsbRequest;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    move-result-object p1

    return-object p1
.end method

.method public final read()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->reset()V

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->acquireInRequest(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->header:Ljava/nio/ByteBuffer;

    const-string v3, "header"

    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageReader;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MessageReader queue read header failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
