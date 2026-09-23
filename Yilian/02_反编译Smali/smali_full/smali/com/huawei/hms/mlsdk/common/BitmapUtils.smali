.class public final Lcom/huawei/hms/mlsdk/common/BitmapUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cut(Landroid/graphics/Bitmap;[Landroid/graphics/Point;I)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-object v8, v0, v3

    const/4 v9, 0x1

    aget-object v1, v0, v9

    const/4 v2, 0x2

    aget-object v10, v0, v2

    iget v0, v1, Landroid/graphics/Point;->y:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/mlsdk/common/BitmapUtils;->cutPaddingExtendRect(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    new-instance v15, Landroid/graphics/Point;

    shr-int/lit8 v1, v13, 0x1

    shr-int/lit8 v2, v14, 0x1

    invoke-direct {v15, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v13

    shr-int/lit8 v19, v0, 0x1

    sub-int/2addr v1, v14

    shr-int/lit8 v20, v1, 0x1

    invoke-static {v7, v15, v8, v11, v12}, Lcom/huawei/hms/mlsdk/common/BitmapUtils;->rotateCoordinate(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;D)Landroid/graphics/Point;

    move-result-object v17

    invoke-static {v7, v15, v10, v11, v12}, Lcom/huawei/hms/mlsdk/common/BitmapUtils;->rotateCoordinate(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;D)Landroid/graphics/Point;

    move-result-object v18

    move/from16 v21, p2

    invoke-static/range {v16 .. v21}, Lcom/huawei/hms/mlsdk/common/BitmapUtils;->cutPaddingExtendRect(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static cutPaddingExtendRect(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;III)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p3

    sub-int/2addr v2, p5

    const/4 v3, 0x0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p4

    sub-int/2addr p1, p5

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    iget p1, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iget p1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p4

    add-int/2addr p1, p5

    if-le p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    :goto_2
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    invoke-static {p0, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/nio/ByteBuffer;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v5, v3, [B

    invoke-virtual {p0, v5, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance p0, Landroid/graphics/YuvImage;

    const/16 v6, 0x11

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v5

    invoke-direct {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result p1

    invoke-static {p0, p1}, Lcom/huawei/hms/mlsdk/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/huawei/hms/ml/common/utils/StreamUtils;->closeStreams([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/huawei/hms/ml/common/utils/StreamUtils;->closeStreams([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    :goto_0
    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateCoordinate(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;D)Landroid/graphics/Point;
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int p2, p0, p2

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int p1, p0, p1

    sub-int/2addr v0, v1

    int-to-double v2, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    sub-int/2addr p2, p1

    int-to-double v6, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    sub-double/2addr v4, v8

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    double-to-int p2, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v6

    add-double/2addr p3, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p3, v0

    double-to-int p1, p3

    new-instance p3, Landroid/graphics/Point;

    sub-int/2addr p0, p1

    invoke-direct {p3, p2, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p3
.end method
