.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeTouchSinglePoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final POINTERX_FIELD_NUMBER:I = 0x3

.field public static final POINTERY_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private pointerx_:I

.field private pointery_:I

.field private x_:I

.field private y_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->setX(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->clearX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->setY(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->clearY()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->setPointerx(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->clearPointerx()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->setPointery(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->clearPointery()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearPointerx()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPointery()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearX()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearY()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

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

.method private setPointerx(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPointery(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 8
    .line 9
    return-void
.end method

.method private setX(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 8
    .line 9
    return-void
.end method

.method private setY(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;-><init>()V

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
    const/16 v1, 0x10

    .line 77
    .line 78
    if-eq p1, v1, :cond_6

    .line 79
    .line 80
    const/16 v1, 0x18

    .line 81
    .line 82
    if-eq p1, v1, :cond_5

    .line 83
    .line 84
    const/16 v1, 0x20

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
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 103
    .line 104
    or-int/2addr p1, p3

    .line 105
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 115
    .line 116
    or-int/lit8 p1, p1, 0x4

    .line 117
    .line 118
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 128
    .line 129
    or-int/lit8 p1, p1, 0x2

    .line 130
    .line 131
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 141
    .line 142
    or-int/2addr p1, v2

    .line 143
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I
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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 175
    .line 176
    return-object p1

    .line 177
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 178
    .line 179
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasX()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 186
    .line 187
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasX()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 192
    .line 193
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasY()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 204
    .line 205
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasY()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 210
    .line 211
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasPointerx()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 222
    .line 223
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasPointerx()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 228
    .line 229
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasPointery()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 240
    .line 241
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasPointery()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 246
    .line 247
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 252
    .line 253
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 254
    .line 255
    if-ne p2, p1, :cond_9

    .line 256
    .line 257
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 258
    .line 259
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 260
    .line 261
    or-int/2addr p1, p2

    .line 262
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 263
    .line 264
    :cond_9
    return-object p0

    .line 265
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->memoizedIsInitialized:B

    .line 266
    .line 267
    if-ne p1, v2, :cond_a

    .line 268
    .line 269
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

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
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasX()Z

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->memoizedIsInitialized:B

    .line 290
    .line 291
    :cond_c
    return-object v1

    .line 292
    :cond_d
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->hasY()Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-nez p2, :cond_f

    .line 297
    .line 298
    if-eqz p1, :cond_e

    .line 299
    .line 300
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->memoizedIsInitialized:B

    .line 301
    .line 302
    :cond_e
    return-object v1

    .line 303
    :cond_f
    if-eqz p1, :cond_10

    .line 304
    .line 305
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->memoizedIsInitialized:B

    .line 306
    .line 307
    :cond_10
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;

    .line 308
    .line 309
    return-object p1

    .line 310
    nop

    .line 311
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

.method public getPointerx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPointery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    and-int/2addr v1, v2

    .line 38
    if-ne v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->k(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    and-int/2addr v1, v3

    .line 53
    if-ne v1, v3, :cond_4

    .line 54
    .line 55
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->k(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 70
    .line 71
    return v1
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 2
    .line 3
    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasPointerx()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

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

.method public hasPointery()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

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

.method public hasX()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->x_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->y_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    and-int/2addr v0, v1

    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointerx_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->bitField0_:I

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    and-int/2addr v0, v2

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchSinglePointProto$CarlifeTouchSinglePoint;->pointery_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
