.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECCarStatusValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_CLOSED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_CONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_CONNECTED_SAME:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_FADEDOWN_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_FALSE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_LONG_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_LONG_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_MIC_CLOSED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_MIC_OPEN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_RUN_BACKGROUND:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_RUN_FOREGROUND:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_SHORT_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_SHORT_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_STARTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_STOPPED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_TRUE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

.field public static final enum EC_CAR_STATUS_UNCONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v1, "EC_CAR_STATUS_FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_FALSE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v3, "EC_CAR_STATUS_TRUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_TRUE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v5, "EC_CAR_STATUS_STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_STARTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v7, "EC_CAR_STATUS_STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_STOPPED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v9, "EC_CAR_STATUS_CLOSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_CLOSED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v9, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v11, "EC_CAR_STATUS_UNCONNECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_UNCONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v11, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v13, "EC_CAR_STATUS_CONNECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_CONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v13, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v15, "EC_CAR_STATUS_CONNECTED_SAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_CONNECTED_SAME:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v15, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v14, "EC_CAR_STATUS_LONG_FUCUS_GAIN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_LONG_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v14, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v12, "EC_CAR_STATUS_LONG_FUCUS_LOSS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_LONG_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v12, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v10, "EC_CAR_STATUS_SHORT_FUCUS_GAIN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_SHORT_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v10, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v8, "EC_CAR_STATUS_SHORT_FUCUS_LOSS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_SHORT_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v6, "EC_CAR_STATUS_FADEDOWN_FUCUS_GAIN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_FADEDOWN_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v4, "EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v2, "EC_CAR_STATUS_MIC_OPEN"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_MIC_OPEN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v6, "EC_CAR_STATUS_MIC_CLOSED"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_MIC_CLOSED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v4, "EC_CAR_STATUS_RUN_FOREGROUND"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_RUN_FOREGROUND:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const-string v2, "EC_CAR_STATUS_RUN_BACKGROUND"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_RUN_BACKGROUND:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const/16 v2, 0x12

    new-array v2, v2, [Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->value:I

    return v0
.end method
