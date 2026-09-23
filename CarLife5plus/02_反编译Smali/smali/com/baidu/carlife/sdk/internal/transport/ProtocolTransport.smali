.class public abstract Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008&\u0018\u00002\u00020\u0001:\u0001 B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\r\u0010\u0019\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\nR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;",
        "",
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
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "onConnectionAttached",
        "onConnectionDetached",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "getContext",
        "()Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;",
        "getConnectionListener",
        "()Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;",
        "ConnectionListener",
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
.field private final connectionListener:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;

.field private final context:Lcom/baidu/carlife/sdk/CarLifeContext;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 3
    iput-object p2, p0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->connectionListener:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;ILg9/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V

    return-void
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public final getConnectionListener()Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->connectionListener:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Lcom/baidu/carlife/sdk/CarLifeContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->context:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract listen()V
.end method

.method public final onConnectionAttached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->connectionListener:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;->onConnectionAttached(Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onConnectionDetached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->connectionListener:Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;->onConnectionDetached(Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;)V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    return-void
.end method

.method public abstract read()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
.end method

.method public abstract ready()V
.end method

.method public abstract terminate()V
.end method

.method public abstract write(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
.end method
