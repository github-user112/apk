.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECAudioType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECAudioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECAudioType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

.field public static final enum EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

.field public static final enum EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

.field public static final enum EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

.field public static final enum EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v1, "EC_AUDIO_TYPE_TTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v4, "EC_AUDIO_TYPE_VR"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v6, "EC_AUDIO_TYPE_TALKIE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v8, "EC_AUDIO_TYPE_MUSIC"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-array v8, v9, [Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECAudioType;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECAudioType;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->value:I

    return v0
.end method
