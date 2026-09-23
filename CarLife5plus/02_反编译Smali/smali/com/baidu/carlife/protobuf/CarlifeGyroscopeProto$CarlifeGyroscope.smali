.class public final Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscopeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeGyroscope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscopeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

.field public static final GYROTYPE_FIELD_NUMBER:I = 0x1

.field public static final GYROX_FIELD_NUMBER:I = 0x2

.field public static final GYROY_FIELD_NUMBER:I = 0x3

.field public static final GYROZ_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private gyroType_:I

.field private gyroX_:D

.field private gyroZ_:D

.field private gyroy_:D

.field private memoizedIsInitialized:B

.field private timeStamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->makeImmutable()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearTimeStamp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroX(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroy(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setGyroZ(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->clearGyroZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->setTimeStamp(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearGyroType()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearGyroX()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearGyroZ()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearGyroy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->getParserForType()Lcom/google/protobuf/v0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setGyroType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 8
    .line 9
    return-void
.end method

.method private setGyroX(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 8
    .line 9
    return-void
.end method

.method private setGyroZ(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 8
    .line 9
    return-void
.end method

.method private setGyroy(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 8
    .line 9
    return-void
.end method

.method private setTimeStamp(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Lcom/google/protobuf/v0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p2, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p1

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p2

    .line 45
    :cond_1
    :goto_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->PARSER:Lcom/google/protobuf/v0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;

    .line 49
    .line 50
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$1;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3
    return-object v2

    .line 61
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 62
    .line 63
    check-cast p3, Lcom/google/protobuf/r;

    .line 64
    .line 65
    :cond_2
    :goto_3
    if-nez v1, :cond_9

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const/16 p3, 0x8

    .line 74
    .line 75
    if-eq p1, p3, :cond_8

    .line 76
    .line 77
    const/16 v2, 0x11

    .line 78
    .line 79
    if-eq p1, v2, :cond_7

    .line 80
    .line 81
    const/16 v2, 0x19

    .line 82
    .line 83
    if-eq p1, v2, :cond_6

    .line 84
    .line 85
    const/16 v2, 0x21

    .line 86
    .line 87
    if-eq p1, v2, :cond_5

    .line 88
    .line 89
    const/16 p3, 0x28

    .line 90
    .line 91
    if-eq p1, p3, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    :cond_3
    const/4 v1, 0x1

    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object p1, v0

    .line 103
    goto :goto_4

    .line 104
    :catch_0
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    goto :goto_5

    .line 107
    :catch_1
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    goto :goto_6

    .line 110
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 111
    .line 112
    or-int/lit8 p1, p1, 0x10

    .line 113
    .line 114
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/google/protobuf/j;->p()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 124
    .line 125
    or-int/2addr p1, p3

    .line 126
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/google/protobuf/j;->h()D

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 136
    .line 137
    or-int/lit8 p1, p1, 0x4

    .line 138
    .line 139
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/google/protobuf/j;->h()D

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 149
    .line 150
    or-int/lit8 p1, p1, 0x2

    .line 151
    .line 152
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/google/protobuf/j;->h()D

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 162
    .line 163
    or-int/2addr p1, v0

    .line 164
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :goto_4
    throw p1

    .line 174
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 175
    .line 176
    new-instance p3, Lcom/google/protobuf/o0;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw p2

    .line 189
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 190
    .line 191
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw p2

    .line 195
    :cond_9
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 196
    .line 197
    return-object p1

    .line 198
    :pswitch_6
    move-object v0, p2

    .line 199
    check-cast v0, Lcom/google/protobuf/c0;

    .line 200
    .line 201
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 208
    .line 209
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 214
    .line 215
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 226
    .line 227
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 232
    .line 233
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->j(ZDZD)D

    .line 234
    .line 235
    .line 236
    move-result-wide p1

    .line 237
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 244
    .line 245
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 250
    .line 251
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->j(ZDZD)D

    .line 252
    .line 253
    .line 254
    move-result-wide p1

    .line 255
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 262
    .line 263
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 268
    .line 269
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->j(ZDZD)D

    .line 270
    .line 271
    .line 272
    move-result-wide p1

    .line 273
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasTimeStamp()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 280
    .line 281
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasTimeStamp()Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 286
    .line 287
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->i(ZJZJ)J

    .line 288
    .line 289
    .line 290
    move-result-wide p1

    .line 291
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 292
    .line 293
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 294
    .line 295
    if-ne v0, p1, :cond_a

    .line 296
    .line 297
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 298
    .line 299
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 300
    .line 301
    or-int/2addr p1, p2

    .line 302
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 303
    .line 304
    :cond_a
    return-object p0

    .line 305
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 306
    .line 307
    if-ne p1, v0, :cond_b

    .line 308
    .line 309
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 310
    .line 311
    return-object p1

    .line 312
    :cond_b
    if-nez p1, :cond_c

    .line 313
    .line 314
    return-object v2

    .line 315
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroType()Z

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-nez p2, :cond_e

    .line 326
    .line 327
    if-eqz p1, :cond_d

    .line 328
    .line 329
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 330
    .line 331
    :cond_d
    return-object v2

    .line 332
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroX()Z

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    if-nez p2, :cond_10

    .line 337
    .line 338
    if-eqz p1, :cond_f

    .line 339
    .line 340
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 341
    .line 342
    :cond_f
    return-object v2

    .line 343
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroy()Z

    .line 344
    .line 345
    .line 346
    move-result p2

    .line 347
    if-nez p2, :cond_12

    .line 348
    .line 349
    if-eqz p1, :cond_11

    .line 350
    .line 351
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 352
    .line 353
    :cond_11
    return-object v2

    .line 354
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->hasGyroZ()Z

    .line 355
    .line 356
    .line 357
    move-result p2

    .line 358
    if-nez p2, :cond_14

    .line 359
    .line 360
    if-eqz p1, :cond_13

    .line 361
    .line 362
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 363
    .line 364
    :cond_13
    return-object v2

    .line 365
    :cond_14
    if-eqz p1, :cond_15

    .line 366
    .line 367
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->memoizedIsInitialized:B

    .line 368
    .line 369
    :cond_15
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;

    .line 370
    .line 371
    return-object p1

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public getGyroType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getGyroX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGyroZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGyroy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->k(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/protobuf/n;->j(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    and-int/2addr v1, v2

    .line 36
    if-ne v1, v2, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v1}, Lcom/google/protobuf/n;->j(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    and-int/2addr v1, v3

    .line 49
    if-ne v1, v3, :cond_4

    .line 50
    .line 51
    invoke-static {v2}, Lcom/google/protobuf/n;->j(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 57
    .line 58
    const/16 v2, 0x10

    .line 59
    .line 60
    and-int/2addr v1, v2

    .line 61
    if-ne v1, v2, :cond_5

    .line 62
    .line 63
    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 64
    .line 65
    const/4 v3, 0x5

    .line 66
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->q(J)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v3

    .line 75
    add-int/2addr v0, v1

    .line 76
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v1, v0

    .line 83
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 84
    .line 85
    return v1
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasGyroType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public hasGyroX()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasGyroZ()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasGyroy()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasTimeStamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroType_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroX_:D

    .line 19
    .line 20
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/protobuf/n;->u(DI)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroy_:D

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3, v0}, Lcom/google/protobuf/n;->u(DI)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    and-int/2addr v0, v2

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->gyroZ_:D

    .line 43
    .line 44
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/protobuf/n;->u(DI)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->bitField0_:I

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    and-int/2addr v0, v1

    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeGyroscopeProto$CarlifeGyroscope;->timeStamp_:J

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/n;->E(IJ)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
