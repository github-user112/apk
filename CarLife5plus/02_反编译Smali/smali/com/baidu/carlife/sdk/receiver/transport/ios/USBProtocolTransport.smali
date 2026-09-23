.class public final Lcom/baidu/carlife/sdk/receiver/transport/ios/USBProtocolTransport;
.super Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/transport/ios/USBProtocolTransport;",
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
.field private final mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;


# direct methods
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
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/ios/USBProtocolTransport;->mCarLifeContext:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    .line 1
    new-instance v0, Lac/y;

    .line 2
    .line 3
    const-string v1, "An operation is not implemented: Not yet implemented"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public listen()V
    .locals 3

    .line 1
    new-instance v0, Lac/y;

    .line 2
    .line 3
    const-string v1, "An operation is not implemented: Not yet implemented"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 3

    .line 1
    new-instance v0, Lac/y;

    .line 2
    .line 3
    const-string v1, "An operation is not implemented: Not yet implemented"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public ready()V
    .locals 3

    .line 1
    new-instance v0, Lac/y;

    .line 2
    .line 3
    const-string v1, "An operation is not implemented: Not yet implemented"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public terminate()V
    .locals 3

    .line 1
    new-instance v0, Lac/y;

    .line 2
    .line 3
    const-string v1, "An operation is not implemented: Not yet implemented"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lac/y;

    .line 7
    .line 8
    const-string v0, "An operation is not implemented: Not yet implemented"

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {p1, v1, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
