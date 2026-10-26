.class public Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECCarDescription"
.end annotation


# instance fields
.field public btAddress:Ljava/lang/String;

.field public btName:Ljava/lang/String;

.field public btPin:Ljava/lang/String;

.field public carBrand:Ljava/lang/String;

.field public carConfig:Ljava/lang/String;

.field public carModel:Ljava/lang/String;

.field public dpi:I

.field public enableDpi:Z

.field public mediaLevel:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

.field public mediaModel:Ljava/lang/String;

.field public mediaOS:Ljava/lang/String;

.field public micSupportFeature:I

.field public micType:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

.field public productType:I

.field public screenType:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

.field public supportBTCall:Z

.field public supportBTSetting:Z

.field public supportConnect:I

.field public supportFunction:I

.field public wakeupWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;->EC_DVD_LEVEL_LOW:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaLevel:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->micType:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaOS:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaModel:Ljava/lang/String;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECScreenType;->EC_CAR_SCREEN_HORIZONTAL:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    iput-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->screenType:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carBrand:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carModel:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carConfig:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportBTCall:Z

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportBTSetting:Z

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->btName:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->btAddress:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->btPin:Ljava/lang/String;

    const/16 v2, 0xa0

    iput v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->dpi:I

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->enableDpi:Z

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportConnect:I

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportFunction:I

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->micSupportFeature:I

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->productType:I

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->wakeupWord:Ljava/lang/String;

    return-void
.end method
