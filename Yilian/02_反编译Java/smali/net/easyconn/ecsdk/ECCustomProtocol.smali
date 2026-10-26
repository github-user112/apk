.class public abstract Lnet/easyconn/ecsdk/ECCustomProtocol;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;,
        Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;,
        Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract registerCustomDataReceiver(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;)I
.end method

.method public abstract replyCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;I)I
.end method

.method public abstract sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)I
.end method

.method public abstract sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;ILnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataResponse;)I
.end method
