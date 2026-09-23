.class public final Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008*\u0008\u0007\u0018\u0000 W2\u00020\u0001:\u0001WB\u0013\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0016J\u0017\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0012\u0010\u0019J+\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00022\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001a\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001a\u0010\rJ\u0015\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\r\u0010\u001e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001e\u0010\rJ\r\u0010\u001f\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008$\u0010\rJ\u0011\u0010%\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008%\u0010&R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010\u0005R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u00105R\u001f\u00107\u001a\n 6*\u0004\u0018\u00010\u000f0\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R*\u0010<\u001a\u00020\u00082\u0006\u0010;\u001a\u00020\u00088\u0006@BX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00105\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R4\u0010B\u001a\n 6*\u0004\u0018\u00010\u000f0\u000f2\u000e\u0010A\u001a\n 6*\u0004\u0018\u00010\u000f0\u000f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008B\u00108\u001a\u0004\u0008C\u0010:R(\u0010D\u001a\u0004\u0018\u00010\u00172\u0008\u0010A\u001a\u0004\u0018\u00010\u00178F@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010&R\u0011\u0010\u0012\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010:R\u0011\u0010\u0011\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010)R\u0011\u0010J\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010)R$\u0010M\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u00028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010)\"\u0004\u0008L\u0010\u0005R$\u0010P\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u00028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008N\u0010)\"\u0004\u0008O\u0010\u0005R\u0011\u0010S\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR$\u0010V\u001a\u00020.2\u0006\u0010;\u001a\u00020.8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008T\u00102\"\u0004\u0008U\u00104\u00a8\u0006X"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "Ljava/io/Closeable;",
        "",
        "channel",
        "<init>",
        "(I)V",
        "",
        "fill",
        "",
        "header",
        "(Z)[B",
        "Lr8/z;",
        "acquire",
        "()V",
        "recycle",
        "Ljava/nio/ByteBuffer;",
        "data",
        "size",
        "payload",
        "(Ljava/nio/ByteBuffer;I)V",
        "offset",
        "length",
        "([BII)V",
        "Lcom/google/protobuf/s0;",
        "msg",
        "(Lcom/google/protobuf/s0;)V",
        "reset",
        "(II[B)V",
        "newSize",
        "resizeBuffer",
        "resetBuffer",
        "copy",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "close",
        "decode",
        "()Lcom/google/protobuf/s0;",
        "I",
        "getChannel",
        "()I",
        "setChannel",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "refCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "",
        "tag",
        "J",
        "getTag",
        "()J",
        "setTag",
        "(J)V",
        "[B",
        "kotlin.jvm.PlatformType",
        "wrappedHeader",
        "Ljava/nio/ByteBuffer;",
        "getWrappedHeader",
        "()Ljava/nio/ByteBuffer;",
        "value",
        "body",
        "getBody",
        "()[B",
        "setBody",
        "([B)V",
        "<set-?>",
        "wrappedBody",
        "getWrappedBody",
        "protoPayload",
        "Lcom/google/protobuf/s0;",
        "getProtoPayload",
        "getPayload",
        "getSize",
        "getCommandSize",
        "commandSize",
        "getPayloadSize",
        "setPayloadSize",
        "payloadSize",
        "getServiceType",
        "setServiceType",
        "serviceType",
        "getSupportEncrypt",
        "()Z",
        "supportEncrypt",
        "getTimestamp",
        "setTimestamp",
        "timestamp",
        "Companion",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

.field public static final HEADER_SIZE:I = 0x8

.field public static final INITIAL_BUFFER_SIZE:I = 0x400

.field public static final LONG_COMMAND_SIZE:I = 0xc

.field private static final NULL:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

.field public static final SHORT_COMMAND_SIZE:I = 0x8

.field private static final pool:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;


