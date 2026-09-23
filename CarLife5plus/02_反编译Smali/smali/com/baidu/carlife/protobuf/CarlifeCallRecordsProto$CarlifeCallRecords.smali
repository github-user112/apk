.class public final Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecordsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeCallRecords"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;,
        Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecordsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

.field public static final DURATION_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private cid_:I

.field private duration_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private number_:Ljava/lang/String;

.field private time_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setCid(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearDuration()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setDurationBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setTime(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearTime()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setTimeBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setType(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearCid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setNameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setNumber(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->clearNumber()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setNumberBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->setDuration(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearCid()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearDuration()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearTime()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

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

.method private setCid(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 8
    .line 9
    return-void
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setDurationBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setNumberBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setTime(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setTimeBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setType(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Lcom/google/protobuf/v0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit p1

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p2

    .line 44
    :cond_1
    :goto_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    return-object v2

    .line 60
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 61
    .line 62
    check-cast p3, Lcom/google/protobuf/r;

    .line 63
    .line 64
    :cond_2
    :goto_3
    if-nez v1, :cond_b

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/16 p3, 0x8

    .line 73
    .line 74
    if-eq p1, p3, :cond_a

    .line 75
    .line 76
    const/16 v2, 0x12

    .line 77
    .line 78
    if-eq p1, v2, :cond_9

    .line 79
    .line 80
    const/16 v2, 0x1a

    .line 81
    .line 82
    if-eq p1, v2, :cond_8

    .line 83
    .line 84
    const/16 v2, 0x22

    .line 85
    .line 86
    if-eq p1, v2, :cond_7

    .line 87
    .line 88
    const/16 p3, 0x2a

    .line 89
    .line 90
    if-eq p1, p3, :cond_6

    .line 91
    .line 92
    const/16 p3, 0x30

    .line 93
    .line 94
    if-eq p1, p3, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    :cond_3
    const/4 v1, 0x1

    .line 103
    goto :goto_3

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    goto :goto_4

    .line 106
    :catch_0
    move-exception p1

    .line 107
    goto :goto_5

    .line 108
    :catch_1
    move-exception p1

    .line 109
    goto :goto_6

    .line 110
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-nez p3, :cond_5

    .line 119
    .line 120
    const/4 p3, 0x6

    .line 121
    invoke-super {p0, p3, p1}, Lcom/google/protobuf/d0;->mergeVarintField(II)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 126
    .line 127
    or-int/lit8 p3, p3, 0x20

    .line 128
    .line 129
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 130
    .line 131
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 139
    .line 140
    or-int/lit8 p3, p3, 0x10

    .line 141
    .line 142
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 143
    .line 144
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 152
    .line 153
    or-int/2addr p3, v2

    .line 154
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 155
    .line 156
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 164
    .line 165
    or-int/lit8 p3, p3, 0x4

    .line 166
    .line 167
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 168
    .line 169
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 177
    .line 178
    or-int/lit8 p3, p3, 0x2

    .line 179
    .line 180
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 181
    .line 182
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 186
    .line 187
    or-int/2addr p1, v0

    .line 188
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :goto_4
    throw p1

    .line 199
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 200
    .line 201
    new-instance p3, Lcom/google/protobuf/o0;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    throw p2

    .line 214
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 215
    .line 216
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw p2

    .line 220
    :cond_b
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 221
    .line 222
    return-object p1

    .line 223
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 224
    .line 225
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 232
    .line 233
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 238
    .line 239
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 256
    .line 257
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 274
    .line 275
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 292
    .line 293
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 310
    .line 311
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 322
    .line 323
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 328
    .line 329
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 334
    .line 335
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 336
    .line 337
    if-ne p2, p1, :cond_c

    .line 338
    .line 339
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 340
    .line 341
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 342
    .line 343
    or-int/2addr p1, p2

    .line 344
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 345
    .line 346
    :cond_c
    return-object p0

    .line 347
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 348
    .line 349
    if-ne p1, v0, :cond_d

    .line 350
    .line 351
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 352
    .line 353
    return-object p1

    .line 354
    :cond_d
    if-nez p1, :cond_e

    .line 355
    .line 356
    return-object v2

    .line 357
    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    .line 358
    .line 359
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasCid()Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-nez p2, :cond_10

    .line 368
    .line 369
    if-eqz p1, :cond_f

    .line 370
    .line 371
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 372
    .line 373
    :cond_f
    return-object v2

    .line 374
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasName()Z

    .line 375
    .line 376
    .line 377
    move-result p2

    .line 378
    if-nez p2, :cond_12

    .line 379
    .line 380
    if-eqz p1, :cond_11

    .line 381
    .line 382
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 383
    .line 384
    :cond_11
    return-object v2

    .line 385
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasNumber()Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-nez p2, :cond_14

    .line 390
    .line 391
    if-eqz p1, :cond_13

    .line 392
    .line 393
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 394
    .line 395
    :cond_13
    return-object v2

    .line 396
    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasDuration()Z

    .line 397
    .line 398
    .line 399
    move-result p2

    .line 400
    if-nez p2, :cond_16

    .line 401
    .line 402
    if-eqz p1, :cond_15

    .line 403
    .line 404
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 405
    .line 406
    :cond_15
    return-object v2

    .line 407
    :cond_16
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasTime()Z

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    if-nez p2, :cond_18

    .line 412
    .line 413
    if-eqz p1, :cond_17

    .line 414
    .line 415
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 416
    .line 417
    :cond_17
    return-object v2

    .line 418
    :cond_18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->hasType()Z

    .line 419
    .line 420
    .line 421
    move-result p2

    .line 422
    if-nez p2, :cond_1a

    .line 423
    .line 424
    if-eqz p1, :cond_19

    .line 425
    .line 426
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 427
    .line 428
    :cond_19
    return-object v2

    .line 429
    :cond_1a
    if-eqz p1, :cond_1b

    .line 430
    .line 431
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->memoizedIsInitialized:B

    .line 432
    .line 433
    :cond_1b
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 434
    .line 435
    return-object p1

    .line 436
    nop

    .line 437
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

.method public getCid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDurationBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->duration_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->name_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->number_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    and-int/2addr v1, v2

    .line 40
    if-ne v1, v2, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    and-int/2addr v1, v3

    .line 57
    if-ne v1, v3, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 69
    .line 70
    const/16 v2, 0x10

    .line 71
    .line 72
    and-int/2addr v1, v2

    .line 73
    if-ne v1, v2, :cond_5

    .line 74
    .line 75
    const/4 v1, 0x5

    .line 76
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 86
    .line 87
    const/16 v2, 0x20

    .line 88
    .line 89
    and-int/2addr v1, v2

    .line 90
    if-ne v1, v2, :cond_7

    .line 91
    .line 92
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 93
    .line 94
    const/4 v2, 0x6

    .line 95
    invoke-static {v2}, Lcom/google/protobuf/n;->n(I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-ltz v1, :cond_6

    .line 100
    .line 101
    invoke-static {v1}, Lcom/google/protobuf/n;->p(I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const/16 v1, 0xa

    .line 107
    .line 108
    :goto_1
    add-int/2addr v1, v2

    .line 109
    add-int/2addr v0, v1

    .line 110
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v1, v0

    .line 117
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 118
    .line 119
    return v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->time_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getType()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->DEFAULT_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x20

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->cid_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    and-int/2addr v0, v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getNumber()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    and-int/2addr v0, v2

    .line 44
    if-ne v0, v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getDuration()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 54
    .line 55
    const/16 v1, 0x10

    .line 56
    .line 57
    and-int/2addr v0, v1

    .line 58
    if-ne v0, v1, :cond_4

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->getTime()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->bitField0_:I

    .line 69
    .line 70
    const/16 v1, 0x20

    .line 71
    .line 72
    and-int/2addr v0, v1

    .line 73
    if-ne v0, v1, :cond_5

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;->type_:I

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
