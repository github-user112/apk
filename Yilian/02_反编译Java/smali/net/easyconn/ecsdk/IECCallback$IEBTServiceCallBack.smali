.class public interface abstract Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/IECCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEBTServiceCallBack"
.end annotation


# virtual methods
.method public abstract onPhoneAPInfo(Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;)V
.end method

.method public abstract onPhoneBuildNetFinish()V
.end method

.method public abstract onRequestBuildNet(Lnet/easyconn/ecsdk/ECTypes$EBTClientInfo;)V
.end method

.method public abstract onRequestBuildNetCancel()V
.end method
