.class public final Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeNaviNextTurnInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

.field public static final NEXTTURN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final REMAINDISTANCE_FIELD_NUMBER:I = 0x5

.field public static final ROADNAME_FIELD_NUMBER:I = 0x3

.field public static final TOTALDISTANCE_FIELD_NUMBER:I = 0x4

.field public static final TURNICONDATA_FIELD_NUMBER:I = 0x6


# instance fields
.field private action_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private nextTurn_:I

.field private remainDistance_:I

.field private roadName_:Ljava/lang/String;

.field private totalDistance_:I

.field private turnIconData_:Lcom/google/protobuf/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setAction(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setRemainDistance(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->clearRemainDistance()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setTurnIconData(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->clearTurnIconData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->clearAction()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setNextTurn(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->clearNextTurn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setRoadName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->clearRoadName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setRoadNameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->setTotalDistance(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->clearTotalDistance()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAction()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearNextTurn()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearRemainDistance()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearRoadName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearTotalDistance()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearTurnIconData()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTurnIconData()Lcom/google/protobuf/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 16
    .line 17
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

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

.method private setAction(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 8
    .line 9
    return-void
.end method

.method private setNextTurn(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 8
    .line 9
    return-void
.end method

.method private setRemainDistance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 8
    .line 9
    return-void
.end method

.method private setRoadName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setRoadNameBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setTotalDistance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 8
    .line 9
    return-void
.end method

.method private setTurnIconData(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 11
    .line 12
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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/j;

    .line 60
    .line 61
    check-cast p3, Lcom/google/protobuf/r;

    .line 62
    .line 63
    :cond_2
    :goto_3
    if-nez v1, :cond_a

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    const/16 p3, 0x8

    .line 72
    .line 73
    if-eq p1, p3, :cond_9

    .line 74
    .line 75
    const/16 v2, 0x10

    .line 76
    .line 77
    if-eq p1, v2, :cond_8

    .line 78
    .line 79
    const/16 v3, 0x1a

    .line 80
    .line 81
    if-eq p1, v3, :cond_7

    .line 82
    .line 83
    const/16 v3, 0x20

    .line 84
    .line 85
    if-eq p1, v3, :cond_6

    .line 86
    .line 87
    const/16 p3, 0x28

    .line 88
    .line 89
    if-eq p1, p3, :cond_5

    .line 90
    .line 91
    const/16 p3, 0x32

    .line 92
    .line 93
    if-eq p1, p3, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    :cond_3
    const/4 v1, 0x1

    .line 102
    goto :goto_3

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    goto :goto_4

    .line 105
    :catch_0
    move-exception p1

    .line 106
    goto :goto_5

    .line 107
    :catch_1
    move-exception p1

    .line 108
    goto :goto_6

    .line 109
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 110
    .line 111
    or-int/2addr p1, v3

    .line 112
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/google/protobuf/j;->g()Lcom/google/protobuf/h;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 122
    .line 123
    or-int/2addr p1, v2

    .line 124
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 134
    .line 135
    or-int/2addr p1, p3

    .line 136
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 150
    .line 151
    or-int/lit8 p3, p3, 0x4

    .line 152
    .line 153
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 154
    .line 155
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 159
    .line 160
    or-int/lit8 p1, p1, 0x2

    .line 161
    .line 162
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 172
    .line 173
    or-int/2addr p1, v0

    .line 174
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :goto_4
    throw p1

    .line 184
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 185
    .line 186
    new-instance p3, Lcom/google/protobuf/o0;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw p2

    .line 199
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 200
    .line 201
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    throw p2

    .line 205
    :cond_a
    :pswitch_4
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 206
    .line 207
    return-object p1

    .line 208
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/c0;

    .line 209
    .line 210
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasAction()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 217
    .line 218
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasAction()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 223
    .line 224
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasNextTurn()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 235
    .line 236
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasNextTurn()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 241
    .line 242
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRoadName()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRoadName()Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 259
    .line 260
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTotalDistance()Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 271
    .line 272
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTotalDistance()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 277
    .line 278
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRemainDistance()Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 289
    .line 290
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRemainDistance()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 295
    .line 296
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTurnIconData()Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 307
    .line 308
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTurnIconData()Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 313
    .line 314
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->h(ZLcom/google/protobuf/i;ZLcom/google/protobuf/i;)Lcom/google/protobuf/i;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 319
    .line 320
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 321
    .line 322
    if-ne p2, p1, :cond_b

    .line 323
    .line 324
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 325
    .line 326
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 327
    .line 328
    or-int/2addr p1, p2

    .line 329
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 330
    .line 331
    :cond_b
    return-object p0

    .line 332
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 333
    .line 334
    if-ne p1, v0, :cond_c

    .line 335
    .line 336
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 337
    .line 338
    return-object p1

    .line 339
    :cond_c
    if-nez p1, :cond_d

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    .line 343
    .line 344
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasAction()Z

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    if-nez p2, :cond_e

    .line 353
    .line 354
    if-eqz p1, :cond_13

    .line 355
    .line 356
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 357
    .line 358
    return-object v2

    .line 359
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasNextTurn()Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    if-nez p2, :cond_f

    .line 364
    .line 365
    if-eqz p1, :cond_13

    .line 366
    .line 367
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 368
    .line 369
    return-object v2

    .line 370
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRoadName()Z

    .line 371
    .line 372
    .line 373
    move-result p2

    .line 374
    if-nez p2, :cond_10

    .line 375
    .line 376
    if-eqz p1, :cond_13

    .line 377
    .line 378
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 379
    .line 380
    return-object v2

    .line 381
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTotalDistance()Z

    .line 382
    .line 383
    .line 384
    move-result p2

    .line 385
    if-nez p2, :cond_11

    .line 386
    .line 387
    if-eqz p1, :cond_13

    .line 388
    .line 389
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 390
    .line 391
    return-object v2

    .line 392
    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRemainDistance()Z

    .line 393
    .line 394
    .line 395
    move-result p2

    .line 396
    if-nez p2, :cond_12

    .line 397
    .line 398
    if-eqz p1, :cond_13

    .line 399
    .line 400
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 401
    .line 402
    return-object v2

    .line 403
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTurnIconData()Z

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    if-nez p2, :cond_14

    .line 408
    .line 409
    if-eqz p1, :cond_13

    .line 410
    .line 411
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 412
    .line 413
    :cond_13
    :goto_7
    :pswitch_7
    return-object v2

    .line 414
    :cond_14
    if-eqz p1, :cond_15

    .line 415
    .line 416
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->memoizedIsInitialized:B

    .line 417
    .line 418
    :cond_15
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 419
    .line 420
    return-object p1

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNextTurn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRemainDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoadNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->roadName_:Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    and-int/2addr v1, v2

    .line 38
    if-ne v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v0, v1

    .line 50
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 51
    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    and-int/2addr v1, v3

    .line 55
    if-ne v1, v3, :cond_4

    .line 56
    .line 57
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 58
    .line 59
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 65
    .line 66
    const/16 v2, 0x10

    .line 67
    .line 68
    and-int/2addr v1, v2

    .line 69
    if-ne v1, v2, :cond_5

    .line 70
    .line 71
    const/4 v1, 0x5

    .line 72
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 80
    .line 81
    const/16 v2, 0x20

    .line 82
    .line 83
    and-int/2addr v1, v2

    .line 84
    if-ne v1, v2, :cond_6

    .line 85
    .line 86
    const/4 v1, 0x6

    .line 87
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 88
    .line 89
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->i(ILcom/google/protobuf/i;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/2addr v0, v1

    .line 94
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v1, v0

    .line 101
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 102
    .line 103
    return v1
.end method

.method public getTotalDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTurnIconData()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAction()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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

.method public hasNextTurn()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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

.method public hasRemainDistance()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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

.method public hasRoadName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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

.method public hasTotalDistance()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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

.method public hasTurnIconData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->action_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->nextTurn_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 38
    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    and-int/2addr v0, v2

    .line 42
    if-ne v0, v2, :cond_3

    .line 43
    .line 44
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->totalDistance_:I

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 50
    .line 51
    const/16 v1, 0x10

    .line 52
    .line 53
    and-int/2addr v0, v1

    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->remainDistance_:I

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 60
    .line 61
    .line 62
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->bitField0_:I

    .line 63
    .line 64
    const/16 v1, 0x20

    .line 65
    .line 66
    and-int/2addr v0, v1

    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    const/4 v0, 0x6

    .line 70
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->turnIconData_:Lcom/google/protobuf/i;

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->t(ILcom/google/protobuf/i;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
