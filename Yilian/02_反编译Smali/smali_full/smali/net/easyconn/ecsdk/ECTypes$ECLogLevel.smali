.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_ALL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_DEBUG:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_ERROR:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_FATAL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_INFO:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_OFF:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

.field public static final enum EC_LOG_LEVEL_WARN:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v1, "EC_LOG_LEVEL_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_ALL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v3, "EC_LOG_LEVEL_DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_DEBUG:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v5, "EC_LOG_LEVEL_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_INFO:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v7, "EC_LOG_LEVEL_WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_WARN:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v9, "EC_LOG_LEVEL_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_ERROR:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    new-instance v9, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v11, "EC_LOG_LEVEL_FATAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_FATAL:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    new-instance v11, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const-string v13, "EC_LOG_LEVEL_OFF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->EC_LOG_LEVEL_OFF:Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    const/4 v13, 0x7

    new-array v13, v13, [Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECLogLevel;->value:I

    return v0
.end method
