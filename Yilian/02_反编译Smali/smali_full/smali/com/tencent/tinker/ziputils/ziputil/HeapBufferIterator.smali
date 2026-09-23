.class public final Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;
.super Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;
.source ""


# instance fields
.field public final buffer:[B

.field public final byteCount:I

.field public final offset:I

.field public final order:Ljava/nio/ByteOrder;

.field public position:I


# direct methods
.method public constructor <init>([BIILjava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->buffer:[B

    iput p2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->offset:I

    iput p3, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->byteCount:I

    iput-object p4, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static iterator([BIILjava/nio/ByteOrder;)Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;
    .locals 1

    new-instance v0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;-><init>([BIILjava/nio/ByteOrder;)V

    return-object v0
.end method


# virtual methods
.method public readByte()B
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->buffer:[B

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->offset:I

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    return v0
.end method

.method public readByteArray([BII)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->buffer:[B

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->offset:I

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    return-void
.end method

.method public readInt()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->buffer:[B

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->offset:I

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    return v0
.end method

.method public readShort()S
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->buffer:[B

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->offset:I

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->order:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    return v0
.end method

.method public seek(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    return-void
.end method

.method public skip(I)V
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->position:I

    return-void
.end method
