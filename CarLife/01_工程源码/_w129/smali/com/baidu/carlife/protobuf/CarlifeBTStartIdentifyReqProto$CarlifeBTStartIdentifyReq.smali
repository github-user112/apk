.class public final Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
.super La/c/a/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeBTStartIdentifyReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReqOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

.field private static volatile PARSER:La/c/a/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private memoizedIsInitialized:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, La/c/a/p;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/c/a/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->clearAddress()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;La/c/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->setAddressBytes(La/c/a/g;)V

    return-void
.end method

.method private clearAddress()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;

    invoke-virtual {v0, p0}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;[B)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parseFrom([BLa/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p0
.end method

.method public static parser()La/c/a/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {v0}, La/c/a/p;->getParserForType()La/c/a/z;

    move-result-object v0

    return-object v0
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    return-void
.end method

.method private setAddressBytes(La/c/a/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    invoke-virtual {p1}, La/c/a/g;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->PARSER:La/c/a/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->PARSER:La/c/a/z;

    if-nez p2, :cond_0

    new-instance p2, La/c/a/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-direct {p2, p3}, La/c/a/p$c;-><init>(La/c/a/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->PARSER:La/c/a/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->PARSER:La/c/a/z;

    return-object p1

    :pswitch_1
    check-cast p2, La/c/a/h;

    check-cast p3, La/c/a/m;

    :cond_2
    :goto_1
    if-nez v0, :cond_5

    :try_start_1
    invoke-virtual {p2}, La/c/a/h;->u()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p3, 0xa

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, La/c/a/p;->parseUnknownField(ILa/c/a/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, La/c/a/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

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

    :goto_3
    throw p1

    :cond_5
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p1

    :pswitch_3
    check-cast p2, La/c/a/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->hasAddress()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->hasAddress()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    sget-object p1, La/c/a/p$i;->a:La/c/a/p$i;

    if-ne p2, p1, :cond_6

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    :cond_6
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;

    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$1;)V

    return-object p1

    :pswitch_5
    return-object v1

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->memoizedIsInitialized:B

    if-ne p1, v2, :cond_7

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p1

    :cond_7
    if-nez p1, :cond_8

    return-object v1

    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->hasAddress()Z

    move-result p2

    if-nez p2, :cond_a

    if-eqz p1, :cond_9

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->memoizedIsInitialized:B

    :cond_9
    return-object v1

    :cond_a
    if-eqz p1, :cond_b

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->memoizedIsInitialized:B

    :cond_b
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;-><init>()V

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
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->address_:Ljava/lang/String;

    invoke-static {v0}, La/c/a/g;->d(Ljava/lang/String;)La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, La/c/a/p;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, La/c/a/i;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v1}, La/c/a/e0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/p;->memoizedSerializedSize:I

    return v1
.end method

.method public hasAddress()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(La/c/a/i;)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTStartIdentifyReqProto$CarlifeBTStartIdentifyReq;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, La/c/a/i;->z(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v0, p1}, La/c/a/e0;->f(La/c/a/i;)V

    return-void
.end method
