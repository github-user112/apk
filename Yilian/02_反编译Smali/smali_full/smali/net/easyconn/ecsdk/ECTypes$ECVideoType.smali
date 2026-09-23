.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECVideoType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECVideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECVideoType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

.field public static final enum EC_VIDEO_TYPE_H264:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

.field public static final enum EC_VIDEO_TYPE_JPEG:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

.field public static final enum EC_VIDEO_TYPE_MAX:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

.field public static final enum EC_VIDEO_TYPE_MPEG4:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    const-string v1, "EC_VIDEO_TYPE_H264"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_H264:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    const-string v3, "EC_VIDEO_TYPE_MPEG4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_MPEG4:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    const-string v5, "EC_VIDEO_TYPE_JPEG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_JPEG:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    const-string v7, "EC_VIDEO_TYPE_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_MAX:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECVideoType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECVideoType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->value:I

    return v0
.end method
