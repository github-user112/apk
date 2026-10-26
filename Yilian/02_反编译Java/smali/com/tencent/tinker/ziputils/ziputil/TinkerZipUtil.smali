.class public Lcom/tencent/tinker/ziputils/ziputil/TinkerZipUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractLargeModifyFile(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;Ljava/io/File;JLcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;)V
    .locals 3

    new-instance v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;-><init>(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setMethod(I)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setSize(J)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setCompressedSize(J)V

    invoke-virtual {v0, p2, p3}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;->setCrc(J)V

    const/4 p2, 0x0

    :try_start_0
    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p1, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-direct {p1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;-><init>(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V

    invoke-virtual {p4, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->putNextEntry(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p4, p1, p0, p2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object p2, p3

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static extractTinkerEntry(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;->getInputStream(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;-><init>(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V

    invoke-virtual {p2, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->putNextEntry(Lcom/tencent/tinker/ziputils/ziputil/TinkerZipEntry;)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static validateZipEntryName(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method
