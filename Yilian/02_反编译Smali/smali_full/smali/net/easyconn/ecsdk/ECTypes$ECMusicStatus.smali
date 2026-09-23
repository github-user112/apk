.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECMusicStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

.field public static final enum EC_MUSIC_STATUS_PAUSED:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

.field public static final enum EC_MUSIC_STATUS_PENDING:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

.field public static final enum EC_MUSIC_STATUS_PLAYING:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

.field public static final enum EC_MUSIC_STATUS_PLAYING_BY_SPEECH:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

.field public static final enum EC_MUSIC_STATUS_STOPPED:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    const-string v1, "EC_MUSIC_STATUS_PLAYING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->EC_MUSIC_STATUS_PLAYING:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    const-string v4, "EC_MUSIC_STATUS_PAUSED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->EC_MUSIC_STATUS_PAUSED:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    const-string v6, "EC_MUSIC_STATUS_STOPPED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->EC_MUSIC_STATUS_STOPPED:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    const-string v8, "EC_MUSIC_STATUS_PENDING"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->EC_MUSIC_STATUS_PENDING:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    const-string v10, "EC_MUSIC_STATUS_PLAYING_BY_SPEECH"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->EC_MUSIC_STATUS_PLAYING_BY_SPEECH:Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    new-array v10, v11, [Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMusicStatus;->value:I

    return v0
.end method
