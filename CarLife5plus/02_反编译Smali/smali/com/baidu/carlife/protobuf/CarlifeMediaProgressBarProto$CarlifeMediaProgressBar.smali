.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeMediaProgressBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBarOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

.field public static final MEDIALYRIC_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final PROGRESSBAR_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private mediaLyric_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private progressBar_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->setProgressBar(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->clearProgressBar()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->setMediaLyric(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->clearMediaLyric()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->setMediaLyricBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearMediaLyric()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getMediaLyric()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearProgressBar()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

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

.method private setMediaLyric(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setMediaLyricBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setProgressBar(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;-><init>()V

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
    if-nez v0, :cond_6

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
    if-eq p1, p3, :cond_5

    .line 75
    .line 76
    const/16 p3, 0x12

    .line 77
    .line 78
    if-eq p1, p3, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    :cond_3
    const/4 v0, 0x1

    .line 87
    goto :goto_3

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    goto :goto_4

    .line 90
    :catch_0
    move-exception p1

    .line 91
    goto :goto_5

    .line 92
    :catch_1
    move-exception p1

    .line 93
    goto :goto_6

    .line 94
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 99
    .line 100
    or-int/lit8 p3, p3, 0x2

    .line 101
    .line 102
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 103
    .line 104
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 108
    .line 109
    or-int/2addr p1, v2

    .line 110
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_4
    throw p1

    .line 120
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    new-instance p3, Lcom/google/protobuf/o0;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p2

    .line 135
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 136
    .line 137
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_6
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 142
    .line 143
    return-object p1

    .line 144
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 145
    .line 146
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasProgressBar()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

    .line 153
    .line 154
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasProgressBar()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

    .line 159
    .line 160
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasMediaLyric()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasMediaLyric()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 177
    .line 178
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 183
    .line 184
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 185
    .line 186
    if-ne p2, p1, :cond_7

    .line 187
    .line 188
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 189
    .line 190
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 191
    .line 192
    or-int/2addr p1, p2

    .line 193
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 194
    .line 195
    :cond_7
    return-object p0

    .line 196
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->memoizedIsInitialized:B

    .line 197
    .line 198
    if-ne p1, v2, :cond_8

    .line 199
    .line 200
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 201
    .line 202
    return-object p1

    .line 203
    :cond_8
    if-nez p1, :cond_9

    .line 204
    .line 205
    return-object v1

    .line 206
    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasProgressBar()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-nez p2, :cond_b

    .line 217
    .line 218
    if-eqz p1, :cond_a

    .line 219
    .line 220
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->memoizedIsInitialized:B

    .line 221
    .line 222
    :cond_a
    return-object v1

    .line 223
    :cond_b
    if-eqz p1, :cond_c

    .line 224
    .line 225
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->memoizedIsInitialized:B

    .line 226
    .line 227
    :cond_c
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 228
    .line 229
    return-object p1

    .line 230
    nop

    .line 231
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

.method public getMediaLyric()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaLyricBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->mediaLyric_:Ljava/lang/String;

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

.method public getProgressBar()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getMediaLyric()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v0

    .line 43
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 44
    .line 45
    return v1
.end method

.method public hasMediaLyric()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

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

.method public hasProgressBar()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->progressBar_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getMediaLyric()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
