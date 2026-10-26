.class public Lcom/tencent/tinker/bsdiff/BSPatch;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RETURN_DIFF_FILE_ERR:I = 0x2

.field public static final RETURN_NEW_FILE_ERR:I = 0x4

.field public static final RETURN_OLD_FILE_ERR:I = 0x3

.field public static final RETURN_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static patchFast(Ljava/io/File;Ljava/io/File;Ljava/io/File;I)I
    .locals 5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-static {v3, v1, p2, v2}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {v0, p0, v1, p3}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchFast(Ljava/io/InputStream;I[BI)[B

    move-result-object p0

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public static patchFast(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-static {p0}, Lcom/tencent/tinker/bsdiff/BSUtil;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/tinker/bsdiff/BSUtil;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchFast([BI[BII)[B

    move-result-object p0

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method public static patchFast(Ljava/io/InputStream;I[BI)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    array-length p0, p2

    invoke-static {v0, p1, p2, p0, p3}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchFast([BI[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static patchFast(Ljava/io/InputStream;Ljava/io/InputStream;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/tinker/bsdiff/BSUtil;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/tinker/bsdiff/BSUtil;->inputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchFast([BI[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static patchFast([BI[BII)[B
    .locals 16

    move-object/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    long-to-int v3, v9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-wide/16 v9, 0x20

    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J

    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-long v12, v5, v9

    invoke-virtual {v2, v12, v13}, Ljava/io/InputStream;->skip(J)J

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-long/2addr v7, v5

    add-long/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Ljava/io/InputStream;->skip(J)J

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v1, v3, [B

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget v7, v2, v4

    add-int/2addr v7, v5

    const-string v9, "Corrupt by wrong patch file."

    if-gt v7, v3, :cond_6

    aget v7, v2, v4

    invoke-static {v12, v1, v5, v7}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    aget v10, v2, v4

    if-ge v7, v10, :cond_2

    add-int v10, v6, v7

    move/from16 v13, p1

    if-ltz v10, :cond_1

    if-ge v10, v13, :cond_1

    add-int v14, v5, v7

    aget-byte v15, v1, v14

    aget-byte v10, p0, v10

    add-int/2addr v15, v10

    int-to-byte v10, v15

    aput-byte v10, v1, v14

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move/from16 v13, p1

    aget v7, v2, v4

    add-int/2addr v5, v7

    aget v7, v2, v4

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v10, v2, v7

    add-int/2addr v10, v5

    if-gt v10, v3, :cond_4

    aget v10, v2, v7

    invoke-static {v0, v1, v5, v10}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    move-result v10

    if-eqz v10, :cond_3

    aget v7, v2, v7

    add-int/2addr v5, v7

    aget v7, v2, v8

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method public static patchLessMemory(Ljava/io/RandomAccessFile;I[BILjava/io/File;I)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v1, :cond_d

    if-gtz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez v4, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    if-eqz v2, :cond_c

    if-gtz v3, :cond_2

    goto/16 :goto_7

    :cond_2
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v10, 0x8

    invoke-virtual {v7, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    long-to-int v8, v14

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2, v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-wide/16 v14, 0x20

    invoke-virtual {v7, v14, v15}, Ljava/io/InputStream;->skip(J)J

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2, v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-long v0, v10, v14

    invoke-virtual {v5, v0, v1}, Ljava/io/InputStream;->skip(J)J

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2, v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-long/2addr v12, v10

    add-long/2addr v12, v14

    invoke-virtual {v1, v12, v13}, Ljava/io/InputStream;->skip(J)J

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v8, :cond_b

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x2

    if-gt v10, v11, :cond_3

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    aput v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    aget v10, v3, v9

    add-int/2addr v10, v4

    if-le v10, v8, :cond_4

    :goto_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->close()V

    :goto_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x2

    return v0

    :cond_4
    :try_start_1
    aget v10, v3, v9

    new-array v10, v10, [B

    aget v11, v3, v9

    invoke-static {v0, v10, v9, v11}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    aget v11, v3, v9

    new-array v11, v11, [B

    aget v12, v3, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v13, p0

    :try_start_2
    invoke-virtual {v13, v11, v9, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12

    aget v14, v3, v9

    if-ge v12, v14, :cond_6

    :goto_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_5
    :try_start_3
    aget v14, v3, v9

    if-ge v12, v14, :cond_8

    add-int v14, v5, v12

    move/from16 v15, p1

    if-ltz v14, :cond_7

    if-ge v14, v15, :cond_7

    aget-byte v14, v10, v12

    aget-byte v16, v11, v12

    add-int v14, v14, v16

    int-to-byte v14, v14

    aput-byte v14, v10, v12

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    move/from16 v15, p1

    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write([B)V

    aget v10, v3, v9

    add-int/2addr v4, v10

    aget v10, v3, v9

    add-int/2addr v5, v10

    aget v10, v3, v7

    add-int/2addr v10, v4

    if-le v10, v8, :cond_9

    goto :goto_4

    :cond_9
    aget v10, v3, v7

    new-array v10, v10, [B

    aget v11, v3, v7

    invoke-static {v2, v10, v9, v11}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v11, 0x2

    return v11

    :cond_a
    const/4 v11, 0x2

    :try_start_4
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    aget v7, v3, v7

    add-int/2addr v4, v7

    aget v7, v3, v11

    add-int/2addr v5, v7

    int-to-long v10, v5

    invoke-virtual {v13, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v13, p0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return v7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_c
    :goto_7
    const/4 v0, 0x2

    return v0

    :cond_d
    :goto_8
    const/4 v0, 0x3

    return v0
.end method

.method public static patchLessMemory(Ljava/io/RandomAccessFile;Ljava/io/File;Ljava/io/File;I)I
    .locals 8

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v5, v0

    new-array v4, v5, [B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-static {v0, v4, p2, v5}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v3, v0

    move-object v2, p0

    move-object v6, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchLessMemory(Ljava/io/RandomAccessFile;I[BILjava/io/File;I)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x3

    return p0
.end method
