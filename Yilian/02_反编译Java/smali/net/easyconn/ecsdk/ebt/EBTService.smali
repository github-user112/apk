.class public abstract Lnet/easyconn/ecsdk/ebt/EBTService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ecsdk:ebtservice"


# instance fields
.field public mCallBack:Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;

.field public final mContext:Landroid/content/Context;

.field public mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mCallBack:Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_MAX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public native native_bindTransport(Lnet/easyconn/ecsdk/ebt/IEBTRfCommHandle;)I
.end method

.method public native native_registerCallBack(Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;)I
.end method

.method public native native_setBTBuildNetCarIp(Ljava/lang/String;)I
.end method

.method public native native_setRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I
.end method

.method public setBTBuildNetCarIp(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/easyconn/ecsdk/ebt/EBTService;->native_setBTBuildNetCarIp(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/easyconn/ecsdk/ebt/EBTService;->native_setRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "ecsdk:ebtservice"

    const-string p2, "setRequestBuildNetRly failed, param is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1
.end method

.method public startService(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public stopService()V
    .locals 0

    return-void
.end method
