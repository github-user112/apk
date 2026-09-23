.class public Lf/a/i/m/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I = 0x32


# direct methods
.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lf/a/i/m/h;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    :try_start_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sget-object v0, Le/c/c/b;->b:Le/c/c/b;

    const-string v1, "utf-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Le/c/c/b;->a:Le/c/c/b;

    sget-object v1, Le/c/c/e/b/a;->e:Le/c/c/e/b/a;

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Le/c/c/b;->f:Le/c/c/b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le/c/c/e/a;

    invoke-direct {v0}, Le/c/c/e/a;-><init>()V

    sget-object v2, Le/c/c/a;->l:Le/c/c/a;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Le/c/c/e/a;->a(Ljava/lang/String;Le/c/c/a;IILjava/util/Map;)Le/c/c/d/b;

    move-result-object p0

    mul-int v0, p1, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    invoke-virtual {p0, v3, v1}, Le/c/c/d/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int v4, v1, p1

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    aput v5, v2, v4

    goto :goto_2

    :cond_0
    mul-int v4, v1, p1

    add-int/2addr v4, v3

    const/4 v5, -0x1

    aput v5, v2, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v7, p1

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Le/c/c/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    :try_start_0
    sput p3, Lf/a/i/m/h;->a:I

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sget-object p3, Le/c/c/b;->b:Le/c/c/b;

    const-string v0, "utf-8"

    invoke-virtual {v5, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Le/c/c/b;->a:Le/c/c/b;

    sget-object v0, Le/c/c/e/b/a;->e:Le/c/c/e/b/a;

    invoke-virtual {v5, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Le/c/c/b;->f:Le/c/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le/c/c/e/a;

    invoke-direct {v0}, Le/c/c/e/a;-><init>()V

    sget-object v2, Le/c/c/a;->l:Le/c/c/a;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Le/c/c/e/a;->a(Ljava/lang/String;Le/c/c/a;IILjava/util/Map;)Le/c/c/d/b;

    move-result-object p0

    invoke-static {p0}, Lf/a/i/m/h;->d(Le/c/c/d/b;)Le/c/c/d/b;

    move-result-object p0

    .line 1
    iget v7, p0, Le/c/c/d/b;->a:I

    .line 2
    iget p1, p0, Le/c/c/d/b;->b:I

    .line 3
    div-int/lit8 p3, v7, 0x2

    div-int/lit8 p1, p1, 0x2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sget v0, Lf/a/i/m/h;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lf/a/i/m/h;->a:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    mul-int v0, v7, v7

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_2

    sget v4, Lf/a/i/m/h;->a:I

    sub-int v4, p3, v4

    if-le v3, v4, :cond_0

    sget v4, Lf/a/i/m/h;->a:I

    add-int/2addr v4, p3

    if-ge v3, v4, :cond_0

    sget v4, Lf/a/i/m/h;->a:I

    sub-int v4, p1, v4

    if-le v2, v4, :cond_0

    sget v4, Lf/a/i/m/h;->a:I

    add-int/2addr v4, p1

    if-ge v2, v4, :cond_0

    mul-int v4, v2, v7

    add-int/2addr v4, v3

    sub-int v5, v3, p3

    sget v6, Lf/a/i/m/h;->a:I

    add-int/2addr v5, v6

    sub-int v6, v2, p1

    sget v8, Lf/a/i/m/h;->a:I

    add-int/2addr v6, v8

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v1, v4

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3, v2}, Le/c/c/d/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int v4, v2, v7

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    aput v5, v1, v4

    goto :goto_2

    :cond_1
    mul-int v4, v2, v7

    add-int/2addr v4, v3

    const/4 v5, -0x1

    aput v5, v1, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v7

    move v6, v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Le/c/c/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Le/c/c/d/b;)Le/c/c/d/b;
    .locals 12

    .line 1
    iget v0, p0, Le/c/c/d/b;->a:I

    iget v1, p0, Le/c/c/d/b;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Le/c/c/d/b;->b:I

    if-ge v5, v6, :cond_7

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Le/c/c/d/b;->c:I

    if-ge v6, v7, :cond_6

    iget-object v8, p0, Le/c/c/d/b;->d:[I

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    aget v7, v8, v7

    if-eqz v7, :cond_5

    if-ge v5, v1, :cond_0

    move v1, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    shl-int/lit8 v8, v6, 0x5

    if-ge v8, v0, :cond_3

    const/4 v9, 0x0

    :goto_2
    rsub-int/lit8 v10, v9, 0x1f

    shl-int v10, v7, v10

    if-nez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v9, v8

    if-ge v9, v0, :cond_3

    move v0, v9

    :cond_3
    add-int/lit8 v9, v8, 0x1f

    if-le v9, v2, :cond_5

    const/16 v9, 0x1f

    :goto_3
    ushr-int v10, v7, v9

    if-nez v10, :cond_4

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v8, v9

    if-le v8, v2, :cond_5

    move v2, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v2, v0, :cond_9

    if-ge v4, v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x4

    new-array v8, v8, [I

    aput v0, v8, v3

    aput v1, v8, v7

    sub-int/2addr v2, v0

    add-int/2addr v2, v7

    aput v2, v8, v6

    sub-int/2addr v4, v1

    add-int/2addr v4, v7

    aput v4, v8, v5

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v8, 0x0

    .line 2
    :goto_5
    aget v0, v8, v6

    add-int/2addr v0, v6

    aget v1, v8, v5

    add-int/2addr v1, v6

    new-instance v2, Le/c/c/d/b;

    invoke-direct {v2, v0, v1}, Le/c/c/d/b;-><init>(II)V

    .line 3
    iget-object v4, v2, Le/c/c/d/b;->d:[I

    array-length v4, v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_a

    iget-object v6, v2, Le/c/c/d/b;->d:[I

    aput v3, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x1

    :goto_7
    if-ge v4, v0, :cond_d

    const/4 v5, 0x1

    :goto_8
    if-ge v5, v1, :cond_c

    .line 4
    aget v6, v8, v3

    add-int/2addr v6, v4

    aget v9, v8, v7

    add-int/2addr v9, v5

    invoke-virtual {p0, v6, v9}, Le/c/c/d/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5
    iget v6, v2, Le/c/c/d/b;->c:I

    mul-int v6, v6, v5

    div-int/lit8 v9, v4, 0x20

    add-int/2addr v9, v6

    iget-object v6, v2, Le/c/c/d/b;->d:[I

    aget v10, v6, v9

    and-int/lit8 v11, v4, 0x1f

    shl-int v11, v7, v11

    or-int/2addr v10, v11

    aput v10, v6, v9

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    return-object v2
.end method
