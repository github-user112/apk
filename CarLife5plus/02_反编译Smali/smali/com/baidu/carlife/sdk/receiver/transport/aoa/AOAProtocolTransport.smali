.class public final Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;
.super Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;",
        "connectionListener",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V",
        "Lr8/z;",
        "connect",
        "()V",
        "ready",
        "listen",
        "terminate",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "write",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "read",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "communicator",
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;",
        "scanner",
        "Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;",
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
.field private communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

.field private final scanner:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connectionListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;

    .line 15
    .line 16
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p1, v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lf9/k;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->scanner:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic access$setCommunicator$p(Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "AOAProtocolTransport connect"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->scanner:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->scan()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public listen()V
    .locals 0

    .line 1
    return-void
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;->read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "read from unattached transport"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public ready()V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "AOAProtocolTransport ready"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "CarLife_SDK"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->scanner:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->ready()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public terminate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->scanner:Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/UsbAccessoryScanner;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;->terminate()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionDetached()V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v2, "AOAProtocolTransport terminate"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    const-string v2, "CarLife_SDK"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
