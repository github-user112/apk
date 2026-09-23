.class public Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EBTRequestBuildNetRly"
.end annotation


# static fields
.field public static final EBT_BUILD_NET_AUTH_FAIL:I = -0x2

.field public static final EBT_BUILD_NET_AUTH_PENDING:I = -0x1

.field public static final EBT_BUILD_NET_NEED_PHONE_BUILD:I = 0x1

.field public static final EBT_BUILD_NET_SUCCEED:I = 0x0

.field public static final EBT_BUILD_NET_USE_PHONE_AP:I = 0x2


# instance fields
.field public netInfo:Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;

.field public phoneApFrequency:I

.field public status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->status:I

    new-instance p1, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;

    invoke-direct {p1}, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->netInfo:Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->phoneApFrequency:I

    return-void
.end method

.method public constructor <init>(ILnet/easyconn/ecsdk/ECTypes$EBTNetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->status:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->netInfo:Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->phoneApFrequency:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "status = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
