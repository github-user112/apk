.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECDrivingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

.field public static final enum EC_DRIVING_FREE:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

.field public static final enum EC_DRIVING_NO_CONFIG:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

.field public static final enum EC_DRIVING_NO_KEYBOARD_INPUT:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

.field public static final enum EC_DRIVING_NO_VIDEO:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

.field public static final enum EC_DRIVING_NO_VOICE_INPUT:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    const-string v1, "EC_DRIVING_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->EC_DRIVING_FREE:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    const-string v3, "EC_DRIVING_NO_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->EC_DRIVING_NO_VIDEO:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    const-string v5, "EC_DRIVING_NO_KEYBOARD_INPUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->EC_DRIVING_NO_KEYBOARD_INPUT:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    const-string v7, "EC_DRIVING_NO_VOICE_INPUT"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->EC_DRIVING_NO_VOICE_INPUT:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    const-string v10, "EC_DRIVING_NO_CONFIG"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->EC_DRIVING_NO_CONFIG:Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    const/4 v10, 0x5

    new-array v10, v10, [Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v7, v10, v9

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECDrivingStatus;->value:I

    return v0
.end method
