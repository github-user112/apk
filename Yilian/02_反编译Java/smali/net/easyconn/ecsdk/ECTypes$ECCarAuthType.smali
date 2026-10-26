.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECCarAuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

.field public static final enum EC_CAR_AUTH_TYPE_CAR_LOCAL_NETWORK:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

.field public static final enum EC_CAR_AUTH_TYPE_PXC:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    const-string v1, "EC_CAR_AUTH_TYPE_PXC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->EC_CAR_AUTH_TYPE_PXC:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    const-string v3, "EC_CAR_AUTH_TYPE_CAR_LOCAL_NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->EC_CAR_AUTH_TYPE_CAR_LOCAL_NETWORK:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->value:I

    return v0
.end method
