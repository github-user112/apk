.class public final Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;
.super Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$Companion;,
        Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 +2\u00020\u0001:\u0002+,B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0018R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001c\u0010#\u001a\u0008\u0018\u00010\"R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010)\u001a\u00020(8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;",
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
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "",
        "receiveBuf",
        "[B",
        "Ljava/net/DatagramSocket;",
        "mSocket",
        "Ljava/net/DatagramSocket;",
        "Ljava/net/DatagramPacket;",
        "mPacket",
        "Ljava/net/DatagramPacket;",
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;",
        "mWIFIConnectThread",
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;",
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;",
        "mWirlessConnector",
        "Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;",
        "",
        "isConnecting",
        "()Z",
        "Companion",
        "WifiConnectThread",
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
.field private static final BOARDCAST_WIFI_PORT:I = 0x1f3f

.field public static final Companion:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$Companion;

.field private static final RECEIVE_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "WirlessTransport"


# instance fields
.field private final mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private mPacket:Ljava/net/DatagramPacket;

.field private mSocket:Ljava/net/DatagramSocket;

.field private mWIFIConnectThread:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;

.field private final mWirlessConnector:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

.field private receiveBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->Companion:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$Companion;

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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    new-instance p1, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWirlessConnector:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getContext(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->getContext()Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMCarLifeContext$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMPacket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Ljava/net/DatagramPacket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mPacket:Ljava/net/DatagramPacket;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMSocket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Ljava/net/DatagramSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mSocket:Ljava/net/DatagramSocket;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMWirlessConnector$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWirlessConnector:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getReceiveBuf$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->receiveBuf:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isConnecting(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->isConnecting()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setMPacket$p(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;Ljava/net/DatagramPacket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mPacket:Ljava/net/DatagramPacket;

    .line 2
    .line 3
    return-void
.end method

.method private final isConnecting()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

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
    .locals 7

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 6
    .line 7
    new-array v4, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "WirlessProtocolTransport connect listener"

    .line 10
    .line 11
    aput-object v5, v4, v1

    .line 12
    .line 13
    invoke-virtual {v3, v0, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mSocket:Ljava/net/DatagramSocket;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Ljava/net/DatagramSocket;

    .line 21
    .line 22
    const/16 v4, 0x1f3f

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mSocket:Ljava/net/DatagramSocket;

    .line 28
    .line 29
    const/16 v3, 0x400

    .line 30
    .line 31
    new-array v3, v3, [B

    .line 32
    .line 33
    iput-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->receiveBuf:[B

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWIFIConnectThread:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;

    .line 43
    .line 44
    invoke-direct {v3, p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;-><init>(Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;)V

    .line 45
    .line 46
    .line 47
    iput-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWIFIConnectThread:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :goto_1
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v6, "connect error:"

    .line 59
    .line 60
    aput-object v6, v5, v1

    .line 61
    .line 62
    aput-object v3, v5, v2

    .line 63
    .line 64
    invoke-virtual {v4, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public listen()V
    .locals 0

    .line 1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWirlessConnector:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
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
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWIFIConnectThread:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;->stopConnect()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWIFIConnectThread:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport$WifiConnectThread;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWirlessConnector:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->terminate()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mSocket:Ljava/net/DatagramSocket;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mSocket:Ljava/net/DatagramSocket;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mPacket:Ljava/net/DatagramPacket;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionDetached()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v2, "WirlessProtocolTransport terminate"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    const-string v2, "CarLife_SDK"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
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
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;->mWirlessConnector:Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessConnector;->write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
