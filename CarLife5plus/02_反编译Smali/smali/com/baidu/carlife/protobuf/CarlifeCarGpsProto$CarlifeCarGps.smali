.class public final Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGpsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeCarGps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGpsOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANTENNASTATE_FIELD_NUMBER:I = 0x1

.field public static final DAY_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

.field public static final EASTSPEED_FIELD_NUMBER:I = 0x17

.field public static final FIX_FIELD_NUMBER:I = 0xe

.field public static final HDOP_FIELD_NUMBER:I = 0xf

.field public static final HEADING_FIELD_NUMBER:I = 0x7

.field public static final HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final HORPOSERROR_FIELD_NUMBER:I = 0x14

.field public static final HRS_FIELD_NUMBER:I = 0xb

.field public static final LATITUDE_FIELD_NUMBER:I = 0x3

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x4

.field public static final MIN_FIELD_NUMBER:I = 0xc

.field public static final MONTH_FIELD_NUMBER:I = 0x9

.field public static final NORTHSPEED_FIELD_NUMBER:I = 0x16

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final PDOP_FIELD_NUMBER:I = 0x10

.field public static final SATSUSED_FIELD_NUMBER:I = 0x12

.field public static final SATSVISIBLE_FIELD_NUMBER:I = 0x13

.field public static final SEC_FIELD_NUMBER:I = 0xd

.field public static final SIGNALQUALITY_FIELD_NUMBER:I = 0x2

.field public static final SPEED_FIELD_NUMBER:I = 0x6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x19

.field public static final VDOP_FIELD_NUMBER:I = 0x11

.field public static final VERTPOSERROR_FIELD_NUMBER:I = 0x15

.field public static final VERTSPEED_FIELD_NUMBER:I = 0x18

.field public static final YEAR_FIELD_NUMBER:I = 0x8


# instance fields
.field private antennaState_:I

.field private bitField0_:I

.field private day_:I

.field private eastSpeed_:I

.field private fix_:I

.field private hdop_:I

.field private heading_:I

.field private height_:I

.field private horPosError_:I

.field private hrs_:I

.field private latitude_:I

.field private longitude_:I

.field private memoizedIsInitialized:B

.field private min_:I

.field private month_:I

.field private northSpeed_:I

.field private pdop_:I

.field private satsUsed_:I

.field private satsVisible_:I

.field private sec_:I

.field private signalQuality_:I

.field private speed_:I

.field private timeStamp_:J

.field private vdop_:I

.field private vertPosError_:I

