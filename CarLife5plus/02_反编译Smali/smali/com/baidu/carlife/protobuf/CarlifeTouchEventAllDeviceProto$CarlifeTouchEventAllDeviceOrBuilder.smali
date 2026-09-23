.class public interface abstract Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDeviceOrBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarlifeTouchEventAllDeviceOrBuilder"
.end annotation


# virtual methods
.method public abstract getCnt()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/s0;
.end method

.method public abstract getDevices(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
.end method

.method public abstract getDevicesCount()I
.end method

.method public abstract getDevicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasCnt()Z
.end method

.method public abstract hasVersion()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
