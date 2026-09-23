.class public final Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;
.super Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 #2\u00020\u0001:\u0001#B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "mCarLifeContext",
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
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;",
        "mWirelessConnector$delegate",
        "Lr8/h;",
        "getMWirelessConnector",
        "()Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;",
        "mWirelessConnector",
        "Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;",
        "mInstantConnectionSetup$delegate",
        "getMInstantConnectionSetup",
        "()Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;",
        "mInstantConnectionSetup",
        "",
        "isConnecting",
        "()Z",
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
.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$Companion;

.field private static final TAG:Ljava/lang/String; = "InstantProtocolTransport"


# instance fields
.field private final mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private final mInstantConnectionSetup$delegate:Lr8/h;

.field private final mWirelessConnector$delegate:Lr8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V
    .locals 1

    .line 1
    const-string v0, "mCarLifeContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    sget-object p1, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mWirelessConnector$2;->INSTANCE:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mWirelessConnector$2;

    .line 12
    .line 13
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mWirelessConnector$delegate:Lr8/h;

    .line 18
    .line 19
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport$mInstantConnectionSetup$2;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mInstantConnectionSetup$delegate:Lr8/h;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getMCarLifeContext$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMWirelessConnector(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->getMWirelessConnector()Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$isConnecting(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->isConnecting()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final getMInstantConnectionSetup()Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mInstantConnectionSetup$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMWirelessConnector()Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mWirelessConnector$delegate:Lr8/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 8
    .line 9
    return-object v0
.end method

.method private final isConnecting()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConnectionState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
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
    const-string v2, "InstantProtocolTransport connect"

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
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->getMInstantConnectionSetup()Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->connect()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public listen()V
    .locals 0

    .line 1
    return-void
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->getMWirelessConnector()Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public ready()V
    .locals 0

    .line 1
    return-void
.end method

.method public terminate()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->getMInstantConnectionSetup()Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->terminate()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->getMWirelessConnector()Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->terminate()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionDetached()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v2, "InstantProtocolTransport terminate"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const-string v2, "CarLife_SDK"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
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
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;->getMWirelessConnector()Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
