.class public interface abstract Lcom/baidu/carlife/sdk/internal/transport/TransportListener;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/ConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/internal/transport/TransportListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/TransportListener;",
        "Lcom/baidu/carlife/sdk/ConnectionChangeListener;",
        "onReceiveMessage",
        "",
        "context",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "message",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "onSendMessage",
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


# virtual methods
.method public abstract onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
.end method

.method public abstract onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
.end method
