.class public interface abstract Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/CarLifeContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008g\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u0017\u0010\u000b\u00a8\u0006\u0018\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;",
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;",
        "listener",
        "Lr8/z;",
        "addConnectProgressListener",
        "(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V",
        "removeConnectProgressListener",
        "",
        "keyCode",
        "onKeyEvent",
        "(I)V",
        "",
        "channel",
        "cuid",
        "initStatisticsInfo",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "connect",
        "()V",
        "stopConnect",
        "disconnect",
        "ready",
        "type",
        "setConnectType",
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
.method public abstract addConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract initStatisticsInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onKeyEvent(I)V
.end method

.method public abstract ready()V
.end method

.method public abstract removeConnectProgressListener(Lcom/baidu/carlife/sdk/receiver/ConnectProgressListener;)V
.end method

.method public abstract setConnectType(I)V
.end method

.method public abstract stopConnect()V
.end method
