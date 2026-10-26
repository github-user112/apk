.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECSensorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECSensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECSensorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_ACCLEROMETER_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_COMPASS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_DOOR_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_DRIVING_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_ENV_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_FUEL:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_GEAR:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_GPS_SATELLITE_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_GYROSCOPE_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_LIGHT_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_LOCATION:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_MAX:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_NIGHT_MODE:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_ODOMETER:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_PARKING_BRAKE:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_PASSENGER_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_RPM:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_SPEED:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

.field public static final enum EC_SENSOR_TIRE_PRESSURE_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v1, "EC_SENSOR_LOCATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_LOCATION:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v4, "EC_SENSOR_COMPASS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_COMPASS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v6, "EC_SENSOR_SPEED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_SPEED:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v8, "EC_SENSOR_RPM"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_RPM:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v10, "EC_SENSOR_ODOMETER"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_ODOMETER:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v10, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v12, "EC_SENSOR_FUEL"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_FUEL:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v12, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v14, "EC_SENSOR_PARKING_BRAKE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_PARKING_BRAKE:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v14, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v13, "EC_SENSOR_GEAR"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_GEAR:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v13, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v15, "EC_SENSOR_NIGHT_MODE"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_NIGHT_MODE:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v15, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v11, "EC_SENSOR_ENV_STATUS"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_ENV_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v11, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v9, "EC_SENSOR_DRIVING_STATUS"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_DRIVING_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v9, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v7, "EC_SENSOR_PASSENGER_STATUS"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_PASSENGER_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v5, "EC_SENSOR_DOOR_STATUS"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_DOOR_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v3, "EC_SENSOR_LIGHT_STATUS"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_LIGHT_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v2, "EC_SENSOR_TIRE_PRESSURE_STATUS"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_TIRE_PRESSURE_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v7, "EC_SENSOR_ACCLEROMETER_STATUS"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_ACCLEROMETER_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v5, "EC_SENSOR_GYROSCOPE_STATUS"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_GYROSCOPE_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v3, "EC_SENSOR_GPS_SATELLITE_STATUS"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_GPS_SATELLITE_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const-string v2, "EC_SENSOR_MAX"

    move-object/from16 v21, v5

    const/16 v5, 0x13

    invoke-direct {v3, v2, v7, v5}, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->EC_SENSOR_MAX:Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    new-array v2, v5, [Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    aput-object v3, v2, v7

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECSensorType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECSensorType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECSensorType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECSensorType;->value:I

    return v0
.end method
