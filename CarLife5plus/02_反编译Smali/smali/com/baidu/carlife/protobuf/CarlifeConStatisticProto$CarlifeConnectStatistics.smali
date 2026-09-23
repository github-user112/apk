.class public final Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeConnectStatistics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFAILED_FIELD_NUMBER:I = 0x3

.field public static final CONSUCCESS_FIELD_NUMBER:I = 0x2

.field public static final CONTIME_FIELD_NUMBER:I = 0x4

.field public static final CONTOTAL_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

.field public static final NERRORCOUNT_FIELD_NUMBER:I = 0x5

.field public static final NERROR_TYPE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private confailed_:I

.field private consuccess_:I

.field private contime_:I

.field private contotal_:I

.field private memoizedIsInitialized:B

.field private nerrorType_:Lcom/google/protobuf/k0;

.field private nerrorcount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/protobuf/d0;->emptyIntList()Lcom/google/protobuf/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setContotal(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearNerrorcount()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setNerrorType(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->addNerrorType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->addAllNerrorType(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearNerrorType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearContotal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setConsuccess(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearConsuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setConfailed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearConfailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setContime(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->clearContime()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->setNerrorcount(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllNerrorType(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->ensureNerrorTypeIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addNerrorType(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->ensureNerrorTypeIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 5
    .line 6
    check-cast v0, Lcom/google/protobuf/e0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->d(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private clearConfailed()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearConsuccess()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearContime()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearContotal()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearNerrorType()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyIntList()Lcom/google/protobuf/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 6
    .line 7
    return-void
.end method

.method private clearNerrorcount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 9
    .line 10
    return-void
.end method

.method private ensureNerrorTypeIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/protobuf/d;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

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

.method private setConfailed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 8
    .line 9
    return-void
.end method

.method private setConsuccess(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 8
    .line 9
    return-void
.end method

.method private setContime(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 8
    .line 9
    return-void
.end method

.method private setContotal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 8
    .line 9
    return-void
.end method

.method private setNerrorType(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->ensureNerrorTypeIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 5
    .line 6
    check-cast v0, Lcom/google/protobuf/e0;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/e0;->n(II)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setNerrorcount(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 60
    .line 61
    check-cast p1, Lcom/google/protobuf/d;

    .line 62
    .line 63
    iput-boolean v1, p1, Lcom/google/protobuf/d;->a:Z

    .line 64
    .line 65
    return-object v2

    .line 66
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 67
    .line 68
    check-cast p3, Lcom/google/protobuf/r;

    .line 69
    .line 70
    :cond_2
    :goto_3
    if-nez v1, :cond_e

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    const/16 p3, 0x8

    .line 79
    .line 80
    if-eq p1, p3, :cond_d

    .line 81
    .line 82
    const/16 v2, 0x10

    .line 83
    .line 84
    if-eq p1, v2, :cond_c

    .line 85
    .line 86
    const/16 v3, 0x18

    .line 87
    .line 88
    if-eq p1, v3, :cond_b

    .line 89
    .line 90
    const/16 v3, 0x20

    .line 91
    .line 92
    if-eq p1, v3, :cond_a

    .line 93
    .line 94
    const/16 p3, 0x28

    .line 95
    .line 96
    if-eq p1, p3, :cond_9

    .line 97
    .line 98
    const/16 p3, 0x30

    .line 99
    .line 100
    if-eq p1, p3, :cond_7

    .line 101
    .line 102
    const/16 p3, 0x32

    .line 103
    .line 104
    if-eq p1, p3, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    :cond_3
    const/4 v1, 0x1

    .line 113
    goto :goto_3

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :catch_0
    move-exception p1

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :catch_1
    move-exception p1

    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->e(I)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 132
    .line 133
    check-cast p3, Lcom/google/protobuf/d;

    .line 134
    .line 135
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 136
    .line 137
    if-nez p3, :cond_5

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-lez p3, :cond_5

    .line 144
    .line 145
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 146
    .line 147
    invoke-static {p3}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 152
    .line 153
    :cond_5
    :goto_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    if-lez p3, :cond_6

    .line 158
    .line 159
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    check-cast p3, Lcom/google/protobuf/e0;

    .line 166
    .line 167
    invoke-virtual {p3, v2}, Lcom/google/protobuf/e0;->d(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->d(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 176
    .line 177
    move-object p3, p1

    .line 178
    check-cast p3, Lcom/google/protobuf/d;

    .line 179
    .line 180
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 181
    .line 182
    if-nez p3, :cond_8

    .line 183
    .line 184
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 189
    .line 190
    :cond_8
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    check-cast p1, Lcom/google/protobuf/e0;

    .line 197
    .line 198
    invoke-virtual {p1, p3}, Lcom/google/protobuf/e0;->d(I)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 204
    .line 205
    or-int/2addr p1, v2

    .line 206
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :cond_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 217
    .line 218
    or-int/2addr p1, p3

    .line 219
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 230
    .line 231
    or-int/lit8 p1, p1, 0x4

    .line 232
    .line 233
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 244
    .line 245
    or-int/lit8 p1, p1, 0x2

    .line 246
    .line 247
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_d
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 258
    .line 259
    or-int/2addr p1, v0

    .line 260
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 261
    .line 262
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :goto_5
    throw p1

    .line 271
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 272
    .line 273
    new-instance p3, Lcom/google/protobuf/o0;

    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    throw p2

    .line 286
    :goto_7
    new-instance p2, Ljava/lang/RuntimeException;

    .line 287
    .line 288
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    throw p2

    .line 292
    :cond_e
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 293
    .line 294
    return-object p1

    .line 295
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 296
    .line 297
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 304
    .line 305
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 310
    .line 311
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 322
    .line 323
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 328
    .line 329
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 340
    .line 341
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 346
    .line 347
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 358
    .line 359
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 364
    .line 365
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 370
    .line 371
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 376
    .line 377
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 382
    .line 383
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 388
    .line 389
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 390
    .line 391
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 392
    .line 393
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->a(Lcom/google/protobuf/k0;Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 398
    .line 399
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 400
    .line 401
    if-ne p2, p1, :cond_f

    .line 402
    .line 403
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 404
    .line 405
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 406
    .line 407
    or-int/2addr p1, p2

    .line 408
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 409
    .line 410
    :cond_f
    return-object p0

    .line 411
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 412
    .line 413
    if-ne p1, v0, :cond_10

    .line 414
    .line 415
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 416
    .line 417
    return-object p1

    .line 418
    :cond_10
    if-nez p1, :cond_11

    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_11
    check-cast p2, Ljava/lang/Boolean;

    .line 422
    .line 423
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    .line 428
    .line 429
    .line 430
    move-result p2

    .line 431
    if-nez p2, :cond_12

    .line 432
    .line 433
    if-eqz p1, :cond_16

    .line 434
    .line 435
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 436
    .line 437
    return-object v2

    .line 438
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    if-nez p2, :cond_13

    .line 443
    .line 444
    if-eqz p1, :cond_16

    .line 445
    .line 446
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 447
    .line 448
    return-object v2

    .line 449
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    .line 450
    .line 451
    .line 452
    move-result p2

    .line 453
    if-nez p2, :cond_14

    .line 454
    .line 455
    if-eqz p1, :cond_16

    .line 456
    .line 457
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 458
    .line 459
    return-object v2

    .line 460
    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    .line 461
    .line 462
    .line 463
    move-result p2

    .line 464
    if-nez p2, :cond_15

    .line 465
    .line 466
    if-eqz p1, :cond_16

    .line 467
    .line 468
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 469
    .line 470
    return-object v2

    .line 471
    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    .line 472
    .line 473
    .line 474
    move-result p2

    .line 475
    if-nez p2, :cond_17

    .line 476
    .line 477
    if-eqz p1, :cond_16

    .line 478
    .line 479
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 480
    .line 481
    :cond_16
    :goto_8
    return-object v2

    .line 482
    :cond_17
    if-eqz p1, :cond_18

    .line 483
    .line 484
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->memoizedIsInitialized:B

    .line 485
    .line 486
    :cond_18
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 487
    .line 488
    return-object p1

    .line 489
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

.method public getConfailed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getConsuccess()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 2
    .line 3
    return v0
.end method

.method public getContime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 2
    .line 3
    return v0
.end method

.method public getContotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNerrorType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/e0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->l(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getNerrorTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/e0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/e0;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getNerrorTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNerrorcount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->k(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    and-int/2addr v1, v3

    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 29
    .line 30
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    and-int/2addr v1, v3

    .line 39
    if-ne v1, v3, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 43
    .line 44
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->k(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 50
    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    and-int/2addr v1, v4

    .line 54
    if-ne v1, v4, :cond_4

    .line 55
    .line 56
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 57
    .line 58
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v0, v1

    .line 63
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 64
    .line 65
    const/16 v3, 0x10

    .line 66
    .line 67
    and-int/2addr v1, v3

    .line 68
    if-ne v1, v3, :cond_5

    .line 69
    .line 70
    const/4 v1, 0x5

    .line 71
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 72
    .line 73
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->k(II)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v0, v1

    .line 78
    :cond_5
    const/4 v1, 0x0

    .line 79
    :goto_1
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 80
    .line 81
    check-cast v3, Lcom/google/protobuf/e0;

    .line 82
    .line 83
    iget v4, v3, Lcom/google/protobuf/e0;->c:I

    .line 84
    .line 85
    if-ge v2, v4, :cond_7

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Lcom/google/protobuf/e0;->l(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ltz v3, :cond_6

    .line 92
    .line 93
    invoke-static {v3}, Lcom/google/protobuf/n;->p(I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    sget-object v3, Lcom/google/protobuf/n;->a:Ljava/util/logging/Logger;

    .line 99
    .line 100
    const/16 v3, 0xa

    .line 101
    .line 102
    :goto_2
    add-int/2addr v1, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    add-int/2addr v0, v1

    .line 107
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorTypeList()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v1, v0

    .line 116
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/protobuf/y0;->a()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr v0, v1

    .line 123
    iput v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 124
    .line 125
    return v0
.end method

.method public hasConfailed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasConsuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasContime()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasContotal()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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

.method public hasNerrorcount()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contotal_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->consuccess_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->confailed_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->contime_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorcount_:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->nerrorType_:Lcom/google/protobuf/k0;

    .line 62
    .line 63
    check-cast v1, Lcom/google/protobuf/e0;

    .line 64
    .line 65
    iget v2, v1, Lcom/google/protobuf/e0;->c:I

    .line 66
    .line 67
    if-ge v0, v2, :cond_5

    .line 68
    .line 69
    const/4 v2, 0x6

    .line 70
    invoke-virtual {v1, v0}, Lcom/google/protobuf/e0;->l(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
