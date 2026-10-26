.class public interface abstract Lnet/easyconn/ecsdk/IECCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;,
        Lnet/easyconn/ecsdk/IECCallback$IAuthCallBack;
    }
.end annotation


# virtual methods
.method public abstract onBulkDataReceived(Ljava/nio/ByteBuffer;I)V
.end method

.method public abstract onCallAction(Lnet/easyconn/ecsdk/ECTypes$ECCallType;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCarCmdNotified(Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;)V
.end method

.method public abstract onECStatusMessage(Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;)V
.end method

.method public abstract onInputCancel()V
.end method

.method public abstract onInputSelection(II)V
.end method

.method public abstract onInputStart(Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;)V
.end method

.method public abstract onInputText(Ljava/lang/String;)V
.end method

.method public abstract onLicenseAuthFail(ILjava/lang/String;)V
.end method

.method public abstract onLicenseAuthSuccess(ILjava/lang/String;)V
.end method

.method public abstract onMirrorDisconnected()V
.end method

.method public abstract onMirrorRequestReconnect()V
.end method

.method public abstract onMirrorVideoInfoChanged(III)V
.end method

.method public abstract onMirrorVideoReceived([BIILnet/easyconn/ecsdk/ECTypes$ECVideoInfo;)V
.end method

.method public abstract onOTAUpdateCheckResult([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
.end method

.method public abstract onOTAUpdateCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onOTAUpdateError(ILjava/lang/String;)V
.end method

.method public abstract onOTAUpdateProgress(Ljava/lang/String;FII)V
.end method

.method public abstract onOTAUpdateRequestDownload([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
.end method

.method public abstract onPageIconReceived([Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;)V
.end method

.method public abstract onPageInstallResult([Lnet/easyconn/ecsdk/ECTypes$ECPageInstallResult;)V
.end method

.method public abstract onPageListReceived([Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;)V
.end method

.method public abstract onPageStatusChanged(III)V
.end method

.method public abstract onParallelWorldAudioSource(I)V
.end method

.method public abstract onParallelWorldCache(Lnet/easyconn/ecsdk/ECTypes$ECParallelWorldCache;)V
.end method

.method public abstract onPhoneAppExited()V
.end method

.method public abstract onPhoneAppHUD(Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;)V
.end method

.method public abstract onPhoneAppHUDLaneGuidancePicture(Lnet/easyconn/ecsdk/ECTypes$ECHudLaneGuidancePictureInfo;)V
.end method

.method public abstract onPhoneAppHUDRoadJunctionPicture(Lnet/easyconn/ecsdk/ECTypes$ECHudRoadJunctionPictureInfo;)V
.end method

.method public abstract onPhoneAppInfo(Ljava/lang/String;)V
.end method

.method public abstract onPhoneAppMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V
.end method

.method public abstract onPhoneAppMusicInfoCover(Lnet/easyconn/ecsdk/ECTypes$ECMusicInfoCover;)V
.end method

.method public abstract onPhoneAudioData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V
.end method

.method public abstract onPhoneAudioInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method

.method public abstract onPhoneAudioSetVolume(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V
.end method

.method public abstract onPhoneAudioStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
.end method

.method public abstract onPhoneAudioStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method

.method public abstract onPhoneBluetoothState(ILjava/lang/String;)V
.end method

.method public abstract onPhoneConnected(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
.end method

.method public abstract onPhoneControlCarRequest(Ljava/lang/String;)V
.end method

.method public abstract onPhoneDisconnected(I)V
.end method

.method public abstract onPhoneNotification(Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;)V
.end method

.method public abstract onStartCarMicRecord(Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)I
.end method

.method public abstract onStopCarMicRecord()V
.end method

.method public abstract onTransportStopedByApp()V
.end method

.method public abstract onVRTextReceived(Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;)V
.end method

.method public abstract onVRTipsReceived(Ljava/lang/String;)V
.end method

.method public abstract onVirtualInstStateChanged(Lnet/easyconn/ecsdk/ECTypes$ECVirtualInstStateData;)V
.end method

.method public abstract onWeatherReceived(Ljava/lang/String;)V
.end method
