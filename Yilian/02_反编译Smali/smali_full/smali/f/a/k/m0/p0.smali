.class public Lf/a/k/m0/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/l/a$d;


# instance fields
.field public final synthetic a:Lf/a/k/m0/q0;


# direct methods
.method public constructor <init>(Lf/a/k/m0/q0;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "onCheck status = "

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_24

    const/4 v3, -0x1

    if-eq v0, v3, :cond_24

    if-eqz v0, :cond_24

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto/16 :goto_25

    :cond_0
    iget-object v0, v1, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    .line 1
    iget-object v4, v0, Lf/a/k/m0/q0;->b:Lf/a/i/l/a;

    .line 2
    iget-object v0, v4, Lf/a/i/l/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_23

    :cond_1
    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v5, v4, Lf/a/i/l/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_23

    iget-object v5, v4, Lf/a/i/l/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/a/i/l/a$e;

    iget-wide v6, v5, Lf/a/i/l/a$e;->f:J

    .line 3
    sget-object v8, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v8}, Lf/a/i/l/a;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x400

    if-nez v8, :cond_2

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_2
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-lt v8, v12, :cond_3

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v12

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v14

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v12, v8

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v14, v8

    :goto_1
    mul-long v12, v12, v14

    div-long/2addr v12, v9

    div-long v11, v12, v9

    .line 4
    :goto_2
    div-long/2addr v6, v9

    div-long/2addr v6, v9

    const-wide/16 v8, 0x2

    mul-long v6, v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storage left size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " file size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v8, 0x0

    cmp-long v9, v11, v6

    if-gez v9, :cond_4

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;

    const/4 v2, -0x3

    iget-object v3, v5, Lf/a/i/l/a$e;->b:Ljava/lang/String;

    check-cast v0, Lf/a/k/m0/p0;

    invoke-virtual {v0, v2, v3, v8}, Lf/a/k/m0/p0;->c(ILjava/lang/String;F)V

    goto/16 :goto_24

    :cond_4
    iget-object v6, v5, Lf/a/i/l/a$e;->a:Ljava/lang/String;

    sget-object v7, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v7}, Lf/a/i/l/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lf/a/i/l/a$e;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lf/a/i/l/a$e;->c:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    const-string v8, ".apk"

    goto :goto_3

    :cond_5
    const-string v8, ".zip"

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lf/a/i/l/a$e;->d:Ljava/lang/String;

    iget-wide v9, v5, Lf/a/i/l/a$e;->f:J

    iget-object v11, v5, Lf/a/i/l/a$e;->b:Ljava/lang/String;

    const-string v12, "UpdateManager"

    .line 5
    iget-boolean v13, v4, Lf/a/i/l/a;->a:Z

    const/4 v14, -0x4

    if-eqz v13, :cond_6

    iput-boolean v0, v4, Lf/a/i/l/a;->a:Z

    goto/16 :goto_5

    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloadFile filename = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " url = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " size = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v13, "GET"

    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v13, 0x1388

    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v13, 0x2710

    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v13, "Accept-Encoding"

    const-string v15, "gzip"

    invoke-virtual {v8, v13, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v8, v13, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v15, 0xc8

    if-eq v13, v15, :cond_7

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error response code = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_7
    :try_start_3
    sget-object v13, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v13}, Lf/a/i/l/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v13, :cond_9

    :try_start_4
    const-string v0, "update path is not exist"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;

    if-eqz v0, :cond_8

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    check-cast v0, Lf/a/k/m0/p0;

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v0, v14, v11, v3}, Lf/a/k/m0/p0;->c(ILjava/lang/String;F)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    :goto_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_5
    move-object/from16 p1, v5

    move v15, v6

    move v5, v2

    goto/16 :goto_17

    :cond_9
    :try_start_6
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v7, :cond_a

    :try_start_7
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :goto_6
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_a
    :goto_7
    :try_start_8
    new-array v7, v3, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " apkFile = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v0

    invoke-static {v12, v7}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/16 v0, 0x400

    :try_start_a
    new-array v13, v0, [B
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    int-to-long v0, v0

    cmp-long v15, v9, v0

    move-object/from16 p1, v5

    if-lez v15, :cond_b

    move v15, v6

    move-wide v5, v0

    goto :goto_8

    :cond_b
    move v15, v6

    move-wide v5, v9

    :goto_8
    long-to-int v6, v5

    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v18, v9

    :goto_9
    if-lez v6, :cond_11

    const/4 v5, 0x0

    invoke-virtual {v3, v13, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_11

    invoke-virtual {v7, v13, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move v5, v2

    move-object/from16 v20, v3

    int-to-long v2, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    sub-long v7, v18, v2

    cmp-long v18, v7, v0

    if-lez v18, :cond_c

    move-wide/from16 v18, v0

    goto :goto_a

    :cond_c
    move-wide/from16 v18, v0

    move-wide v0, v7

    :goto_a
    long-to-int v1, v0

    const/4 v0, 0x1

    :try_start_c
    new-array v0, v0, [Ljava/lang/Object;

    move/from16 v23, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v13

    const-string v13, "onDownload downloadApkFile left = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " count = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    invoke-static {v12, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v25, v0, v16

    const-wide/16 v27, 0x3e8

    cmp-long v6, v25, v27

    const-wide/16 v25, 0x0

    if-gez v6, :cond_d

    cmp-long v6, v7, v25

    if-eqz v6, :cond_d

    add-long/2addr v2, v7

    cmp-long v6, v2, v9

    if-nez v6, :cond_f

    :cond_d
    iget-object v2, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;

    if-eqz v2, :cond_e

    iget-object v2, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-wide/from16 v16, v0

    sub-long v0, v9, v7

    long-to-float v0, v0

    long-to-float v1, v9

    div-float/2addr v0, v1

    check-cast v2, Lf/a/k/m0/p0;

    const/4 v1, 0x2

    :try_start_d
    invoke-virtual {v2, v1, v11, v0}, Lf/a/k/m0/p0;->c(ILjava/lang/String;F)V

    goto :goto_b

    :cond_e
    move-wide/from16 v16, v0

    :cond_f
    :goto_b
    iget-boolean v0, v4, Lf/a/i/l/a;->a:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, v4, Lf/a/i/l/a;->a:Z

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v14, 0x0

    goto :goto_d

    :cond_10
    move v2, v5

    move-wide/from16 v0, v18

    move-object/from16 v3, v20

    move/from16 v6, v23

    move-object/from16 v13, v24

    move-wide/from16 v18, v7

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    :goto_c
    move-object/from16 v3, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    goto/16 :goto_1e

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    move v5, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    goto :goto_e

    :cond_11
    move v5, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    :goto_d
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_18

    :catch_2
    move-exception v0

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 p1, v5

    move v15, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    move v5, v2

    :goto_e
    move-object/from16 v3, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    move-object/from16 v8, v21

    move-object/from16 v2, v22

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 p1, v5

    move v15, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    move v5, v2

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v8, v21

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 p1, v5

    move v15, v6

    move-object/from16 v21, v8

    move v5, v2

    move-object/from16 v8, v21

    goto :goto_11

    :catchall_5
    move-exception v0

    const/4 v8, 0x0

    :goto_f
    const/4 v1, 0x0

    move-object v2, v1

    :goto_10
    const/4 v1, 0x0

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1f

    :catch_6
    move-exception v0

    move-object/from16 p1, v5

    move v15, v6

    move v5, v2

    const/4 v8, 0x0

    :goto_11
    const/4 v7, 0x0

    :goto_12
    const/4 v1, 0x0

    move-object v3, v1

    :goto_13
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;

    if-eqz v0, :cond_12

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    check-cast v0, Lf/a/k/m0/p0;

    const/4 v1, -0x4

    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v0, v1, v11, v2}, Lf/a/k/m0/p0;->c(ILjava/lang/String;F)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    if-eqz v3, :cond_14

    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_14

    :catch_7
    move-exception v0

    goto :goto_15

    :cond_14
    :goto_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_17

    :goto_15
    const/4 v14, 0x0

    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :cond_15
    :goto_17
    const/4 v14, 0x0

    :goto_18
    if-nez v14, :cond_16

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "download apk file error"

    .line 6
    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v1, p1

    iget-object v0, v1, Lf/a/i/l/a$e;->e:Ljava/lang/String;

    .line 7
    :try_start_12
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v4, v14}, Lf/a/i/l/a;->p(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_19

    :cond_17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_1a

    :catch_8
    move-exception v0

    const-string v2, "checkLocalApkMD5 Exception e : "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_18
    :goto_19
    const/4 v0, 0x0

    :cond_19
    :goto_1a
    if-nez v0, :cond_1a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "check apk file md5 error"

    .line 8
    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;

    if-eqz v0, :cond_1a

    iget-object v2, v1, Lf/a/i/l/a$e;->b:Ljava/lang/String;

    check-cast v0, Lf/a/k/m0/p0;

    const/4 v3, -0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v2, v6}, Lf/a/k/m0/p0;->c(ILjava/lang/String;F)V

    :cond_1a
    if-eqz v15, :cond_1c

    iget-object v0, v4, Lf/a/i/l/a;->b:Lf/a/i/l/a$d;

    if-eqz v0, :cond_1b

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lf/a/k/m0/p0;

    invoke-virtual {v0, v1}, Lf/a/k/m0/p0;->b(Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto/16 :goto_1d

    :cond_1c
    :try_start_13
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_14
    invoke-static {v0, v2, v3, v6}, Lf/a/i/l/a;->C(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    iget-object v0, v1, Lf/a/i/l/a$e;->a:Ljava/lang/String;

    sget-object v2, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/l/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    iget-wide v1, v1, Lf/a/i/l/a$e;->c:J

    .line 9
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "key_ec_airplay_versioncode"

    goto :goto_1b

    .line 10
    :cond_1d
    iget-object v0, v1, Lf/a/i/l/a$e;->a:Ljava/lang/String;

    sget-object v2, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/l/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lf/a/i/l/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    iget-wide v1, v1, Lf/a/i/l/a$e;->c:J

    .line 11
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "key_ec_sdk_versioncode"

    :goto_1b
    invoke-interface {v0, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    :catch_9
    move-exception v0

    goto :goto_1c

    :catch_a
    move-exception v0

    const/4 v3, 0x1

    .line 12
    :goto_1c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unzip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf/a/i/l/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_1d
    add-int/lit8 v2, v5, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    :goto_1e
    move-object v1, v0

    move-object v2, v7

    :goto_1f
    if-eqz v8, :cond_1f

    .line 13
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    if-eqz v3, :cond_20

    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_20

    :catch_b
    move-exception v0

    goto :goto_21

    :cond_20
    :goto_20
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_22

    :goto_21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_22
    throw v1

    :cond_22
    :goto_23
    const-string v0, "startBatchDownload failed, mBatchUpdateList is null or size is 0"

    .line 14
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_23
    :goto_24
    move-object/from16 v1, p0

    goto :goto_25

    :cond_24
    move-object/from16 v1, p0

    .line 15
    iget-object v2, v1, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    iget-object v2, v2, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {v2, v0}, Lf/a/k/k0/b;->s(I)V

    :goto_25
    iget-object v0, v1, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v0, Lf/a/k/m0/q0;->f:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    .line 1
    iget-object v0, v0, Lf/a/k/m0/q0;->a:Landroid/content/Context;

    const-string v1, "net.easyconn.fileProvider"

    .line 2
    invoke-static {v0, p1, v1}, Lf/a/i/l/a;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lf/a/k/m0/q0;->f:Z

    return-void
.end method

.method public c(ILjava/lang/String;F)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownload status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    iget-object p1, p1, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p1, p2, p3}, Lf/a/k/k0/b;->m(Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    iget-object p2, p2, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p2}, Lf/a/k/k0/b;->v()V

    iget-object p2, p0, Lf/a/k/m0/p0;->a:Lf/a/k/m0/q0;

    iget-object p2, p2, Lf/a/k/m0/q0;->c:Lf/a/k/k0/b;

    invoke-interface {p2, p1}, Lf/a/k/k0/b;->s(I)V

    :goto_0
    return-void
.end method
