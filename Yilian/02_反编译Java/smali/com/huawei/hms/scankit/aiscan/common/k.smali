.class public Lcom/huawei/hms/scankit/aiscan/common/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(III)I
    .locals 0

    if-lt p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-gt p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static a(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 9

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v7

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v6

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->d()[B

    move-result-object p0

    mul-int v0, v7, v6

    new-array v1, v0, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_0

    mul-int v4, v3, v6

    add-int/2addr v4, v6

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, v7

    add-int/2addr v5, v3

    aget-byte v5, p0, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    new-instance v0, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    new-instance p0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    return-object p0
.end method

.method public static a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 26

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    int-to-float v2, v1

    div-float v2, v2, p1

    float-to-int v9, v2

    int-to-float v2, v0

    div-float v2, v2, p1

    float-to-int v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/_a;->d()[B

    move-result-object v2

    mul-int v3, v9, v10

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    rem-int v7, v6, v9

    add-int/lit8 v8, v9, -0x1

    invoke-static {v7, v8, v5}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v7

    div-int v8, v6, v9

    add-int/lit8 v11, v10, -0x1

    invoke-static {v8, v11, v5}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v8

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-double v11, v7

    int-to-float v7, v8

    mul-float v7, v7, p1

    float-to-double v7, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    move v15, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v5

    double-to-int v13, v13

    add-int/lit8 v14, v1, -0x1

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v13, v14, v3}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v13

    double-to-int v5, v5

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6, v3}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v5

    mul-int v3, v5, v1

    add-int v17, v3, v13

    move/from16 v18, v0

    aget-byte v0, v2, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v9

    move/from16 v19, v10

    int-to-double v9, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v22, v20, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v22

    sub-double v20, v20, v7

    mul-double v9, v9, v20

    add-int/lit8 v0, v13, 0x1

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-static {v0, v14, v4}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v25

    add-int v25, v25, v3

    aget-byte v3, v2, v25

    and-int/lit16 v3, v3, 0xff

    move/from16 p0, v5

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v11

    mul-double v4, v4, v20

    add-double/2addr v4, v9

    add-int/lit8 v3, p0, 0x1

    const/4 v9, 0x0

    invoke-static {v3, v6, v9}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v10

    mul-int v10, v10, v1

    add-int/2addr v10, v13

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    int-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v22

    mul-double v9, v9, v7

    add-double/2addr v9, v4

    const/4 v4, 0x0

    invoke-static {v3, v6, v4}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v3

    mul-int v3, v3, v1

    invoke-static {v0, v14, v4}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(III)I

    move-result v0

    add-int/2addr v0, v3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v11

    mul-double v5, v5, v7

    add-double/2addr v5, v9

    double-to-int v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v24, v15

    add-int/lit8 v6, v15, 0x1

    move/from16 v3, v16

    move/from16 v9, v17

    move/from16 v0, v18

    move/from16 v10, v19

    move-object/from16 v4, v24

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v24, v4

    move/from16 v17, v9

    move/from16 v19, v10

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    move/from16 v5, v17

    move/from16 v6, v19

    invoke-direct/range {v3 .. v11}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    new-instance v1, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {v1, v0}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    new-instance v0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    return-object v0
.end method

.method public static a(ZLcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;
    .locals 11

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result p0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    int-to-float v1, v0

    div-float/2addr v1, p2

    float-to-int v8, v1

    int-to-float v1, p0

    div-float/2addr v1, p2

    float-to-int v9, v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->d()[B

    move-result-object p1

    invoke-static {p1, p0, v0, v9, v8}, Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;->imageResize([BIIII)[B

    move-result-object v3

    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move v4, v8

    move v5, v9

    invoke-direct/range {v2 .. v10}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    new-instance p1, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {p1, p0}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    new-instance p0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    return-object p0
.end method
