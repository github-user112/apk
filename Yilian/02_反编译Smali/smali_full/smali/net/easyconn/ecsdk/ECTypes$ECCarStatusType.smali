.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECCarStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_DRIVINGMODE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_IS_AUTO_START_EASYCONN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_MIC_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_REVERSING:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

.field public static final enum EC_CAR_RUN_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v1, "EC_CAR_REVERSING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_REVERSING:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v4, "EC_CAR_BLUETOOTH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v6, "EC_CAR_DRIVINGMODE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_DRIVINGMODE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v8, "EC_CAR_AUDIO_FOCUS_CHANGE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v10, "EC_CAR_IS_AUTO_START_EASYCONN"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_IS_AUTO_START_EASYCONN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-instance v10, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v12, "EC_CAR_MIC_STATUS"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_MIC_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-instance v12, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    const-string v14, "EC_CAR_RUN_STATUS"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_RUN_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    new-array v14, v15, [Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->value:I

    return v0
.end method
