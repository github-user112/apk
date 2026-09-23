.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeVehicleDataList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final SUPPORT_FIELD_NUMBER:I = 0x1

.field public static final TOKEN_STRING_FIELD_NUMBER:I = 0x2

.field public static final VEHICLEDATA_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private support_:Z

.field private tokenString_:Ljava/lang/String;

.field private vehicleData_:Lcom/google/protobuf/m0;
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
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setSupport(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addAllVehicleData(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->clearVehicleData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->removeVehicleData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->clearSupport()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setTokenString(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->clearTokenString()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setTokenStringBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllVehicleData(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSupport()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 9
    .line 10
    return-void
.end method

.method private clearTokenString()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearVehicleData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 6
    .line 7
    return-void
.end method

.method private ensureVehicleDataIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

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
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

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

.method private removeVehicleData(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setSupport(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 8
    .line 9
    return-void
.end method

.method private setTokenString(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setTokenStringBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setVehicleData(ILcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->ensureVehicleDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 60
    .line 61
    check-cast p1, Lcom/google/protobuf/d;

    .line 62
    .line 63
    iput-boolean v1, p1, Lcom/google/protobuf/d;->a:Z

    .line 64
    .line 65
    return-object v0

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
    if-nez v1, :cond_8

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
    const/16 v0, 0x8

    .line 79
    .line 80
    if-eq p1, v0, :cond_7

    .line 81
    .line 82
    const/16 v0, 0x12

    .line 83
    .line 84
    if-eq p1, v0, :cond_6

    .line 85
    .line 86
    const/16 v0, 0x1a

    .line 87
    .line 88
    if-eq p1, v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    :cond_3
    const/4 v1, 0x1

    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    goto :goto_4

    .line 100
    :catch_0
    move-exception p1

    .line 101
    goto :goto_5

    .line 102
    :catch_1
    move-exception p1

    .line 103
    goto :goto_6

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 105
    .line 106
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/google/protobuf/d;

    .line 108
    .line 109
    iget-boolean v0, v0, Lcom/google/protobuf/d;->a:Z

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 118
    .line 119
    :cond_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 120
    .line 121
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->parser()Lcom/google/protobuf/v0;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p2, v0, p3}, Lcom/google/protobuf/j;->j(Lcom/google/protobuf/v0;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 130
    .line 131
    check-cast p1, Lcom/google/protobuf/d;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 142
    .line 143
    or-int/lit8 v0, v0, 0x2

    .line 144
    .line 145
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 146
    .line 147
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 151
    .line 152
    or-int/2addr p1, v2

    .line 153
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/google/protobuf/j;->f()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :goto_4
    throw p1

    .line 163
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    new-instance p3, Lcom/google/protobuf/o0;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    throw p2

    .line 178
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 179
    .line 180
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    throw p2

    .line 184
    :cond_8
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 185
    .line 186
    return-object p1

    .line 187
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 188
    .line 189
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    iget-boolean v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 202
    .line 203
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->g(ZZZZ)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iput-boolean p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasTokenString()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasTokenString()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 226
    .line 227
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 228
    .line 229
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 230
    .line 231
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 236
    .line 237
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 238
    .line 239
    if-ne p2, p1, :cond_9

    .line 240
    .line 241
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 242
    .line 243
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 244
    .line 245
    or-int/2addr p1, p2

    .line 246
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 247
    .line 248
    :cond_9
    return-object p0

    .line 249
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    .line 250
    .line 251
    if-ne p1, v2, :cond_a

    .line 252
    .line 253
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_a
    if-nez p1, :cond_b

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->hasSupport()Z

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-nez p2, :cond_c

    .line 270
    .line 271
    if-eqz p1, :cond_d

    .line 272
    .line 273
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    .line 274
    .line 275
    return-object v0

    .line 276
    :cond_c
    const/4 p2, 0x0

    .line 277
    :goto_7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleDataCount()I

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    if-ge p2, p3, :cond_f

    .line 282
    .line 283
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    invoke-virtual {p3}, Lcom/google/protobuf/d0;->isInitialized()Z

    .line 288
    .line 289
    .line 290
    move-result p3

    .line 291
    if-nez p3, :cond_e

    .line 292
    .line 293
    if-eqz p1, :cond_d

    .line 294
    .line 295
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    .line 296
    .line 297
    :cond_d
    :goto_8
    return-object v0

    .line 298
    :cond_e
    add-int/lit8 p2, p2, 0x1

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_f
    if-eqz p1, :cond_10

    .line 302
    .line 303
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->memoizedIsInitialized:B

    .line 304
    .line 305
    :cond_10
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;

    .line 306
    .line 307
    return-object p1

    .line 308
    nop

    .line 309
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

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
    invoke-static {v1}, Lcom/google/protobuf/n;->h(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    and-int/2addr v1, v3

    .line 24
    if-ne v1, v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v2, v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 44
    .line 45
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/google/protobuf/s0;

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->l(ILcom/google/protobuf/s0;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 68
    .line 69
    return v1
.end method

.method public getSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTokenStringBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->tokenString_:Ljava/lang/String;

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

.method public getVehicleData(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 8
    .line 9
    return-object p1
.end method

.method public getVehicleDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

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

.method public getVehicleDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVehicleDataOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getVehicleDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasSupport()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

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

.method public hasTokenString()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->support_:Z

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->s(IZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->getTokenString()Ljava/lang/String;

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
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v0, v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->vehicleData_:Lcom/google/protobuf/m0;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/google/protobuf/s0;

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->z(ILcom/google/protobuf/s0;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
