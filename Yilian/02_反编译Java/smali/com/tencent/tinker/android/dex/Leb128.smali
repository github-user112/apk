.class public final Lcom/tencent/tinker/android/dex/Leb128;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :cond_0
    invoke-interface {p0}, Lcom/tencent/tinker/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x7f

    mul-int/lit8 v5, v1, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const/4 v5, 0x5

    if-lt v1, v5, :cond_0

    :cond_1
    if-eq v3, v4, :cond_3

    shr-int/lit8 p0, v2, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    or-int/2addr v0, v2

    :cond_2
    return v0

    :cond_3
    new-instance p0, Lcom/tencent/tinker/android/dex/DexException;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/tinker/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    :cond_1
    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    new-instance p0, Lcom/tencent/tinker/android/dex/DexException;

    const-string v0, "invalid LEB128 sequence"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I
    .locals 0

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static signedLeb128Size(I)I
    .locals 7

    shr-int/lit8 v0, p0, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    move v6, v0

    move v0, p0

    move p0, v6

    if-eqz v4, :cond_3

    if-ne p0, v1, :cond_2

    and-int/lit8 v4, p0, 0x1

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v3

    if-eq v4, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    :goto_3
    shr-int/lit8 v0, p0, 0x7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return v5
.end method

.method public static unsignedLeb128Size(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    ushr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static unsignedLeb128p1Size(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result p0

    return p0
.end method

.method public static writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I
    .locals 8

    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    move v7, v0

    move v0, p1

    move p1, v7

    if-eqz v4, :cond_4

    if-ne p1, v1, :cond_2

    and-int/lit8 v4, p1, 0x1

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v3

    if-eq v4, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    :goto_3
    and-int/lit8 v0, v0, 0x7f

    if-eqz v4, :cond_3

    const/16 v6, 0x80

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    or-int/2addr v0, v6

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcom/tencent/tinker/android/dex/util/ByteOutput;->writeByte(I)V

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v0, p1, 0x7

    goto :goto_1

    :cond_4
    return v5
.end method

.method public static writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I
    .locals 3

    ushr-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    :goto_0
    move v2, v0

    move v0, p1

    move p1, v2

    if-eqz p1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcom/tencent/tinker/android/dex/util/ByteOutput;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v0, p1, 0x7

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, 0x7f

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lcom/tencent/tinker/android/dex/util/ByteOutput;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    move-result p0

    return p0
.end method
