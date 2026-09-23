.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndicationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeBTHfpIndication"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndicationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final PHONENAME_FIELD_NUMBER:I = 0x3

.field public static final PHONENUM_FIELD_NUMBER:I = 0x2

.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private phoneName_:Ljava/lang/String;

.field private phoneNum_:Ljava/lang/String;

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->clearAddress()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setAddressBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->clearState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setPhoneNum(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->clearPhoneNum()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setPhoneNumBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setPhoneName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->clearPhoneName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setPhoneNameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->setAddress(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getAddress()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearPhoneName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearPhoneNum()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneNum()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearState()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setPhoneName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setPhoneNameBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setPhoneNum(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setPhoneNumBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 8
    .line 9
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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    return-object v1

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
    if-nez v0, :cond_8

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
    const/16 p3, 0x8

    .line 73
    .line 74
    if-eq p1, p3, :cond_7

    .line 75
    .line 76
    const/16 v1, 0x12

    .line 77
    .line 78
    if-eq p1, v1, :cond_6

    .line 79
    .line 80
    const/16 v1, 0x1a

    .line 81
    .line 82
    if-eq p1, v1, :cond_5

    .line 83
    .line 84
    const/16 v1, 0x22

    .line 85
    .line 86
    if-eq p1, v1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    :cond_3
    const/4 v0, 0x1

    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    goto :goto_4

    .line 98
    :catch_0
    move-exception p1

    .line 99
    goto :goto_5

    .line 100
    :catch_1
    move-exception p1

    .line 101
    goto :goto_6

    .line 102
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 107
    .line 108
    or-int/2addr p3, v1

    .line 109
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 110
    .line 111
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 119
    .line 120
    or-int/lit8 p3, p3, 0x4

    .line 121
    .line 122
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 123
    .line 124
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 132
    .line 133
    or-int/lit8 p3, p3, 0x2

    .line 134
    .line 135
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 136
    .line 137
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 141
    .line 142
    or-int/2addr p1, v2

    .line 143
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :goto_4
    throw p1

    .line 153
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 154
    .line 155
    new-instance p3, Lcom/google/protobuf/o0;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw p2

    .line 168
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 169
    .line 170
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    throw p2

    .line 174
    :cond_8
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 175
    .line 176
    return-object p1

    .line 177
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 178
    .line 179
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasState()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 186
    .line 187
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasState()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 192
    .line 193
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasPhoneNum()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasPhoneNum()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 210
    .line 211
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasPhoneName()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasPhoneName()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasAddress()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasAddress()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 246
    .line 247
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 252
    .line 253
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 254
    .line 255
    if-ne p2, p1, :cond_9

    .line 256
    .line 257
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 258
    .line 259
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 260
    .line 261
    or-int/2addr p1, p2

    .line 262
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 263
    .line 264
    :cond_9
    return-object p0

    .line 265
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->memoizedIsInitialized:B

    .line 266
    .line 267
    if-ne p1, v2, :cond_a

    .line 268
    .line 269
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 270
    .line 271
    return-object p1

    .line 272
    :cond_a
    if-nez p1, :cond_b

    .line 273
    .line 274
    return-object v1

    .line 275
    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->hasState()Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-nez p2, :cond_d

    .line 286
    .line 287
    if-eqz p1, :cond_c

    .line 288
    .line 289
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->memoizedIsInitialized:B

    .line 290
    .line 291
    :cond_c
    return-object v1

    .line 292
    :cond_d
    if-eqz p1, :cond_e

    .line 293
    .line 294
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->memoizedIsInitialized:B

    .line 295
    .line 296
    :cond_e
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;

    .line 297
    .line 298
    return-object p1

    .line 299
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
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->address_:Ljava/lang/String;

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

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhoneNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneName_:Ljava/lang/String;

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

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhoneNumBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->phoneNum_:Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneNum()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    and-int/2addr v1, v2

    .line 40
    if-ne v1, v2, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    and-int/2addr v1, v3

    .line 57
    if-ne v1, v3, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getAddress()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v0

    .line 75
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 76
    .line 77
    return v1
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasAddress()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

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

.method public hasPhoneName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

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

.method public hasPhoneNum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->state_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneNum()Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    and-int/2addr v0, v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getPhoneName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->bitField0_:I

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    and-int/2addr v0, v2

    .line 44
    if-ne v0, v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpIndicationProto$CarlifeBTHfpIndication;->getAddress()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
