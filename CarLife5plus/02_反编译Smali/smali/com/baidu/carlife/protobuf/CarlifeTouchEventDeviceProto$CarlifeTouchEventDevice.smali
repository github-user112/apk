.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeTouchEventDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDeviceOrBuilder;"
    }
.end annotation


# static fields
.field public static final ABS_X_MAX_FIELD_NUMBER:I = 0x6

.field public static final ABS_X_MIN_FIELD_NUMBER:I = 0x5

.field public static final ABS_Y_MAX_FIELD_NUMBER:I = 0x8

.field public static final ABS_Y_MIN_FIELD_NUMBER:I = 0x7

.field public static final CID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

.field public static final DEVICE_FIELD_NUMBER:I = 0x9

.field public static final DOWNEVENT_FIELD_NUMBER:I = 0xa

.field public static final EVENTX_FIELD_NUMBER:I = 0x2

.field public static final MOVEEVENT_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final SCREEN_HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final SCREEN_WIDTH_FIELD_NUMBER:I = 0x3

.field public static final UPEVENT_FIELD_NUMBER:I = 0xb


# instance fields
.field private absXMax_:I

.field private absXMin_:I

.field private absYMax_:I

.field private absYMin_:I

.field private bitField0_:I

.field private cid_:I

.field private device_:Ljava/lang/String;

.field private downEvent_:Lcom/google/protobuf/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/m0;"
        }
    .end annotation
.end field

.field private eventx_:I

.field private memoizedIsInitialized:B

.field private moveEvent_:Lcom/google/protobuf/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/m0;"
        }
    .end annotation
.end field

.field private screenHeight_:I

.field private screenWidth_:I

