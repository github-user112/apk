.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFlingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeTouchFling"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFlingOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final VELOCITYX_FIELD_NUMBER:I = 0x5

.field public static final VELOCITYY_FIELD_NUMBER:I = 0x6

.field public static final X1_FIELD_NUMBER:I = 0x1

.field public static final X2_FIELD_NUMBER:I = 0x3

.field public static final Y1_FIELD_NUMBER:I = 0x2

.field public static final Y2_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private velocityX_:F

.field private velocityY_:F

.field private x1_:I

.field private x2_:I

.field private y1_:I

.field private y2_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->setX1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->clearVelocityX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->setVelocityY(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->clearVelocityY()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->clearX1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->setY1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->clearY1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->setX2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->clearX2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->setY2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->clearY2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->setVelocityX(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearVelocityX()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 9
    .line 10
    return-void
.end method

.method private clearVelocityY()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 9
    .line 10
    return-void
.end method

.method private clearX1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearX2()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearY1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearY2()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

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

.method private setVelocityX(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 8
    .line 9
    return-void
.end method

.method private setVelocityY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 8
    .line 9
    return-void
.end method

.method private setX1(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 8
    .line 9
    return-void
.end method

.method private setX2(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 8
    .line 9
    return-void
.end method

.method private setY1(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 8
    .line 9
    return-void
.end method

.method private setY2(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;-><init>()V

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
    if-nez v1, :cond_a

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
    if-eq p1, p3, :cond_9

    .line 75
    .line 76
    const/16 v2, 0x10

    .line 77
    .line 78
    if-eq p1, v2, :cond_8

    .line 79
    .line 80
    const/16 v3, 0x18

    .line 81
    .line 82
    if-eq p1, v3, :cond_7

    .line 83
    .line 84
    const/16 v3, 0x20

    .line 85
    .line 86
    if-eq p1, v3, :cond_6

    .line 87
    .line 88
    const/16 p3, 0x2d

    .line 89
    .line 90
    if-eq p1, p3, :cond_5

    .line 91
    .line 92
    const/16 p3, 0x35

    .line 93
    .line 94
    if-eq p1, p3, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    :cond_3
    const/4 v1, 0x1

    .line 103
    goto :goto_3

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    goto :goto_4

    .line 106
    :catch_0
    move-exception p1

    .line 107
    goto :goto_5

    .line 108
    :catch_1
    move-exception p1

    .line 109
    goto :goto_6

    .line 110
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 111
    .line 112
    or-int/2addr p1, v3

    .line 113
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/google/protobuf/j;->i()F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 123
    .line 124
    or-int/2addr p1, v2

    .line 125
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/google/protobuf/j;->i()F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 135
    .line 136
    or-int/2addr p1, p3

    .line 137
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 147
    .line 148
    or-int/lit8 p1, p1, 0x4

    .line 149
    .line 150
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 160
    .line 161
    or-int/lit8 p1, p1, 0x2

    .line 162
    .line 163
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 173
    .line 174
    or-int/2addr p1, v0

    .line 175
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :goto_4
    throw p1

    .line 185
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 186
    .line 187
    new-instance p3, Lcom/google/protobuf/o0;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw p2

    .line 200
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 201
    .line 202
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw p2

    .line 206
    :cond_a
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 207
    .line 208
    return-object p1

    .line 209
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 210
    .line 211
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasX1()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 218
    .line 219
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasX1()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 224
    .line 225
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasY1()Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 236
    .line 237
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasY1()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 242
    .line 243
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasX2()Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 254
    .line 255
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasX2()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 260
    .line 261
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasY2()Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 272
    .line 273
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasY2()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 278
    .line 279
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasVelocityX()Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 290
    .line 291
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasVelocityX()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 296
    .line 297
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->e(ZFZF)F

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasVelocityY()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 308
    .line 309
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasVelocityY()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 314
    .line 315
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->e(ZFZF)F

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 320
    .line 321
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 322
    .line 323
    if-ne p2, p1, :cond_b

    .line 324
    .line 325
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 326
    .line 327
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 328
    .line 329
    or-int/2addr p1, p2

    .line 330
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 331
    .line 332
    :cond_b
    return-object p0

    .line 333
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 334
    .line 335
    if-ne p1, v0, :cond_c

    .line 336
    .line 337
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 338
    .line 339
    return-object p1

    .line 340
    :cond_c
    if-nez p1, :cond_d

    .line 341
    .line 342
    return-object v2

    .line 343
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    .line 344
    .line 345
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasX1()Z

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    if-nez p2, :cond_f

    .line 354
    .line 355
    if-eqz p1, :cond_e

    .line 356
    .line 357
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 358
    .line 359
    :cond_e
    return-object v2

    .line 360
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasY1()Z

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    if-nez p2, :cond_11

    .line 365
    .line 366
    if-eqz p1, :cond_10

    .line 367
    .line 368
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 369
    .line 370
    :cond_10
    return-object v2

    .line 371
    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasX2()Z

    .line 372
    .line 373
    .line 374
    move-result p2

    .line 375
    if-nez p2, :cond_13

    .line 376
    .line 377
    if-eqz p1, :cond_12

    .line 378
    .line 379
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 380
    .line 381
    :cond_12
    return-object v2

    .line 382
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasY2()Z

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    if-nez p2, :cond_15

    .line 387
    .line 388
    if-eqz p1, :cond_14

    .line 389
    .line 390
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 391
    .line 392
    :cond_14
    return-object v2

    .line 393
    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasVelocityX()Z

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    if-nez p2, :cond_17

    .line 398
    .line 399
    if-eqz p1, :cond_16

    .line 400
    .line 401
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 402
    .line 403
    :cond_16
    return-object v2

    .line 404
    :cond_17
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->hasVelocityY()Z

    .line 405
    .line 406
    .line 407
    move-result p2

    .line 408
    if-nez p2, :cond_19

    .line 409
    .line 410
    if-eqz p1, :cond_18

    .line 411
    .line 412
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 413
    .line 414
    :cond_18
    return-object v2

    .line 415
    :cond_19
    if-eqz p1, :cond_1a

    .line 416
    .line 417
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->memoizedIsInitialized:B

    .line 418
    .line 419
    :cond_1a
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;

    .line 420
    .line 421
    return-object p1

    .line 422
    nop

    .line 423
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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 63
    .line 64
    const/16 v3, 0x10

    .line 65
    .line 66
    and-int/2addr v1, v3

    .line 67
    if-ne v1, v3, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    invoke-static {v1}, Lcom/google/protobuf/n;->n(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v2

    .line 75
    add-int/2addr v0, v1

    .line 76
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 77
    .line 78
    const/16 v3, 0x20

    .line 79
    .line 80
    and-int/2addr v1, v3

    .line 81
    if-ne v1, v3, :cond_6

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    invoke-static {v1}, Lcom/google/protobuf/n;->n(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v1, v2

    .line 89
    add-int/2addr v0, v1

    .line 90
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v1, v0

    .line 97
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 98
    .line 99
    return v1
.end method

.method public getVelocityX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 2
    .line 3
    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 2
    .line 3
    return v0
.end method

.method public getX1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 2
    .line 3
    return v0
.end method

.method public getX2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 2
    .line 3
    return v0
.end method

.method public getY1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 2
    .line 3
    return v0
.end method

.method public getY2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasVelocityX()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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

.method public hasVelocityY()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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

.method public hasX1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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

.method public hasX2()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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

.method public hasY1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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

.method public hasY2()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x1_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y1_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->x2_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->y2_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    and-int/2addr v0, v1

    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityX_:F

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->x(FI)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->bitField0_:I

    .line 61
    .line 62
    const/16 v1, 0x20

    .line 63
    .line 64
    and-int/2addr v0, v1

    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchFlingProto$CarlifeTouchFling;->velocityY_:F

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->x(FI)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