.field private vertSpeed_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setAntennaState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHeight()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSpeed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHeading(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHeading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setYear(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearYear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setMonth(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearMonth()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setDay(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearAntennaState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearDay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHrs(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHrs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setMin(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearMin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSec(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSec()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setFix(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearFix()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHdop(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSignalQuality(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHdop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setPdop(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearPdop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setVdop(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearVdop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSatsUsed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSatsUsed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setSatsVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSatsVisible()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHorPosError(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearSignalQuality()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearHorPosError()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4100(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setVertPosError(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4200(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearVertPosError()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4300(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setNorthSpeed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4400(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearNorthSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setEastSpeed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearEastSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setVertSpeed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearVertSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setTimeStamp(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setLatitude(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$5000(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearTimeStamp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearLatitude()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setLongitude(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->clearLongitude()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->setHeight(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAntennaState()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearDay()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearEastSpeed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x400001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearFix()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearHdop()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x4001

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearHeading()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearHeight()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearHorPosError()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x80001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearHrs()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x401

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearLatitude()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearLongitude()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMin()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x801

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMonth()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearNorthSpeed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x200001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearPdop()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x8001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearSatsUsed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x20001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearSatsVisible()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x40001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearSec()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x1001

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearSignalQuality()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearSpeed()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x1000001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 12
    .line 13
    return-void
.end method

.method private clearVdop()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x10001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearVertPosError()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x100001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearVertSpeed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, -0x800001

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 11
    .line 12
    return-void
.end method

.method private clearYear()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

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

.method private setAntennaState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 8
    .line 9
    return-void
.end method

.method private setDay(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 8
    .line 9
    return-void
.end method

.method private setEastSpeed(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x400000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 9
    .line 10
    return-void
.end method

.method private setFix(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 8
    .line 9
    return-void
.end method

.method private setHdop(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x4000

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 8
    .line 9
    return-void
.end method

.method private setHeading(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 8
    .line 9
    return-void
.end method

.method private setHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 8
    .line 9
    return-void
.end method

.method private setHorPosError(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 9
    .line 10
    return-void
.end method

.method private setHrs(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 8
    .line 9
    return-void
.end method

.method private setLatitude(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 8
    .line 9
    return-void
.end method

.method private setLongitude(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMin(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMonth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 8
    .line 9
    return-void
.end method

.method private setNorthSpeed(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x200000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 9
    .line 10
    return-void
.end method

.method private setPdop(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 10
    .line 11
    return-void
.end method

.method private setSatsUsed(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 9
    .line 10
    return-void
.end method

.method private setSatsVisible(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 9
    .line 10
    return-void
.end method

.method private setSec(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 8
    .line 9
    return-void
.end method

.method private setSignalQuality(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 8
    .line 9
    return-void
.end method

.method private setSpeed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 8
    .line 9
    return-void
.end method

.method private setTimeStamp(J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x1000000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 9
    .line 10
    return-void
.end method

.method private setVdop(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 9
    .line 10
    return-void
.end method

.method private setVertPosError(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 9
    .line 10
    return-void
.end method

.method private setVertSpeed(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x800000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 9
    .line 10
    return-void
.end method

.method private setYear(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->PARSER:Lcom/google/protobuf/v0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;

    .line 49
    .line 50
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$1;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;-><init>()V

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
    if-nez v1, :cond_3

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    :sswitch_0
    const/4 v1, 0x1

    .line 81
    goto :goto_3

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    move-object p1, v0

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :catch_0
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :catch_1
    move-exception v0

    .line 91
    move-object p1, v0

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :sswitch_1
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 95
    .line 96
    const/high16 p3, 0x1000000

    .line 97
    .line 98
    or-int/2addr p1, p3

    .line 99
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/google/protobuf/j;->p()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    iput-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :sswitch_2
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 109
    .line 110
    const/high16 p3, 0x800000

    .line 111
    .line 112
    or-int/2addr p1, p3

    .line 113
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :sswitch_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 123
    .line 124
    const/high16 p3, 0x400000

    .line 125
    .line 126
    or-int/2addr p1, p3

    .line 127
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :sswitch_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 137
    .line 138
    const/high16 p3, 0x200000

    .line 139
    .line 140
    or-int/2addr p1, p3

    .line 141
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :sswitch_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 151
    .line 152
    const/high16 p3, 0x100000

    .line 153
    .line 154
    or-int/2addr p1, p3

    .line 155
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :sswitch_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 165
    .line 166
    const/high16 p3, 0x80000

    .line 167
    .line 168
    or-int/2addr p1, p3

    .line 169
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :sswitch_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 179
    .line 180
    const/high16 p3, 0x40000

    .line 181
    .line 182
    or-int/2addr p1, p3

    .line 183
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 193
    .line 194
    const/high16 p3, 0x20000

    .line 195
    .line 196
    or-int/2addr p1, p3

    .line 197
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :sswitch_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 208
    .line 209
    const/high16 p3, 0x10000

    .line 210
    .line 211
    or-int/2addr p1, p3

    .line 212
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :sswitch_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 223
    .line 224
    const p3, 0x8000

    .line 225
    .line 226
    .line 227
    or-int/2addr p1, p3

    .line 228
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :sswitch_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 239
    .line 240
    or-int/lit16 p1, p1, 0x4000

    .line 241
    .line 242
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 249
    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :sswitch_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 253
    .line 254
    or-int/lit16 p1, p1, 0x2000

    .line 255
    .line 256
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 257
    .line 258
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :sswitch_d
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 267
    .line 268
    or-int/lit16 p1, p1, 0x1000

    .line 269
    .line 270
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :sswitch_e
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 281
    .line 282
    or-int/lit16 p1, p1, 0x800

    .line 283
    .line 284
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :sswitch_f
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 295
    .line 296
    or-int/lit16 p1, p1, 0x400

    .line 297
    .line 298
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 299
    .line 300
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :sswitch_10
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 309
    .line 310
    or-int/lit16 p1, p1, 0x200

    .line 311
    .line 312
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 313
    .line 314
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 319
    .line 320
    goto/16 :goto_3

    .line 321
    .line 322
    :sswitch_11
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 323
    .line 324
    or-int/lit16 p1, p1, 0x100

    .line 325
    .line 326
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 327
    .line 328
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 333
    .line 334
    goto/16 :goto_3

    .line 335
    .line 336
    :sswitch_12
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 337
    .line 338
    or-int/lit16 p1, p1, 0x80

    .line 339
    .line 340
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 341
    .line 342
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :sswitch_13
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 351
    .line 352
    or-int/lit8 p1, p1, 0x40

    .line 353
    .line 354
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 355
    .line 356
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 361
    .line 362
    goto/16 :goto_3

    .line 363
    .line 364
    :sswitch_14
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 365
    .line 366
    or-int/lit8 p1, p1, 0x20

    .line 367
    .line 368
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 369
    .line 370
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :sswitch_15
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 379
    .line 380
    or-int/lit8 p1, p1, 0x10

    .line 381
    .line 382
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 383
    .line 384
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 389
    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :sswitch_16
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 393
    .line 394
    or-int/lit8 p1, p1, 0x8

    .line 395
    .line 396
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 397
    .line 398
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 403
    .line 404
    goto/16 :goto_3

    .line 405
    .line 406
    :sswitch_17
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 407
    .line 408
    or-int/lit8 p1, p1, 0x4

    .line 409
    .line 410
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 411
    .line 412
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 417
    .line 418
    goto/16 :goto_3

    .line 419
    .line 420
    :sswitch_18
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 421
    .line 422
    or-int/lit8 p1, p1, 0x2

    .line 423
    .line 424
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 425
    .line 426
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 431
    .line 432
    goto/16 :goto_3

    .line 433
    .line 434
    :sswitch_19
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 435
    .line 436
    or-int/2addr p1, v0

    .line 437
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 438
    .line 439
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    .line 445
    goto/16 :goto_3

    .line 446
    .line 447
    :goto_4
    throw p1

    .line 448
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 449
    .line 450
    new-instance p3, Lcom/google/protobuf/o0;

    .line 451
    .line 452
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    throw p2

    .line 463
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 464
    .line 465
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 466
    .line 467
    .line 468
    throw p2

    .line 469
    :cond_3
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 470
    .line 471
    return-object p1

    .line 472
    :pswitch_6
    move-object v0, p2

    .line 473
    check-cast v0, Lcom/google/protobuf/c0;

    .line 474
    .line 475
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasAntennaState()Z

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 482
    .line 483
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasAntennaState()Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 488
    .line 489
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 494
    .line 495
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSignalQuality()Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 500
    .line 501
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSignalQuality()Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 506
    .line 507
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLatitude()Z

    .line 514
    .line 515
    .line 516
    move-result p1

    .line 517
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 518
    .line 519
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLatitude()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 524
    .line 525
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 530
    .line 531
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLongitude()Z

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 536
    .line 537
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLongitude()Z

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 542
    .line 543
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 548
    .line 549
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeight()Z

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 554
    .line 555
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeight()Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 560
    .line 561
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 562
    .line 563
    .line 564
    move-result p1

    .line 565
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 566
    .line 567
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSpeed()Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 572
    .line 573
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSpeed()Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 578
    .line 579
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 584
    .line 585
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeading()Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 590
    .line 591
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeading()Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 596
    .line 597
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 602
    .line 603
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasYear()Z

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 608
    .line 609
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasYear()Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 614
    .line 615
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 616
    .line 617
    .line 618
    move-result p1

    .line 619
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 620
    .line 621
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMonth()Z

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 626
    .line 627
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMonth()Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 632
    .line 633
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 634
    .line 635
    .line 636
    move-result p1

    .line 637
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 638
    .line 639
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasDay()Z

    .line 640
    .line 641
    .line 642
    move-result p1

    .line 643
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 644
    .line 645
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasDay()Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 650
    .line 651
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 652
    .line 653
    .line 654
    move-result p1

    .line 655
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 656
    .line 657
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHrs()Z

    .line 658
    .line 659
    .line 660
    move-result p1

    .line 661
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 662
    .line 663
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHrs()Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 668
    .line 669
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 670
    .line 671
    .line 672
    move-result p1

    .line 673
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 674
    .line 675
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMin()Z

    .line 676
    .line 677
    .line 678
    move-result p1

    .line 679
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 680
    .line 681
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMin()Z

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 686
    .line 687
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 688
    .line 689
    .line 690
    move-result p1

    .line 691
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 692
    .line 693
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSec()Z

    .line 694
    .line 695
    .line 696
    move-result p1

    .line 697
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 698
    .line 699
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSec()Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 704
    .line 705
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 710
    .line 711
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasFix()Z

    .line 712
    .line 713
    .line 714
    move-result p1

    .line 715
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 716
    .line 717
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasFix()Z

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 722
    .line 723
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 724
    .line 725
    .line 726
    move-result p1

    .line 727
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 728
    .line 729
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHdop()Z

    .line 730
    .line 731
    .line 732
    move-result p1

    .line 733
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 734
    .line 735
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHdop()Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 740
    .line 741
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 742
    .line 743
    .line 744
    move-result p1

    .line 745
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 746
    .line 747
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasPdop()Z

    .line 748
    .line 749
    .line 750
    move-result p1

    .line 751
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 752
    .line 753
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasPdop()Z

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 758
    .line 759
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 760
    .line 761
    .line 762
    move-result p1

    .line 763
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 764
    .line 765
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVdop()Z

    .line 766
    .line 767
    .line 768
    move-result p1

    .line 769
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 770
    .line 771
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVdop()Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 776
    .line 777
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 778
    .line 779
    .line 780
    move-result p1

    .line 781
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 782
    .line 783
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsUsed()Z

    .line 784
    .line 785
    .line 786
    move-result p1

    .line 787
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 788
    .line 789
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsUsed()Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 794
    .line 795
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 796
    .line 797
    .line 798
    move-result p1

    .line 799
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 800
    .line 801
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsVisible()Z

    .line 802
    .line 803
    .line 804
    move-result p1

    .line 805
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 806
    .line 807
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsVisible()Z

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 812
    .line 813
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 814
    .line 815
    .line 816
    move-result p1

    .line 817
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 818
    .line 819
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHorPosError()Z

    .line 820
    .line 821
    .line 822
    move-result p1

    .line 823
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 824
    .line 825
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHorPosError()Z

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 830
    .line 831
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 832
    .line 833
    .line 834
    move-result p1

    .line 835
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 836
    .line 837
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertPosError()Z

    .line 838
    .line 839
    .line 840
    move-result p1

    .line 841
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 842
    .line 843
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertPosError()Z

    .line 844
    .line 845
    .line 846
    move-result v1

    .line 847
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 848
    .line 849
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 850
    .line 851
    .line 852
    move-result p1

    .line 853
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 854
    .line 855
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasNorthSpeed()Z

    .line 856
    .line 857
    .line 858
    move-result p1

    .line 859
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 860
    .line 861
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasNorthSpeed()Z

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 866
    .line 867
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 868
    .line 869
    .line 870
    move-result p1

    .line 871
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 872
    .line 873
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasEastSpeed()Z

    .line 874
    .line 875
    .line 876
    move-result p1

    .line 877
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 878
    .line 879
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasEastSpeed()Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 884
    .line 885
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 886
    .line 887
    .line 888
    move-result p1

    .line 889
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 890
    .line 891
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertSpeed()Z

    .line 892
    .line 893
    .line 894
    move-result p1

    .line 895
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 896
    .line 897
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertSpeed()Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 902
    .line 903
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 904
    .line 905
    .line 906
    move-result p1

    .line 907
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 908
    .line 909
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasTimeStamp()Z

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 914
    .line 915
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasTimeStamp()Z

    .line 916
    .line 917
    .line 918
    move-result v4

    .line 919
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 920
    .line 921
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->i(ZJZJ)J

    .line 922
    .line 923
    .line 924
    move-result-wide p1

    .line 925
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 926
    .line 927
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 928
    .line 929
    if-ne v0, p1, :cond_4

    .line 930
    .line 931
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 932
    .line 933
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 934
    .line 935
    or-int/2addr p1, p2

    .line 936
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 937
    .line 938
    :cond_4
    return-object p0

    .line 939
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 940
    .line 941
    if-ne p1, v0, :cond_5

    .line 942
    .line 943
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 944
    .line 945
    return-object p1

    .line 946
    :cond_5
    if-nez p1, :cond_6

    .line 947
    .line 948
    return-object v2

    .line 949
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .line 950
    .line 951
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 952
    .line 953
    .line 954
    move-result p1

    .line 955
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasAntennaState()Z

    .line 956
    .line 957
    .line 958
    move-result p2

    .line 959
    if-nez p2, :cond_8

    .line 960
    .line 961
    if-eqz p1, :cond_7

    .line 962
    .line 963
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 964
    .line 965
    :cond_7
    return-object v2

    .line 966
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSignalQuality()Z

    .line 967
    .line 968
    .line 969
    move-result p2

    .line 970
    if-nez p2, :cond_a

    .line 971
    .line 972
    if-eqz p1, :cond_9

    .line 973
    .line 974
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 975
    .line 976
    :cond_9
    return-object v2

    .line 977
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLatitude()Z

    .line 978
    .line 979
    .line 980
    move-result p2

    .line 981
    if-nez p2, :cond_c

    .line 982
    .line 983
    if-eqz p1, :cond_b

    .line 984
    .line 985
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 986
    .line 987
    :cond_b
    return-object v2

    .line 988
    :cond_c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasLongitude()Z

    .line 989
    .line 990
    .line 991
    move-result p2

    .line 992
    if-nez p2, :cond_e

    .line 993
    .line 994
    if-eqz p1, :cond_d

    .line 995
    .line 996
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 997
    .line 998
    :cond_d
    return-object v2

    .line 999
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeight()Z

    .line 1000
    .line 1001
    .line 1002
    move-result p2

    .line 1003
    if-nez p2, :cond_10

    .line 1004
    .line 1005
    if-eqz p1, :cond_f

    .line 1006
    .line 1007
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1008
    .line 1009
    :cond_f
    return-object v2

    .line 1010
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSpeed()Z

    .line 1011
    .line 1012
    .line 1013
    move-result p2

    .line 1014
    if-nez p2, :cond_12

    .line 1015
    .line 1016
    if-eqz p1, :cond_11

    .line 1017
    .line 1018
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1019
    .line 1020
    :cond_11
    return-object v2

    .line 1021
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHeading()Z

    .line 1022
    .line 1023
    .line 1024
    move-result p2

    .line 1025
    if-nez p2, :cond_14

    .line 1026
    .line 1027
    if-eqz p1, :cond_13

    .line 1028
    .line 1029
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1030
    .line 1031
    :cond_13
    return-object v2

    .line 1032
    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasYear()Z

    .line 1033
    .line 1034
    .line 1035
    move-result p2

    .line 1036
    if-nez p2, :cond_16

    .line 1037
    .line 1038
    if-eqz p1, :cond_15

    .line 1039
    .line 1040
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1041
    .line 1042
    :cond_15
    return-object v2

    .line 1043
    :cond_16
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMonth()Z

    .line 1044
    .line 1045
    .line 1046
    move-result p2

    .line 1047
    if-nez p2, :cond_18

    .line 1048
    .line 1049
    if-eqz p1, :cond_17

    .line 1050
    .line 1051
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1052
    .line 1053
    :cond_17
    return-object v2

    .line 1054
    :cond_18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasDay()Z

    .line 1055
    .line 1056
    .line 1057
    move-result p2

    .line 1058
    if-nez p2, :cond_1a

    .line 1059
    .line 1060
    if-eqz p1, :cond_19

    .line 1061
    .line 1062
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1063
    .line 1064
    :cond_19
    return-object v2

    .line 1065
    :cond_1a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHrs()Z

    .line 1066
    .line 1067
    .line 1068
    move-result p2

    .line 1069
    if-nez p2, :cond_1c

    .line 1070
    .line 1071
    if-eqz p1, :cond_1b

    .line 1072
    .line 1073
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1074
    .line 1075
    :cond_1b
    return-object v2

    .line 1076
    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasMin()Z

    .line 1077
    .line 1078
    .line 1079
    move-result p2

    .line 1080
    if-nez p2, :cond_1e

    .line 1081
    .line 1082
    if-eqz p1, :cond_1d

    .line 1083
    .line 1084
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1085
    .line 1086
    :cond_1d
    return-object v2

    .line 1087
    :cond_1e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSec()Z

    .line 1088
    .line 1089
    .line 1090
    move-result p2

    .line 1091
    if-nez p2, :cond_20

    .line 1092
    .line 1093
    if-eqz p1, :cond_1f

    .line 1094
    .line 1095
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1096
    .line 1097
    :cond_1f
    return-object v2

    .line 1098
    :cond_20
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasFix()Z

    .line 1099
    .line 1100
    .line 1101
    move-result p2

    .line 1102
    if-nez p2, :cond_22

    .line 1103
    .line 1104
    if-eqz p1, :cond_21

    .line 1105
    .line 1106
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1107
    .line 1108
    :cond_21
    return-object v2

    .line 1109
    :cond_22
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHdop()Z

    .line 1110
    .line 1111
    .line 1112
    move-result p2

    .line 1113
    if-nez p2, :cond_24

    .line 1114
    .line 1115
    if-eqz p1, :cond_23

    .line 1116
    .line 1117
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1118
    .line 1119
    :cond_23
    return-object v2

    .line 1120
    :cond_24
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasPdop()Z

    .line 1121
    .line 1122
    .line 1123
    move-result p2

    .line 1124
    if-nez p2, :cond_26

    .line 1125
    .line 1126
    if-eqz p1, :cond_25

    .line 1127
    .line 1128
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1129
    .line 1130
    :cond_25
    return-object v2

    .line 1131
    :cond_26
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVdop()Z

    .line 1132
    .line 1133
    .line 1134
    move-result p2

    .line 1135
    if-nez p2, :cond_28

    .line 1136
    .line 1137
    if-eqz p1, :cond_27

    .line 1138
    .line 1139
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1140
    .line 1141
    :cond_27
    return-object v2

    .line 1142
    :cond_28
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsUsed()Z

    .line 1143
    .line 1144
    .line 1145
    move-result p2

    .line 1146
    if-nez p2, :cond_2a

    .line 1147
    .line 1148
    if-eqz p1, :cond_29

    .line 1149
    .line 1150
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1151
    .line 1152
    :cond_29
    return-object v2

    .line 1153
    :cond_2a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasSatsVisible()Z

    .line 1154
    .line 1155
    .line 1156
    move-result p2

    .line 1157
    if-nez p2, :cond_2c

    .line 1158
    .line 1159
    if-eqz p1, :cond_2b

    .line 1160
    .line 1161
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1162
    .line 1163
    :cond_2b
    return-object v2

    .line 1164
    :cond_2c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasHorPosError()Z

    .line 1165
    .line 1166
    .line 1167
    move-result p2

    .line 1168
    if-nez p2, :cond_2e

    .line 1169
    .line 1170
    if-eqz p1, :cond_2d

    .line 1171
    .line 1172
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1173
    .line 1174
    :cond_2d
    return-object v2

    .line 1175
    :cond_2e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertPosError()Z

    .line 1176
    .line 1177
    .line 1178
    move-result p2

    .line 1179
    if-nez p2, :cond_30

    .line 1180
    .line 1181
    if-eqz p1, :cond_2f

    .line 1182
    .line 1183
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1184
    .line 1185
    :cond_2f
    return-object v2

    .line 1186
    :cond_30
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasNorthSpeed()Z

    .line 1187
    .line 1188
    .line 1189
    move-result p2

    .line 1190
    if-nez p2, :cond_32

    .line 1191
    .line 1192
    if-eqz p1, :cond_31

    .line 1193
    .line 1194
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1195
    .line 1196
    :cond_31
    return-object v2

    .line 1197
    :cond_32
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasEastSpeed()Z

    .line 1198
    .line 1199
    .line 1200
    move-result p2

    .line 1201
    if-nez p2, :cond_34

    .line 1202
    .line 1203
    if-eqz p1, :cond_33

    .line 1204
    .line 1205
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1206
    .line 1207
    :cond_33
    return-object v2

    .line 1208
    :cond_34
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hasVertSpeed()Z

    .line 1209
    .line 1210
    .line 1211
    move-result p2

    .line 1212
    if-nez p2, :cond_36

    .line 1213
    .line 1214
    if-eqz p1, :cond_35

    .line 1215
    .line 1216
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1217
    .line 1218
    :cond_35
    return-object v2

    .line 1219
    :cond_36
    if-eqz p1, :cond_37

    .line 1220
    .line 1221
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->memoizedIsInitialized:B

    .line 1222
    .line 1223
    :cond_37
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;

    .line 1224
    .line 1225
    return-object p1

    .line 1226
    nop

    .line 1227
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

    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_19
        0x10 -> :sswitch_18
        0x18 -> :sswitch_17
        0x20 -> :sswitch_16
        0x28 -> :sswitch_15
        0x30 -> :sswitch_14
        0x38 -> :sswitch_13
        0x40 -> :sswitch_12
        0x48 -> :sswitch_11
        0x50 -> :sswitch_10
        0x58 -> :sswitch_f
        0x60 -> :sswitch_e
        0x68 -> :sswitch_d
        0x70 -> :sswitch_c
        0x78 -> :sswitch_b
        0x80 -> :sswitch_a
        0x88 -> :sswitch_9
        0x90 -> :sswitch_8
        0x98 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xa8 -> :sswitch_5
        0xb0 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAntennaState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 2
    .line 3
    return v0
.end method

.method public getDay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 2
    .line 3
    return v0
.end method

.method public getEastSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getFix()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHdop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeading()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHorPosError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHrs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLatitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLongitude()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNorthSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPdop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSatsUsed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSatsVisible()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSec()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->o(II)I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->o(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 63
    .line 64
    const/16 v2, 0x10

    .line 65
    .line 66
    and-int/2addr v1, v2

    .line 67
    if-ne v1, v2, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 71
    .line 72
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->k(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 78
    .line 79
    const/16 v4, 0x20

    .line 80
    .line 81
    and-int/2addr v1, v4

    .line 82
    if-ne v1, v4, :cond_6

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 86
    .line 87
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->o(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 93
    .line 94
    const/16 v4, 0x40

    .line 95
    .line 96
    and-int/2addr v1, v4

    .line 97
    if-ne v1, v4, :cond_7

    .line 98
    .line 99
    const/4 v1, 0x7

    .line 100
    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 101
    .line 102
    invoke-static {v1, v4}, Lcom/google/protobuf/n;->o(II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    add-int/2addr v0, v1

    .line 107
    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 108
    .line 109
    const/16 v4, 0x80

    .line 110
    .line 111
    and-int/2addr v1, v4

    .line 112
    if-ne v1, v4, :cond_8

    .line 113
    .line 114
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 115
    .line 116
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->o(II)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 122
    .line 123
    const/16 v3, 0x100

    .line 124
    .line 125
    and-int/2addr v1, v3

    .line 126
    if-ne v1, v3, :cond_9

    .line 127
    .line 128
    const/16 v1, 0x9

    .line 129
    .line 130
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 131
    .line 132
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    :cond_9
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 138
    .line 139
    const/16 v3, 0x200

    .line 140
    .line 141
    and-int/2addr v1, v3

    .line 142
    if-ne v1, v3, :cond_a

    .line 143
    .line 144
    const/16 v1, 0xa

    .line 145
    .line 146
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 147
    .line 148
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v0, v1

    .line 153
    :cond_a
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 154
    .line 155
    const/16 v3, 0x400

    .line 156
    .line 157
    and-int/2addr v1, v3

    .line 158
    if-ne v1, v3, :cond_b

    .line 159
    .line 160
    const/16 v1, 0xb

    .line 161
    .line 162
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 163
    .line 164
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    :cond_b
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 170
    .line 171
    const/16 v3, 0x800

    .line 172
    .line 173
    and-int/2addr v1, v3

    .line 174
    if-ne v1, v3, :cond_c

    .line 175
    .line 176
    const/16 v1, 0xc

    .line 177
    .line 178
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 179
    .line 180
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    add-int/2addr v0, v1

    .line 185
    :cond_c
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 186
    .line 187
    const/16 v3, 0x1000

    .line 188
    .line 189
    and-int/2addr v1, v3

    .line 190
    if-ne v1, v3, :cond_d

    .line 191
    .line 192
    const/16 v1, 0xd

    .line 193
    .line 194
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 195
    .line 196
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    add-int/2addr v0, v1

    .line 201
    :cond_d
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 202
    .line 203
    const/16 v3, 0x2000

    .line 204
    .line 205
    and-int/2addr v1, v3

    .line 206
    if-ne v1, v3, :cond_e

    .line 207
    .line 208
    const/16 v1, 0xe

    .line 209
    .line 210
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 211
    .line 212
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    add-int/2addr v0, v1

    .line 217
    :cond_e
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 218
    .line 219
    const/16 v3, 0x4000

    .line 220
    .line 221
    and-int/2addr v1, v3

    .line 222
    if-ne v1, v3, :cond_f

    .line 223
    .line 224
    const/16 v1, 0xf

    .line 225
    .line 226
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 227
    .line 228
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->o(II)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    add-int/2addr v0, v1

    .line 233
    :cond_f
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 234
    .line 235
    const v3, 0x8000

    .line 236
    .line 237
    .line 238
    and-int/2addr v1, v3

    .line 239
    if-ne v1, v3, :cond_10

    .line 240
    .line 241
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 242
    .line 243
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->o(II)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    add-int/2addr v0, v1

    .line 248
    :cond_10
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 249
    .line 250
    const/high16 v2, 0x10000

    .line 251
    .line 252
    and-int/2addr v1, v2

    .line 253
    if-ne v1, v2, :cond_11

    .line 254
    .line 255
    const/16 v1, 0x11

    .line 256
    .line 257
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 258
    .line 259
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->o(II)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    add-int/2addr v0, v1

    .line 264
    :cond_11
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 265
    .line 266
    const/high16 v2, 0x20000

    .line 267
    .line 268
    and-int/2addr v1, v2

    .line 269
    if-ne v1, v2, :cond_12

    .line 270
    .line 271
    const/16 v1, 0x12

    .line 272
    .line 273
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 274
    .line 275
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->o(II)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    add-int/2addr v0, v1

    .line 280
    :cond_12
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 281
    .line 282
    const/high16 v2, 0x40000

    .line 283
    .line 284
    and-int/2addr v1, v2

    .line 285
    if-ne v1, v2, :cond_13

    .line 286
    .line 287
    const/16 v1, 0x13

    .line 288
    .line 289
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 290
    .line 291
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->o(II)I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    add-int/2addr v0, v1

    .line 296
    :cond_13
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 297
    .line 298
    const/high16 v2, 0x80000

    .line 299
    .line 300
    and-int/2addr v1, v2

    .line 301
    if-ne v1, v2, :cond_14

    .line 302
    .line 303
    const/16 v1, 0x14

    .line 304
    .line 305
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 306
    .line 307
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->o(II)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    add-int/2addr v0, v1

    .line 312
    :cond_14
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 313
    .line 314
    const/high16 v2, 0x100000

    .line 315
    .line 316
    and-int/2addr v1, v2

    .line 317
    if-ne v1, v2, :cond_15

    .line 318
    .line 319
    const/16 v1, 0x15

    .line 320
    .line 321
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 322
    .line 323
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->o(II)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    add-int/2addr v0, v1

    .line 328
    :cond_15
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 329
    .line 330
    const/high16 v2, 0x200000

    .line 331
    .line 332
    and-int/2addr v1, v2

    .line 333
    if-ne v1, v2, :cond_16

    .line 334
    .line 335
    const/16 v1, 0x16

    .line 336
    .line 337
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 338
    .line 339
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    add-int/2addr v0, v1

    .line 344
    :cond_16
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 345
    .line 346
    const/high16 v2, 0x400000

    .line 347
    .line 348
    and-int/2addr v1, v2

    .line 349
    if-ne v1, v2, :cond_17

    .line 350
    .line 351
    const/16 v1, 0x17

    .line 352
    .line 353
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 354
    .line 355
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    add-int/2addr v0, v1

    .line 360
    :cond_17
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 361
    .line 362
    const/high16 v2, 0x800000

    .line 363
    .line 364
    and-int/2addr v1, v2

    .line 365
    if-ne v1, v2, :cond_18

    .line 366
    .line 367
    const/16 v1, 0x18

    .line 368
    .line 369
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 370
    .line 371
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    add-int/2addr v0, v1

    .line 376
    :cond_18
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 377
    .line 378
    const/high16 v2, 0x1000000

    .line 379
    .line 380
    and-int/2addr v1, v2

    .line 381
    if-ne v1, v2, :cond_19

    .line 382
    .line 383
    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 384
    .line 385
    const/16 v3, 0x19

    .line 386
    .line 387
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->q(J)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    add-int/2addr v1, v3

    .line 396
    add-int/2addr v0, v1

    .line 397
    :cond_19
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    add-int/2addr v1, v0

    .line 404
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 405
    .line 406
    return v1
.end method

.method public getSignalQuality()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVdop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVertPosError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVertSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 2
    .line 3
    return v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasAntennaState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasDay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasEastSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x400000

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

.method public hasFix()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x2000

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

.method public hasHdop()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x4000

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

.method public hasHeading()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasHeight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasHorPosError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

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

.method public hasHrs()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x400

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

.method public hasLatitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasMin()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x800

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

.method public hasMonth()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasNorthSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x200000

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

.method public hasPdop()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public hasSatsUsed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000

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

.method public hasSatsVisible()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

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

.method public hasSec()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x1000

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

.method public hasSignalQuality()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public hasTimeStamp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x1000000

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

.method public hasVdop()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

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

.method public hasVertPosError()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

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

.method public hasVertSpeed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x800000

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

.method public hasYear()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->antennaState_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->C(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->signalQuality_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->C(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->latitude_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->longitude_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->height_:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->y(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 61
    .line 62
    const/16 v3, 0x20

    .line 63
    .line 64
    and-int/2addr v0, v3

    .line 65
    if-ne v0, v3, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->speed_:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->C(II)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 74
    .line 75
    const/16 v3, 0x40

    .line 76
    .line 77
    and-int/2addr v0, v3

    .line 78
    if-ne v0, v3, :cond_6

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->heading_:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->C(II)V

    .line 84
    .line 85
    .line 86
    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 87
    .line 88
    const/16 v3, 0x80

    .line 89
    .line 90
    and-int/2addr v0, v3

    .line 91
    if-ne v0, v3, :cond_7

    .line 92
    .line 93
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->year_:I

    .line 94
    .line 95
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/n;->C(II)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 99
    .line 100
    const/16 v2, 0x100

    .line 101
    .line 102
    and-int/2addr v0, v2

    .line 103
    if-ne v0, v2, :cond_8

    .line 104
    .line 105
    const/16 v0, 0x9

    .line 106
    .line 107
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->month_:I

    .line 108
    .line 109
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 113
    .line 114
    const/16 v2, 0x200

    .line 115
    .line 116
    and-int/2addr v0, v2

    .line 117
    if-ne v0, v2, :cond_9

    .line 118
    .line 119
    const/16 v0, 0xa

    .line 120
    .line 121
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->day_:I

    .line 122
    .line 123
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 124
    .line 125
    .line 126
    :cond_9
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 127
    .line 128
    const/16 v2, 0x400

    .line 129
    .line 130
    and-int/2addr v0, v2

    .line 131
    if-ne v0, v2, :cond_a

    .line 132
    .line 133
    const/16 v0, 0xb

    .line 134
    .line 135
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hrs_:I

    .line 136
    .line 137
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 138
    .line 139
    .line 140
    :cond_a
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 141
    .line 142
    const/16 v2, 0x800

    .line 143
    .line 144
    and-int/2addr v0, v2

    .line 145
    if-ne v0, v2, :cond_b

    .line 146
    .line 147
    const/16 v0, 0xc

    .line 148
    .line 149
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->min_:I

    .line 150
    .line 151
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 152
    .line 153
    .line 154
    :cond_b
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 155
    .line 156
    const/16 v2, 0x1000

    .line 157
    .line 158
    and-int/2addr v0, v2

    .line 159
    if-ne v0, v2, :cond_c

    .line 160
    .line 161
    const/16 v0, 0xd

    .line 162
    .line 163
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->sec_:I

    .line 164
    .line 165
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 166
    .line 167
    .line 168
    :cond_c
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 169
    .line 170
    const/16 v2, 0x2000

    .line 171
    .line 172
    and-int/2addr v0, v2

    .line 173
    if-ne v0, v2, :cond_d

    .line 174
    .line 175
    const/16 v0, 0xe

    .line 176
    .line 177
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->fix_:I

    .line 178
    .line 179
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 180
    .line 181
    .line 182
    :cond_d
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 183
    .line 184
    const/16 v2, 0x4000

    .line 185
    .line 186
    and-int/2addr v0, v2

    .line 187
    if-ne v0, v2, :cond_e

    .line 188
    .line 189
    const/16 v0, 0xf

    .line 190
    .line 191
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->hdop_:I

    .line 192
    .line 193
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->C(II)V

    .line 194
    .line 195
    .line 196
    :cond_e
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 197
    .line 198
    const v2, 0x8000

    .line 199
    .line 200
    .line 201
    and-int/2addr v0, v2

    .line 202
    if-ne v0, v2, :cond_f

    .line 203
    .line 204
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->pdop_:I

    .line 205
    .line 206
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->C(II)V

    .line 207
    .line 208
    .line 209
    :cond_f
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 210
    .line 211
    const/high16 v1, 0x10000

    .line 212
    .line 213
    and-int/2addr v0, v1

    .line 214
    if-ne v0, v1, :cond_10

    .line 215
    .line 216
    const/16 v0, 0x11

    .line 217
    .line 218
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vdop_:I

    .line 219
    .line 220
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->C(II)V

    .line 221
    .line 222
    .line 223
    :cond_10
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 224
    .line 225
    const/high16 v1, 0x20000

    .line 226
    .line 227
    and-int/2addr v0, v1

    .line 228
    if-ne v0, v1, :cond_11

    .line 229
    .line 230
    const/16 v0, 0x12

    .line 231
    .line 232
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsUsed_:I

    .line 233
    .line 234
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->C(II)V

    .line 235
    .line 236
    .line 237
    :cond_11
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 238
    .line 239
    const/high16 v1, 0x40000

    .line 240
    .line 241
    and-int/2addr v0, v1

    .line 242
    if-ne v0, v1, :cond_12

    .line 243
    .line 244
    const/16 v0, 0x13

    .line 245
    .line 246
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->satsVisible_:I

    .line 247
    .line 248
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->C(II)V

    .line 249
    .line 250
    .line 251
    :cond_12
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 252
    .line 253
    const/high16 v1, 0x80000

    .line 254
    .line 255
    and-int/2addr v0, v1

    .line 256
    if-ne v0, v1, :cond_13

    .line 257
    .line 258
    const/16 v0, 0x14

    .line 259
    .line 260
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->horPosError_:I

    .line 261
    .line 262
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->C(II)V

    .line 263
    .line 264
    .line 265
    :cond_13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 266
    .line 267
    const/high16 v1, 0x100000

    .line 268
    .line 269
    and-int/2addr v0, v1

    .line 270
    if-ne v0, v1, :cond_14

    .line 271
    .line 272
    const/16 v0, 0x15

    .line 273
    .line 274
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertPosError_:I

    .line 275
    .line 276
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->C(II)V

    .line 277
    .line 278
    .line 279
    :cond_14
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 280
    .line 281
    const/high16 v1, 0x200000

    .line 282
    .line 283
    and-int/2addr v0, v1

    .line 284
    if-ne v0, v1, :cond_15

    .line 285
    .line 286
    const/16 v0, 0x16

    .line 287
    .line 288
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->northSpeed_:I

    .line 289
    .line 290
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 291
    .line 292
    .line 293
    :cond_15
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 294
    .line 295
    const/high16 v1, 0x400000

    .line 296
    .line 297
    and-int/2addr v0, v1

    .line 298
    if-ne v0, v1, :cond_16

    .line 299
    .line 300
    const/16 v0, 0x17

    .line 301
    .line 302
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->eastSpeed_:I

    .line 303
    .line 304
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 305
    .line 306
    .line 307
    :cond_16
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 308
    .line 309
    const/high16 v1, 0x800000

    .line 310
    .line 311
    and-int/2addr v0, v1

    .line 312
    if-ne v0, v1, :cond_17

    .line 313
    .line 314
    const/16 v0, 0x18

    .line 315
    .line 316
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->vertSpeed_:I

    .line 317
    .line 318
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 319
    .line 320
    .line 321
    :cond_17
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->bitField0_:I

    .line 322
    .line 323
    const/high16 v1, 0x1000000

    .line 324
    .line 325
    and-int/2addr v0, v1

    .line 326
    if-ne v0, v1, :cond_18

    .line 327
    .line 328
    const/16 v0, 0x19

    .line 329
    .line 330
    iget-wide v1, p0, Lcom/baidu/carlife/protobuf/CarlifeCarGpsProto$CarlifeCarGps;->timeStamp_:J

    .line 331
    .line 332
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/n;->E(IJ)V

    .line 333
    .line 334
    .line 335
    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 336
    .line 337
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 338
    .line 339
    .line 340
    return-void
.end method
