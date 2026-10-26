.class public Lnet/easyconn/ecsdk/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IECHIDDevice;


# instance fields
.field public a:Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/b;->a:Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;

    return-void
.end method


# virtual methods
.method public register(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public sendHIDDescriptor(I[BI)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public sendHIDEvent(I[BI)Z
    .locals 6

    const/4 p1, 0x1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-static {p2}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result p2

    iget-object p3, p0, Lnet/easyconn/ecsdk/b;->a:Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;

    invoke-interface {p3, p2}, Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;->onKeyCodeData(I)V

    return p1

    :cond_0
    const/4 p3, 0x2

    invoke-static {p2, p3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {p2, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p2, p1, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

    invoke-static {v3}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result v3

    invoke-static {v2}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v5}, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;-><init>(III)V

    invoke-static {v1}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result v2

    and-int/2addr v2, v0

    if-lez v2, :cond_1

    invoke-static {v1}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result v1

    sub-int/2addr v1, v0

    shr-int/lit8 p3, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result v0

    shr-int/lit8 p3, v0, 0x2

    :goto_0
    iput p3, v4, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->slot:I

    invoke-static {}, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;->values()[Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    move-result-object p3

    invoke-static {p2}, Lnet/easyconn/ecsdk/ECSDKTool;->byteToInt([B)I

    move-result p2

    aget-object p2, p3, p2

    iget-object p3, p0, Lnet/easyconn/ecsdk/b;->a:Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;

    invoke-interface {p3, v4, p2}, Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;->onTouchEventData(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)V

    return p1
.end method

.method public unRegister(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
