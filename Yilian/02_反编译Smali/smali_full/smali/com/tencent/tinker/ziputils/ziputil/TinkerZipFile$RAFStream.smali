.class public Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RAFStream"
.end annotation


# instance fields
.field public endOffset:J

.field public offset:J

.field public final sharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    iput-wide p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    iput-wide p4, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->endOffset:J

    return-void
.end method

.method public static synthetic access$102(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->endOffset:J

    return-wide p1
.end method

.method public static synthetic access$200(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    return-wide v0
.end method


# virtual methods
.method public available()I
    .locals 5

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->endOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/ziputils/ziputil/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->endOffset:J

    iget-wide v3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    sub-long/2addr v1, v3

    int-to-long v3, p3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    long-to-int p3, v1

    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    iget-wide p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    monitor-exit v0

    return p1

    :cond_1
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public skip(J)J
    .locals 7

    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    sub-long v4, v0, v2

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    sub-long p1, v0, v2

    :cond_0
    iget-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$RAFStream;->offset:J

    return-wide p1
.end method
