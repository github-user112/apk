.class public final Lcom/tencent/tinker/ziputils/ziputil/Memory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    goto :goto_0
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .locals 6

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x0

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr p2, v4

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p2

    int-to-long p1, p1

    shl-long/2addr p1, v3

    int-to-long v3, p0

    and-long/2addr v1, v3

    or-long/2addr p1, v1

    return-wide p1

    :cond_0
    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr p2, v4

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p2

    int-to-long v4, p0

    shl-long v3, v4, v3

    int-to-long p0, p1

    and-long/2addr p0, v1

    or-long/2addr p0, v3

    return-wide p0
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    shl-int/lit8 p2, p2, 0x8

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p3

    :goto_0
    return-void
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .locals 3

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x20

    if-ne p4, v0, :cond_0

    shr-long v0, p2, v1

    long-to-int p4, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p4, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p4, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 p4, p4, 0x0

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, v0

    long-to-int p3, p2

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 p4, p3, 0x18

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, p1

    add-int/lit8 p1, p2, 0x1

    shr-int/lit8 p4, p3, 0x10

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, p2

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 p4, p3, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, p1

    shr-int/lit8 p1, p3, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    goto :goto_0

    :cond_0
    long-to-int p4, p2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, p4, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v2, p4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, p4, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 p4, p4, 0x18

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, v0

    shr-long/2addr p2, v1

    long-to-int p3, p2

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 p4, p3, 0x0

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, p1

    add-int/lit8 p1, p2, 0x1

    shr-int/lit8 p4, p3, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, p2

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 p4, p3, 0x10

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p0, p1

    shr-int/lit8 p1, p3, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    :goto_0
    return-void
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, p3

    :goto_0
    return-void
.end method
