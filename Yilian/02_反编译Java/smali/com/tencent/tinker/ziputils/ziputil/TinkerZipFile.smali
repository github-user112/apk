.class public Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/tencent/tinker/ziputils/ziputil/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;,
        Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;
    }
.end annotation


# static fields
.field public static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field public static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field public static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field public static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field public comment:Ljava/lang/String;

.field public final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field public fileToDeleteOnClose:Ljava/io/File;

.field public final filename:Ljava/lang/String;

.field public raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->filename:Ljava/lang/String;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad mode: "

    invoke-static {v0, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->fileToDeleteOnClose:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->fileToDeleteOnClose:Ljava/io/File;

    :goto_1
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->filename:Ljava/lang/String;

    const-string v0, "r"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->readCentralDir()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->checkNotClosed()V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_4

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseEocdRecord(Ljava/io/RandomAccessFile;JZ)Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;
    .locals 11

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p1, 0x12

    new-array p2, p1, [B

    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;

    move-result-object p0

    const-wide/16 p1, -0x1

    const v0, 0xffff

    if-eqz p3, :cond_0

    const/16 p3, 0x10

    invoke-virtual {p0, p3}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->skip(I)V

    move-wide v6, p1

    move-wide v8, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p1

    and-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p2

    and-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p3

    and-int/2addr p3, v0

    int-to-long v1, p3

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p3

    and-int/2addr p3, v0

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->skip(I)V

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    int-to-long v5, p3

    cmp-long p3, v1, v5

    if-nez p3, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move-wide v6, v1

    move-wide v8, v3

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result p0

    and-int v10, p0, v0

    new-instance p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;-><init>(JJI)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Spanned archives not supported"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readCentralDir()V
    .locals 11

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_9

    iget-object v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x4034b50

    cmp-long v8, v4, v6

    if-nez v8, :cond_8

    const-wide/32 v4, 0x10000

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    iget-object v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x6054b50

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    const/16 v0, 0x12

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/tencent/tinker/ziputils/ziputil/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v4

    and-int/2addr v4, v2

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v5

    and-int/2addr v5, v2

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v6

    and-int/2addr v6, v2

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->skip(I)V

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/BufferIterator;->readShort()S

    move-result v0

    and-int/2addr v0, v2

    if-ne v5, v6, :cond_5

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-lez v0, :cond_1

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/tencent/tinker/ziputils/ziputil/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->comment:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v7, v8}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v0, 0x2e

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    new-instance v4, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    sget-object v6, Lcom/tencent/tinker/ziputils/ziputil/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v1, v6, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;-><init>([BLjava/io/InputStream;Ljava/nio/charset/Charset;Z)V

    iget-wide v9, v4, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    cmp-long v6, v9, v7

    if-gez v6, :cond_3

    invoke-virtual {v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Duplicate entry name: "

    invoke-static {v1, v6}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Local file header offset is after central directory"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Spanned archives not supported"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "End Of Central Directory signature not found"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Not a zip archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "File too short to be a zip file: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static throwZipException(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V
    .locals 3

    invoke-static {p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p7

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", file size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", entry name:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", entry localHeaderRelOffset:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " signature not found; was "

    invoke-static {v1, p0, p7}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->checkNotClosed()V

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$1;-><init>(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->checkNotClosed()V

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->checkNotClosed()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->entries:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "entryName == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputStream(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)Ljava/io/InputStream;
    .locals 12

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->getEntry(Ljava/lang/String;)Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->raf:Ljava/io/RandomAccessFile;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;

    iget-wide v2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    invoke-direct {v1, v0, v2, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v11

    int-to-long v3, v11

    const-wide/32 v5, 0x4034b50

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-object v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    const-string v10, "Local File Header"

    invoke-static/range {v4 .. v11}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->throwZipException(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_3

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    and-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v5

    and-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    add-int/2addr v3, v4

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->skip(J)J

    iget v2, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressionMethod:I

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->access$200(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    :goto_0
    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->access$102(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;J)J

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->access$200(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v1

    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid General Purpose Bit Flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->checkNotClosed()V

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