.field private upEvent_:Lcom/google/protobuf/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/m0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setCid(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsXMin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsXMax(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsXMax()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsYMin(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsYMin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsYMax(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsYMax()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDevice(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearDevice()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDeviceBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearCid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addAllDownEvent(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearDownEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->removeDownEvent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setEventx(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addAllUpEvent(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearUpEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->removeUpEvent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$3900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearEventx()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addAllMoveEvent(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearMoveEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$4600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->removeMoveEvent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setScreenWidth(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearScreenWidth()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setScreenHeight(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearScreenHeight()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsXMin(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllDownEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllMoveEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllUpEvent(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAbsXMax()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearAbsXMin()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearAbsYMax()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearAbsYMin()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearCid()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearDevice()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearDownEvent()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 6
    .line 7
    return-void
.end method

.method private clearEventx()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMoveEvent()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 6
    .line 7
    return-void
.end method

.method private clearScreenHeight()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearScreenWidth()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearUpEvent()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 6
    .line 7
    return-void
.end method

.method private ensureDownEventIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

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
    invoke-static {v0}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private ensureMoveEventIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

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
    invoke-static {v0}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private ensureUpEventIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

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
    invoke-static {v0}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

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

.method private removeDownEvent(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private removeMoveEvent(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private removeUpEvent(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setAbsXMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 8
    .line 9
    return-void
.end method

.method private setAbsXMin(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 8
    .line 9
    return-void
.end method

.method private setAbsYMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 8
    .line 9
    return-void
.end method

.method private setAbsYMin(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 8
    .line 9
    return-void
.end method

.method private setCid(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 8
    .line 9
    return-void
.end method

.method private setDevice(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setDeviceBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEventx(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setScreenHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 8
    .line 9
    return-void
.end method

.method private setScreenWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 8
    .line 9
    return-void
.end method

.method private setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 60
    .line 61
    check-cast p1, Lcom/google/protobuf/d;

    .line 62
    .line 63
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 64
    .line 65
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 66
    .line 67
    check-cast p1, Lcom/google/protobuf/d;

    .line 68
    .line 69
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 70
    .line 71
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 72
    .line 73
    check-cast p1, Lcom/google/protobuf/d;

    .line 74
    .line 75
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 76
    .line 77
    return-object v1

    .line 78
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 79
    .line 80
    check-cast p3, Lcom/google/protobuf/r;

    .line 81
    .line 82
    :cond_2
    :goto_3
    if-nez v2, :cond_6

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    sparse-switch p1, :sswitch_data_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    :sswitch_0
    const/4 v2, 0x1

    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :catch_0
    move-exception p1

    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :catch_1
    move-exception p1

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :sswitch_1
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 109
    .line 110
    move-object v1, p1

    .line 111
    check-cast v1, Lcom/google/protobuf/d;

    .line 112
    .line 113
    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 122
    .line 123
    :cond_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 124
    .line 125
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->parser()Lcom/google/protobuf/v0;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/j;->j(Lcom/google/protobuf/v0;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 134
    .line 135
    check-cast p1, Lcom/google/protobuf/d;

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :sswitch_2
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 142
    .line 143
    move-object v1, p1

    .line 144
    check-cast v1, Lcom/google/protobuf/d;

    .line 145
    .line 146
    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    .line 147
    .line 148
    if-nez v1, :cond_4

    .line 149
    .line 150
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 155
    .line 156
    :cond_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 157
    .line 158
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->parser()Lcom/google/protobuf/v0;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/j;->j(Lcom/google/protobuf/v0;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 167
    .line 168
    check-cast p1, Lcom/google/protobuf/d;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :sswitch_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 175
    .line 176
    move-object v1, p1

    .line 177
    check-cast v1, Lcom/google/protobuf/d;

    .line 178
    .line 179
    iget-boolean v1, v1, Lcom/google/protobuf/d;->a:Z

    .line 180
    .line 181
    if-nez v1, :cond_5

    .line 182
    .line 183
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 188
    .line 189
    :cond_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 190
    .line 191
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->parser()Lcom/google/protobuf/v0;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/j;->j(Lcom/google/protobuf/v0;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 200
    .line 201
    check-cast p1, Lcom/google/protobuf/d;

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 212
    .line 213
    or-int/lit16 v1, v1, 0x100

    .line 214
    .line 215
    iput v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 216
    .line 217
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :sswitch_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 222
    .line 223
    or-int/lit16 p1, p1, 0x80

    .line 224
    .line 225
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :sswitch_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 236
    .line 237
    or-int/lit8 p1, p1, 0x40

    .line 238
    .line 239
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :sswitch_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 250
    .line 251
    or-int/lit8 p1, p1, 0x20

    .line 252
    .line 253
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 264
    .line 265
    or-int/lit8 p1, p1, 0x10

    .line 266
    .line 267
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 268
    .line 269
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :sswitch_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 278
    .line 279
    or-int/lit8 p1, p1, 0x8

    .line 280
    .line 281
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 282
    .line 283
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 288
    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :sswitch_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 292
    .line 293
    or-int/lit8 p1, p1, 0x4

    .line 294
    .line 295
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 296
    .line 297
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 302
    .line 303
    goto/16 :goto_3

    .line 304
    .line 305
    :sswitch_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 306
    .line 307
    or-int/lit8 p1, p1, 0x2

    .line 308
    .line 309
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 310
    .line 311
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :sswitch_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 320
    .line 321
    or-int/2addr p1, v0

    .line 322
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 323
    .line 324
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :goto_4
    throw p1

    .line 333
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 334
    .line 335
    new-instance p3, Lcom/google/protobuf/o0;

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    throw p2

    .line 348
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 349
    .line 350
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    throw p2

    .line 354
    :cond_6
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 355
    .line 356
    return-object p1

    .line 357
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 358
    .line 359
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 366
    .line 367
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 372
    .line 373
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 378
    .line 379
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 384
    .line 385
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 390
    .line 391
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 402
    .line 403
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 408
    .line 409
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 414
    .line 415
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 420
    .line 421
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 426
    .line 427
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 432
    .line 433
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 438
    .line 439
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 444
    .line 445
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 456
    .line 457
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 462
    .line 463
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 474
    .line 475
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 480
    .line 481
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 492
    .line 493
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 498
    .line 499
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 504
    .line 505
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 516
    .line 517
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 522
    .line 523
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 524
    .line 525
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 526
    .line 527
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 532
    .line 533
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 534
    .line 535
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 536
    .line 537
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 542
    .line 543
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 544
    .line 545
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 546
    .line 547
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 552
    .line 553
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 554
    .line 555
    if-ne p2, p1, :cond_7

    .line 556
    .line 557
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 558
    .line 559
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 560
    .line 561
    or-int/2addr p1, p2

    .line 562
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 563
    .line 564
    :cond_7
    return-object p0

    .line 565
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 566
    .line 567
    if-ne p1, v0, :cond_8

    .line 568
    .line 569
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 570
    .line 571
    return-object p1

    .line 572
    :cond_8
    if-nez p1, :cond_9

    .line 573
    .line 574
    goto/16 :goto_a

    .line 575
    .line 576
    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    .line 577
    .line 578
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 579
    .line 580
    .line 581
    move-result p1

    .line 582
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    .line 583
    .line 584
    .line 585
    move-result p2

    .line 586
    if-nez p2, :cond_a

    .line 587
    .line 588
    if-eqz p1, :cond_17

    .line 589
    .line 590
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 591
    .line 592
    return-object v1

    .line 593
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    .line 594
    .line 595
    .line 596
    move-result p2

    .line 597
    if-nez p2, :cond_b

    .line 598
    .line 599
    if-eqz p1, :cond_17

    .line 600
    .line 601
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 602
    .line 603
    return-object v1

    .line 604
    :cond_b
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    .line 605
    .line 606
    .line 607
    move-result p2

    .line 608
    if-nez p2, :cond_c

    .line 609
    .line 610
    if-eqz p1, :cond_17

    .line 611
    .line 612
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 613
    .line 614
    return-object v1

    .line 615
    :cond_c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    .line 616
    .line 617
    .line 618
    move-result p2

    .line 619
    if-nez p2, :cond_d

    .line 620
    .line 621
    if-eqz p1, :cond_17

    .line 622
    .line 623
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 624
    .line 625
    return-object v1

    .line 626
    :cond_d
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    .line 627
    .line 628
    .line 629
    move-result p2

    .line 630
    if-nez p2, :cond_e

    .line 631
    .line 632
    if-eqz p1, :cond_17

    .line 633
    .line 634
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 635
    .line 636
    return-object v1

    .line 637
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    .line 638
    .line 639
    .line 640
    move-result p2

    .line 641
    if-nez p2, :cond_f

    .line 642
    .line 643
    if-eqz p1, :cond_17

    .line 644
    .line 645
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 646
    .line 647
    return-object v1

    .line 648
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    .line 649
    .line 650
    .line 651
    move-result p2

    .line 652
    if-nez p2, :cond_10

    .line 653
    .line 654
    if-eqz p1, :cond_17

    .line 655
    .line 656
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 657
    .line 658
    return-object v1

    .line 659
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    .line 660
    .line 661
    .line 662
    move-result p2

    .line 663
    if-nez p2, :cond_11

    .line 664
    .line 665
    if-eqz p1, :cond_17

    .line 666
    .line 667
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 668
    .line 669
    return-object v1

    .line 670
    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    .line 671
    .line 672
    .line 673
    move-result p2

    .line 674
    if-nez p2, :cond_12

    .line 675
    .line 676
    if-eqz p1, :cond_17

    .line 677
    .line 678
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 679
    .line 680
    return-object v1

    .line 681
    :cond_12
    const/4 p2, 0x0

    .line 682
    :goto_7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEventCount()I

    .line 683
    .line 684
    .line 685
    move-result p3

    .line 686
    if-ge p2, p3, :cond_14

    .line 687
    .line 688
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 689
    .line 690
    .line 691
    move-result-object p3

    .line 692
    invoke-virtual {p3}, Lcom/google/protobuf/d0;->isInitialized()Z

    .line 693
    .line 694
    .line 695
    move-result p3

    .line 696
    if-nez p3, :cond_13

    .line 697
    .line 698
    if-eqz p1, :cond_17

    .line 699
    .line 700
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 701
    .line 702
    return-object v1

    .line 703
    :cond_13
    add-int/lit8 p2, p2, 0x1

    .line 704
    .line 705
    goto :goto_7

    .line 706
    :cond_14
    const/4 p2, 0x0

    .line 707
    :goto_8
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEventCount()I

    .line 708
    .line 709
    .line 710
    move-result p3

    .line 711
    if-ge p2, p3, :cond_16

    .line 712
    .line 713
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 714
    .line 715
    .line 716
    move-result-object p3

    .line 717
    invoke-virtual {p3}, Lcom/google/protobuf/d0;->isInitialized()Z

    .line 718
    .line 719
    .line 720
    move-result p3

    .line 721
    if-nez p3, :cond_15

    .line 722
    .line 723
    if-eqz p1, :cond_17

    .line 724
    .line 725
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 726
    .line 727
    return-object v1

    .line 728
    :cond_15
    add-int/lit8 p2, p2, 0x1

    .line 729
    .line 730
    goto :goto_8

    .line 731
    :cond_16
    const/4 p2, 0x0

    .line 732
    :goto_9
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEventCount()I

    .line 733
    .line 734
    .line 735
    move-result p3

    .line 736
    if-ge p2, p3, :cond_19

    .line 737
    .line 738
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 739
    .line 740
    .line 741
    move-result-object p3

    .line 742
    invoke-virtual {p3}, Lcom/google/protobuf/d0;->isInitialized()Z

    .line 743
    .line 744
    .line 745
    move-result p3

    .line 746
    if-nez p3, :cond_18

    .line 747
    .line 748
    if-eqz p1, :cond_17

    .line 749
    .line 750
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 751
    .line 752
    :cond_17
    :goto_a
    return-object v1

    .line 753
    :cond_18
    add-int/lit8 p2, p2, 0x1

    .line 754
    .line 755
    goto :goto_9

    .line 756
    :cond_19
    if-eqz p1, :cond_1a

    .line 757
    .line 758
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    .line 759
    .line 760
    :cond_1a
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 761
    .line 762
    return-object p1

    .line 763
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

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAbsXMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAbsXMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAbsYMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAbsYMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

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

.method public getDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 8
    .line 9
    return-object p1
.end method

.method public getDownEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDownEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownEventOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getDownEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMoveEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMoveEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMoveEventOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMoveEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 2
    .line 3
    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    and-int/2addr v1, v3

    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 79
    .line 80
    const/16 v3, 0x20

    .line 81
    .line 82
    and-int/2addr v1, v3

    .line 83
    if-ne v1, v3, :cond_6

    .line 84
    .line 85
    const/4 v1, 0x6

    .line 86
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 87
    .line 88
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->k(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 94
    .line 95
    const/16 v3, 0x40

    .line 96
    .line 97
    and-int/2addr v1, v3

    .line 98
    if-ne v1, v3, :cond_7

    .line 99
    .line 100
    const/4 v1, 0x7

    .line 101
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 102
    .line 103
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->k(II)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    add-int/2addr v0, v1

    .line 108
    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 109
    .line 110
    const/16 v3, 0x80

    .line 111
    .line 112
    and-int/2addr v1, v3

    .line 113
    if-ne v1, v3, :cond_8

    .line 114
    .line 115
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 116
    .line 117
    invoke-static {v4, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 122
    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 123
    .line 124
    const/16 v3, 0x100

    .line 125
    .line 126
    and-int/2addr v1, v3

    .line 127
    if-ne v1, v3, :cond_9

    .line 128
    .line 129
    const/16 v1, 0x9

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    add-int/2addr v0, v1

    .line 140
    :cond_9
    const/4 v1, 0x0

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 142
    .line 143
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-ge v1, v3, :cond_a

    .line 148
    .line 149
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 150
    .line 151
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lcom/google/protobuf/s0;

    .line 156
    .line 157
    const/16 v4, 0xa

    .line 158
    .line 159
    invoke-static {v4, v3}, Lcom/google/protobuf/n;->l(ILcom/google/protobuf/s0;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    add-int/2addr v0, v3

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_a
    const/4 v1, 0x0

    .line 168
    :goto_2
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 169
    .line 170
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-ge v1, v3, :cond_b

    .line 175
    .line 176
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 177
    .line 178
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Lcom/google/protobuf/s0;

    .line 183
    .line 184
    const/16 v4, 0xb

    .line 185
    .line 186
    invoke-static {v4, v3}, Lcom/google/protobuf/n;->l(ILcom/google/protobuf/s0;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    add-int/2addr v0, v3

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-ge v2, v1, :cond_c

    .line 201
    .line 202
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 203
    .line 204
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lcom/google/protobuf/s0;

    .line 209
    .line 210
    const/16 v3, 0xc

    .line 211
    .line 212
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->l(ILcom/google/protobuf/s0;)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    add-int/2addr v0, v1

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    add-int/2addr v1, v0

    .line 227
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 228
    .line 229
    return v1
.end method

.method public getUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 8
    .line 9
    return-object p1
.end method

.method public getUpEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUpEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpEventOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getUpEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAbsXMax()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasAbsXMin()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasAbsYMax()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasAbsYMin()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasDevice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasEventx()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasScreenHeight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public hasScreenWidth()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 61
    .line 62
    const/16 v1, 0x20

    .line 63
    .line 64
    and-int/2addr v0, v1

    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 74
    .line 75
    const/16 v1, 0x40

    .line 76
    .line 77
    and-int/2addr v0, v1

    .line 78
    if-ne v0, v1, :cond_6

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 84
    .line 85
    .line 86
    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 87
    .line 88
    const/16 v1, 0x80

    .line 89
    .line 90
    and-int/2addr v0, v1

    .line 91
    if-ne v0, v1, :cond_7

    .line 92
    .line 93
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    .line 94
    .line 95
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 99
    .line 100
    const/16 v1, 0x100

    .line 101
    .line 102
    and-int/2addr v0, v1

    .line 103
    if-ne v0, v1, :cond_8

    .line 104
    .line 105
    const/16 v0, 0x9

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    const/4 v0, 0x0

    .line 115
    const/4 v1, 0x0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ge v1, v2, :cond_9

    .line 123
    .line 124
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:Lcom/google/protobuf/m0;

    .line 125
    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/google/protobuf/s0;

    .line 131
    .line 132
    const/16 v3, 0xa

    .line 133
    .line 134
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/n;->z(ILcom/google/protobuf/s0;)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_9
    const/4 v1, 0x0

    .line 141
    :goto_1
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-ge v1, v2, :cond_a

    .line 148
    .line 149
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:Lcom/google/protobuf/m0;

    .line 150
    .line 151
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Lcom/google/protobuf/s0;

    .line 156
    .line 157
    const/16 v3, 0xb

    .line 158
    .line 159
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/n;->z(ILcom/google/protobuf/s0;)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-ge v0, v1, :cond_b

    .line 172
    .line 173
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:Lcom/google/protobuf/m0;

    .line 174
    .line 175
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/google/protobuf/s0;

    .line 180
    .line 181
    const/16 v2, 0xc

    .line 182
    .line 183
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->z(ILcom/google/protobuf/s0;)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
