.class public Lcom/tencent/tinker/bsdiff/BSDiff;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;
    }
.end annotation


# static fields
.field public static final MAGIC_BYTES:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tinker/bsdiff/BSDiff;->MAGIC_BYTES:[B

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x69t
        0x63t
        0x72t
        0x6ft
        0x4dt
        0x73t
        0x67t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bsdiff(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 5

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p0, v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {v0, p0, v1, p2}, Lcom/tencent/tinker/bsdiff/BSDiff;->bsdiff(Ljava/io/InputStream;ILjava/io/InputStream;I)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method public static bsdiff(Ljava/io/InputStream;ILjava/io/InputStream;I)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    new-array p0, p3, [B

    invoke-static {p2, p0, v1, p3}, Lcom/tencent/tinker/bsdiff/BSUtil;->readFromStream(Ljava/io/InputStream;[BII)Z

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-static {v0, p1, p0, p3}, Lcom/tencent/tinker/bsdiff/BSDiff;->bsdiff([BI[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static bsdiff([BI[BI)[B
    .locals 31

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p3

    add-int/lit8 v0, v10, 0x1

    new-array v12, v0, [I

    new-array v0, v0, [I

    invoke-static {v12, v0, v9, v10}, Lcom/tencent/tinker/bsdiff/BSDiff;->qsufsort([I[I[BI)V

    new-array v13, v11, [B

    new-array v14, v11, [B

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Lcom/tencent/tinker/bsdiff/BSDiff;->MAGIC_BYTES:[B

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    const-wide/16 v0, -0x1

    invoke-virtual {v8, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v8, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    int-to-long v6, v11

    invoke-virtual {v8, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;-><init>(Lcom/tencent/tinker/bsdiff/BSDiff$1;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v0, v11, :cond_17

    add-int v0, v0, v17

    move/from16 v21, v17

    const/16 v22, 0x0

    move/from16 v17, v0

    :goto_1
    if-ge v0, v11, :cond_5

    const/16 v21, 0x0

    move/from16 v23, v0

    move-object v0, v12

    move/from16 v24, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v25, v3

    move-object/from16 v3, p2

    move-object/from16 v26, v4

    move/from16 v4, p3

    move-object/from16 v27, v5

    move/from16 v5, v23

    move-wide/from16 v28, v6

    move/from16 v6, v21

    move/from16 v7, p1

    move-object/from16 v30, v8

    move-object/from16 v8, v25

    invoke-static/range {v0 .. v8}, Lcom/tencent/tinker/bsdiff/BSDiff;->search([I[BI[BIIIILcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v23

    :goto_2
    add-int v4, v3, v0

    if-ge v1, v4, :cond_1

    add-int v4, v1, v18

    if-ge v4, v10, :cond_0

    aget-byte v4, v9, v4

    aget-byte v5, p2, v1

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    if-ne v0, v2, :cond_2

    if-nez v0, :cond_6

    :cond_2
    add-int/lit8 v4, v2, 0x8

    if-le v0, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int v4, v3, v18

    if-ge v4, v10, :cond_4

    aget-byte v4, v9, v4

    aget-byte v5, p2, v3

    if-ne v4, v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    move/from16 v22, v2

    add-int/lit8 v2, v3, 0x1

    move/from16 v21, v0

    move/from16 v17, v1

    move v0, v2

    move/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-wide/from16 v6, v28

    move-object/from16 v8, v30

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move/from16 v24, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v30, v8

    move v3, v0

    move/from16 v0, v21

    move/from16 v2, v22

    :cond_6
    :goto_3
    if-ne v0, v2, :cond_8

    if-ne v3, v11, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v17, v0

    move v0, v3

    move/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-wide/from16 v6, v28

    move-object/from16 v8, v30

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_9
    :goto_6
    add-int v6, v19, v2

    if-ge v6, v3, :cond_b

    add-int v7, v20, v2

    if-ge v7, v10, :cond_b

    aget-byte v7, v9, v7

    aget-byte v6, p2, v6

    if-ne v7, v6, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v6, v2

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v5

    if-le v6, v7, :cond_9

    move v4, v1

    move v5, v2

    goto :goto_6

    :cond_b
    if-ge v3, v11, :cond_e

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_7
    add-int v7, v19, v1

    if-lt v3, v7, :cond_f

    invoke-static/range {v25 .. v25}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v7

    if-lt v7, v1, :cond_f

    invoke-static/range {v25 .. v25}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v7

    sub-int/2addr v7, v1

    aget-byte v7, v9, v7

    sub-int v8, v3, v1

    aget-byte v8, p2, v8

    if-ne v7, v8, :cond_c

    add-int/lit8 v4, v4, 0x1

    :cond_c
    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v1

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v8, v2

    if-le v7, v8, :cond_d

    move v2, v1

    move v6, v4

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :cond_f
    add-int v1, v19, v5

    sub-int v4, v3, v2

    if-le v1, v4, :cond_14

    sub-int v6, v1, v4

    move/from16 v18, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_8
    if-ge v7, v6, :cond_13

    sub-int v21, v1, v6

    add-int v21, v21, v7

    move/from16 v22, v1

    aget-byte v1, p2, v21

    add-int v21, v20, v5

    sub-int v21, v21, v6

    add-int v21, v21, v7

    aget-byte v10, v9, v21

    if-ne v1, v10, :cond_10

    add-int/lit8 v17, v17, 0x1

    :cond_10
    add-int v1, v4, v7

    aget-byte v1, p2, v1

    invoke-static/range {v25 .. v25}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v10

    sub-int/2addr v10, v2

    add-int/2addr v10, v7

    aget-byte v10, v9, v10

    if-ne v1, v10, :cond_11

    add-int/lit8 v17, v17, -0x1

    :cond_11
    move/from16 v1, v17

    if-le v1, v0, :cond_12

    add-int/lit8 v0, v7, 0x1

    move v8, v0

    move v0, v1

    :cond_12
    add-int/lit8 v7, v7, 0x1

    move/from16 v10, p1

    move/from16 v17, v1

    move/from16 v1, v22

    goto :goto_8

    :cond_13
    sub-int v0, v8, v6

    add-int/2addr v5, v0

    sub-int/2addr v2, v8

    goto :goto_9

    :cond_14
    move/from16 v18, v0

    :goto_9
    const/4 v0, 0x0

    :goto_a
    move/from16 v1, v24

    if-ge v0, v5, :cond_15

    add-int v4, v1, v0

    add-int v6, v19, v0

    aget-byte v6, p2, v6

    add-int v7, v20, v0

    aget-byte v7, v9, v7

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v13, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_b
    sub-int v4, v3, v2

    add-int v6, v19, v5

    sub-int v7, v4, v6

    move/from16 v8, v16

    if-ge v0, v7, :cond_16

    add-int v16, v8, v0

    add-int/2addr v6, v0

    aget-byte v4, p2, v6

    aput-byte v4, v14, v16

    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v8

    goto :goto_b

    :cond_16
    add-int/2addr v1, v5

    add-int v16, v8, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static/range {v25 .. v25}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v6

    sub-int/2addr v6, v2

    add-int v20, v20, v5

    sub-int v6, v6, v20

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static/range {v25 .. v25}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v5

    sub-int v20, v5, v2

    invoke-static/range {v25 .. v25}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v2

    sub-int/2addr v2, v3

    move/from16 v10, p1

    move/from16 v19, v4

    move/from16 v17, v18

    move-object/from16 v5, v27

    move-wide/from16 v6, v28

    move-object/from16 v8, v30

    move-object v4, v0

    move/from16 v18, v2

    move v0, v3

    move-object/from16 v3, v25

    goto/16 :goto_4

    :cond_17
    move-object v0, v4

    move-object/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v30, v8

    move/from16 v8, v16

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v30 .. v30}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    const/16 v2, 0x20

    sub-int/2addr v0, v2

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v4, v30

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->size()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v14, v5, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lcom/tencent/tinker/bsdiff/BSDiff;->MAGIC_BYTES:[B

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance p0, Ljava/io/File;

    const-string v0, "/Users/tomystang/bsdiff-test/old/classes.dex"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/Users/tomystang/bsdiff-test/new/classes.dex"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/Users/tomystang/bsdiff-test/test_bsdiff.diff"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/bsdiff/BSDiff;->bsdiff(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static matchlen([BII[BII)I
    .locals 2

    sub-int/2addr p1, p2

    sub-int/2addr p4, p5

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    add-int v0, p2, p4

    aget-byte v0, p0, v0

    add-int v1, p5, p4

    aget-byte v1, p3, v1

    if-eq v0, v1, :cond_0

    return p4

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static memcmp([BII[BII)I
    .locals 5

    sub-int/2addr p1, p2

    sub-int/2addr p4, p5

    if-le p1, p4, :cond_0

    move p1, p4

    :cond_0
    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    add-int v1, v0, p2

    aget-byte v2, p0, v1

    add-int v3, v0, p5

    aget-byte v4, p3, v3

    if-eq v2, v4, :cond_2

    aget-byte p0, p0, v1

    aget-byte p1, p3, v3

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p4
.end method

.method public static qsufsort([I[I[BI)V
    .locals 8

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xff

    const/4 v5, 0x1

    if-ge v3, p3, :cond_0

    aget-byte v6, p2, v3

    and-int/2addr v4, v6

    aget v6, v1, v4

    add-int/2addr v6, v5

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_1

    aget v6, v1, v3

    add-int/lit8 v7, v3, -0x1

    aget v7, v1, v7

    add-int/2addr v6, v7

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0xff

    :goto_2
    if-lez v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    aget v6, v1, v6

    aput v6, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p3, :cond_3

    aget-byte v6, p2, v3

    and-int/2addr v6, v4

    aget v7, v1, v6

    add-int/2addr v7, v5

    aput v7, v1, v6

    aput v3, p0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    aput p3, p0, v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, p3, :cond_4

    aget-byte v6, p2, v3

    and-int/2addr v6, v4

    aget v6, v1, v6

    aput v6, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    aput v2, p1, p3

    const/4 p2, 0x1

    :goto_5
    const/4 v3, -0x1

    if-ge p2, v0, :cond_6

    aget v4, v1, p2

    add-int/lit8 v6, p2, -0x1

    aget v6, v1, v6

    add-int/2addr v6, v5

    if-ne v4, v6, :cond_5

    aget v4, v1, p2

    aput v3, p0, v4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_6
    aput v3, p0, v2

    const/4 p2, 0x1

    :goto_6
    aget v0, p0, v2

    add-int/lit8 v1, p3, 0x1

    neg-int v3, v1

    if-eq v0, v3, :cond_b

    const/4 v0, 0x0

    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-ge v0, v1, :cond_9

    aget v4, p0, v0

    if-gez v4, :cond_7

    aget v4, p0, v0

    sub-int/2addr v3, v4

    aget v4, p0, v0

    sub-int/2addr v0, v4

    goto :goto_8

    :cond_7
    if-eqz v3, :cond_8

    sub-int v4, v0, v3

    neg-int v3, v3

    aput v3, p0, v4

    :cond_8
    aget v3, p0, v0

    aget v3, p1, v3

    add-int/2addr v3, v5

    sub-int/2addr v3, v0

    invoke-static {p0, p1, v0, v3, p2}, Lcom/tencent/tinker/bsdiff/BSDiff;->split([I[IIII)V

    add-int/2addr v0, v3

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    sub-int/2addr v0, v3

    neg-int v1, v3

    aput v1, p0, v0

    :cond_a
    add-int/2addr p2, p2

    goto :goto_6

    :cond_b
    :goto_9
    if-ge v2, v1, :cond_c

    aget p2, p1, v2

    aput v2, p0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method public static search([I[BI[BIIIILcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I
    .locals 9

    move-object/from16 v8, p8

    sub-int v0, p7, p6

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    aget v4, p0, p6

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/tencent/tinker/bsdiff/BSDiff;->matchlen([BII[BII)I

    move-result v0

    aget v3, p0, p7

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/tencent/tinker/bsdiff/BSDiff;->matchlen([BII[BII)I

    move-result v1

    if-le v0, v1, :cond_0

    aget v1, p0, p6

    invoke-static {v8, v1}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$002(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;I)I

    return v0

    :cond_0
    aget v0, p0, p7

    invoke-static {v8, v0}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->access$002(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;I)I

    return v1

    :cond_1
    div-int/2addr v0, v1

    add-int v7, v0, p6

    aget v2, p0, v7

    move-object v0, p1

    move v1, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/tinker/bsdiff/BSDiff;->memcmp([BII[BII)I

    move-result v0

    if-gez v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, v7

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/tencent/tinker/bsdiff/BSDiff;->search([I[BI[BIIIILcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v0

    return v0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/tencent/tinker/bsdiff/BSDiff;->search([I[BI[BIIIILcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I

    move-result v0

    return v0
.end method

.method public static split([I[IIII)V
    .locals 9

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    new-instance v1, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result p4

    if-nez p4, :cond_14

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v3, :cond_0

    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->stmRetLabel:I

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    :goto_2
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    iget v3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    sub-int v5, v3, v4

    if-ge p3, v5, :cond_1

    add-int/2addr v4, p3

    aget v4, p0, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v4

    add-int/lit8 p3, p3, 0x1

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_2

    aput v1, p0, v4

    :cond_2
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->len:I

    add-int v3, p3, v1

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    if-le v3, v4, :cond_9

    new-instance v3, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;

    add-int/2addr p3, v1

    sub-int/2addr p3, v4

    iget p4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    invoke-direct {v3, v2, v4, p3, p4}, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;-><init>(IIII)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->len:I

    const/16 v4, 0x10

    if-ge p3, v4, :cond_a

    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    :goto_3
    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->len:I

    add-int/2addr v4, v5

    if-ge p3, v4, :cond_9

    iput v3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    aget p3, p0, p3

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr p3, v4

    aget p3, p1, p3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    iput v3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    :goto_4
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    add-int v5, p3, v4

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    iget v7, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->len:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_6

    add-int v5, p3, v4

    aget v5, p0, v5

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr v5, v6

    aget v5, p1, v5

    iget v7, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    if-ge v5, v7, :cond_4

    add-int/2addr p3, v4

    aget p3, p0, p3

    add-int/2addr p3, v6

    aget p3, p1, p3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    :cond_4
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    add-int v5, p3, v4

    aget v5, p0, v5

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr v5, v6

    aget v5, p1, v5

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    if-ne v5, v6, :cond_5

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    add-int v6, p3, v5

    aget v6, p0, v6

    add-int v7, p3, v5

    add-int v8, p3, v4

    aget v8, p0, v8

    aput v8, p0, v7

    add-int/2addr p3, v4

    aput v6, p0, p3

    add-int/2addr v5, v3

    iput v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    :cond_5
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    add-int/2addr p3, v3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    goto :goto_4

    :cond_6
    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    :goto_5
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    if-ge p3, v4, :cond_7

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    add-int v6, v5, p3

    aget v6, p0, v6

    add-int/2addr v5, v4

    sub-int/2addr v5, v3

    aput v5, p1, v6

    add-int/lit8 p3, p3, 0x1

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    goto :goto_5

    :cond_7
    if-ne v4, v3, :cond_8

    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    aput v1, p0, p3

    :cond_8
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    add-int/2addr p3, v4

    goto/16 :goto_3

    :cond_9
    const/4 p3, 0x2

    goto/16 :goto_1

    :cond_a
    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    aget p3, p0, p3

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr p3, v4

    aget p3, p1, p3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    iput v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    :goto_6
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->len:I

    add-int/2addr v4, v1

    if-ge p3, v4, :cond_d

    aget p3, p0, p3

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr p3, v1

    aget p3, p1, p3

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    if-ge p3, v1, :cond_b

    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    add-int/2addr p3, v3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    :cond_b
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    aget p3, p0, p3

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr p3, v1

    aget p3, p1, p3

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    if-ne p3, v1, :cond_c

    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    add-int/2addr p3, v3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    :cond_c
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    add-int/2addr p3, v3

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    goto :goto_6

    :cond_d
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    add-int/2addr p3, v1

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    add-int/2addr v4, p3

    iput v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    iput v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    iput p2, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    :goto_7
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    if-ge p3, v1, :cond_10

    aget v4, p0, p3

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr v4, v5

    aget v4, p1, v4

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    if-ge v4, v6, :cond_e

    add-int/lit8 p3, p3, 0x1

    iput p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    goto :goto_7

    :cond_e
    aget v4, p0, p3

    add-int/2addr v4, v5

    aget v4, p1, v4

    if-ne v4, v6, :cond_f

    aget v4, p0, p3

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    add-int v6, v1, v5

    aget v6, p0, v6

    aput v6, p0, p3

    add-int/2addr v1, v5

    aput v4, p0, v1

    add-int/2addr v5, v3

    iput v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    goto :goto_7

    :cond_f
    aget v1, p0, p3

    iget v4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    add-int v6, v4, v5

    aget v6, p0, v6

    aput v6, p0, p3

    add-int/2addr v4, v5

    aput v1, p0, v4

    add-int/2addr v5, v3

    iput v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    goto :goto_7

    :cond_10
    :goto_8
    iget p3, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    add-int v4, p3, v1

    iget v5, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    if-ge v4, v5, :cond_12

    add-int v4, p3, v1

    aget v4, p0, v4

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    add-int/2addr v4, v6

    aget v4, p1, v4

    iget v6, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    if-ne v4, v6, :cond_11

    add-int/lit8 v1, v1, 0x1

    iput v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    goto :goto_8

    :cond_11
    add-int v4, p3, v1

    aget v4, p0, v4

    add-int/2addr p3, v1

    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    add-int v6, v5, v1

    aget v6, p0, v6

    aput v6, p0, p3

    add-int/2addr v5, v1

    aput v4, p0, v5

    add-int/2addr v1, v3

    iput v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    goto :goto_8

    :cond_12
    iget v1, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    if-le p3, v1, :cond_13

    new-instance v4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;

    sub-int/2addr p3, v1

    iget p4, p4, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    invoke-direct {v4, v3, v1, p3, p4}, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;-><init>(IIII)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    const/4 p3, 0x1

    goto/16 :goto_1

    :cond_14
    return-void
.end method
