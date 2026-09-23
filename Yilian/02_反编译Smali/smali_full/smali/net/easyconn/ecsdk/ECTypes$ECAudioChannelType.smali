.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECAudioChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

.field public static final enum EC_ADUIO_CHANNEL_STEREO:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

.field public static final enum EC_AUDIO_CHANNEL_MONO:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    const-string v1, "EC_AUDIO_CHANNEL_MONO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->EC_AUDIO_CHANNEL_MONO:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    const-string v4, "EC_ADUIO_CHANNEL_STEREO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->EC_ADUIO_CHANNEL_STEREO:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    new-array v4, v5, [Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;->value:I

    return v0
.end method
