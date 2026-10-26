.class public interface abstract Lnet/easyconn/ecsdk/IECMCastCallBack;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onAudioPlay(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V
.end method

.method public abstract onAudioReceived([BIIJ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAudioStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
.end method

.method public abstract onAudioStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method

.method public abstract onMirrorVideoReceived([BIIJLnet/easyconn/ecsdk/ECTypes$ECVideoInfo;)V
.end method

.method public abstract onStatusMessage(I)V
.end method
