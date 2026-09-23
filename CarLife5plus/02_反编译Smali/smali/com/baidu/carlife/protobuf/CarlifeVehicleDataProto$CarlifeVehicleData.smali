.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeVehicleData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final AREA_ID_FIELD_NUMBER:I = 0x3

.field public static final AREA_VALUE_FIELD_NUMBER:I = 0x4

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

.field public static final FLOAT_VALUES_FIELD_NUMBER:I = 0x9

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final INT32_VALUES_FIELD_NUMBER:I = 0x7

.field public static final INT64_VALUES_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0xa

.field public static final SUPPORT_FIELD_NUMBER:I = 0x2

.field public static final VALUE_TYPE_FIELD_NUMBER:I = 0x5


# instance fields
.field private areaId_:I

.field private areaValue_:Lcom/google/protobuf/k0;

.field private bitField0_:I

.field private bytesValue_:Lcom/google/protobuf/i;

.field private floatValues_:Lcom/google/protobuf/j0;

.field private id_:I

.field private int32Values_:Lcom/google/protobuf/k0;

.field private int64Values_:Lcom/google/protobuf/l0;

.field private memoizedIsInitialized:B

.field private stringValue_:Ljava/lang/String;

.field private support_:Z

.field private valueType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/protobuf/d0;->emptyIntList()Lcom/google/protobuf/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 12
    .line 13
    sget-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/protobuf/d0;->emptyIntList()Lcom/google/protobuf/k0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/protobuf/d0;->emptyLongList()Lcom/google/protobuf/l0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/protobuf/d0;->emptyFloatList()Lcom/google/protobuf/j0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 34
    .line 35
    const-string v0, ""

    .line 36
    .line 37
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setId(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearAreaValue()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setValueType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearValueType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setBytesValue(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearBytesValue()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setInt32Values(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addInt32Values(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllInt32Values(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearInt32Values()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setInt64Values(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addInt64Values(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllInt64Values(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearInt64Values()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setFloatValues(IF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addFloatValues(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllFloatValues(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearFloatValues()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setStringValue(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearStringValue()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setStringValueBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setSupport(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearSupport()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setAreaId(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearAreaId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setAreaValue(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAreaValue(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllAreaValue(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllAreaValue(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureAreaValueIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllFloatValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureFloatValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllInt32Values(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt32ValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAllInt64Values(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt64ValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addAreaValue(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureAreaValueIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

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

.method private addFloatValues(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureFloatValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 5
    .line 6
    check-cast v0, Lcom/google/protobuf/s;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/s;->d(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private addInt32Values(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt32ValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

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

.method private addInt64Values(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt64ValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 5
    .line 6
    check-cast v0, Lcom/google/protobuf/q0;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/q0;->j(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private clearAreaId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearAreaValue()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyIntList()Lcom/google/protobuf/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 6
    .line 7
    return-void
.end method

.method private clearBytesValue()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getBytesValue()Lcom/google/protobuf/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 16
    .line 17
    return-void
.end method

.method private clearFloatValues()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyFloatList()Lcom/google/protobuf/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 6
    .line 7
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearInt32Values()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyIntList()Lcom/google/protobuf/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 6
    .line 7
    return-void
.end method

.method private clearInt64Values()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyLongList()Lcom/google/protobuf/l0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 6
    .line 7
    return-void
.end method

.method private clearStringValue()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearSupport()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearValueType()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 9
    .line 10
    return-void
.end method

.method private ensureAreaValueIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

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
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private ensureFloatValuesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

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
    invoke-static {v0}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/j0;)Lcom/google/protobuf/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private ensureInt32ValuesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

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
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private ensureInt64ValuesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

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
    invoke-static {v0}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

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

.method private setAreaId(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 8
    .line 9
    return-void
.end method

.method private setAreaValue(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureAreaValueIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

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

.method private setBytesValue(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 11
    .line 12
    return-void
.end method

.method private setFloatValues(IF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureFloatValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 5
    .line 6
    check-cast v0, Lcom/google/protobuf/s;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/d;->b()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/s;->k(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/protobuf/s;->b:[F

    .line 15
    .line 16
    aget v1, v0, p1

    .line 17
    .line 18
    aput p2, v0, p1

    .line 19
    .line 20
    return-void
.end method

.method private setId(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 8
    .line 9
    return-void
.end method

.method private setInt32Values(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt32ValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

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

.method private setInt64Values(IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt64ValuesIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 5
    .line 6
    check-cast v0, Lcom/google/protobuf/q0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/d;->b()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q0;->k(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/protobuf/q0;->b:[J

    .line 15
    .line 16
    aget-wide v1, v0, p1

    .line 17
    .line 18
    aput-wide p2, v0, p1

    .line 19
    .line 20
    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setStringValueBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setSupport(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setValueType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 60
    .line 61
    check-cast p1, Lcom/google/protobuf/d;

    .line 62
    .line 63
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 64
    .line 65
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 66
    .line 67
    check-cast p1, Lcom/google/protobuf/d;

    .line 68
    .line 69
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 70
    .line 71
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 72
    .line 73
    check-cast p1, Lcom/google/protobuf/d;

    .line 74
    .line 75
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 76
    .line 77
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 78
    .line 79
    check-cast p1, Lcom/google/protobuf/d;

    .line 80
    .line 81
    iput-boolean v2, p1, Lcom/google/protobuf/d;->a:Z

    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 85
    .line 86
    check-cast p3, Lcom/google/protobuf/r;

    .line 87
    .line 88
    :cond_2
    :goto_3
    if-nez v2, :cond_f

    .line 89
    .line 90
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    :sswitch_0
    const/4 v2, 0x1

    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :catch_0
    move-exception p1

    .line 109
    goto/16 :goto_9

    .line 110
    .line 111
    :catch_1
    move-exception p1

    .line 112
    goto/16 :goto_a

    .line 113
    .line 114
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 119
    .line 120
    or-int/lit8 p3, p3, 0x20

    .line 121
    .line 122
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 123
    .line 124
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :sswitch_2
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 128
    .line 129
    move-object p3, p1

    .line 130
    check-cast p3, Lcom/google/protobuf/d;

    .line 131
    .line 132
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 133
    .line 134
    if-nez p3, :cond_3

    .line 135
    .line 136
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/j0;)Lcom/google/protobuf/j0;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 141
    .line 142
    :cond_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/google/protobuf/j;->i()F

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    check-cast p1, Lcom/google/protobuf/s;

    .line 149
    .line 150
    invoke-virtual {p1, p3}, Lcom/google/protobuf/s;->d(F)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->e(I)I

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 163
    .line 164
    check-cast v0, Lcom/google/protobuf/d;

    .line 165
    .line 166
    iget-boolean v0, v0, Lcom/google/protobuf/d;->a:Z

    .line 167
    .line 168
    if-nez v0, :cond_4

    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-lez v0, :cond_4

    .line 175
    .line 176
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 177
    .line 178
    move-object v3, v0

    .line 179
    check-cast v3, Lcom/google/protobuf/s;

    .line 180
    .line 181
    iget v3, v3, Lcom/google/protobuf/s;->c:I

    .line 182
    .line 183
    div-int/lit8 p1, p1, 0x4

    .line 184
    .line 185
    add-int/2addr v3, p1

    .line 186
    check-cast v0, Lcom/google/protobuf/s;

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Lcom/google/protobuf/s;->l(I)Lcom/google/protobuf/s;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 193
    .line 194
    :cond_4
    :goto_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-lez p1, :cond_5

    .line 199
    .line 200
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/google/protobuf/j;->i()F

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    check-cast p1, Lcom/google/protobuf/s;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/google/protobuf/s;->d(F)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_5
    invoke-virtual {p2, p3}, Lcom/google/protobuf/j;->d(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->e(I)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 225
    .line 226
    check-cast p3, Lcom/google/protobuf/d;

    .line 227
    .line 228
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 229
    .line 230
    if-nez p3, :cond_6

    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    if-lez p3, :cond_6

    .line 237
    .line 238
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 239
    .line 240
    invoke-static {p3}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 245
    .line 246
    :cond_6
    :goto_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    if-lez p3, :cond_7

    .line 251
    .line 252
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 253
    .line 254
    invoke-virtual {p2}, Lcom/google/protobuf/j;->r()J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    check-cast p3, Lcom/google/protobuf/q0;

    .line 259
    .line 260
    invoke-virtual {p3, v3, v4}, Lcom/google/protobuf/q0;->j(J)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_7
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->d(I)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_3

    .line 268
    .line 269
    :sswitch_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 270
    .line 271
    move-object p3, p1

    .line 272
    check-cast p3, Lcom/google/protobuf/d;

    .line 273
    .line 274
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 275
    .line 276
    if-nez p3, :cond_8

    .line 277
    .line 278
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 283
    .line 284
    :cond_8
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/google/protobuf/j;->r()J

    .line 287
    .line 288
    .line 289
    move-result-wide v3

    .line 290
    check-cast p1, Lcom/google/protobuf/q0;

    .line 291
    .line 292
    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/q0;->j(J)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->e(I)I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 306
    .line 307
    check-cast p3, Lcom/google/protobuf/d;

    .line 308
    .line 309
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 310
    .line 311
    if-nez p3, :cond_9

    .line 312
    .line 313
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 314
    .line 315
    .line 316
    move-result p3

    .line 317
    if-lez p3, :cond_9

    .line 318
    .line 319
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 320
    .line 321
    invoke-static {p3}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 322
    .line 323
    .line 324
    move-result-object p3

    .line 325
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 326
    .line 327
    :cond_9
    :goto_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 328
    .line 329
    .line 330
    move-result p3

    .line 331
    if-lez p3, :cond_a

    .line 332
    .line 333
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    ushr-int/lit8 v3, v0, 0x1

    .line 340
    .line 341
    and-int/2addr v0, v1

    .line 342
    neg-int v0, v0

    .line 343
    xor-int/2addr v0, v3

    .line 344
    check-cast p3, Lcom/google/protobuf/e0;

    .line 345
    .line 346
    invoke-virtual {p3, v0}, Lcom/google/protobuf/e0;->d(I)V

    .line 347
    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_a
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->d(I)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :sswitch_7
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 356
    .line 357
    move-object p3, p1

    .line 358
    check-cast p3, Lcom/google/protobuf/d;

    .line 359
    .line 360
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 361
    .line 362
    if-nez p3, :cond_b

    .line 363
    .line 364
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 369
    .line 370
    :cond_b
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 371
    .line 372
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 373
    .line 374
    .line 375
    move-result p3

    .line 376
    ushr-int/lit8 v0, p3, 0x1

    .line 377
    .line 378
    and-int/2addr p3, v1

    .line 379
    neg-int p3, p3

    .line 380
    xor-int/2addr p3, v0

    .line 381
    check-cast p1, Lcom/google/protobuf/e0;

    .line 382
    .line 383
    invoke-virtual {p1, p3}, Lcom/google/protobuf/e0;->d(I)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 389
    .line 390
    or-int/lit8 p1, p1, 0x10

    .line 391
    .line 392
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 393
    .line 394
    invoke-virtual {p2}, Lcom/google/protobuf/j;->g()Lcom/google/protobuf/h;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :sswitch_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 403
    .line 404
    or-int/lit8 p1, p1, 0x8

    .line 405
    .line 406
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 407
    .line 408
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 413
    .line 414
    goto/16 :goto_3

    .line 415
    .line 416
    :sswitch_a
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->e(I)I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 425
    .line 426
    check-cast p3, Lcom/google/protobuf/d;

    .line 427
    .line 428
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 429
    .line 430
    if-nez p3, :cond_c

    .line 431
    .line 432
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 433
    .line 434
    .line 435
    move-result p3

    .line 436
    if-lez p3, :cond_c

    .line 437
    .line 438
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 439
    .line 440
    invoke-static {p3}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 441
    .line 442
    .line 443
    move-result-object p3

    .line 444
    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 445
    .line 446
    :cond_c
    :goto_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->b()I

    .line 447
    .line 448
    .line 449
    move-result p3

    .line 450
    if-lez p3, :cond_d

    .line 451
    .line 452
    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 453
    .line 454
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    check-cast p3, Lcom/google/protobuf/e0;

    .line 459
    .line 460
    invoke-virtual {p3, v0}, Lcom/google/protobuf/e0;->d(I)V

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_d
    invoke-virtual {p2, p1}, Lcom/google/protobuf/j;->d(I)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :sswitch_b
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 470
    .line 471
    move-object p3, p1

    .line 472
    check-cast p3, Lcom/google/protobuf/d;

    .line 473
    .line 474
    iget-boolean p3, p3, Lcom/google/protobuf/d;->a:Z

    .line 475
    .line 476
    if-nez p3, :cond_e

    .line 477
    .line 478
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 483
    .line 484
    :cond_e
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 485
    .line 486
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 487
    .line 488
    .line 489
    move-result p3

    .line 490
    check-cast p1, Lcom/google/protobuf/e0;

    .line 491
    .line 492
    invoke-virtual {p1, p3}, Lcom/google/protobuf/e0;->d(I)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_3

    .line 496
    .line 497
    :sswitch_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 498
    .line 499
    or-int/lit8 p1, p1, 0x4

    .line 500
    .line 501
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 502
    .line 503
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 508
    .line 509
    goto/16 :goto_3

    .line 510
    .line 511
    :sswitch_d
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 512
    .line 513
    or-int/lit8 p1, p1, 0x2

    .line 514
    .line 515
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 516
    .line 517
    invoke-virtual {p2}, Lcom/google/protobuf/j;->f()Z

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 522
    .line 523
    goto/16 :goto_3

    .line 524
    .line 525
    :sswitch_e
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 526
    .line 527
    or-int/2addr p1, v1

    .line 528
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 529
    .line 530
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    .line 536
    goto/16 :goto_3

    .line 537
    .line 538
    :goto_8
    throw p1

    .line 539
    :goto_9
    new-instance p2, Ljava/lang/RuntimeException;

    .line 540
    .line 541
    new-instance p3, Lcom/google/protobuf/o0;

    .line 542
    .line 543
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 551
    .line 552
    .line 553
    throw p2

    .line 554
    :goto_a
    new-instance p2, Ljava/lang/RuntimeException;

    .line 555
    .line 556
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 557
    .line 558
    .line 559
    throw p2

    .line 560
    :cond_f
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 561
    .line 562
    return-object p1

    .line 563
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 564
    .line 565
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 566
    .line 567
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 572
    .line 573
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 578
    .line 579
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 584
    .line 585
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasSupport()Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 590
    .line 591
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasSupport()Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    iget-boolean v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 596
    .line 597
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->g(ZZZZ)Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 602
    .line 603
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasAreaId()Z

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 608
    .line 609
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasAreaId()Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 614
    .line 615
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 616
    .line 617
    .line 618
    move-result p1

    .line 619
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 620
    .line 621
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 622
    .line 623
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 624
    .line 625
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->a(Lcom/google/protobuf/k0;Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 630
    .line 631
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasValueType()Z

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 636
    .line 637
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasValueType()Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 642
    .line 643
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 644
    .line 645
    .line 646
    move-result p1

    .line 647
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 648
    .line 649
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasBytesValue()Z

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 654
    .line 655
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasBytesValue()Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 660
    .line 661
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->h(ZLcom/google/protobuf/i;ZLcom/google/protobuf/i;)Lcom/google/protobuf/i;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 666
    .line 667
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 668
    .line 669
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 670
    .line 671
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->a(Lcom/google/protobuf/k0;Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 676
    .line 677
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 678
    .line 679
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 680
    .line 681
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->k(Lcom/google/protobuf/l0;Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 686
    .line 687
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 688
    .line 689
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 690
    .line 691
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->b(Lcom/google/protobuf/j0;Lcom/google/protobuf/j0;)Lcom/google/protobuf/j0;

    .line 692
    .line 693
    .line 694
    move-result-object p1

    .line 695
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 696
    .line 697
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasStringValue()Z

    .line 698
    .line 699
    .line 700
    move-result p1

    .line 701
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 702
    .line 703
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasStringValue()Z

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 708
    .line 709
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object p1

    .line 713
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 714
    .line 715
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 716
    .line 717
    if-ne p2, p1, :cond_10

    .line 718
    .line 719
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 720
    .line 721
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 722
    .line 723
    or-int/2addr p1, p2

    .line 724
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 725
    .line 726
    :cond_10
    return-object p0

    .line 727
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    .line 728
    .line 729
    if-ne p1, v1, :cond_11

    .line 730
    .line 731
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 732
    .line 733
    return-object p1

    .line 734
    :cond_11
    if-nez p1, :cond_12

    .line 735
    .line 736
    goto :goto_b

    .line 737
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    .line 738
    .line 739
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 740
    .line 741
    .line 742
    move-result p1

    .line 743
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    .line 744
    .line 745
    .line 746
    move-result p2

    .line 747
    if-nez p2, :cond_14

    .line 748
    .line 749
    if-eqz p1, :cond_13

    .line 750
    .line 751
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    .line 752
    .line 753
    :cond_13
    :goto_b
    return-object v0

    .line 754
    :cond_14
    if-eqz p1, :cond_15

    .line 755
    .line 756
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    .line 757
    .line 758
    :cond_15
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 759
    .line 760
    return-object p1

    .line 761
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

    .line 762
    .line 763
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
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x18 -> :sswitch_c
        0x20 -> :sswitch_b
        0x22 -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x38 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4d -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAreaId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAreaValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

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

.method public getAreaValueCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

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

.method public getAreaValueList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBytesValue()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFloatValues(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/s;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/s;->k(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/protobuf/s;->b:[F

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    return p1
.end method

.method public getFloatValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/s;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/s;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFloatValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 2
    .line 3
    return v0
.end method

.method public getInt32Values(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

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

.method public getInt32ValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

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

.method public getInt32ValuesList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInt64Values(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/q0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/q0;->l(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getInt64ValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/q0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/q0;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getInt64ValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 11

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    and-int/2addr v3, v4

    .line 26
    if-ne v3, v4, :cond_2

    .line 27
    .line 28
    invoke-static {v4}, Lcom/google/protobuf/n;->h(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v0, v3

    .line 33
    :cond_2
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    and-int/2addr v3, v4

    .line 37
    if-ne v3, v4, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    iget v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 41
    .line 42
    invoke-static {v3, v5}, Lcom/google/protobuf/n;->k(II)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v0, v3

    .line 47
    :cond_3
    const/4 v3, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    :goto_1
    iget-object v6, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 50
    .line 51
    check-cast v6, Lcom/google/protobuf/e0;

    .line 52
    .line 53
    iget v7, v6, Lcom/google/protobuf/e0;->c:I

    .line 54
    .line 55
    const/16 v8, 0xa

    .line 56
    .line 57
    if-ge v3, v7, :cond_5

    .line 58
    .line 59
    invoke-virtual {v6, v3}, Lcom/google/protobuf/e0;->l(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-ltz v6, :cond_4

    .line 64
    .line 65
    invoke-static {v6}, Lcom/google/protobuf/n;->p(I)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    sget-object v6, Lcom/google/protobuf/n;->a:Ljava/util/logging/Logger;

    .line 71
    .line 72
    :goto_2
    add-int/2addr v5, v8

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    add-int/2addr v0, v5

    .line 77
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getAreaValueList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    add-int/2addr v3, v0

    .line 86
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 87
    .line 88
    const/16 v5, 0x8

    .line 89
    .line 90
    and-int/2addr v0, v5

    .line 91
    if-ne v0, v5, :cond_6

    .line 92
    .line 93
    const/4 v0, 0x5

    .line 94
    iget v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 95
    .line 96
    invoke-static {v0, v5}, Lcom/google/protobuf/n;->k(II)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v3, v0

    .line 101
    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 102
    .line 103
    const/16 v5, 0x10

    .line 104
    .line 105
    and-int/2addr v0, v5

    .line 106
    if-ne v0, v5, :cond_7

    .line 107
    .line 108
    const/4 v0, 0x6

    .line 109
    iget-object v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 110
    .line 111
    invoke-static {v0, v5}, Lcom/google/protobuf/n;->i(ILcom/google/protobuf/i;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/2addr v3, v0

    .line 116
    :cond_7
    const/4 v0, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    :goto_3
    iget-object v6, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 119
    .line 120
    check-cast v6, Lcom/google/protobuf/e0;

    .line 121
    .line 122
    iget v7, v6, Lcom/google/protobuf/e0;->c:I

    .line 123
    .line 124
    if-ge v0, v7, :cond_8

    .line 125
    .line 126
    invoke-virtual {v6, v0}, Lcom/google/protobuf/e0;->l(I)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    shl-int/lit8 v7, v6, 0x1

    .line 131
    .line 132
    shr-int/lit8 v6, v6, 0x1f

    .line 133
    .line 134
    xor-int/2addr v6, v7

    .line 135
    invoke-static {v6}, Lcom/google/protobuf/n;->p(I)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    add-int/2addr v5, v6

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    add-int/2addr v3, v5

    .line 144
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt32ValuesList()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    add-int/2addr v0, v3

    .line 153
    const/4 v3, 0x0

    .line 154
    :goto_4
    iget-object v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 155
    .line 156
    check-cast v5, Lcom/google/protobuf/q0;

    .line 157
    .line 158
    iget v6, v5, Lcom/google/protobuf/q0;->c:I

    .line 159
    .line 160
    if-ge v2, v6, :cond_9

    .line 161
    .line 162
    invoke-virtual {v5, v2}, Lcom/google/protobuf/q0;->l(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    shl-long v9, v5, v1

    .line 167
    .line 168
    const/16 v7, 0x3f

    .line 169
    .line 170
    shr-long/2addr v5, v7

    .line 171
    xor-long/2addr v5, v9

    .line 172
    invoke-static {v5, v6}, Lcom/google/protobuf/n;->q(J)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    add-int/2addr v3, v5

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    add-int/2addr v0, v3

    .line 181
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt64ValuesList()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v1, v0

    .line 190
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValuesList()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    mul-int/lit8 v0, v0, 0x4

    .line 199
    .line 200
    add-int/2addr v0, v1

    .line 201
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValuesList()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    add-int/2addr v1, v0

    .line 210
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 211
    .line 212
    const/16 v2, 0x20

    .line 213
    .line 214
    and-int/2addr v0, v2

    .line 215
    if-ne v0, v2, :cond_a

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v8, v0}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    add-int/2addr v1, v0

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/google/protobuf/y0;->a()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    add-int/2addr v0, v1

    .line 233
    iput v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 234
    .line 235
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

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

.method public getSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getValueType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasAreaId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasBytesValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasStringValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasSupport()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasValueType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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
    .locals 9

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    and-int/2addr v0, v2

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    .line 19
    .line 20
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/n;->s(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    and-int/2addr v0, v2

    .line 27
    if-ne v0, v2, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:Lcom/google/protobuf/k0;

    .line 38
    .line 39
    check-cast v4, Lcom/google/protobuf/e0;

    .line 40
    .line 41
    iget v5, v4, Lcom/google/protobuf/e0;->c:I

    .line 42
    .line 43
    if-ge v3, v5, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Lcom/google/protobuf/e0;->l(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/n;->y(II)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    and-int/2addr v2, v3

    .line 60
    if-ne v2, v3, :cond_4

    .line 61
    .line 62
    const/4 v2, 0x5

    .line 63
    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    .line 64
    .line 65
    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/n;->y(II)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 69
    .line 70
    const/16 v4, 0x10

    .line 71
    .line 72
    and-int/2addr v2, v4

    .line 73
    if-ne v2, v4, :cond_5

    .line 74
    .line 75
    const/4 v2, 0x6

    .line 76
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:Lcom/google/protobuf/i;

    .line 77
    .line 78
    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/n;->t(ILcom/google/protobuf/i;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    const/4 v2, 0x0

    .line 82
    :goto_1
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:Lcom/google/protobuf/k0;

    .line 83
    .line 84
    check-cast v4, Lcom/google/protobuf/e0;

    .line 85
    .line 86
    iget v5, v4, Lcom/google/protobuf/e0;->c:I

    .line 87
    .line 88
    if-ge v2, v5, :cond_6

    .line 89
    .line 90
    invoke-virtual {v4, v2}, Lcom/google/protobuf/e0;->l(I)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    shl-int/lit8 v5, v4, 0x1

    .line 95
    .line 96
    shr-int/lit8 v4, v4, 0x1f

    .line 97
    .line 98
    xor-int/2addr v4, v5

    .line 99
    const/4 v5, 0x7

    .line 100
    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/n;->C(II)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const/4 v2, 0x0

    .line 107
    :goto_2
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:Lcom/google/protobuf/l0;

    .line 108
    .line 109
    check-cast v4, Lcom/google/protobuf/q0;

    .line 110
    .line 111
    iget v5, v4, Lcom/google/protobuf/q0;->c:I

    .line 112
    .line 113
    if-ge v2, v5, :cond_7

    .line 114
    .line 115
    invoke-virtual {v4, v2}, Lcom/google/protobuf/q0;->l(I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    shl-long v6, v4, v1

    .line 120
    .line 121
    const/16 v8, 0x3f

    .line 122
    .line 123
    shr-long/2addr v4, v8

    .line 124
    xor-long/2addr v4, v6

    .line 125
    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/n;->E(IJ)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:Lcom/google/protobuf/j0;

    .line 132
    .line 133
    check-cast v1, Lcom/google/protobuf/s;

    .line 134
    .line 135
    iget v2, v1, Lcom/google/protobuf/s;->c:I

    .line 136
    .line 137
    if-ge v0, v2, :cond_8

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Lcom/google/protobuf/s;->k(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v1, Lcom/google/protobuf/s;->b:[F

    .line 143
    .line 144
    aget v1, v1, v0

    .line 145
    .line 146
    const/16 v2, 0x9

    .line 147
    .line 148
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/n;->x(FI)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 155
    .line 156
    const/16 v1, 0x20

    .line 157
    .line 158
    and-int/2addr v0, v1

    .line 159
    if-ne v0, v1, :cond_9

    .line 160
    .line 161
    const/16 v0, 0xa

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
