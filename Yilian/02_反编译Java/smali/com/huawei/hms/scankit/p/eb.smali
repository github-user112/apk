.class public final Lcom/huawei/hms/scankit/p/eb;
.super Lcom/huawei/hms/scankit/p/db;
.source ""


# static fields
.field public static f:I = 0x3

.field public static g:I = 0x0

.field public static h:I = 0x0

.field public static i:I = 0x0

.field public static j:I = 0x18


# instance fields
.field public k:Lcom/huawei/hms/scankit/p/bb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/huawei/hms/scankit/p/eb;->f:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/huawei/hms/scankit/p/eb;->g:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/huawei/hms/scankit/p/eb;->h:I

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/huawei/hms/scankit/p/eb;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/eb;->a(Z)V

    return-void
.end method

.method public static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static a([BIIII[[I)Lcom/huawei/hms/scankit/p/bb;
    .locals 15

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p3

    mul-int v0, v2, v3

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    add-int/lit8 v5, v3, -0x3

    const/4 v7, 0x2

    invoke-static {v4, v7, v5}, Lcom/huawei/hms/scankit/p/eb;->a(III)I

    move-result v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_3

    add-int/lit8 v9, v2, -0x3

    invoke-static {v8, v7, v9}, Lcom/huawei/hms/scankit/p/eb;->a(III)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget-object v11, p5, v10

    add-int/lit8 v12, v9, 0x2

    aget v11, v11, v12

    if-ne v5, v7, :cond_0

    if-ne v9, v7, :cond_0

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_0
    if-ne v5, v7, :cond_1

    aget-object v10, p5, v10

    add-int/lit8 v9, v9, -0x3

    aget v9, v10, v9

    move v10, v9

    const/4 v9, 0x0

    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_1
    if-ne v9, v7, :cond_2

    add-int/lit8 v9, v5, -0x3

    aget-object v9, p5, v9

    aget v9, v9, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v5, -0x3

    aget-object v14, p5, v13

    add-int/lit8 v9, v9, -0x3

    aget v14, v14, v9

    aget-object v13, p5, v13

    aget v12, v13, v12

    aget-object v10, p5, v10

    aget v9, v10, v9

    move v10, v9

    move v9, v12

    :goto_4
    mul-int v12, v4, v2

    add-int/2addr v12, v8

    add-int/2addr v11, v14

    sub-int/2addr v11, v9

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x19

    aput v11, v1, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/eb;->a([B[IIIII)[I

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/scankit/p/bb;

    add-int/lit8 v2, v6, 0x1f

    div-int/lit8 v2, v2, 0x20

    move/from16 v3, p4

    invoke-direct {v1, v6, v3, v2, v0}, Lcom/huawei/hms/scankit/p/bb;-><init>(III[I)V

    return-object v1
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    sput p1, Lcom/huawei/hms/scankit/p/eb;->f:I

    shl-int/lit8 p1, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    sput p1, Lcom/huawei/hms/scankit/p/eb;->f:I

    shl-int/lit8 p1, v0, 0x3

    :goto_0
    sput p1, Lcom/huawei/hms/scankit/p/eb;->g:I

    add-int/lit8 v0, p1, -0x1

    sput v0, Lcom/huawei/hms/scankit/p/eb;->h:I

    mul-int/lit8 p1, p1, 0x5

    sput p1, Lcom/huawei/hms/scankit/p/eb;->i:I

    return-void
.end method

.method public static a(III[B)[I
    .locals 8

    mul-int p1, p1, p2

    add-int/2addr p1, p0

    const/16 p0, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x0

    :goto_0
    sget v5, Lcom/huawei/hms/scankit/p/eb;->g:I

    const/4 v6, 0x1

    if-ge v1, v5, :cond_5

    const/4 v5, 0x0

    :goto_1
    sget v7, Lcom/huawei/hms/scankit/p/eb;->g:I

    if-ge v5, v7, :cond_2

    add-int v7, p1, v5

    aget-byte v7, p3, v7

    and-int/2addr v7, p0

    add-int/2addr v2, v7

    if-ge v7, v3, :cond_0

    move v3, v7

    :cond_0
    if-le v7, v4, :cond_1

    move v4, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sub-int v5, v4, v3

    sget v7, Lcom/huawei/hms/scankit/p/eb;->j:I

    if-le v5, v7, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p1, p2

    sget v5, Lcom/huawei/hms/scankit/p/eb;->g:I

    if-ge v1, v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    sget v7, Lcom/huawei/hms/scankit/p/eb;->g:I

    if-ge v5, v7, :cond_3

    add-int v7, p1, v5

    aget-byte v7, p3, v7

    and-int/2addr v7, p0

    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v1, v6

    add-int/2addr p1, p2

    goto :goto_0

    :cond_5
    const/4 p0, 0x3

    new-array p0, p0, [I

    aput v2, p0, v0

    aput v3, p0, v6

    const/4 p1, 0x2

    aput v4, p0, p1

    return-object p0
.end method

.method public static a([B[IIIII)[I
    .locals 14

    move/from16 v0, p4

    move/from16 v1, p5

    add-int/lit8 v2, v0, 0x1f

    div-int/lit8 v2, v2, 0x20

    mul-int v3, v2, v1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aput v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sget v6, Lcom/huawei/hms/scankit/p/eb;->g:I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    div-int v8, v7, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_2

    div-int v10, v9, v6

    mul-int v11, v7, v0

    add-int/2addr v11, v9

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    mul-int v12, v8, p2

    add-int/2addr v12, v10

    aget v10, p1, v12

    if-gt v11, v10, :cond_1

    mul-int v10, v7, v2

    div-int/lit8 v11, v9, 0x20

    add-int/2addr v11, v10

    if-ge v11, v3, :cond_1

    aget v10, v4, v11

    and-int/lit8 v12, v9, 0x1f

    const/4 v13, 0x1

    shl-int v12, v13, v12

    or-int/2addr v10, v12

    aput v10, v4, v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public static a([BIIII)[[I
    .locals 20

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-class v3, I

    sget v4, Lcom/huawei/hms/scankit/p/eb;->g:I

    sub-int v5, p4, v4

    sub-int v4, v2, v4

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v0, v7, v8

    const/4 v9, 0x0

    aput v1, v7, v9

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    new-array v10, v6, [I

    aput v0, v10, v8

    aput v1, v10, v9

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_6

    sget v11, Lcom/huawei/hms/scankit/p/eb;->f:I

    shl-int v11, v10, v11

    if-le v11, v5, :cond_0

    move v11, v5

    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v0, :cond_5

    sget v14, Lcom/huawei/hms/scankit/p/eb;->f:I

    shl-int v14, v12, v14

    move-object/from16 v15, p0

    if-le v14, v4, :cond_1

    move v14, v4

    :cond_1
    invoke-static {v14, v11, v2, v15}, Lcom/huawei/hms/scankit/p/eb;->a(III[B)[I

    move-result-object v14

    aget v16, v14, v9

    aget v9, v14, v8

    aget v14, v14, v6

    sget v17, Lcom/huawei/hms/scankit/p/eb;->f:I

    mul-int/lit8 v17, v17, 0x2

    shr-int v16, v16, v17

    sub-int/2addr v14, v9

    sget v8, Lcom/huawei/hms/scankit/p/eb;->j:I

    if-gt v14, v8, :cond_2

    div-int/lit8 v16, v9, 0x2

    if-lez v10, :cond_2

    if-lez v12, :cond_2

    add-int/lit8 v8, v10, -0x1

    aget-object v14, v3, v8

    aget v14, v14, v12

    aget-object v18, v3, v10

    add-int/lit8 v19, v12, -0x1

    aget v18, v18, v19

    mul-int/lit8 v18, v18, 0x2

    add-int v18, v18, v14

    aget-object v8, v3, v8

    aget v8, v8, v19

    add-int v18, v18, v8

    div-int/lit8 v8, v18, 0x4

    if-ge v9, v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v8, v16

    :goto_2
    add-int/2addr v13, v8

    aget-object v9, v3, v10

    aput v8, v9, v12

    if-nez v10, :cond_3

    if-nez v12, :cond_3

    aget-object v9, v7, v10

    aput v8, v9, v12

    goto :goto_3

    :cond_3
    if-nez v10, :cond_4

    aget-object v8, v7, v10

    aput v13, v8, v12

    goto :goto_3

    :cond_4
    aget-object v8, v7, v10

    add-int/lit8 v9, v10, -0x1

    aget-object v9, v7, v9

    aget v9, v9, v12

    add-int/2addr v9, v13

    aput v9, v8, v12

    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v15, p0

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    return-object v7
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/aiscan/common/m;)Lcom/huawei/hms/scankit/p/Za;
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    return-object v0
.end method

.method public a()Lcom/huawei/hms/scankit/p/bb;
    .locals 7

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/eb;->k:Lcom/huawei/hms/scankit/p/bb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v5

    sget v1, Lcom/huawei/hms/scankit/p/eb;->i:I

    if-lt v4, v1, :cond_3

    if-lt v5, v1, :cond_3

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v1

    sget v0, Lcom/huawei/hms/scankit/p/eb;->f:I

    shr-int v0, v4, v0

    sget v2, Lcom/huawei/hms/scankit/p/eb;->h:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v2, v0

    sget v0, Lcom/huawei/hms/scankit/p/eb;->f:I

    shr-int v0, v5, v0

    sget v3, Lcom/huawei/hms/scankit/p/eb;->h:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v3, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/huawei/hms/scankit/p/eb;->a([BIIII)[[I

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/eb;->a([BIIII[[I)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/huawei/hms/scankit/p/db;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/eb;->k:Lcom/huawei/hms/scankit/p/bb;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/eb;->k:Lcom/huawei/hms/scankit/p/bb;

    return-object v0
.end method
