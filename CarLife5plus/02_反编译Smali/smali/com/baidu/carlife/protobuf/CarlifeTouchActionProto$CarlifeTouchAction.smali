.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeTouchAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final POINTERX_FIELD_NUMBER:I = 0x4

.field public static final POINTERY_FIELD_NUMBER:I = 0x5

.field public static final X_FIELD_NUMBER:I = 0x2

.field public static final Y_FIELD_NUMBER:I = 0x3


# instance fields
.field private action_:I

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
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

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
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->setAction(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->clearPointery()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->clearAction()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->setX(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->clearX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->setY(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->clearY()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->setPointerx(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->clearPointerx()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->setPointery(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAction()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPointerx()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPointery()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearX()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearY()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

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
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

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

.method private setAction(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPointerx(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPointery(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 8
    .line 9
    return-void
.end method

.method private setX(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 8
    .line 9
    return-void
.end method

.method private setY(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->PARSER:Lcom/google/protobuf/v0;

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
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;-><init>()V

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
    if-nez v0, :cond_9

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
    if-eq p1, p3, :cond_8

    .line 75
    .line 76
    const/16 v2, 0x10

    .line 77
    .line 78
    if-eq p1, v2, :cond_7

    .line 79
    .line 80
    const/16 v3, 0x18

    .line 81
    .line 82
    if-eq p1, v3, :cond_6

    .line 83
    .line 84
    const/16 v3, 0x20

    .line 85
    .line 86
    if-eq p1, v3, :cond_5

    .line 87
    .line 88
    const/16 p3, 0x28

    .line 89
    .line 90
    if-eq p1, p3, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_2

    .line 97
    .line 98
    :cond_3
    const/4 v0, 0x1

    .line 99
    goto :goto_3

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    goto :goto_4

    .line 102
    :catch_0
    move-exception p1

    .line 103
    goto :goto_5

    .line 104
    :catch_1
    move-exception p1

    .line 105
    goto :goto_6

    .line 106
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 107
    .line 108
    or-int/2addr p1, v2

    .line 109
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 119
    .line 120
    or-int/2addr p1, p3

    .line 121
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 131
    .line 132
    or-int/lit8 p1, p1, 0x4

    .line 133
    .line 134
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 144
    .line 145
    or-int/lit8 p1, p1, 0x2

    .line 146
    .line 147
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 157
    .line 158
    or-int/2addr p1, v1

    .line 159
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :goto_4
    throw p1

    .line 169
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    new-instance p3, Lcom/google/protobuf/o0;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    throw p2

    .line 184
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 185
    .line 186
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw p2

    .line 190
    :cond_9
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 191
    .line 192
    return-object p1

    .line 193
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 194
    .line 195
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasAction()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 202
    .line 203
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasAction()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 208
    .line 209
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasX()Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 220
    .line 221
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasX()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 226
    .line 227
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasY()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 238
    .line 239
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasY()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 244
    .line 245
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasPointerx()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 256
    .line 257
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasPointerx()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 262
    .line 263
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasPointery()Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 274
    .line 275
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasPointery()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 280
    .line 281
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 286
    .line 287
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 288
    .line 289
    if-ne p2, p1, :cond_a

    .line 290
    .line 291
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 292
    .line 293
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 294
    .line 295
    or-int/2addr p1, p2

    .line 296
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 297
    .line 298
    :cond_a
    return-object p0

    .line 299
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->memoizedIsInitialized:B

    .line 300
    .line 301
    if-ne p1, v1, :cond_b

    .line 302
    .line 303
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 304
    .line 305
    return-object p1

    .line 306
    :cond_b
    if-nez p1, :cond_c

    .line 307
    .line 308
    return-object v2

    .line 309
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    .line 310
    .line 311
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasAction()Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    if-nez p2, :cond_e

    .line 320
    .line 321
    if-eqz p1, :cond_d

    .line 322
    .line 323
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->memoizedIsInitialized:B

    .line 324
    .line 325
    :cond_d
    return-object v2

    .line 326
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasX()Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-nez p2, :cond_10

    .line 331
    .line 332
    if-eqz p1, :cond_f

    .line 333
    .line 334
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->memoizedIsInitialized:B

    .line 335
    .line 336
    :cond_f
    return-object v2

    .line 337
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasY()Z

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    if-nez p2, :cond_12

    .line 342
    .line 343
    if-eqz p1, :cond_11

    .line 344
    .line 345
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->memoizedIsInitialized:B

    .line 346
    .line 347
    :cond_11
    return-object v2

    .line 348
    :cond_12
    if-eqz p1, :cond_13

    .line 349
    .line 350
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->memoizedIsInitialized:B

    .line 351
    .line 352
    :cond_13
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 353
    .line 354
    return-object p1

    .line 355
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

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPointerx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPointery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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
    iget v3, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 63
    .line 64
    const/16 v2, 0x10

    .line 65
    .line 66
    and-int/2addr v1, v2

    .line 67
    if-ne v1, v2, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 71
    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v1, v0

    .line 84
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 85
    .line 86
    return v1
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 2
    .line 3
    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasAction()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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

.method public hasPointerx()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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

.method public hasPointery()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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

.method public hasX()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->action_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->x_:I

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->y_:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->y(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointerx_:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->bitField0_:I

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
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->pointery_:I

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
