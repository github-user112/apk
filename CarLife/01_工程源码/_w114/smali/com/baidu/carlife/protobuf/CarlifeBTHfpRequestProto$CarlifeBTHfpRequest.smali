.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
.super La/c/a/p;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeBTHfpRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p<",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMMAND_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

.field public static final DTMFCODE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:La/c/a/z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONENUM_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private command_:I

.field private dtmfCode_:I

.field private memoizedIsInitialized:B

.field private phoneNum_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;-><init>()V

    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, La/c/a/p;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/c/a/p;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->setCommand(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->clearCommand()V

    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->setPhoneNum(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->clearPhoneNum()V

    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;La/c/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->setPhoneNumBytes(La/c/a/g;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->setDtmfCode(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->clearDtmfCode()V

    return-void
.end method

.method private clearCommand()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    return-void
.end method

.method private clearDtmfCode()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    return-void
.end method

.method private clearPhoneNum()V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;

    invoke-virtual {v0, p0}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom(La/c/a/g;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom(La/c/a/h;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;La/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0}, La/c/a/p;->parseFrom(La/c/a/p;[B)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parseFrom([BLa/c/a/m;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
    .locals 1

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-static {v0, p0, p1}, La/c/a/p;->parseFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p0
.end method

.method public static parser()La/c/a/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/a/z<",
            "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {v0}, La/c/a/p;->getParserForType()La/c/a/z;

    move-result-object v0

    return-object v0
.end method

.method private setCommand(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    return-void
.end method

.method private setDtmfCode(I)V
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    return-void
.end method

.method private setPhoneNum(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    return-void
.end method

.method private setPhoneNumBytes(La/c/a/g;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    invoke-virtual {p1}, La/c/a/g;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->PARSER:La/c/a/z;

    if-nez p1, :cond_1

    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->PARSER:La/c/a/z;

    if-nez p2, :cond_0

    new-instance p2, La/c/a/p$c;

    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-direct {p2, p3}, La/c/a/p$c;-><init>(La/c/a/p;)V

    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->PARSER:La/c/a/z;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->PARSER:La/c/a/z;

    return-object p1

    :pswitch_1
    check-cast p2, La/c/a/h;

    check-cast p3, La/c/a/m;

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    :try_start_1
    invoke-virtual {p2}, La/c/a/h;->u()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x12

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p1, p2}, La/c/a/p;->parseUnknownField(ILa/c/a/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    .line 1
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 2
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, La/c/a/h;->t()Ljava/lang/String;

    move-result-object p1

    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    .line 3
    invoke-virtual {p2}, La/c/a/h;->n()I

    move-result p1

    .line 4
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
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

    :cond_7
    :pswitch_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p1

    :pswitch_3
    check-cast p2, La/c/a/p$k;

    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasCommand()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasCommand()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasPhoneNum()Z

    move-result p1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasPhoneNum()Z

    move-result v1

    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasDtmfCode()Z

    move-result p1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasDtmfCode()Z

    move-result v1

    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    invoke-interface {p2, p1, v0, v1, v2}, La/c/a/p$k;->l(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    sget-object p1, La/c/a/p$i;->a:La/c/a/p$i;

    if-ne p2, p1, :cond_8

    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    :cond_8
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;

    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$1;)V

    return-object p1

    :pswitch_5
    return-object v1

    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->memoizedIsInitialized:B

    if-ne p1, v2, :cond_9

    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p1

    :cond_9
    if-nez p1, :cond_a

    return-object v1

    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasCommand()Z

    move-result p2

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->memoizedIsInitialized:B

    :cond_b
    return-object v1

    :cond_c
    if-eqz p1, :cond_d

    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->memoizedIsInitialized:B

    :cond_d
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;-><init>()V

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

.method public getCommand()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    return v0
.end method

.method public getDtmfCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->phoneNum_:Ljava/lang/String;

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

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    invoke-static {v2, v1}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, La/c/a/i;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    invoke-static {v1, v2}, La/c/a/i;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v1}, La/c/a/e0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/p;->memoizedSerializedSize:I

    return v1
.end method

.method public hasCommand()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDtmfCode()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

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

.method public hasPhoneNum()Z
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

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

.method public writeTo(La/c/a/i;)V
    .locals 2

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->command_:I

    invoke-virtual {p1, v1, v0}, La/c/a/i;->x(II)V

    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, La/c/a/i;->z(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->dtmfCode_:I

    invoke-virtual {p1, v0, v1}, La/c/a/i;->x(II)V

    :cond_2
    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v0, p1}, La/c/a/e0;->f(La/c/a/i;)V

    return-void
.end method
