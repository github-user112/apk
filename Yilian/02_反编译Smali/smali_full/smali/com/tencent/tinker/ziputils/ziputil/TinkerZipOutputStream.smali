.class public Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source ""

# interfaces
.implements Lcom/tencent/tinker/ziputils/ziputil/ZipConstants;


# static fields
.field public static final BYTE:[B

.field public static final DEFLATED:I = 0x8

.field public static final MOD_DATE_CONST:I = 0x490a

.field public static final STORED:I = 0x0

.field public static final TIME_CONST:I = 0x9ef3

.field public static final ZIP64_PLACEHOLDER_BYTES:[B

.field public static final ZIP_VERSION_2_0:I = 0x14


# instance fields
.field public final alignBytes:I

.field public archiveNeedsZip64EocdRecord:Z

.field public cDir:Ljava/io/ByteArrayOutputStream;

.field public commentBytes:[B

.field public currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

.field public currentEntryNeedsZip64:Z

.field public defaultCompressionMethod:I

.field public final entries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public entryCommentBytes:[B

.field public final forceZip64:Z

.field public nameBytes:[B

.field public offset:J

.field public padding:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->BYTE:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->ZIP64_PLACEHOLDER_BYTES:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entries:Ljava/util/HashSet;

    sget-object p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->BYTE:[B

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->commentBytes:[B

    const/16 p1, 0x8

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->defaultCompressionMethod:I

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->offset:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->padding:I

    iput-boolean p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->forceZip64:Z

    iput p3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->alignBytes:I

    return-void
.end method

.method private checkOpen()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSizeIsWithinShort(Ljava/lang/String;[B)V
    .locals 2

    array-length v0, p2

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " too long in UTF-8:"

    invoke-static {p1, v1}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    const-string v1, " bytes"

    invoke-static {p1, p2, v1}, Le/a/c/a/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPaddingByteCount(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;J)I
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->alignBytes:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    int-to-long v2, p1

    rem-long/2addr p2, v2

    sub-long/2addr v0, p2

    int-to-long p1, p1

    rem-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private makePaddingToStream(Ljava/io/OutputStream;J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    :goto_0
    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    cmp-long v4, p2, v0

    if-lez v4, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    move-wide p2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeIntAsUint16(Ljava/io/OutputStream;I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return p1
.end method

.method public static writeLongAsUint32(Ljava/io/OutputStream;J)J
    .locals 2

    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-wide p1
.end method

.method public static writeLongAsUint64(Ljava/io/OutputStream;J)J
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->finish()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 9

    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->checkOpen()V

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x1e

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x2e

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v3, 0x8074b50

    invoke-static {v0, v3, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v3, v3, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    invoke-static {v0, v3, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v3, v3, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    invoke-static {v0, v3, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v3, v3, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    invoke-static {v0, v3, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    or-int/lit16 v0, v0, 0x800

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v6, 0x2014b50    # 1.6619997E-316

    invoke-static {v5, v6, v7}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v5, v6}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v5, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v5}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result v5

    invoke-static {v0, v5}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget v5, v5, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    invoke-static {v0, v5}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget v5, v5, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    invoke-static {v0, v5}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v5, v5, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    invoke-static {v0, v5, v6}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getCompressedSize()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getSize()J

    move-result-wide v5

    :goto_1
    add-long/2addr v5, v1

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getCompressedSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->nameBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v5, v0

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-object v0, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    array-length v0, v0

    invoke-static {v1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v5, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    :goto_2
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entryCommentBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v1, v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->nameBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->nameBytes:[B

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-object v1, v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    iget-wide v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->offset:J

    iget v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->padding:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->offset:J

    iput v4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->padding:I

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entryCommentBytes:[B

    array-length v2, v1

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->BYTE:[B

    iput-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entryCommentBytes:[B

    :cond_6
    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    return-void
.end method

.method public finish()V
    .locals 5

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->closeEntry()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-boolean v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->archiveNeedsZip64EocdRecord:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const v1, 0xffff

    invoke-static {v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entries:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-wide v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->offset:J

    iget v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->padding:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->commentBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->commentBytes:[B

    array-length v1, v0

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    return-void

    :cond_4
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "No entries"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putNextEntry(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->closeEntry()V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->defaultCompressionMethod:I

    :cond_1
    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getCompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getSize()J

    move-result-wide v1

    if-nez v5, :cond_2

    invoke-virtual {p1, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setCompressedSize(J)V

    goto :goto_0

    :cond_2
    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setSize(J)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getCrc()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getSize()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    iget-wide v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    iget-wide v3, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->compressedSize:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry size/compressed size mismatch"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry missing size"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry missing CRC"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->checkOpen()V

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    const v1, 0x9ef3

    iput v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    const/16 v1, 0x490a

    iput v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    iget-object v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tinker/ziputils/ziputil/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->nameBytes:[B

    const-string v2, "Name"

    invoke-direct {p0, v2, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    sget-object v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->BYTE:[B

    iput-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entryCommentBytes:[B

    iget-object v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->comment:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v2, Lcom/tencent/tinker/ziputils/ziputil/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entryCommentBytes:[B

    const-string v2, "Comment"

    invoke-direct {p0, v2, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    :cond_8
    invoke-virtual {p1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setMethod(I)V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->offset:J

    iput-wide v1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->localHeaderRelOffset:J

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->entries:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/16 v1, 0x8

    :goto_2
    or-int/lit16 v1, v1, 0x800

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v3, 0x4034b50

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v2, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget v2, v2, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->time:I

    invoke-static {v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget v2, v2, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->modDate:I

    invoke-static {v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    if-nez v0, :cond_a

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v1, v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->crc:J

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v1, v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-wide v1, v1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->size:J

    goto :goto_3

    :cond_a
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    :goto_3
    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->nameBytes:[B

    array-length v0, v0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    iget-wide v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getExtra()[B

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-virtual {p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getExtra()[B

    move-result-object p1

    array-length p1, p1

    :cond_b
    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->getPaddingByteCount(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;J)I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->padding:I

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-object v0, v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    if-eqz v0, :cond_c

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    goto :goto_4

    :cond_c
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    :goto_4
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->nameBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    iget-object p1, p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->extra:[B

    if-eqz p1, :cond_d

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_d
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->padding:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->makePaddingToStream(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->BYTE:[B

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->commentBytes:[B

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/tinker/ziputils/ziputil/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "Comment"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->commentBytes:[B

    return-void
.end method

.method public write([BII)V
    .locals 1

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/tencent/tinker/ziputils/ziputil/Arrays;->checkOffsetAndCount(III)V

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->currentEntry:Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->getMethod()I

    move-result v0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "No active entry"

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
