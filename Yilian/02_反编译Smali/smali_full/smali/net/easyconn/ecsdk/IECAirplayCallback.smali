.class public interface abstract Lnet/easyconn/ecsdk/IECAirplayCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onAirPlayPlaybackOpen(Ljava/lang/String;F)V
.end method

.method public abstract onAirPlayPlaybackPause()V
.end method

.method public abstract onAirPlayPlaybackPlay()V
.end method

.method public abstract onAirPlayPlaybackSeek(J)V
.end method

.method public abstract onAirPlayPlaybackStop()V
.end method

.method public abstract onAirplayVideoReceived([BII)V
.end method

.method public abstract onLockScreenStatus(Z)V
.end method

.method public abstract onMirrorDisconnected()V
.end method

.method public abstract onPhoneAudioData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[B)V
.end method

.method public abstract onPhoneAudioFlush(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method

.method public abstract onPhoneAudioSetVolume(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V
.end method

.method public abstract onPhoneAudioStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
.end method

.method public abstract onPhoneAudioStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method
