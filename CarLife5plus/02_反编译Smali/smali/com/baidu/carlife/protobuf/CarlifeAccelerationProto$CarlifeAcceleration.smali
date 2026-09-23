.class public final Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAccelerationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeAcceleration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAccelerationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCX_FIELD_NUMBER:I = 0x1

.field public static final ACCY_FIELD_NUMBER:I = 0x2

.field public static final ACCZ_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4


# instance fields
.field private accX_:D

.field private accY_:D

.field private accZ_:D

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private timeStamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->setAccX(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->clearAccX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->setAccY(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->clearAccY()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->setAccZ(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->clearAccZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->setTimeStamp(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->clearTimeStamp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAccX()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearAccY()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearAccZ()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 10
    .line 11
    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

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

.method private setAccX(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 8
    .line 9
    return-void
.end method

.method private setAccY(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 8
    .line 9
    return-void
.end method

.method private setAccZ(D)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 8
    .line 9
    return-void
.end method

.method private setTimeStamp(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

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
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->PARSER:Lcom/google/protobuf/v0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;

    .line 49
    .line 50
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$1;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;-><init>()V

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
    if-nez v0, :cond_8

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
    const/16 p3, 0x9

    .line 74
    .line 75
    if-eq p1, p3, :cond_7

    .line 76
    .line 77
    const/16 p3, 0x11

    .line 78
    .line 79
    if-eq p1, p3, :cond_6

    .line 80
    .line 81
    const/16 p3, 0x19

    .line 82
    .line 83
    if-eq p1, p3, :cond_5

    .line 84
    .line 85
    const/16 p3, 0x20

    .line 86
    .line 87
    if-eq p1, p3, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    :cond_3
    const/4 v0, 0x1

    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    move-object p1, v0

    .line 99
    goto :goto_4

    .line 100
    :catch_0
    move-exception v0

    .line 101
    move-object p1, v0

    .line 102
    goto :goto_5

    .line 103
    :catch_1
    move-exception v0

    .line 104
    move-object p1, v0

    .line 105
    goto :goto_6

    .line 106
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 107
    .line 108
    or-int/lit8 p1, p1, 0x8

    .line 109
    .line 110
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/google/protobuf/j;->p()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 120
    .line 121
    or-int/lit8 p1, p1, 0x4

    .line 122
    .line 123
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/google/protobuf/j;->h()D

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 133
    .line 134
    or-int/lit8 p1, p1, 0x2

    .line 135
    .line 136
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/google/protobuf/j;->h()D

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 146
    .line 147
    or-int/2addr p1, v1

    .line 148
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/google/protobuf/j;->h()D

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_4
    throw p1

    .line 158
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 159
    .line 160
    new-instance p3, Lcom/google/protobuf/o0;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw p2

    .line 173
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 174
    .line 175
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw p2

    .line 179
    :cond_8
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 180
    .line 181
    return-object p1

    .line 182
    :pswitch_6
    move-object v0, p2

    .line 183
    check-cast v0, Lcom/google/protobuf/c0;

    .line 184
    .line 185
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccX()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 192
    .line 193
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccX()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 198
    .line 199
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->j(ZDZD)D

    .line 200
    .line 201
    .line 202
    move-result-wide p1

    .line 203
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccY()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 210
    .line 211
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccY()Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 216
    .line 217
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->j(ZDZD)D

    .line 218
    .line 219
    .line 220
    move-result-wide p1

    .line 221
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccZ()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 228
    .line 229
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccZ()Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 234
    .line 235
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->j(ZDZD)D

    .line 236
    .line 237
    .line 238
    move-result-wide p1

    .line 239
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasTimeStamp()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 246
    .line 247
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasTimeStamp()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 252
    .line 253
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->i(ZJZJ)J

    .line 254
    .line 255
    .line 256
    move-result-wide p1

    .line 257
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 258
    .line 259
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 260
    .line 261
    if-ne v0, p1, :cond_9

    .line 262
    .line 263
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 264
    .line 265
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 266
    .line 267
    or-int/2addr p1, p2

    .line 268
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 269
    .line 270
    :cond_9
    return-object p0

    .line 271
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->memoizedIsInitialized:B

    .line 272
    .line 273
    if-ne p1, v1, :cond_a

    .line 274
    .line 275
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 276
    .line 277
    return-object p1

    .line 278
    :cond_a
    if-nez p1, :cond_b

    .line 279
    .line 280
    return-object v2

    .line 281
    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccX()Z

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    if-nez p2, :cond_d

    .line 292
    .line 293
    if-eqz p1, :cond_c

    .line 294
    .line 295
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->memoizedIsInitialized:B

    .line 296
    .line 297
    :cond_c
    return-object v2

    .line 298
    :cond_d
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccY()Z

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    if-nez p2, :cond_f

    .line 303
    .line 304
    if-eqz p1, :cond_e

    .line 305
    .line 306
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->memoizedIsInitialized:B

    .line 307
    .line 308
    :cond_e
    return-object v2

    .line 309
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccZ()Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-nez p2, :cond_11

    .line 314
    .line 315
    if-eqz p1, :cond_10

    .line 316
    .line 317
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->memoizedIsInitialized:B

    .line 318
    .line 319
    :cond_10
    return-object v2

    .line 320
    :cond_11
    if-eqz p1, :cond_12

    .line 321
    .line 322
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->memoizedIsInitialized:B

    .line 323
    .line 324
    :cond_12
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 325
    .line 326
    return-object p1

    .line 327
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

.method public getAccX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAccY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAccZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/protobuf/n;->j(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    and-int/2addr v1, v2

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/protobuf/n;->j(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    and-int/2addr v1, v2

    .line 34
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-static {v1}, Lcom/google/protobuf/n;->j(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 43
    .line 44
    const/16 v3, 0x8

    .line 45
    .line 46
    and-int/2addr v1, v3

    .line 47
    if-ne v1, v3, :cond_4

    .line 48
    .line 49
    iget-wide v3, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 50
    .line 51
    invoke-static {v2}, Lcom/google/protobuf/n;->n(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v3, v4}, Lcom/google/protobuf/n;->q(J)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/2addr v2, v1

    .line 60
    add-int/2addr v0, v2

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v1, v0

    .line 68
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 69
    .line 70
    return v1
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasAccX()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

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

.method public hasAccY()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

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

.method public hasAccZ()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accX_:D

    .line 8
    .line 9
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/protobuf/n;->u(DI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accY_:D

    .line 19
    .line 20
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/protobuf/n;->u(DI)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

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
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->accZ_:D

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3, v0}, Lcom/google/protobuf/n;->u(DI)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->bitField0_:I

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
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->timeStamp_:J

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/n;->E(IJ)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
