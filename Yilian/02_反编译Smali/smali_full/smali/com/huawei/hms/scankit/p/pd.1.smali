.class public final Lcom/huawei/hms/scankit/p/pd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hms/scankit/p/qd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption;)Landroid/graphics/Bitmap;
    .locals 26

    move/from16 v0, p2

    move/from16 v7, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-static/range {p1 .. p5}, Lcom/huawei/hms/hmsscankit/g;->a(Ljava/lang/String;IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    if-lez v7, :cond_28

    if-lez v6, :cond_28

    const/16 v1, 0x1400

    if-gt v7, v1, :cond_28

    if-gt v6, v1, :cond_28

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb89

    if-gt v1, v2, :cond_26

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->PDF417_SCAN_TYPE:I

    if-ne v0, v1, :cond_2

    div-int/lit8 v1, v7, 0x1e

    goto :goto_0

    :cond_2
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN8_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE39_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE93_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE128_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODABAR_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->ITF14_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_A_SCAN_TYPE:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_E_SCAN_TYPE:I

    if-ne v0, v1, :cond_0

    :cond_3
    const/4 v1, 0x6

    :goto_0
    const/high16 v3, -0x1000000

    const v4, -0x30305

    sget-object v5, Lcom/huawei/hms/scankit/p/qc;->a:Lcom/huawei/hms/scankit/p/qc;

    const-string v5, "a"

    if-eqz v8, :cond_8

    iget v11, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->margin:I

    if-ne v11, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v11

    :goto_1
    iget v11, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bimapColor:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    goto :goto_2

    :cond_5
    move v3, v11

    :goto_2
    iget v11, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bitmapBackgroundColor:I

    if-ne v11, v12, :cond_6

    goto :goto_3

    :cond_6
    move v4, v11

    :goto_3
    iget-object v11, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    if-nez v11, :cond_7

    sget-object v11, Lcom/huawei/hms/scankit/p/qc;->a:Lcom/huawei/hms/scankit/p/qc;

    goto :goto_4

    :cond_7
    iget-object v5, v11, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->value:Ljava/lang/String;

    :goto_4
    move v11, v1

    move v12, v3

    move v13, v4

    goto :goto_5

    :cond_8
    move v11, v1

    const/high16 v12, -0x1000000

    const v13, -0x30305

    :goto_5
    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    const-string v3, "utf-8"

    invoke-virtual {v14, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->f:Lcom/huawei/hms/scankit/p/ke;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->AZTEC_SCAN_TYPE:I

    const/4 v15, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    :goto_6
    move-object v5, v0

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_9
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->DATAMATRIX_SCAN_TYPE:I

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_6

    :cond_a
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->PDF417_SCAN_TYPE:I

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->a:Lcom/huawei/hms/scankit/p/ke;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move-object v5, v0

    const/16 v16, 0x1

    goto :goto_8

    :cond_b
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    if-ne v0, v1, :cond_d

    :cond_c
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->a:Lcom/huawei/hms/scankit/p/ke;

    invoke-virtual {v14, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODABAR_SCAN_TYPE:I

    if-ne v0, v1, :cond_e

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_e
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE39_SCAN_TYPE:I

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_f
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE93_SCAN_TYPE:I

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_10
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE128_SCAN_TYPE:I

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_11
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN8_SCAN_TYPE:I

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_12
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    if-ne v0, v1, :cond_13

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_13
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->ITF14_SCAN_TYPE:I

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_14
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_A_SCAN_TYPE:I

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :cond_15
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_E_SCAN_TYPE:I

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    goto :goto_7

    :goto_8
    if-eqz v8, :cond_17

    iget-object v0, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne v5, v0, :cond_16

    goto :goto_9

    :cond_16
    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "Non-QR code should not contains logos"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_9
    :try_start_0
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne v5, v0, :cond_1d

    if-eqz v8, :cond_1d

    iget-object v0, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/huawei/hms/scankit/p/ke;->a:Lcom/huawei/hms/scankit/p/ke;

    sget-object v1, Lcom/huawei/hms/scankit/p/qc;->d:Lcom/huawei/hms/scankit/p/qc;

    const-string v1, "d"

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/hms/scankit/p/ke;->m:Lcom/huawei/hms/scankit/p/ke;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v17, v5

    move-object v5, v14

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/pd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    if-nez v0, :cond_18

    return-object v10

    :cond_18
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v1, v11

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v2

    div-int/2addr v2, v15

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v3

    div-int/2addr v3, v15

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    iget-object v6, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    iget-object v11, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v5, v11

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v5, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v6, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    iget-object v6, v8, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v5

    move-object/from16 v23, v4

    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    mul-int v5, v7, v7

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v7, :cond_1c

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_1b

    sub-int v11, v2, v1

    if-le v8, v11, :cond_19

    add-int v11, v2, v1

    if-ge v8, v11, :cond_19

    sub-int v11, v3, v1

    if-le v6, v11, :cond_19

    add-int v11, v3, v1

    if-ge v6, v11, :cond_19

    mul-int v11, v6, v7

    add-int/2addr v11, v8

    sub-int v14, v8, v2

    add-int/2addr v14, v1

    sub-int v15, v6, v3

    add-int/2addr v15, v1

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    aput v14, v5, v11

    goto :goto_c

    :cond_19
    invoke-virtual {v0, v8, v6}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v11

    if-eqz v11, :cond_1a

    mul-int v11, v6, v7

    add-int/2addr v11, v8

    aput v12, v5, v11

    goto :goto_c

    :cond_1a
    mul-int v11, v6, v7

    add-int/2addr v11, v8

    aput v13, v5, v11

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    goto/16 :goto_15

    :catch_2
    move-exception v0

    goto/16 :goto_16

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v5

    move/from16 v3, p3

    move v5, v6

    move/from16 v6, p3

    move/from16 v7, p3

    :try_start_2
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v17, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    :try_start_3
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/pd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v10

    :cond_1e
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v2

    mul-int v3, v1, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_21

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_20

    invoke-virtual {v0, v5, v4}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v8

    if-eqz v8, :cond_1f

    mul-int v8, v4, v1

    add-int/2addr v8, v5

    aput v12, v3, v8

    goto :goto_f

    :cond_1f
    mul-int v8, v4, v1

    add-int/2addr v8, v5

    aput v13, v3, v8

    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_21
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, v3

    move/from16 v21, v1

    move/from16 v24, v1

    move/from16 v25, v2

    :try_start_4
    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    int-to-float v0, v1

    int-to-float v1, v7

    div-float v1, v0, v1

    int-to-float v2, v2

    int-to-float v3, v6

    div-float v3, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_24

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_24

    if-nez v16, :cond_22

    goto :goto_10

    :cond_22
    cmpl-float v4, v1, v3

    if-lez v4, :cond_23

    div-float/2addr v2, v1

    float-to-int v0, v2

    invoke-static {v8, v7, v0}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    :cond_23
    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v8, v0, v6}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_12

    :cond_24
    :goto_10
    const-string v0, "MultiFormatWriter"

    const-string v1, "wMultiple == 1f || hMultiple == 1f || !reFormFlag"

    :try_start_5
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_11
    move-object v0, v8

    :goto_12
    if-eqz v0, :cond_25

    const/4 v1, 0x0

    goto :goto_13

    :cond_25
    const/16 v1, -0x3f7

    :goto_13
    invoke-static {v1, v0, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    return-object v0

    :catch_3
    move-exception v0

    move-object v10, v8

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v10, v8

    goto :goto_15

    :catch_5
    move-exception v0

    move-object v10, v8

    goto :goto_16

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    :goto_14
    const/16 v1, -0x3f5

    invoke-static {v1, v10, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    new-instance v1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v0

    move-object/from16 v17, v5

    :goto_15
    const/16 v1, -0x3f8

    invoke-static {v1, v10, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    new-instance v1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :goto_16
    const/16 v1, -0x3f6

    invoke-static {v1, v10, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    new-instance v1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    const/16 v0, -0x3f4

    invoke-static {v0, v10, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "IllegalArgumentException:contents.length > 2953"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const/16 v0, -0x3f3

    invoke-static {v0, v10, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "Content is empty"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/16 v0, -0x3f2

    invoke-static {v0, v10, v9}, Lcom/huawei/hms/hmsscankit/g;->a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "IllegalArgumentException:width & height should >0 & <5120"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method

.method public a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/p/ke;",
            "*>;)",
            "Lcom/huawei/hms/scankit/p/bb;"
        }
    .end annotation

    sget-object v0, Lcom/huawei/hms/scankit/p/od;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No encoder available for format "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/huawei/hms/scankit/p/rd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/rd;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/huawei/hms/scankit/p/zd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/zd;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/huawei/hms/scankit/p/Od;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Od;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/huawei/hms/scankit/p/Zd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Zd;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/huawei/hms/scankit/p/Ud;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Ud;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/huawei/hms/scankit/p/Pd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Pd;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/huawei/hms/scankit/p/Rd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Rd;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/huawei/hms/scankit/p/Qd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Qd;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/huawei/hms/scankit/p/he;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/he;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/huawei/hms/scankit/p/Wd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Wd;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/huawei/hms/scankit/p/Sd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Sd;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/huawei/hms/scankit/p/Yd;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Yd;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/huawei/hms/scankit/p/Td;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Td;-><init>()V

    :goto_0
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/qd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
