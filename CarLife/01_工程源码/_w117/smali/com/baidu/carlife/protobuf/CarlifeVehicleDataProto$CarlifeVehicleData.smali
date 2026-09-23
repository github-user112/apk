.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
.super La/c/a/p;
.source ""

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
        "La/c/a/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;",
        ">;",
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

.field private static volatile PARSER:La/c/a/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0xa

.field public static final SUPPORT_FIELD_NUMBER:I = 0x2

.field public static final VALUE_TYPE_FIELD_NUMBER:I = 0x5


# instance fields
.field private areaId_:I

.field private areaValue_:La/c/a/r$f;

.field private bitField0_:I

.field private bytesValue_:La/c/a/g;

.field private floatValues_:La/c/a/r$e;

.field private id_:I

.field private int32Values_:La/c/a/r$f;

.field private int64Values_:La/c/a/r$g;

.field private memoizedIsInitialized:B

.field private stringValue_:Ljava/lang/String;

.field private support_:Z

.field private valueType_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v0}, La/c/a/p;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/c/a/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    invoke-static {}, La/c/a/p;->emptyIntList()La/c/a/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    sget-object v0, La/c/a/g;->b:La/c/a/g;

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    invoke-static {}, La/c/a/p;->emptyIntList()La/c/a/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    invoke-static {}, La/c/a/p;->emptyLongList()La/c/a/r$g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    invoke-static {}, La/c/a/p;->emptyFloatList()La/c/a/r$e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setId(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearAreaValue()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setValueType(I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearValueType()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;La/c/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setBytesValue(La/c/a/g;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearBytesValue()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setInt32Values(II)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addInt32Values(I)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllInt32Values(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearInt32Values()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setInt64Values(IJ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearId()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addInt64Values(J)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllInt64Values(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearInt64Values()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setFloatValues(IF)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addFloatValues(F)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllFloatValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearFloatValues()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearStringValue()V

    return-void
.end method

.method public static synthetic access$2900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;La/c/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setStringValueBytes(La/c/a/g;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setSupport(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearSupport()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setAreaId(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->clearAreaId()V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->setAreaValue(II)V

    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAreaValue(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->addAllAreaValue(Ljava/lang/Iterable;)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureAreaValueIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureFloatValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt32ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

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

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt64ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    invoke-static {p1, v0}, La/c/a/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAreaValue(I)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureAreaValueIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    .line 1
    iget v1, v0, La/c/a/q;->e:I

    invoke-virtual {v0, v1, p1}, La/c/a/q;->d(II)V

    return-void
.end method

.method private addFloatValues(F)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureFloatValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast v0, La/c/a/o;

    .line 1
    iget v1, v0, La/c/a/o;->e:I

    invoke-virtual {v0, v1, p1}, La/c/a/o;->d(IF)V

    return-void
.end method

.method private addInt32Values(I)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt32ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    .line 1
    iget v1, v0, La/c/a/q;->e:I

    invoke-virtual {v0, v1, p1}, La/c/a/q;->d(II)V

    return-void
.end method

.method private addInt64Values(J)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt64ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast v0, La/c/a/w;

    .line 1
    iget v1, v0, La/c/a/w;->e:I

    invoke-virtual {v0, v1, p1, p2}, La/c/a/w;->d(IJ)V

    return-void
.end method

.method private clearAreaId()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    return-void
.end method

.method private clearAreaValue()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyIntList()La/c/a/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    return-void
.end method

.method private clearBytesValue()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getBytesValue()La/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    return-void
.end method

.method private clearFloatValues()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyFloatList()La/c/a/r$e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    return-void
.end method

.method private clearId()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    return-void
.end method

.method private clearInt32Values()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyIntList()La/c/a/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    return-void
.end method

.method private clearInt64Values()V
    .locals 1

    invoke-static {}, La/c/a/p;->emptyLongList()La/c/a/r$g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    return-void
.end method

.method private clearStringValue()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private clearSupport()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    return-void
.end method

.method private clearValueType()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    return-void
.end method

.method private ensureAreaValueIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$f;)La/c/a/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    :cond_0
    return-void
.end method

.method private ensureFloatValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$e;)La/c/a/r$e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    :cond_0
    return-void
.end method

.method private ensureInt32ValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$f;)La/c/a/r$f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    :cond_0
    return-void
.end method

.method private ensureInt64ValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    move-object v1, v0

    check-cast v1, La/c/a/c;

    .line 1
    iget-boolean v1, v1, La/c/a/c;->b:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, La/c/a/p;->mutableCopy(La/c/a/r$g;)La/c/a/r$g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    invoke-virtual {v0, p0}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;[B)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parseFrom([BLa/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p0
.end method

.method public static parser()La/c/a/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v0}, La/c/a/p;->getParserForType()La/c/a/z;

    move-result-object v0

    return-object v0
.end method

.method private setAreaId(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    return-void
.end method

.method private setAreaValue(II)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureAreaValueIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    .line 1
    invoke-virtual {v0}, La/c/a/c;->c()V

    invoke-virtual {v0, p1}, La/c/a/q;->e(I)V

    iget-object v0, v0, La/c/a/q;->d:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setBytesValue(La/c/a/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    return-void
.end method

.method private setFloatValues(IF)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureFloatValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast v0, La/c/a/o;

    .line 1
    invoke-virtual {v0}, La/c/a/c;->c()V

    invoke-virtual {v0, p1}, La/c/a/o;->e(I)V

    iget-object v0, v0, La/c/a/o;->d:[F

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setId(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    return-void
.end method

.method private setInt32Values(II)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt32ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    .line 1
    invoke-virtual {v0}, La/c/a/c;->c()V

    invoke-virtual {v0, p1}, La/c/a/q;->e(I)V

    iget-object v0, v0, La/c/a/q;->d:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return-void
.end method

.method private setInt64Values(IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->ensureInt64ValuesIsMutable()V

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast v0, La/c/a/w;

    .line 1
    invoke-virtual {v0}, La/c/a/c;->c()V

    invoke-virtual {v0, p1}, La/c/a/w;->e(I)V

    iget-object v0, v0, La/c/a/w;->d:[J

    aget-wide v1, v0, p1

    aput-wide p2, v0, p1

    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private setStringValueBytes(La/c/a/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    invoke-virtual {p1}, La/c/a/g;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method private setSupport(Z)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    return-void
.end method

.method private setValueType(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:La/c/a/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:La/c/a/z;

    if-nez p2, :cond_0

    new-instance p2, La/c/a/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-direct {p2, p3}, La/c/a/p$c;-><init>(La/c/a/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:La/c/a/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->PARSER:La/c/a/z;

    return-object p1

    :pswitch_1
    check-cast p2, La/c/a/h;

    check-cast p3, La/c/a/m;

    :cond_2
    :goto_1
    if-nez v2, :cond_f

    :try_start_1
    invoke-virtual {p2}, La/c/a/h;->u()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, La/c/a/p;->parseUnknownField(ILa/c/a/h;)Z

    move-result p1

    goto/16 :goto_9

    :sswitch_0
    invoke-virtual {p2}, La/c/a/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    move-object p3, p1

    check-cast p3, La/c/a/c;

    .line 1
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_3

    .line 2
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$e;)La/c/a/r$e;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    :cond_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    invoke-virtual {p2}, La/c/a/h;->i()F

    move-result p3

    check-cast p1, La/c/a/o;

    .line 3
    iget v0, p1, La/c/a/o;->e:I

    invoke-virtual {p1, v0, p3}, La/c/a/o;->d(IF)V

    goto :goto_1

    .line 4
    :sswitch_2
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, La/c/a/h;->e(I)I

    move-result p3

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast v0, La/c/a/c;

    .line 5
    iget-boolean v0, v0, La/c/a/c;->b:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    move-object v3, v0

    check-cast v3, La/c/a/o;

    .line 7
    iget v3, v3, La/c/a/o;->e:I

    .line 8
    div-int/lit8 p1, p1, 0x4

    add-int/2addr v3, p1

    check-cast v0, La/c/a/o;

    invoke-virtual {v0, v3}, La/c/a/o;->h(I)La/c/a/r$e;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    :cond_4
    :goto_2
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    invoke-virtual {p2}, La/c/a/h;->i()F

    move-result v0

    check-cast p1, La/c/a/o;

    .line 9
    iget v3, p1, La/c/a/o;->e:I

    invoke-virtual {p1, v3, v0}, La/c/a/o;->d(IF)V

    goto :goto_2

    .line 10
    :cond_5
    iput p3, p2, La/c/a/h;->i:I

    :goto_3
    invoke-virtual {p2}, La/c/a/h;->v()V

    goto :goto_1

    .line 11
    :sswitch_3
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, La/c/a/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast p3, La/c/a/c;

    .line 12
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_6

    .line 13
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p3

    if-lez p3, :cond_6

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    invoke-static {p3}, La/c/a/p;->mutableCopy(La/c/a/r$g;)La/c/a/r$g;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    :cond_6
    :goto_4
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p3

    if-lez p3, :cond_7

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    invoke-virtual {p2}, La/c/a/h;->s()J

    move-result-wide v3

    check-cast p3, La/c/a/w;

    .line 14
    iget v0, p3, La/c/a/w;->e:I

    invoke-virtual {p3, v0, v3, v4}, La/c/a/w;->d(IJ)V

    goto :goto_4

    .line 15
    :cond_7
    iput p1, p2, La/c/a/h;->i:I

    goto :goto_3

    .line 16
    :sswitch_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    move-object p3, p1

    check-cast p3, La/c/a/c;

    .line 17
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_8

    .line 18
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$g;)La/c/a/r$g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    :cond_8
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    invoke-virtual {p2}, La/c/a/h;->s()J

    move-result-wide v3

    check-cast p1, La/c/a/w;

    .line 19
    iget p3, p1, La/c/a/w;->e:I

    invoke-virtual {p1, p3, v3, v4}, La/c/a/w;->d(IJ)V

    goto/16 :goto_1

    .line 20
    :sswitch_5
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, La/c/a/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast p3, La/c/a/c;

    .line 21
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_9

    .line 22
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p3

    if-lez p3, :cond_9

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    invoke-static {p3}, La/c/a/p;->mutableCopy(La/c/a/r$f;)La/c/a/r$f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    :cond_9
    :goto_5
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p3

    if-lez p3, :cond_a

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    invoke-virtual {p2}, La/c/a/h;->r()I

    move-result v0

    check-cast p3, La/c/a/q;

    .line 23
    iget v3, p3, La/c/a/q;->e:I

    invoke-virtual {p3, v3, v0}, La/c/a/q;->d(II)V

    goto :goto_5

    .line 24
    :cond_a
    iput p1, p2, La/c/a/h;->i:I

    goto/16 :goto_3

    .line 25
    :sswitch_6
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    move-object p3, p1

    check-cast p3, La/c/a/c;

    .line 26
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_b

    .line 27
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$f;)La/c/a/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    :cond_b
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    invoke-virtual {p2}, La/c/a/h;->r()I

    move-result p3

    check-cast p1, La/c/a/q;

    .line 28
    iget v0, p1, La/c/a/q;->e:I

    :goto_6
    invoke-virtual {p1, v0, p3}, La/c/a/q;->d(II)V

    goto/16 :goto_1

    .line 29
    :sswitch_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    invoke-virtual {p2}, La/c/a/h;->g()La/c/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    goto/16 :goto_1

    :sswitch_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 30
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 31
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    invoke-virtual {p2, p1}, La/c/a/h;->e(I)I

    move-result p1

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast p3, La/c/a/c;

    .line 32
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_c

    .line 33
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p3

    if-lez p3, :cond_c

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    invoke-static {p3}, La/c/a/p;->mutableCopy(La/c/a/r$f;)La/c/a/r$f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    :cond_c
    :goto_7
    invoke-virtual {p2}, La/c/a/h;->b()I

    move-result p3

    if-lez p3, :cond_d

    iget-object p3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    .line 34
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result v0

    .line 35
    check-cast p3, La/c/a/q;

    .line 36
    iget v3, p3, La/c/a/q;->e:I

    invoke-virtual {p3, v3, v0}, La/c/a/q;->d(II)V

    goto :goto_7

    .line 37
    :cond_d
    iput p1, p2, La/c/a/h;->i:I

    goto/16 :goto_3

    .line 38
    :sswitch_a
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    move-object p3, p1

    check-cast p3, La/c/a/c;

    .line 39
    iget-boolean p3, p3, La/c/a/c;->b:Z

    if-nez p3, :cond_e

    .line 40
    invoke-static {p1}, La/c/a/p;->mutableCopy(La/c/a/r$f;)La/c/a/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    :cond_e
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    .line 41
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p3

    .line 42
    check-cast p1, La/c/a/q;

    .line 43
    iget v0, p1, La/c/a/q;->e:I

    goto :goto_6

    .line 44
    :sswitch_b
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 45
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 46
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    goto/16 :goto_1

    :sswitch_c
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    invoke-virtual {p2}, La/c/a/h;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    goto/16 :goto_1

    :sswitch_d
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    .line 47
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 48
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_8
    :sswitch_e
    const/4 v2, 0x1

    goto/16 :goto_1

    :goto_9
    if-nez p1, :cond_2

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_a

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

    :goto_a
    throw p1

    :cond_f
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p1

    :pswitch_3
    check-cast p2, La/c/a/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasSupport()Z

    move-result p1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasSupport()Z

    move-result v1

    iget-boolean v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->e(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasAreaId()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasAreaId()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->f(La/c/a/r$f;La/c/a/r$f;)La/c/a/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasValueType()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasValueType()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasBytesValue()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasBytesValue()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->g(ZLa/c/a/g;ZLa/c/a/g;)La/c/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->f(La/c/a/r$f;La/c/a/r$f;)La/c/a/r$f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->k(La/c/a/r$g;La/c/a/r$g;)La/c/a/r$g;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    invoke-interface {p2, p1, v0}, La/c/a/p$k;->a(La/c/a/r$e;La/c/a/r$e;)La/c/a/r$e;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasStringValue()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasStringValue()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    sget-object p1, La/c/a/p$i;->a:La/c/a/p$i;

    if-ne p2, p1, :cond_10

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    :cond_10
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    invoke-direct {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$1;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast p1, La/c/a/c;

    .line 49
    iput-boolean v2, p1, La/c/a/c;->b:Z

    .line 50
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast p1, La/c/a/c;

    .line 51
    iput-boolean v2, p1, La/c/a/c;->b:Z

    .line 52
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast p1, La/c/a/c;

    .line 53
    iput-boolean v2, p1, La/c/a/c;->b:Z

    .line 54
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast p1, La/c/a/c;

    .line 55
    iput-boolean v2, p1, La/c/a/c;->b:Z

    return-object v0

    .line 56
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    if-ne p1, v1, :cond_11

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p1

    :cond_11
    if-nez p1, :cond_12

    return-object v0

    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    :cond_13
    return-object v0

    :cond_14
    if-eqz p1, :cond_15

    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->memoizedIsInitialized:B

    :cond_15
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;-><init>()V

    return-object p1

    nop

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
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x22 -> :sswitch_9
        0x28 -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x3a -> :sswitch_5
        0x40 -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x4d -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAreaId()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    return v0
.end method

.method public getAreaValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    .line 1
    invoke-virtual {v0, p1}, La/c/a/q;->e(I)V

    iget-object v0, v0, La/c/a/q;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public getAreaValueCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    invoke-virtual {v0}, La/c/a/q;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    return-object v0
.end method

.method public getBytesValue()La/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    return-object v0
.end method

.method public getFloatValues(I)F
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast v0, La/c/a/o;

    .line 1
    invoke-virtual {v0, p1}, La/c/a/o;->e(I)V

    iget-object v0, v0, La/c/a/o;->d:[F

    aget p1, v0, p1

    return p1
.end method

.method public getFloatValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast v0, La/c/a/o;

    invoke-virtual {v0}, La/c/a/o;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    return v0
.end method

.method public getInt32Values(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    .line 1
    invoke-virtual {v0, p1}, La/c/a/q;->e(I)V

    iget-object v0, v0, La/c/a/q;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public getInt32ValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast v0, La/c/a/q;

    invoke-virtual {v0}, La/c/a/q;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    return-object v0
.end method

.method public getInt64Values(I)J
    .locals 3

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast v0, La/c/a/w;

    .line 1
    invoke-virtual {v0, p1}, La/c/a/w;->e(I)V

    iget-object v0, v0, La/c/a/w;->d:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getInt64ValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast v0, La/c/a/w;

    invoke-virtual {v0}, La/c/a/w;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 10

    iget v0, p0, La/c/a/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    invoke-static {v1, v0}, La/c/a/i;->f(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    invoke-static {v4, v3}, La/c/a/i;->b(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    iget v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    invoke-static {v3, v5}, La/c/a/i;->f(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast v6, La/c/a/q;

    .line 1
    iget v7, v6, La/c/a/q;->e:I

    if-ge v3, v7, :cond_4

    .line 2
    invoke-virtual {v6, v3}, La/c/a/q;->f(I)I

    move-result v6

    invoke-static {v6}, La/c/a/i;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getAreaValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_5

    const/4 v0, 0x5

    iget v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    invoke-static {v0, v5}, La/c/a/i;->f(II)I

    move-result v0

    add-int/2addr v3, v0

    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/16 v5, 0x10

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_6

    const/4 v0, 0x6

    iget-object v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    invoke-static {v0, v5}, La/c/a/i;->c(ILa/c/a/g;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_6
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast v6, La/c/a/q;

    .line 3
    iget v7, v6, La/c/a/q;->e:I

    if-ge v0, v7, :cond_7

    .line 4
    invoke-virtual {v6, v0}, La/c/a/q;->f(I)I

    move-result v6

    shl-int/lit8 v7, v6, 0x1

    shr-int/lit8 v6, v6, 0x1f

    xor-int/2addr v6, v7

    .line 5
    invoke-static {v6}, La/c/a/i;->m(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v3, v5

    .line 6
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt32ValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast v5, La/c/a/w;

    .line 7
    iget v6, v5, La/c/a/w;->e:I

    if-ge v2, v6, :cond_8

    .line 8
    invoke-virtual {v5, v2}, La/c/a/w;->f(I)J

    move-result-wide v5

    shl-long v7, v5, v1

    const/16 v9, 0x3f

    shr-long/2addr v5, v9

    xor-long/2addr v5, v7

    .line 9
    invoke-static {v5, v6}, La/c/a/i;->o(J)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v3

    .line 10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt64ValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValuesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/c/a/i;->j(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v0}, La/c/a/e0;->b()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, La/c/a/p;->memoizedSerializedSize:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->stringValue_:Ljava/lang/String;

    invoke-static {v0}, La/c/a/g;->d(Ljava/lang/String;)La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    return v0
.end method

.method public getValueType()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    return v0
.end method

.method public hasAreaId()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasBytesValue()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStringValue()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasSupport()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public hasValueType()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

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

.method public writeTo(La/c/a/i;)V
    .locals 9

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->id_:I

    invoke-virtual {p1, v1, v0}, La/c/a/i;->x(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->support_:Z

    invoke-virtual {p1, v2, v0}, La/c/a/i;->r(IZ)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaId_:I

    invoke-virtual {p1, v0, v3}, La/c/a/i;->x(II)V

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->areaValue_:La/c/a/r$f;

    check-cast v4, La/c/a/q;

    .line 1
    iget v5, v4, La/c/a/q;->e:I

    if-ge v3, v5, :cond_3

    .line 2
    invoke-virtual {v4, v3}, La/c/a/q;->f(I)I

    move-result v4

    invoke-virtual {p1, v2, v4}, La/c/a/i;->x(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->valueType_:I

    invoke-virtual {p1, v2, v4}, La/c/a/i;->x(II)V

    :cond_4
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bytesValue_:La/c/a/g;

    invoke-virtual {p1, v2, v4}, La/c/a/i;->s(ILa/c/a/g;)V

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int32Values_:La/c/a/r$f;

    check-cast v4, La/c/a/q;

    .line 3
    iget v5, v4, La/c/a/q;->e:I

    if-ge v2, v5, :cond_6

    const/4 v5, 0x7

    .line 4
    invoke-virtual {v4, v2}, La/c/a/q;->f(I)I

    move-result v4

    shl-int/lit8 v6, v4, 0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    .line 5
    invoke-virtual {p1, v5, v4}, La/c/a/i;->B(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 6
    :goto_2
    iget-object v4, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->int64Values_:La/c/a/r$g;

    check-cast v4, La/c/a/w;

    .line 7
    iget v5, v4, La/c/a/w;->e:I

    if-ge v2, v5, :cond_7

    .line 8
    invoke-virtual {v4, v2}, La/c/a/w;->f(I)J

    move-result-wide v4

    shl-long v6, v4, v1

    const/16 v8, 0x3f

    shr-long/2addr v4, v8

    xor-long/2addr v4, v6

    .line 9
    invoke-virtual {p1, v3, v4, v5}, La/c/a/i;->D(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 10
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->floatValues_:La/c/a/r$e;

    check-cast v1, La/c/a/o;

    .line 11
    iget v2, v1, La/c/a/o;->e:I

    if-ge v0, v2, :cond_8

    const/16 v2, 0x9

    .line 12
    invoke-virtual {v1, v0}, La/c/a/o;->f(I)F

    move-result v1

    invoke-virtual {p1, v2, v1}, La/c/a/i;->w(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/c/a/i;->z(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v0, p1}, La/c/a/e0;->f(La/c/a/i;)V

    return-void
.end method
