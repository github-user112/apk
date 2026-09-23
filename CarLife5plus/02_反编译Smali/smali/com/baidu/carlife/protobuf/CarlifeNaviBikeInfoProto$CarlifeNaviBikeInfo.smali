.class public final Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeNaviBikeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

.field public static final ICONDATA_FIELD_NUMBER:I = 0x1

.field public static final ICONFORMAT_FIELD_NUMBER:I = 0x3

.field public static final ICONLENGTH_FIELD_NUMBER:I = 0x2

.field public static final ICONNAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final REMAINDISTANCEDESC_FIELD_NUMBER:I = 0x7

.field public static final REMAINTIMEDESC_FIELD_NUMBER:I = 0x8

.field public static final SPEED_FIELD_NUMBER:I = 0x9

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0xa

.field public static final TURNINFO1_FIELD_NUMBER:I = 0x5

.field public static final TURNINFO2_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private iconData_:Lcom/google/protobuf/i;

.field private iconFormat_:I

.field private iconLength_:I

.field private iconName_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private remainDistanceDesc_:Ljava/lang/String;

.field private remainTimeDesc_:Ljava/lang/String;

.field private speed_:I

.field private timeStamp_:J

.field private turnInfo1_:Ljava/lang/String;

.field private turnInfo2_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->memoizedIsInitialized:B

    .line 6
    .line 7
    sget-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setIconData(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setTurnInfo1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearTurnInfo1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setTurnInfo1Bytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setTurnInfo2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearTurnInfo2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setTurnInfo2Bytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setRemainDistanceDesc(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearRemainDistanceDesc()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setRemainDistanceDescBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setRemainTimeDesc(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearIconData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearRemainTimeDesc()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setRemainTimeDescBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setSpeed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setTimeStamp(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearTimeStamp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setIconLength(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearIconLength()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setIconFormat(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearIconFormat()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setIconName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->clearIconName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->setIconNameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearIconData()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getIconData()Lcom/google/protobuf/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 16
    .line 17
    return-void
.end method

.method private clearIconFormat()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearIconLength()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearIconName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getIconName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearRemainDistanceDesc()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getRemainDistanceDesc()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearRemainTimeDesc()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getRemainTimeDesc()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearSpeed()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 10
    .line 11
    return-void
.end method

.method private clearTurnInfo1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getTurnInfo1()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearTurnInfo2()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getTurnInfo2()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

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

.method private setIconData(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 11
    .line 12
    return-void
.end method

.method private setIconFormat(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 8
    .line 9
    return-void
.end method

.method private setIconLength(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 8
    .line 9
    return-void
.end method

.method private setIconName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setIconNameBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setRemainDistanceDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setRemainDistanceDescBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setRemainTimeDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setRemainTimeDescBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setSpeed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 8
    .line 9
    return-void
.end method

.method private setTimeStamp(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 8
    .line 9
    return-void
.end method

.method private setTurnInfo1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setTurnInfo1Bytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setTurnInfo2(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setTurnInfo2Bytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 15
    .line 16
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
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;

    .line 49
    .line 50
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$1;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/j;

    .line 61
    .line 62
    check-cast p3, Lcom/google/protobuf/r;

    .line 63
    .line 64
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    sparse-switch p1, :sswitch_data_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    :sswitch_0
    const/4 v0, 0x1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object p1, v0

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :catch_0
    move-exception v0

    .line 86
    move-object p1, v0

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :catch_1
    move-exception v0

    .line 90
    move-object p1, v0

    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :sswitch_1
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 94
    .line 95
    or-int/lit16 p1, p1, 0x200

    .line 96
    .line 97
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/google/protobuf/j;->p()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    iput-wide v3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :sswitch_2
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 107
    .line 108
    or-int/lit16 p1, p1, 0x100

    .line 109
    .line 110
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 124
    .line 125
    or-int/lit16 p3, p3, 0x80

    .line 126
    .line 127
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 128
    .line 129
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 137
    .line 138
    or-int/lit8 p3, p3, 0x40

    .line 139
    .line 140
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 141
    .line 142
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 150
    .line 151
    or-int/lit8 p3, p3, 0x20

    .line 152
    .line 153
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 154
    .line 155
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 163
    .line 164
    or-int/lit8 p3, p3, 0x10

    .line 165
    .line 166
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 167
    .line 168
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 176
    .line 177
    or-int/lit8 p3, p3, 0x8

    .line 178
    .line 179
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 180
    .line 181
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 185
    .line 186
    or-int/lit8 p1, p1, 0x4

    .line 187
    .line 188
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :sswitch_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 199
    .line 200
    or-int/lit8 p1, p1, 0x2

    .line 201
    .line 202
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 209
    .line 210
    goto/16 :goto_3

    .line 211
    .line 212
    :sswitch_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 213
    .line 214
    or-int/2addr p1, v2

    .line 215
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 216
    .line 217
    invoke-virtual {p2}, Lcom/google/protobuf/j;->g()Lcom/google/protobuf/h;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :goto_4
    throw p1

    .line 226
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 227
    .line 228
    new-instance p3, Lcom/google/protobuf/o0;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw p2

    .line 241
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 242
    .line 243
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    throw p2

    .line 247
    :cond_3
    :pswitch_4
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 248
    .line 249
    return-object p1

    .line 250
    :pswitch_5
    move-object v0, p2

    .line 251
    check-cast v0, Lcom/google/protobuf/c0;

    .line 252
    .line 253
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconData()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    iget-object p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 260
    .line 261
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconData()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 266
    .line 267
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/protobuf/c0;->h(ZLcom/google/protobuf/i;ZLcom/google/protobuf/i;)Lcom/google/protobuf/i;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconLength()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 278
    .line 279
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconLength()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 284
    .line 285
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconFormat()Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 296
    .line 297
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconFormat()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 302
    .line 303
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconName()Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    iget-object p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconName()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 320
    .line 321
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasTurnInfo1()Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    iget-object p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasTurnInfo1()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasTurnInfo2()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    iget-object p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasTurnInfo2()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 356
    .line 357
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasRemainDistanceDesc()Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    iget-object p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasRemainDistanceDesc()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 374
    .line 375
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasRemainTimeDesc()Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    iget-object p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasRemainTimeDesc()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 392
    .line 393
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasSpeed()Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 404
    .line 405
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasSpeed()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 410
    .line 411
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 416
    .line 417
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasTimeStamp()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 422
    .line 423
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasTimeStamp()Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 428
    .line 429
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->i(ZJZJ)J

    .line 430
    .line 431
    .line 432
    move-result-wide p1

    .line 433
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 434
    .line 435
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 436
    .line 437
    if-ne v0, p1, :cond_4

    .line 438
    .line 439
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 440
    .line 441
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 442
    .line 443
    or-int/2addr p1, p2

    .line 444
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 445
    .line 446
    :cond_4
    return-object p0

    .line 447
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->memoizedIsInitialized:B

    .line 448
    .line 449
    if-ne p1, v2, :cond_5

    .line 450
    .line 451
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 452
    .line 453
    return-object p1

    .line 454
    :cond_5
    if-nez p1, :cond_6

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .line 458
    .line 459
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconData()Z

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    if-nez p2, :cond_7

    .line 468
    .line 469
    if-eqz p1, :cond_8

    .line 470
    .line 471
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->memoizedIsInitialized:B

    .line 472
    .line 473
    return-object v1

    .line 474
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->hasIconLength()Z

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    if-nez p2, :cond_9

    .line 479
    .line 480
    if-eqz p1, :cond_8

    .line 481
    .line 482
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->memoizedIsInitialized:B

    .line 483
    .line 484
    :cond_8
    :goto_7
    :pswitch_7
    return-object v1

    .line 485
    :cond_9
    if-eqz p1, :cond_a

    .line 486
    .line 487
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->memoizedIsInitialized:B

    .line 488
    .line 489
    :cond_a
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;

    .line 490
    .line 491
    return-object p1

    .line 492
    nop

    .line 493
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

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public getIconData()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconName_:Ljava/lang/String;

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

.method public getRemainDistanceDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemainDistanceDescBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainDistanceDesc_:Ljava/lang/String;

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

.method public getRemainTimeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemainTimeDescBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->remainTimeDesc_:Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->i(ILcom/google/protobuf/i;)I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->k(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    and-int/2addr v1, v3

    .line 53
    if-ne v1, v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getIconName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getTurnInfo1()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v0, v1

    .line 81
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 82
    .line 83
    const/16 v2, 0x20

    .line 84
    .line 85
    and-int/2addr v1, v2

    .line 86
    if-ne v1, v2, :cond_6

    .line 87
    .line 88
    const/4 v1, 0x6

    .line 89
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getTurnInfo2()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 99
    .line 100
    const/16 v2, 0x40

    .line 101
    .line 102
    and-int/2addr v1, v2

    .line 103
    if-ne v1, v2, :cond_7

    .line 104
    .line 105
    const/4 v1, 0x7

    .line 106
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getRemainDistanceDesc()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 116
    .line 117
    const/16 v2, 0x80

    .line 118
    .line 119
    and-int/2addr v1, v2

    .line 120
    if-ne v1, v2, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getRemainTimeDesc()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    add-int/2addr v0, v1

    .line 131
    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 132
    .line 133
    const/16 v2, 0x100

    .line 134
    .line 135
    and-int/2addr v1, v2

    .line 136
    if-ne v1, v2, :cond_9

    .line 137
    .line 138
    const/16 v1, 0x9

    .line 139
    .line 140
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 141
    .line 142
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    :cond_9
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 148
    .line 149
    const/16 v2, 0x200

    .line 150
    .line 151
    and-int/2addr v1, v2

    .line 152
    if-ne v1, v2, :cond_a

    .line 153
    .line 154
    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 155
    .line 156
    const/16 v3, 0xa

    .line 157
    .line 158
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->q(J)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    add-int/2addr v1, v3

    .line 167
    add-int/2addr v0, v1

    .line 168
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v1, v0

    .line 175
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 176
    .line 177
    return v1
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTurnInfo1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTurnInfo1Bytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo1_:Ljava/lang/String;

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

.method public getTurnInfo2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTurnInfo2Bytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->turnInfo2_:Ljava/lang/String;

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

.method public hasIconData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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

.method public hasIconFormat()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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

.method public hasIconLength()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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

.method public hasIconName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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

.method public hasRemainDistanceDesc()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x40

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

.method public hasRemainTimeDesc()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x80

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

.method public hasSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x100

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

.method public hasTimeStamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x200

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

.method public hasTurnInfo1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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

.method public hasTurnInfo2()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconData_:Lcom/google/protobuf/i;

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->t(ILcom/google/protobuf/i;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconLength_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->iconFormat_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getIconName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getTurnInfo1()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 65
    .line 66
    const/16 v1, 0x20

    .line 67
    .line 68
    and-int/2addr v0, v1

    .line 69
    if-ne v0, v1, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getTurnInfo2()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 80
    .line 81
    const/16 v1, 0x40

    .line 82
    .line 83
    and-int/2addr v0, v1

    .line 84
    if-ne v0, v1, :cond_6

    .line 85
    .line 86
    const/4 v0, 0x7

    .line 87
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getRemainDistanceDesc()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 95
    .line 96
    const/16 v1, 0x80

    .line 97
    .line 98
    and-int/2addr v0, v1

    .line 99
    if-ne v0, v1, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->getRemainTimeDesc()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 109
    .line 110
    const/16 v1, 0x100

    .line 111
    .line 112
    and-int/2addr v0, v1

    .line 113
    if-ne v0, v1, :cond_8

    .line 114
    .line 115
    const/16 v0, 0x9

    .line 116
    .line 117
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->speed_:I

    .line 118
    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 120
    .line 121
    .line 122
    :cond_8
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->bitField0_:I

    .line 123
    .line 124
    const/16 v1, 0x200

    .line 125
    .line 126
    and-int/2addr v0, v1

    .line 127
    if-ne v0, v1, :cond_9

    .line 128
    .line 129
    const/16 v0, 0xa

    .line 130
    .line 131
    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeNaviBikeInfoProto$CarlifeNaviBikeInfo;->timeStamp_:J

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/n;->E(IJ)V

    .line 134
    .line 135
    .line 136
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
