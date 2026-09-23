.class public Lcom/tencent/tinker/android/dex/io/DexDataBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/tinker/android/dex/util/ByteInput;
.implements Lcom/tencent/tinker/android/dex/util/ByteOutput;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x200

.field public static final EMPTY_CATCHHANDLER_ARRAY:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_TRY_ARRAY:[Lcom/tencent/tinker/android/dex/Code$Try;


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public dataBound:I

.field public isResizeAllowed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [S

    sput-object v1, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_SHORT_ARRAY:[S

    new-array v1, v0, [Lcom/tencent/tinker/android/dex/Code$Try;

    sput-object v1, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_TRY_ARRAY:[Lcom/tencent/tinker/android/dex/Code$Try;

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    sput-object v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_CATCHHANDLER_ARRAY:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    iput-boolean p2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    return-void
.end method

.method private ensureBufferSize(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->isResizeAllowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v1, v0

    add-int/2addr v1, p1

    array-length p1, v0

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    new-array p1, v1, [B

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private findCatchHandlerIndex([Lcom/tencent/tinker/android/dex/Code$CatchHandler;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget v1, v1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->offset:I

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getBytesFrom(I)[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private readCatchHandler(I)Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readSleb128()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    aput v5, v2, v4

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    new-instance v1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/tencent/tinker/android/dex/Code$CatchHandler;-><init>([I[III)V

    return-object v1
.end method

.method private readCatchHandlers()[Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    new-array v2, v1, [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readCatchHandler(I)Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private readFields(I)[Lcom/tencent/tinker/android/dex/ClassData$Field;
    .locals 5

    new-array v0, p1, [Lcom/tencent/tinker/android/dex/ClassData$Field;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {v4, v2, v3}, Lcom/tencent/tinker/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readMethods(I)[Lcom/tencent/tinker/android/dex/ClassData$Method;
    .locals 6

    new-array v0, p1, [Lcom/tencent/tinker/android/dex/ClassData$Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v4

    new-instance v5, Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {v5, v2, v3, v4}, Lcom/tencent/tinker/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readTries(I[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$Try;
    .locals 6

    new-array v0, p1, [Lcom/tencent/tinker/android/dex/Code$Try;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->findCatchHandlerIndex([Lcom/tencent/tinker/android/dex/Code$CatchHandler;I)I

    move-result v4

    new-instance v5, Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-direct {v5, v2, v3, v4}, Lcom/tencent/tinker/android/dex/Code$Try;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writeCatchHandler(Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V
    .locals 5

    iget v0, p1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->catchAllAddress:I

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->addresses:[I

    const/4 v2, -0x1

    array-length v3, v1

    if-eq v0, v2, :cond_0

    neg-int v3, v3

    :cond_0
    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeSleb128(I)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    aget v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    :cond_2
    return-void
.end method

.method private writeCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[I
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v0

    aput v3, v1, v2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeCatchHandler(Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private writeFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    iget v4, v3, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget v2, v3, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    iget v3, v3, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    iget v4, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->methodIndex:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget v2, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->methodIndex:I

    iget v4, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->accessFlags:I

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget v3, v3, Lcom/tencent/tinker/android/dex/ClassData$Method;->codeOffset:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTries([Lcom/tencent/tinker/android/dex/Code$Try;[I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/Code$Try;->startAddress:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v3, v2, Lcom/tencent/tinker/android/dex/Code$Try;->instructionCount:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget v2, v2, Lcom/tencent/tinker/android/dex/Code$Try;->catchHandlerIndex:I

    aget v2, p2, v2

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public alignToFourBytes()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public alignToFourBytesWithZeroFill()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/SizeOf;->roundToTimesOfFour(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    :cond_1
    return-void
.end method

.method public array()[B
    .locals 4

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public available()I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public position()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public readAnnotation()Lcom/tencent/tinker/android/dex/Annotation;
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByte()B

    move-result v1

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    const/16 v4, 0x1d

    invoke-direct {v3, p0, v4}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/util/ByteInput;I)V

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->skipValue()V

    new-instance v3, Lcom/tencent/tinker/android/dex/Annotation;

    new-instance v4, Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-direct {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->getBytesFrom(I)[B

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    invoke-direct {v3, v0, v1, v4}, Lcom/tencent/tinker/android/dex/Annotation;-><init>(IBLcom/tencent/tinker/android/dex/EncodedValue;)V

    return-object v3
.end method

.method public readAnnotationSet()Lcom/tencent/tinker/android/dex/AnnotationSet;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tinker/android/dex/AnnotationSet;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/AnnotationSet;-><init>(I[I)V

    return-object v1
.end method

.method public readAnnotationSetRefList()Lcom/tencent/tinker/android/dex/AnnotationSetRefList;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;-><init>(I[I)V

    return-object v1
.end method

.method public readAnnotationsDirectory()Lcom/tencent/tinker/android/dex/AnnotationsDirectory;
    .locals 13

    const-class v0, I

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v9, 0x0

    aput v1, v7, v9

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_0

    aget-object v11, v7, v10

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v12

    aput v12, v11, v9

    aget-object v11, v7, v10

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v12

    aput v12, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v6, [I

    aput v6, v1, v8

    aput v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_1

    aget-object v11, v1, v10

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v12

    aput v12, v11, v9

    aget-object v11, v1, v10

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v12

    aput v12, v11, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v6, [I

    aput v6, v2, v8

    aput v5, v2, v9

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v0, v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v10

    aput v10, v6, v9

    aget-object v6, v0, v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v10

    aput v10, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    move-object v2, v8

    move-object v5, v7

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;-><init>(II[[I[[I[[I)V

    return-object v8
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteArray(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public readClassData()Lcom/tencent/tinker/android/dex/ClassData;
    .locals 9

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v4

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readFields(I)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readFields(I)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readMethods(I)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readMethods(I)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v7

    new-instance v8, Lcom/tencent/tinker/android/dex/ClassData;

    move-object v1, v8

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/ClassData;-><init>(I[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Method;[Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    return-object v8
.end method

.method public readClassDef()Lcom/tencent/tinker/android/dex/ClassDef;
    .locals 11

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v7

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v8

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v9

    new-instance v10, Lcom/tencent/tinker/android/dex/ClassDef;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tinker/android/dex/ClassDef;-><init>(IIIIIIIII)V

    return-object v10
.end method

.method public readCode()Lcom/tencent/tinker/android/dex/Code;
    .locals 11

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShortArray(I)[S

    move-result-object v7

    if-lez v0, :cond_1

    array-length v1, v7

    const/4 v8, 0x1

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skip(I)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    mul-int/lit8 v8, v0, 0x8

    invoke-virtual {p0, v8}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skip(I)V

    invoke-direct {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readCatchHandlers()[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    iget-object v10, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v8}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readTries(I[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$Try;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    move-object v9, v8

    move-object v8, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_TRY_ARRAY:[Lcom/tencent/tinker/android/dex/Code$Try;

    sget-object v1, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_CATCHHANDLER_ARRAY:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-object v8, v0

    move-object v9, v1

    :goto_0
    new-instance v0, Lcom/tencent/tinker/android/dex/Code;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tencent/tinker/android/dex/Code;-><init>(IIIII[S[Lcom/tencent/tinker/android/dex/Code$Try;[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V

    return-object v0
.end method

.method public readDebugInfoItem()Lcom/tencent/tinker/android/dex/DebugInfoItem;
    .locals 7

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;

    invoke-direct {v2, p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;-><init>(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/io/ByteArrayOutputStream;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByte()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    :goto_2
    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v5

    :goto_3
    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readSleb128()I

    move-result v5

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/Leb128;->writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v5

    goto :goto_2

    :pswitch_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v5, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/tencent/tinker/android/dex/DebugInfoItem;-><init>(II[I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v5

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128p1()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_3
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readEncodedArray()Lcom/tencent/tinker/android/dex/EncodedValue;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-instance v1, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/util/ByteInput;I)V

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->skipValue()V

    new-instance v1, Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->getBytesFrom(I)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    return-object v1
.end method

.method public readFieldId()Lcom/tencent/tinker/android/dex/FieldId;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/FieldId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/FieldId;-><init>(IIII)V

    return-object v4
.end method

.method public readInt()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readMethodId()Lcom/tencent/tinker/android/dex/MethodId;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/MethodId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/MethodId;-><init>(IIII)V

    return-object v4
.end method

.method public readProtoId()Lcom/tencent/tinker/android/dex/ProtoId;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/ProtoId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/ProtoId;-><init>(IIII)V

    return-object v4
.end method

.method public readShort()S
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readShortArray(I)[S
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->EMPTY_SHORT_ARRAY:[S

    return-object p1

    :cond_0
    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readSleb128()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readStringData()Lcom/tencent/tinker/android/dex/StringData;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    new-array v2, v1, [C

    invoke-static {p0, v2}, Lcom/tencent/tinker/android/dex/Mutf8;->decode(Lcom/tencent/tinker/android/dex/util/ByteInput;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    new-instance v1, Lcom/tencent/tinker/android/dex/StringData;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/StringData;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Declared length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match decoded length of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readTypeList()Lcom/tencent/tinker/android/dex/TypeList;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShortArray(I)[S

    move-result-object v1

    new-instance v2, Lcom/tencent/tinker/android/dex/TypeList;

    invoke-direct {v2, v0, v1}, Lcom/tencent/tinker/android/dex/TypeList;-><init>(I[S)V

    return-object v2
.end method

.method public readUleb128()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readUleb128p1()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skip(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public skipWithAutoExpand(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skip(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    :cond_0
    return-void
.end method

.method public write([S)V
    .locals 3

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    :cond_1
    return-void
.end method

.method public writeAnnotation(Lcom/tencent/tinker/android/dex/Annotation;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-byte v1, p1, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeByte(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeEncodedArray(Lcom/tencent/tinker/android/dex/EncodedValue;)I

    return v0
.end method

.method public writeAnnotationSet(Lcom/tencent/tinker/android/dex/AnnotationSet;)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public writeAnnotationSetRefList(Lcom/tencent/tinker/android/dex/AnnotationSetRefList;)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public writeAnnotationsDirectory(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I
    .locals 8

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    aget v7, v6, v3

    invoke-virtual {p0, v7}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    aget v5, v6, v5

    invoke-virtual {p0, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    aget v7, v6, v3

    invoke-virtual {p0, v7}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    aget v6, v6, v5

    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    aget v6, v4, v3

    invoke-virtual {p0, v6}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return v0
.end method

.method public writeByte(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    :cond_0
    return-void
.end method

.method public writeClassData(Lcom/tencent/tinker/android/dex/ClassData;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->staticFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->instanceFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->directMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->virtualMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->staticFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->instanceFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/ClassData;->directMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/ClassData;->virtualMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    return v0
.end method

.method public writeClassDef(Lcom/tencent/tinker/android/dex/ClassDef;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    return v0
.end method

.method public writeCode(Lcom/tencent/tinker/android/dex/Code;)I
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([S)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    array-length v1, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->skipWithAutoExpand(I)V

    iget-object v2, p1, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-direct {p0, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-direct {p0, p1, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeTries([Lcom/tencent/tinker/android/dex/Code$Try;[I)V

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    :cond_1
    return v0
.end method

.method public writeDebugInfoItem(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128p1(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    return v0
.end method

.method public writeEncodedArray(Lcom/tencent/tinker/android/dex/EncodedValue;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    return v0
.end method

.method public writeFieldId(Lcom/tencent/tinker/android/dex/FieldId;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->declaringClassIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->typeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/FieldId;->nameIndex:I

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    return v0
.end method

.method public writeInt(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    :cond_0
    return-void
.end method

.method public writeMethodId(Lcom/tencent/tinker/android/dex/MethodId;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUnsignedShort(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    return v0
.end method

.method public writeProtoId(Lcom/tencent/tinker/android/dex/ProtoId;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    return v0
.end method

.method public writeShort(S)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->ensureBufferSize(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->dataBound:I

    :cond_0
    return-void
.end method

.method public writeSleb128(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/Leb128;->writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    return-void
.end method

.method public writeStringData(Lcom/tencent/tinker/android/dex/StringData;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_0
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/Mutf8;->encode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public writeTypeList(Lcom/tencent/tinker/android/dex/TypeList;)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/TypeList;->types:[S

    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public writeUleb128(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    return-void
.end method

.method public writeUleb128p1(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeUleb128(I)V

    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 2

    int-to-short v0, p1

    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected an unsigned short: "

    invoke-static {v1, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
