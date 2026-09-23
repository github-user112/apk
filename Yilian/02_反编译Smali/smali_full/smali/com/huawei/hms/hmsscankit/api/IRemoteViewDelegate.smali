.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Default;
    }
.end annotation


# virtual methods
.method public abstract decodeWithBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
.end method

.method public abstract getLightStatus()Z
.end method

.method public abstract getView()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract pauseContinuouslyScan()V
.end method

.method public abstract resumeContinuouslyScan()V
.end method

.method public abstract setOnClickListener(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
.end method

.method public abstract setOnErrorCallback(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V
.end method

.method public abstract setOnLightVisbleCallBack(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V
.end method

.method public abstract setOnResultCallback(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V
.end method

.method public abstract turnOffLight()V
.end method

.method public abstract turnOnLight()V
.end method
