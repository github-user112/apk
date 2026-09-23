.class public final Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\tJ\r\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\r\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u0015\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\tJ\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001dR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;",
        "Lcom/baidu/carlife/sdk/internal/transport/TransportListener;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "context",
        "<init>",
        "(Lcom/baidu/carlife/sdk/CarLifeContext;)V",
        "Lr8/z;",
        "connect",
        "()V",
        "stopConnect",
        "configConnectType",
        "ready",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "terminate",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "postMessage",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "sendMessage",
        "dispatchMessage",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "transport",
        "onConnectionAttached",
        "(Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;)V",
        "onConnectionDetached",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "",
        "transports",
        "Ljava/util/List;",
        "Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;",
        "messageDispatcher",
        "Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;",
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
.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;

.field private messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

.field private final transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V
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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->configConnectType()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->onConnectionDetached$lambda$5(Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onConnectionDetached$lambda$5(Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->connect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final configConnectType()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->stopConnect()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 5
    .line 6
    const-string v1, "CONNECT_TYPE"

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->getFeature(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x9

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 21
    .line 22
    new-instance v1, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 25
    .line 26
    invoke-direct {v1, v3, p0}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConnectionType(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 39
    .line 40
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 43
    .line 44
    invoke-direct {v2, v3, p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConnectionType(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 57
    .line 58
    new-instance v2, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 61
    .line 62
    invoke-direct {v2, v3, p0}, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 69
    .line 70
    invoke-interface {v0, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConnectionType(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final connect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->configConnectType()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->connect()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final dispatchMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->dispatchMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final synthetic onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public onConnectionAttached(Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;)V
    .locals 8

    const-string v0, "transport"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    if-ne p1, v1, :cond_2

    .line 4
    new-instance v2, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    iget-object v3, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;ZILg9/g;)V

    iput-object v2, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    .line 5
    instance-of p1, v4, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConnectionType(I)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of p1, v4, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessAPProtocolTransport;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConnectionType(I)V

    goto :goto_1

    .line 9
    :cond_1
    instance-of p1, v4, Lcom/baidu/carlife/sdk/receiver/transport/wirless/WirlessP2PProtocolTransport;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->setConnectionType(I)V

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 11
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->terminate()V

    :cond_3
    :goto_1
    move-object p1, v4

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->setVersionSupport(Z)V

    .line 13
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->onConnectionAttached()V

    .line 14
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->start()V

    :cond_5
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

    return-void
.end method

.method public onConnectionDetached(Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;)V
    .locals 3

    const-string v0, "transport"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->getTransport()Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->terminate()V

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    .line 6
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->isVersionSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    new-instance v0, Landroidx/lifecycle/z;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->ready()V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    invoke-interface {p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->onConnectionDetached()V

    :cond_3
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

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onNewIntent(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final synthetic onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->a(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
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

.method public final postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final ready()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->ready()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->messageDispatcher:Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/transport/MessageDispatcher;->sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final stopConnect()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->terminate()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final terminate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->transports:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->terminate()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
