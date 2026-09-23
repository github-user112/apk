.class public final Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeModuleStatusList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusListOrBuilder;"
    }
.end annotation


# static fields
.field public static final CNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

.field public static final MODULESTATUS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cnt_:I

.field private memoizedIsInitialized:B

.field private moduleStatus_:Lcom/google/protobuf/m0;
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
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->memoizedIsInitialized:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->setCnt(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->clearModuleStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->removeModuleStatus(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->clearCnt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->setModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->setModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->addModuleStatus(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->addModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->addModuleStatus(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->addModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->addAllModuleStatus(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllModuleStatus(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/c;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addModuleStatus(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    invoke-virtual {p1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addModuleStatus(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    check-cast v0, Lcom/google/protobuf/d;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCnt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearModuleStatus()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/d0;->emptyProtobufList()Lcom/google/protobuf/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 6
    .line 7
    return-void
.end method

.method private ensureModuleStatusIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

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
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

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

.method private removeModuleStatus(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setCnt(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 8
    .line 9
    return-void
.end method

.method private setModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    invoke-virtual {p2}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setModuleStatus(ILcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->ensureModuleStatusIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

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
    if-nez v1, :cond_7

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
    if-eq p1, v0, :cond_6

    .line 81
    .line 82
    const/16 v0, 0x12

    .line 83
    .line 84
    if-eq p1, v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    :cond_3
    const/4 v1, 0x1

    .line 93
    goto :goto_3

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    goto :goto_4

    .line 96
    :catch_0
    move-exception p1

    .line 97
    goto :goto_5

    .line 98
    :catch_1
    move-exception p1

    .line 99
    goto :goto_6

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 101
    .line 102
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/google/protobuf/d;

    .line 104
    .line 105
    iget-boolean v0, v0, Lcom/google/protobuf/d;->a:Z

    .line 106
    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-static {p1}, Lcom/google/protobuf/d0;->mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 114
    .line 115
    :cond_5
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 116
    .line 117
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->parser()Lcom/google/protobuf/v0;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0, p3}, Lcom/google/protobuf/j;->j(Lcom/google/protobuf/v0;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    .line 126
    .line 127
    check-cast p1, Lcom/google/protobuf/d;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 134
    .line 135
    or-int/2addr p1, v2

    .line 136
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_4
    throw p1

    .line 146
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 147
    .line 148
    new-instance p3, Lcom/google/protobuf/o0;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw p2

    .line 161
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 162
    .line 163
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw p2

    .line 167
    :cond_7
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 168
    .line 169
    return-object p1

    .line 170
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 171
    .line 172
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->hasCnt()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 179
    .line 180
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->hasCnt()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 185
    .line 186
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 191
    .line 192
    iget-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 193
    .line 194
    iget-object v0, p3, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 195
    .line 196
    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/c0;->f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 201
    .line 202
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 203
    .line 204
    if-ne p2, p1, :cond_8

    .line 205
    .line 206
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 207
    .line 208
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 209
    .line 210
    or-int/2addr p1, p2

    .line 211
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 212
    .line 213
    :cond_8
    return-object p0

    .line 214
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->memoizedIsInitialized:B

    .line 215
    .line 216
    if-ne p1, v2, :cond_9

    .line 217
    .line 218
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 219
    .line 220
    return-object p1

    .line 221
    :cond_9
    if-nez p1, :cond_a

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->hasCnt()Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    if-nez p2, :cond_b

    .line 235
    .line 236
    if-eqz p1, :cond_c

    .line 237
    .line 238
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->memoizedIsInitialized:B

    .line 239
    .line 240
    return-object v0

    .line 241
    :cond_b
    const/4 p2, 0x0

    .line 242
    :goto_7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getModuleStatusCount()I

    .line 243
    .line 244
    .line 245
    move-result p3

    .line 246
    if-ge p2, p3, :cond_e

    .line 247
    .line 248
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->getModuleStatus(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    invoke-virtual {p3}, Lcom/google/protobuf/d0;->isInitialized()Z

    .line 253
    .line 254
    .line 255
    move-result p3

    .line 256
    if-nez p3, :cond_d

    .line 257
    .line 258
    if-eqz p1, :cond_c

    .line 259
    .line 260
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->memoizedIsInitialized:B

    .line 261
    .line 262
    :cond_c
    :goto_8
    return-object v0

    .line 263
    :cond_d
    add-int/lit8 p2, p2, 0x1

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_e
    if-eqz p1, :cond_f

    .line 267
    .line 268
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->memoizedIsInitialized:B

    .line 269
    .line 270
    :cond_f
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;

    .line 271
    .line 272
    return-object p1

    .line 273
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

.method public getCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 2
    .line 3
    return v0
.end method

.method public getModuleStatus(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;

    .line 8
    .line 9
    return-object p1
.end method

.method public getModuleStatusCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

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

.method public getModuleStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModuleStatusOrBuilder(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatusOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatusOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getModuleStatusOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatusOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 2
    .line 3
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

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
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ge v2, v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/protobuf/s0;

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->l(ILcom/google/protobuf/s0;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 55
    .line 56
    return v1
.end method

.method public hasCnt()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->cnt_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusListProto$CarlifeModuleStatusList;->moduleStatus_:Lcom/google/protobuf/m0;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/protobuf/s0;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->z(ILcom/google/protobuf/s0;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
