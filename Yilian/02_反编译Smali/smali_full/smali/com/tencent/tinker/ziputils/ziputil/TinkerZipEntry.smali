.class public Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/tinker/ziputils/ziputil/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field public comment:Ljava/lang/String;

.field public compressedSize:J

.field public compressionMethod:I

.field public crc:J

.field public dataOffset:J

.field public extra:[B

.field public localHeaderRelOffset:J

.field public modDate:I

.field public name:Ljava/lang/String;

.field public size:J

.field public time:I


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    iget-object v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    iget v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iget v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iget v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iget-object v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    iput-object p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    iget-object p2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    iget p2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iget p2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iget p2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iget-object p2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    iput-object p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    iget-wide v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iget-wide p1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    if-eqz p1, :cond_0

    const-string v0, "Name"

    invoke-static {v0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->validateStringLength(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJIII[BJJ)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    const/4 v3, -0x1

    iput v3, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput v3, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput v3, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    move-object v1, p1

    iput-object v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    move v1, p9

    iput v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    move v1, p10

    iput v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    move v1, p11

    iput v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    return-void
.end method

.method public constructor <init>([BLjava/io/InputStream;Ljava/nio/charset/Charset;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    const/4 p4, -0x1

    iput p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    iput p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    iput p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    array-length p4, p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p4}, Lcom/tencent/tinker/ziputils/ziputil/Streams;->readFully(Ljava/io/InputStream;[BII)V

    array-length p4, p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0, p4, v1}, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result v8

    int-to-long v1, v8

    const-wide/32 v3, 0x2014b50    # 1.6619997E-316

    cmp-long p4, v1, v3

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p4

    int-to-long v2, p4

    const-wide/16 v5, 0x0

    const-string v1, "unknown"

    const-string v4, "unknown"

    const-string v7, "Central Directory Entry"

    invoke-static/range {v1 .. v8}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->throwZipException(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V

    :cond_0
    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->seek(I)V

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p4

    const v1, 0xffff

    and-int/2addr p4, v1

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_5

    and-int/lit16 p4, p4, 0x800

    if-eqz p4, :cond_1

    const-string p3, "UTF-8"

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p4

    and-int/2addr p4, v1

    iput p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p4

    and-int/2addr p4, v1

    iput p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p4

    and-int/2addr p4, v1

    iput p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result p4

    int-to-long v2, p4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result p4

    int-to-long v2, p4

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result p4

    int-to-long v2, p4

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p4

    and-int/2addr p4, v1

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v2

    and-int/2addr v2, v1

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->seek(I)V

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result p1

    int-to-long v6, p1

    and-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    new-array p1, p4, [B

    invoke-static {p2, p1, v0, p4}, Lcom/tencent/tinker/ziputils/ziputil/Streams;->readFully(Ljava/io/InputStream;[BII)V

    invoke-static {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->containsNulByte([B)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, p4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    if-lez v2, :cond_2

    new-array p1, v2, [B

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    invoke-static {p2, p1, v0, v2}, Lcom/tencent/tinker/ziputils/ziputil/Streams;->readFully(Ljava/io/InputStream;[BII)V

    :cond_2
    if-lez v1, :cond_3

    new-array p1, v1, [B

    invoke-static {p2, p1, v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/Streams;->readFully(Ljava/io/InputStream;[BII)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v0, v1, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    new-instance p2, Ljava/util/zip/ZipException;

    const-string p3, "Filename contains NUL byte: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "Invalid General Purpose Bit Flag: "

    invoke-static {p2, p4}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static containsNulByte([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static validateStringLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " too long: "

    invoke-static {p0, v1}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    check-cast p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-object p1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    return-wide v0
.end method

.method public getDataOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 9

    iget v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x7f

    add-int/lit16 v3, v2, 0x7bc

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v4, v2, -0x1

    and-int/lit8 v5, v1, 0x1f

    iget v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    shr-int/lit8 v2, v1, 0xb

    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v7, v2, 0x3f

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v8, v1, 0x1

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "Comment"

    invoke-static {v0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->validateStringLength(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    return-void
.end method

.method public setCrc(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CRC32: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    return-void
.end method

.method public setExtra([B)V
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extra data too long: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    return-void
.end method

.method public setMethod(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad method: "

    invoke-static {v1, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    const/16 v1, 0x7bc

    if-ge p2, v1, :cond_0

    const/16 p1, 0x21

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    shl-int/2addr v2, p2

    iget v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x9

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    shr-int/lit8 p1, v1, 0x1

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    shl-int/2addr p1, p2

    iget p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    shl-int/lit8 p1, p2, 0xb

    iget p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    or-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name:"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncomment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ntime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncompressedSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncrc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncompressionMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmodDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nextra length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nlocalHeaderRelOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndataOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->dataOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
