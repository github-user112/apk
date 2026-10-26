.class public interface abstract Lnet/easyconn/ecsdk/IECHIDDevice;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EC_BLEHID_TYPE_AOA:I = 0x0

.field public static final EC_BLEHID_TYPE_BLE:I = 0x1


# virtual methods
.method public abstract register(II)Z
.end method

.method public abstract sendHIDDescriptor(I[BI)Z
.end method

.method public abstract sendHIDEvent(I[BI)Z
.end method

.method public abstract unRegister(I)Z
.end method
