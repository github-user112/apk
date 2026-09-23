.class public final Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBeginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeFileTransferBegin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBeginOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

.field public static final FILESIZE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private fileSize_:J

.field private memoizedIsInitialized:B

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->setFileSize(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->clearFileSize()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->setVersion(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->clearVersion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearFileSize()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 10
    .line 11
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

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

.method private setFileSize(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 8
    .line 9
    return-void
.end method

.method private setVersion(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->PARSER:Lcom/google/protobuf/v0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p2, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p1

    .line 42
    goto :goto_2

    .line 43
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p2

    .line 45
    :cond_1
    :goto_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->PARSER:Lcom/google/protobuf/v0;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;

    .line 49
    .line 50
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$1;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3
    return-object v1

    .line 61
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 62
    .line 63
    check-cast p3, Lcom/google/protobuf/r;

    .line 64
    .line 65
    :cond_2
    :goto_3
    if-nez v0, :cond_6

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const/16 p3, 0x8

    .line 74
    .line 75
    if-eq p1, p3, :cond_5

    .line 76
    .line 77
    const/16 p3, 0x10

    .line 78
    .line 79
    if-eq p1, p3, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    :cond_3
    const/4 v0, 0x1

    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object p1, v0

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    goto :goto_5

    .line 95
    :catch_1
    move-exception v0

    .line 96
    move-object p1, v0

    .line 97
    goto :goto_6

    .line 98
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 99
    .line 100
    or-int/lit8 p1, p1, 0x2

    .line 101
    .line 102
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 112
    .line 113
    or-int/2addr p1, v2

    .line 114
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/google/protobuf/j;->p()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iput-wide v3, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_4
    throw p1

    .line 124
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    new-instance p3, Lcom/google/protobuf/o0;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p2

    .line 139
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 140
    .line 141
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw p2

    .line 145
    :cond_6
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_6
    move-object v0, p2

    .line 149
    check-cast v0, Lcom/google/protobuf/c0;

    .line 150
    .line 151
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasFileSize()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 158
    .line 159
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasFileSize()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    iget-wide v5, p3, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 164
    .line 165
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/c0;->i(ZJZJ)J

    .line 166
    .line 167
    .line 168
    move-result-wide p1

    .line 169
    iput-wide p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasVersion()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iget p2, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasVersion()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 182
    .line 183
    invoke-interface {v0, p2, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 188
    .line 189
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 190
    .line 191
    if-ne v0, p1, :cond_7

    .line 192
    .line 193
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 194
    .line 195
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 196
    .line 197
    or-int/2addr p1, p2

    .line 198
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 199
    .line 200
    :cond_7
    return-object p0

    .line 201
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->memoizedIsInitialized:B

    .line 202
    .line 203
    if-ne p1, v2, :cond_8

    .line 204
    .line 205
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 206
    .line 207
    return-object p1

    .line 208
    :cond_8
    if-nez p1, :cond_9

    .line 209
    .line 210
    return-object v1

    .line 211
    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->hasFileSize()Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_b

    .line 222
    .line 223
    if-eqz p1, :cond_a

    .line 224
    .line 225
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->memoizedIsInitialized:B

    .line 226
    .line 227
    :cond_a
    return-object v1

    .line 228
    :cond_b
    if-eqz p1, :cond_c

    .line 229
    .line 230
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->memoizedIsInitialized:B

    .line 231
    .line 232
    :cond_c
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    .line 233
    .line 234
    return-object p1

    .line 235
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

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 2
    .line 3
    return-wide v0
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/protobuf/n;->n(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v2, v3}, Lcom/google/protobuf/n;->q(J)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    and-int/2addr v0, v2

    .line 30
    if-ne v0, v2, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/google/protobuf/n;->k(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v1, v0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/protobuf/y0;->a()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 47
    .line 48
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasFileSize()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->fileSize_:J

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/n;->E(IJ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->version_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
