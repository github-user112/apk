.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECMicType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECMicType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECMicType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECMicType;

.field public static final enum EC_MIC_TYPE_NATIVE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

.field public static final enum EC_MIC_TYPE_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

.field public static final enum EC_MIC_TYPE_UNSUPPORT:Lnet/easyconn/ecsdk/ECTypes$ECMicType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    const-string v1, "EC_MIC_TYPE_NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECMicType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_NATIVE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    const-string v3, "EC_MIC_TYPE_PHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECMicType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    const-string v5, "EC_MIC_TYPE_UNSUPPORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECMicType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_UNSUPPORT:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECMicType;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECMicType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECMicType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECMicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->value:I

    return v0
.end method