# instance fields
.field private body:[B

.field private channel:I

.field private final header:[B

.field private protoPayload:Lcom/google/protobuf/s0;

.field private final refCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private tag:J

.field private wrappedBody:Ljava/nio/ByteBuffer;

.field private final wrappedHeader:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v2, v3, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;-><init>(IILg9/g;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->pool:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;

    .line 17
    .line 18
    new-instance v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 19
    .line 20
    invoke-direct {v0, v2, v3, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;-><init>(IILg9/g;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->NULL:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;-><init>(IILg9/g;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 p1, 0x8

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header:[B

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->wrappedHeader:Ljava/nio/ByteBuffer;

    const/16 p1, 0x400

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->wrappedBody:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(IILg9/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getNULL$cp()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->NULL:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPool$cp()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->pool:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;

    .line 2
    .line 3
    return-object v0
.end method

.method private final decode()Lcom/google/protobuf/s0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v2, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;->INSTANCE:Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoderFactory;->decoderOf(I)Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2, v1, v3, v0}, Lcom/baidu/carlife/sdk/internal/protocol/decoder/PayloadDecoder;->decode([BII)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "null cannot be cast to non-null type com.google.protobuf.MessageLite"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v0, Lcom/google/protobuf/s0;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    return-object v1
.end method

.method public static synthetic header$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;ZILjava/lang/Object;)[B
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header(Z)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic payload$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;[BIIILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    array-length p3, p1

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload([BII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final recycle(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->recycle(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    return-void
.end method

.method public static synthetic reset$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;II[BILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->reset(II[B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final setBody([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->wrappedBody:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final acquire()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->recycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final copy()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 6

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    iget v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getTimestamp()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setTimestamp(J)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCommandSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/16 v0, 0x8

    .line 13
    .line 14
    return v0
.end method

.method public final getPayload()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "wrap(body, commandSize, payloadSize)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final getPayloadSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    .line 8
    const/4 v4, 0x6

    .line 9
    if-eq v0, v4, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 12
    .line 13
    invoke-static {v0, v2, v3, v1}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt$default([BIILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 19
    .line 20
    invoke-static {v0, v2, v3, v1}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toShort$default([BIILjava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final getProtoPayload()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->protoPayload:Lcom/google/protobuf/s0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->decode()Lcom/google/protobuf/s0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->protoPayload:Lcom/google/protobuf/s0;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->protoPayload:Lcom/google/protobuf/s0;

    .line 12
    .line 13
    return-object v0
.end method

.method public final getServiceType()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-static {v0, v1}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public final getSize()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    return v1
.end method

.method public final getSupportEncrypt()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x18001

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final getTag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->tag:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-static {v0, v1}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    return-wide v0
.end method

.method public final getWrappedBody()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->wrappedBody:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWrappedHeader()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->wrappedHeader:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final header(Z)[B
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header:[B

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    iget-object v7, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header:[B

    .line 19
    .line 20
    const/4 v10, 0x4

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v8, 0x4

    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-static/range {v6 .. v11}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header:[B

    .line 28
    .line 29
    return-object p1
.end method

.method public final payload(Lcom/google/protobuf/s0;)V
    .locals 4

    .line 5
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->protoPayload:Lcom/google/protobuf/s0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/s0;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V

    .line 8
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    move-result v1

    invoke-interface {p1}, Lcom/google/protobuf/s0;->getSerializedSize()I

    move-result v2

    sget-object v3, Lcom/google/protobuf/n;->a:Ljava/util/logging/Logger;

    .line 9
    new-instance v3, Lcom/google/protobuf/k;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/k;-><init>([BII)V

    .line 10
    invoke-interface {p1, v3}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    return-void
.end method

.method public final payload(Ljava/nio/ByteBuffer;I)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final payload([BII)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V

    .line 4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final recycle()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->recycle(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already recycled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .locals 10

    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt$default([BIILjava/lang/Object;)I

    move-result v5

    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->header:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->toInt([BI)I

    move-result v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    .line 8
    invoke-static/range {v4 .. v9}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->reset$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;II[BILjava/lang/Object;)V

    return-void
.end method

.method public final reset(II[B)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->protoPayload:Lcom/google/protobuf/s0;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setPayloadSize(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resizeBuffer(I)V

    if-eqz p3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    invoke-static {p3, p1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final resetBuffer()V
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setBody([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final resizeBuffer(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    new-array p1, p1, [B

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setBody([B)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPayloadSize(I)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 10
    .line 11
    const/4 v6, 0x6

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move v2, p1

    .line 16
    invoke-static/range {v2 .. v7}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, p1

    .line 21
    iget-object v9, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 22
    .line 23
    const/4 v12, 0x2

    .line 24
    const/4 v13, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x2

    .line 27
    move v8, v2

    .line 28
    invoke-static/range {v8 .. v13}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getSize()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resizeBuffer(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setServiceType(I)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 10
    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v7, 0x0

    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move v2, p1

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    move v2, p1

    .line 22
    iget-object v9, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 23
    .line 24
    const/4 v12, 0x4

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v10, 0x4

    .line 27
    const/4 v11, 0x0

    .line 28
    move v8, v2

    .line 29
    invoke-static/range {v8 .. v13}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setTag(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->tag:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTimestamp(J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    long-to-int v2, p1

    .line 10
    iget-object v3, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->body:[B

    .line 11
    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lcom/baidu/carlife/sdk/util/BitConverterKt;->fillByteArray$default(I[BIIILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "channel: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->channel:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " serviceType: 0x000"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    invoke-static {v2}, Lp4/e;->h(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "toString(...)"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " header size: "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getCommandSize()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "  payload size: "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getPayloadSize()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, " payload: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string v1, ""

    .line 89
    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
