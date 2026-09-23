.class public final Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeBTPairInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

.field public static final HASH_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final PASSKEY_FIELD_NUMBER:I = 0x2

.field public static final RANDOMIZER_FIELD_NUMBER:I = 0x4

.field public static final STATUS_FIELD_NUMBER:I = 0x7

.field public static final UUID_FIELD_NUMBER:I = 0x5


# instance fields
.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private hash_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private passKey_:Ljava/lang/String;

.field private randomizer_:Ljava/lang/String;

.field private status_:I

.field private uuid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setAddress(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setRandomizer(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearRandomizer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setRandomizerBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setUuid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearUuid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setUuidBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setNameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setStatus(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearAddress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setAddressBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setPassKey(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearPassKey()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setPassKeyBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setHash(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->clearHash()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->setHashBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getAddress()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getHash()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearPassKey()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getPassKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearRandomizer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getRandomizer()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearUuid()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getUuid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

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

.method private setAddress(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setAddressBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setHash(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setHashBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setPassKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setPassKeyBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setRandomizer(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setRandomizerBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setStatus(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 8
    .line 9
    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setUuidBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 15
    .line 16
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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    return-object v2

    .line 60
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 61
    .line 62
    check-cast p3, Lcom/google/protobuf/r;

    .line 63
    .line 64
    :cond_2
    :goto_3
    if-nez v1, :cond_b

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/16 p3, 0xa

    .line 73
    .line 74
    if-eq p1, p3, :cond_a

    .line 75
    .line 76
    const/16 p3, 0x12

    .line 77
    .line 78
    if-eq p1, p3, :cond_9

    .line 79
    .line 80
    const/16 p3, 0x1a

    .line 81
    .line 82
    if-eq p1, p3, :cond_8

    .line 83
    .line 84
    const/16 p3, 0x22

    .line 85
    .line 86
    if-eq p1, p3, :cond_7

    .line 87
    .line 88
    const/16 p3, 0x2a

    .line 89
    .line 90
    if-eq p1, p3, :cond_6

    .line 91
    .line 92
    const/16 p3, 0x32

    .line 93
    .line 94
    if-eq p1, p3, :cond_5

    .line 95
    .line 96
    const/16 p3, 0x38

    .line 97
    .line 98
    if-eq p1, p3, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_2

    .line 105
    .line 106
    :cond_3
    const/4 v1, 0x1

    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    goto :goto_4

    .line 110
    :catch_0
    move-exception p1

    .line 111
    goto :goto_5

    .line 112
    :catch_1
    move-exception p1

    .line 113
    goto :goto_6

    .line 114
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 115
    .line 116
    or-int/lit8 p1, p1, 0x40

    .line 117
    .line 118
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 132
    .line 133
    or-int/lit8 p3, p3, 0x20

    .line 134
    .line 135
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 136
    .line 137
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 145
    .line 146
    or-int/lit8 p3, p3, 0x10

    .line 147
    .line 148
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 149
    .line 150
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 158
    .line 159
    or-int/lit8 p3, p3, 0x8

    .line 160
    .line 161
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 162
    .line 163
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 171
    .line 172
    or-int/lit8 p3, p3, 0x4

    .line 173
    .line 174
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 175
    .line 176
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 184
    .line 185
    or-int/lit8 p3, p3, 0x2

    .line 186
    .line 187
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 188
    .line 189
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 197
    .line 198
    or-int/2addr p3, v0

    .line 199
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 200
    .line 201
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    :goto_4
    throw p1

    .line 206
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 207
    .line 208
    new-instance p3, Lcom/google/protobuf/o0;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw p2

    .line 221
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 222
    .line 223
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw p2

    .line 227
    :cond_b
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 228
    .line 229
    return-object p1

    .line 230
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 231
    .line 232
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasAddress()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasAddress()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 245
    .line 246
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasPassKey()Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasPassKey()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 263
    .line 264
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasHash()Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasHash()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 281
    .line 282
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasRandomizer()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasRandomizer()Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 299
    .line 300
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasUuid()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasUuid()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 317
    .line 318
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasName()Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasName()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 335
    .line 336
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasStatus()Z

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 347
    .line 348
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasStatus()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 353
    .line 354
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 359
    .line 360
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 361
    .line 362
    if-ne p2, p1, :cond_c

    .line 363
    .line 364
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 365
    .line 366
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 367
    .line 368
    or-int/2addr p1, p2

    .line 369
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 370
    .line 371
    :cond_c
    return-object p0

    .line 372
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 373
    .line 374
    if-ne p1, v0, :cond_d

    .line 375
    .line 376
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 377
    .line 378
    return-object p1

    .line 379
    :cond_d
    if-nez p1, :cond_e

    .line 380
    .line 381
    return-object v2

    .line 382
    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    .line 383
    .line 384
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasAddress()Z

    .line 389
    .line 390
    .line 391
    move-result p2

    .line 392
    if-nez p2, :cond_10

    .line 393
    .line 394
    if-eqz p1, :cond_f

    .line 395
    .line 396
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 397
    .line 398
    :cond_f
    return-object v2

    .line 399
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasUuid()Z

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    if-nez p2, :cond_12

    .line 404
    .line 405
    if-eqz p1, :cond_11

    .line 406
    .line 407
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 408
    .line 409
    :cond_11
    return-object v2

    .line 410
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasName()Z

    .line 411
    .line 412
    .line 413
    move-result p2

    .line 414
    if-nez p2, :cond_14

    .line 415
    .line 416
    if-eqz p1, :cond_13

    .line 417
    .line 418
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 419
    .line 420
    :cond_13
    return-object v2

    .line 421
    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hasStatus()Z

    .line 422
    .line 423
    .line 424
    move-result p2

    .line 425
    if-nez p2, :cond_16

    .line 426
    .line 427
    if-eqz p1, :cond_15

    .line 428
    .line 429
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 430
    .line 431
    :cond_15
    return-object v2

    .line 432
    :cond_16
    if-eqz p1, :cond_17

    .line 433
    .line 434
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->memoizedIsInitialized:B

    .line 435
    .line 436
    :cond_17
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;

    .line 437
    .line 438
    return-object p1

    .line 439
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

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->address_:Ljava/lang/String;

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

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->hash_:Ljava/lang/String;

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->name_:Ljava/lang/String;

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

.method public getPassKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassKeyBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->passKey_:Ljava/lang/String;

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

.method public getRandomizer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRandomizerBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->randomizer_:Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    and-int/2addr v1, v2

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getPassKey()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    and-int/2addr v1, v2

    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getHash()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    and-int/2addr v1, v3

    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getRandomizer()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 71
    .line 72
    const/16 v2, 0x10

    .line 73
    .line 74
    and-int/2addr v1, v2

    .line 75
    if-ne v1, v2, :cond_5

    .line 76
    .line 77
    const/4 v1, 0x5

    .line 78
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getUuid()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/2addr v0, v1

    .line 87
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 88
    .line 89
    const/16 v2, 0x20

    .line 90
    .line 91
    and-int/2addr v1, v2

    .line 92
    if-ne v1, v2, :cond_6

    .line 93
    .line 94
    const/4 v1, 0x6

    .line 95
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 105
    .line 106
    const/16 v2, 0x40

    .line 107
    .line 108
    and-int/2addr v1, v2

    .line 109
    if-ne v1, v2, :cond_7

    .line 110
    .line 111
    const/4 v1, 0x7

    .line 112
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 113
    .line 114
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v0, v1

    .line 119
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v1, v0

    .line 126
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 127
    .line 128
    return v1
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUuidBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->uuid_:Ljava/lang/String;

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

.method public hasAddress()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasHash()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasPassKey()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasRandomizer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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

.method public hasUuid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getAddress()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getPassKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    and-int/2addr v0, v1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getHash()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    and-int/2addr v0, v2

    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getRandomizer()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    and-int/2addr v0, v1

    .line 60
    if-ne v0, v1, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getUuid()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 71
    .line 72
    const/16 v1, 0x20

    .line 73
    .line 74
    and-int/2addr v0, v1

    .line 75
    if-ne v0, v1, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->bitField0_:I

    .line 86
    .line 87
    const/16 v1, 0x40

    .line 88
    .line 89
    and-int/2addr v0, v1

    .line 90
    if-ne v0, v1, :cond_6

    .line 91
    .line 92
    const/4 v0, 0x7

    .line 93
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTPairInfoProto$CarlifeBTPairInfo;->status_:I

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
