.class public interface abstract Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate$Stub;,
        Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate$Default;
    }
.end annotation


# virtual methods
.method public abstract buildBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
.end method

.method public abstract buildBitmapLog(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
.end method

.method public abstract decodeWithBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
.end method

.method public abstract queryDeepLinkInfo(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
.end method
