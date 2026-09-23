.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\t\u0010\rJ\r\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;",
        "",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "pool",
        "<init>",
        "(Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;)V",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "send",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "Landroid/hardware/usb/UsbRequest;",
        "request",
        "(Landroid/hardware/usb/UsbRequest;)V",
        "complete",
        "()V",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;",
        "Ljava/util/concurrent/Semaphore;",
        "semaphore",
        "Ljava/util/concurrent/Semaphore;",
        "",
        "stage",
        "I",
        "sendingMessage",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender$Companion;

.field private static final SENDING_BODY:I = 0x1

.field private static final SENDING_COMPLETE:I = 0x2

.field private static final SENDING_HEADER:I


# instance fields
.field private final pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field private volatile sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

.field private volatile stage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender$Companion;

    .line 8
    .line 9
    return-void
.end method

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/Semaphore;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->stage:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final complete()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->stage:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final send(Landroid/hardware/usb/UsbRequest;)V
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->stage:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MessageReader queue send body failed"

    const-string v4, "sendingMessage!!.wrappedBody"

    const-string v5, "CarLife_SDK"

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MessageSender send zero header length"

    aput-object v3, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "sendingMessage!!.wrappedHeader"

    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 15
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MessageReader queue send header failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    iput v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->stage:I

    .line 17
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 19
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 21
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_5

    .line 23
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "MessageSender send zero body length"

    aput-object v6, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedBody()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return-void

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 26
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->stage:I

    .line 28
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 29
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final send(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->sendingMessage:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->stage:I

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->acquireOutRequest(Ljava/lang/Object;)Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header(Z)[B

    .line 5
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getWrappedHeader()Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v2, "message.wrappedHeader"

    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v0, p1, v2}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->queue(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/MessageSender;->pool:Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;

    invoke-virtual {p1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/async/UsbRequestPool;->releaseRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MessageReader queue send header failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
