.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
.super La/c/a/p;
.source ""

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
        "La/c/a/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;",
        ">;",
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

.field private static volatile PARSER:La/c/a/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
            ">;"
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

.field private downEvent_:La/c/a/r$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/r$h<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventx_:I

.field private memoizedIsInitialized:B

.field private moveEvent_:La/c/a/r$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/r$h<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight_:I

.field private screenWidth_:I

.field private upEvent_:La/c/a/r$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/r$h<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {v0}, La/c/a/p;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/c/a/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    invoke-static {}, La/c/a/p;->emptyProtobufList()La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-static {}, La/c/a/p;->emptyProtobufList()La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-static {}, La/c/a/p;->emptyProtobufList()La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setCid(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsXMin()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsXMax(I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsXMax()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsYMin(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsYMin()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsYMax(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearAbsYMax()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDevice(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearDevice()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;La/c/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDeviceBytes(La/c/a/g;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearCid()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addAllDownEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearDownEvent()V

    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->removeDownEvent(I)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setEventx(I)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addAllUpEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearUpEvent()V

    return-void
.end method

.method public static synthetic access$3700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->removeUpEvent(I)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearEventx()V

    return-void
.end method

.method public static synthetic access$4000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$4100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-void
.end method

.method public static synthetic access$4200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$4300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-void
.end method

.method public static synthetic access$4400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->addAllMoveEvent(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$4500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearMoveEvent()V

    return-void
.end method

.method public static synthetic access$4600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->removeMoveEvent(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setScreenWidth(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearScreenWidth()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setScreenHeight(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->clearScreenHeight()V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->setAbsXMin(I)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    check-cast v0, La/c/a/c;

    invoke-virtual {v0, p1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    check-cast v0, La/c/a/c;

    invoke-virtual {v0, p1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    check-cast v0, La/c/a/c;

    invoke-virtual {v0, p1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    check-cast v0, La/c/a/c;

    invoke-virtual {v0, p1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    check-cast v0, La/c/a/c;

    invoke-virtual {v0, p1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    check-cast v0, La/c/a/c;

    invoke-virtual {v0, p1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAbsXMax()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    return-void
.end method

.method private clearAbsXMin()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    return-void
.end method

.method private clearAbsYMax()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    return-void
.end method

.method private clearAbsYMin()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    return-void
.end method

.method private clearCid()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    return-void
.end method

.method private clearDevice()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    return-void
.end method

.method private clearDownEvent()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyProtobufList()La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    return-void
.end method

.method private clearEventx()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    return-void
.end method

.method private clearMoveEvent()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyProtobufList()La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    return-void
.end method

.method private clearScreenHeight()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    return-void
.end method

.method private clearScreenWidth()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    return-void
.end method

.method private clearUpEvent()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyProtobufList()La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    return-void
.end method

.method private ensureDownEventIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$h;)La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    :cond_0
    return-void
.end method

.method private ensureMoveEventIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$h;)La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    :cond_0
    return-void
.end method

.method private ensureUpEventIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$h;)La/c/a/r$h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    invoke-virtual {v0, p0}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;[B)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parseFrom([BLa/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p0
.end method

.method public static parser()La/c/a/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {v0}, La/c/a/p;->getParserForType()La/c/a/z;

    move-result-object v0

    return-object v0
.end method

.method private removeDownEvent(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeMoveEvent(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeUpEvent(I)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAbsXMax(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    return-void
.end method

.method private setAbsXMin(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    return-void
.end method

.method private setAbsYMax(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    return-void
.end method

.method private setAbsYMin(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    return-void
.end method

.method private setCid(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    return-void
.end method

.method private setDevice(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceBytes(La/c/a/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    invoke-virtual {p1}, La/c/a/g;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    return-void
.end method

.method private setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureDownEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEventx(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    return-void
.end method

.method private setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureMoveEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setScreenHeight(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    return-void
.end method

.method private setScreenWidth(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    return-void
.end method

.method private setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->ensureUpEventIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:La/c/a/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:La/c/a/z;

    if-nez p2, :cond_0

    new-instance p2, La/c/a/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-direct {p2, p3}, La/c/a/p$c;-><init>(La/c/a/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:La/c/a/z;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->PARSER:La/c/a/z;

    return-object p1

    :pswitch_1
    check-cast p2, La/c/a/h;

    check-cast p3, La/c/a/m;

    :cond_2
    :goto_1
    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {p2}, La/c/a/h;->u()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, La/c/a/p;->parseUnknownField(ILa/c/a/h;)Z

    move-result p1

    goto/16 :goto_4

    :sswitch_0
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    move-object v1, p1

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_3

    .line 2
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$h;)La/c/a/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    :cond_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->parser()La/c/a/z;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, La/c/a/h;->j(La/c/a/z;La/c/a/m;)La/c/a/x;

    move-result-object v1

    check-cast p1, La/c/a/c;

    :goto_2
    invoke-virtual {p1, v1}, La/c/a/c;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    move-object v1, p1

    check-cast v1, La/c/a/c;

    .line 3
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_4

    .line 4
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$h;)La/c/a/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    :cond_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->parser()La/c/a/z;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, La/c/a/h;->j(La/c/a/z;La/c/a/m;)La/c/a/x;

    move-result-object v1

    check-cast p1, La/c/a/c;

    goto :goto_2

    :sswitch_2
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    move-object v1, p1

    check-cast v1, La/c/a/c;

    .line 5
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_5

    .line 6
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$h;)La/c/a/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    :cond_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;->parser()La/c/a/z;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, La/c/a/h;->j(La/c/a/z;La/c/a/m;)La/c/a/x;

    move-result-object v1

    check-cast p1, La/c/a/c;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p2}, La/c/a/h;->t()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 7
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 8
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    goto :goto_1

    :sswitch_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 9
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 10
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    goto/16 :goto_1

    :sswitch_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 11
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 12
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    goto/16 :goto_1

    :sswitch_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 13
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 14
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    goto/16 :goto_1

    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 15
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 16
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    goto/16 :goto_1

    :sswitch_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 17
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 18
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    goto/16 :goto_1

    :sswitch_a
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 19
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 20
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    goto/16 :goto_1

    :sswitch_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    .line 21
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 22
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_c
    const/4 v2, 0x1

    goto/16 :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, La/c/a/s;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, La/c/a/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    throw p1

    :cond_6
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p1

    :pswitch_3
    check-cast p2, La/c/a/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->b(La/c/a/r$h;La/c/a/r$h;)La/c/a/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->b(La/c/a/r$h;La/c/a/r$h;)La/c/a/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->b(La/c/a/r$h;La/c/a/r$h;)La/c/a/r$h;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    sget-object p1, La/c/a/p$i;->a:La/c/a/p$i;

    if-ne p2, p1, :cond_7

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    :cond_7
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;

    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$1;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    check-cast p1, La/c/a/c;

    .line 23
    iput-boolean v2, p1, La/c/a/c;->b:Z

    .line 24
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    check-cast p1, La/c/a/c;

    .line 25
    iput-boolean v2, p1, La/c/a/c;->b:Z

    .line 26
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    check-cast p1, La/c/a/c;

    .line 27
    iput-boolean v2, p1, La/c/a/c;->b:Z

    return-object v1

    .line 28
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p1

    :cond_8
    if-nez p1, :cond_9

    return-object v1

    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    move-result p2

    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_a
    return-object v1

    :cond_b
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_c

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_c
    return-object v1

    :cond_d
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    move-result p2

    if-nez p2, :cond_f

    if-eqz p1, :cond_e

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_e
    return-object v1

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    move-result p2

    if-nez p2, :cond_11

    if-eqz p1, :cond_10

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_10
    return-object v1

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_12
    return-object v1

    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_14

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_14
    return-object v1

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_16
    return-object v1

    :cond_17
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    move-result p2

    if-nez p2, :cond_19

    if-eqz p1, :cond_18

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_18
    return-object v1

    :cond_19
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    move-result p2

    if-nez p2, :cond_1b

    if-eqz p1, :cond_1a

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_1a
    return-object v1

    :cond_1b
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEventCount()I

    move-result p3

    if-ge p2, p3, :cond_1e

    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    move-result-object p3

    invoke-virtual {p3}, La/c/a/p;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_1d

    if-eqz p1, :cond_1c

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_1c
    return-object v1

    :cond_1d
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_1e
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEventCount()I

    move-result p3

    if-ge p2, p3, :cond_21

    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    move-result-object p3

    invoke-virtual {p3}, La/c/a/p;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_20

    if-eqz p1, :cond_1f

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_1f
    return-object v1

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_21
    const/4 p2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEventCount()I

    move-result p3

    if-ge p2, p3, :cond_24

    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    move-result-object p3

    invoke-virtual {p3}, La/c/a/p;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_23

    if-eqz p1, :cond_22

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_22
    return-object v1

    :cond_23
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_24
    if-eqz p1, :cond_25

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->memoizedIsInitialized:B

    :cond_25
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAbsXMax()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    return v0
.end method

.method public getAbsXMin()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    return v0
.end method

.method public getAbsYMax()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    return v0
.end method

.method public getAbsYMin()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    return v0
.end method

.method public getCid()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->device_:Ljava/lang/String;

    invoke-static {v0}, La/c/a/g;->d(Ljava/lang/String;)La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    return-object p1
.end method

.method public getDownEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    return-object v0
.end method

.method public getDownEventOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    return-object v0
.end method

.method public getEventx()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    return v0
.end method

.method public getMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    return-object p1
.end method

.method public getMoveEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    return-object v0
.end method

.method public getMoveEventOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, La/c/a/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    invoke-static {v1, v0}, La/c/a/i;->f(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    invoke-static {v3, v1}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    invoke-static {v1, v4}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    invoke-static {v3, v1}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    invoke-static {v1, v3}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    invoke-static {v1, v3}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    invoke-static {v1, v3}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    invoke-static {v4, v1}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, La/c/a/i;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/c/a/x;

    invoke-static {v3, v4}, La/c/a/i;->i(ILa/c/a/x;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/c/a/x;

    invoke-static {v3, v4}, La/c/a/i;->i(ILa/c/a/x;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_c

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/c/a/x;

    invoke-static {v1, v3}, La/c/a/i;->i(ILa/c/a/x;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    iget-object v1, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v1}, La/c/a/e0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/p;->memoizedSerializedSize:I

    return v1
.end method

.method public getUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    return-object p1
.end method

.method public getUpEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    return-object v0
.end method

.method public getUpEventOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEventOrBuilder;

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    return-object v0
.end method

.method public hasAbsXMax()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAbsXMin()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAbsYMax()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAbsYMin()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCid()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDevice()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEventx()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScreenHeight()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScreenWidth()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(La/c/a/i;)V
    .locals 4

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->cid_:I

    invoke-virtual {p1, v1, v0}, La/c/a/i;->x(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->eventx_:I

    invoke-virtual {p1, v1, v0}, La/c/a/i;->x(II)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenWidth_:I

    invoke-virtual {p1, v0, v2}, La/c/a/i;->x(II)V

    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->screenHeight_:I

    invoke-virtual {p1, v1, v0}, La/c/a/i;->x(II)V

    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMin_:I

    invoke-virtual {p1, v0, v1}, La/c/a/i;->x(II)V

    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absXMax_:I

    invoke-virtual {p1, v0, v1}, La/c/a/i;->x(II)V

    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMin_:I

    invoke-virtual {p1, v0, v1}, La/c/a/i;->x(II)V

    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->absYMax_:I

    invoke-virtual {p1, v2, v0}, La/c/a/i;->x(II)V

    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/c/a/i;->z(ILjava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->downEvent_:La/c/a/r$h;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/c/a/x;

    invoke-virtual {p1, v2, v3}, La/c/a/i;->y(ILa/c/a/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->upEvent_:La/c/a/r$h;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/c/a/x;

    invoke-virtual {p1, v2, v3}, La/c/a/i;->y(ILa/c/a/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->moveEvent_:La/c/a/r$h;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/c/a/x;

    invoke-virtual {p1, v1, v2}, La/c/a/i;->y(ILa/c/a/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v0, p1}, La/c/a/e0;->f(La/c/a/i;)V

    return-void
.end method
