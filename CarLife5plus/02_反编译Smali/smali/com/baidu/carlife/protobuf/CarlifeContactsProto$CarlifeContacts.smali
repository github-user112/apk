.class public final Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContactsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeContactsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeContacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContactsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cid_:I

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private number_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->setCid(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->clearCid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->setName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->clearName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->setNameBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->setNumber(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->clearNumber()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->setNumberBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearCid()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getNumber()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

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

.method private setCid(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 8
    .line 9
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setNumberBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;-><init>()V

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
    if-nez v0, :cond_7

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
    if-eq p1, p3, :cond_6

    .line 75
    .line 76
    const/16 p3, 0x12

    .line 77
    .line 78
    if-eq p1, p3, :cond_5

    .line 79
    .line 80
    const/16 p3, 0x1a

    .line 81
    .line 82
    if-eq p1, p3, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    :cond_3
    const/4 v0, 0x1

    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    goto :goto_4

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_5

    .line 96
    :catch_1
    move-exception p1

    .line 97
    goto :goto_6

    .line 98
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 103
    .line 104
    or-int/lit8 p3, p3, 0x4

    .line 105
    .line 106
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 107
    .line 108
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 116
    .line 117
    or-int/lit8 p3, p3, 0x2

    .line 118
    .line 119
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 120
    .line 121
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 125
    .line 126
    or-int/2addr p1, v1

    .line 127
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_4
    throw p1

    .line 137
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 138
    .line 139
    new-instance p3, Lcom/google/protobuf/o0;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw p2

    .line 152
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 153
    .line 154
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw p2

    .line 158
    :cond_7
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 159
    .line 160
    return-object p1

    .line 161
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 162
    .line 163
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasCid()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 170
    .line 171
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasCid()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 176
    .line 177
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasName()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasName()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 194
    .line 195
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasNumber()Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasNumber()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 218
    .line 219
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 220
    .line 221
    if-ne p2, p1, :cond_8

    .line 222
    .line 223
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 224
    .line 225
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 226
    .line 227
    or-int/2addr p1, p2

    .line 228
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 229
    .line 230
    :cond_8
    return-object p0

    .line 231
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->memoizedIsInitialized:B

    .line 232
    .line 233
    if-ne p1, v1, :cond_9

    .line 234
    .line 235
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 236
    .line 237
    return-object p1

    .line 238
    :cond_9
    if-nez p1, :cond_a

    .line 239
    .line 240
    return-object v2

    .line 241
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasCid()Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-nez p2, :cond_c

    .line 252
    .line 253
    if-eqz p1, :cond_b

    .line 254
    .line 255
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->memoizedIsInitialized:B

    .line 256
    .line 257
    :cond_b
    return-object v2

    .line 258
    :cond_c
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasName()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-nez p2, :cond_e

    .line 263
    .line 264
    if-eqz p1, :cond_d

    .line 265
    .line 266
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->memoizedIsInitialized:B

    .line 267
    .line 268
    :cond_d
    return-object v2

    .line 269
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasNumber()Z

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    if-nez p2, :cond_10

    .line 274
    .line 275
    if-eqz p1, :cond_f

    .line 276
    .line 277
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->memoizedIsInitialized:B

    .line 278
    .line 279
    :cond_f
    return-object v2

    .line 280
    :cond_10
    if-eqz p1, :cond_11

    .line 281
    .line 282
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->memoizedIsInitialized:B

    .line 283
    .line 284
    :cond_11
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    .line 285
    .line 286
    return-object p1

    .line 287
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

.method public getCid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->name_:Ljava/lang/String;

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

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->number_:Ljava/lang/String;

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
    .locals 3

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getName()Ljava/lang/String;

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getNumber()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v1, v0

    .line 59
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 60
    .line 61
    return v1
.end method

.method public hasCid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->cid_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getName()Ljava/lang/String;

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->bitField0_:I

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getNumber()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
