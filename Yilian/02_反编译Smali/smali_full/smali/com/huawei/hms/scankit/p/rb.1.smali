.class public final Lcom/huawei/hms/scankit/p/rb;
.super Lcom/huawei/hms/scankit/p/Ab;
.source ""


# static fields
.field public static final a:[C

.field public static final b:[I

.field public static final c:[C


# instance fields
.field public final d:Ljava/lang/StringBuilder;

.field public e:[I

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/rb;->a:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/rb;->b:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/huawei/hms/scankit/p/rb;->c:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Ab;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    return-void
.end method

.method private a(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    iget v1, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    aput p1, v0, v1

    iget p1, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private a(Lcom/huawei/hms/scankit/p/ab;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/ab;->c(I)I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/scankit/p/rb;->g:I

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/rb;->a(I)V

    xor-int/lit8 v4, v4, 0x1

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/rb;->a(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static a([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a()[I
    .locals 10

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/rb;->b()I

    move-result v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/huawei/hms/scankit/p/rb;->b(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    int-to-char v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x8

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    sget-object v5, Lcom/huawei/hms/scankit/p/rb;->c:[C

    sget-object v7, Lcom/huawei/hms/scankit/p/rb;->a:[C

    aget-char v3, v7, v3

    invoke-static {v5, v3}, Lcom/huawei/hms/scankit/p/rb;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    if-lt v1, v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    add-int/lit8 v5, v1, -0x1

    aget v3, v3, v5

    const/4 v5, -0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    iget-object v8, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    add-int v9, v1, v5

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_4

    div-int/2addr v7, v5

    if-lt v3, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/rb;->c(I)V

    new-array v3, v5, [I

    aput v0, v3, v2

    aput v1, v3, v6

    return-object v3

    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private b()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/huawei/hms/scankit/p/rb;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/huawei/hms/scankit/p/rb;->c:[C

    sget-object v4, Lcom/huawei/hms/scankit/p/rb;->a:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/p/rb;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v1

    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    div-int/lit8 v2, v2, 0x2

    if-lt v3, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private b(I)I
    .locals 8

    add-int/lit8 v0, p1, 0x7

    iget v1, p0, Lcom/huawei/hms/scankit/p/rb;->f:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, p1

    :goto_0
    if-ge v4, v0, :cond_1

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    div-int/2addr v5, v0

    const/16 v0, 0x80

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x7

    if-ge v3, v7, :cond_4

    shr-int/lit8 v0, v0, 0x1

    add-int v7, p1, v3

    aget v7, v1, v7

    if-le v7, v5, :cond_3

    or-int/2addr v6, v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sget-object p1, Lcom/huawei/hms/scankit/p/rb;->b:[I

    array-length v0, p1

    if-ge v4, v0, :cond_6

    aget p1, p1, v4

    if-ne p1, v6, :cond_5

    return v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return v2
.end method

.method private c(I)V
    .locals 14

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move v6, p1

    const/4 v5, 0x0

    :goto_0
    sget-object v7, Lcom/huawei/hms/scankit/p/rb;->b:[I

    iget-object v8, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x6

    :goto_1
    const/4 v10, 0x2

    if-ltz v9, :cond_0

    and-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v11

    aget v10, v1, v12

    iget-object v11, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    add-int v13, v6, v9

    aget v11, v11, v13

    add-int/2addr v10, v11

    aput v10, v1, v12

    aget v10, v2, v12

    add-int/lit8 v10, v10, 0x1

    aput v10, v2, v12

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_0
    if-lt v5, v3, :cond_5

    new-array v7, v0, [F

    new-array v9, v0, [F

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    const/4 v5, 0x0

    aput v5, v9, v0

    add-int/lit8 v5, v0, 0x2

    aget v6, v1, v0

    int-to-float v6, v6

    aget v11, v2, v0

    int-to-float v11, v11

    div-float/2addr v6, v11

    aget v11, v1, v5

    int-to-float v11, v11

    aget v12, v2, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v11, v6

    aput v11, v9, v5

    aget v11, v9, v5

    aput v11, v7, v0

    aget v11, v1, v5

    int-to-float v11, v11

    mul-float v11, v11, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    add-float/2addr v11, v6

    aget v6, v2, v5

    int-to-float v6, v6

    div-float/2addr v11, v6

    aput v11, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    sget-object v0, Lcom/huawei/hms/scankit/p/rb;->b:[I

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    :goto_4
    if-ltz v1, :cond_3

    and-int/lit8 v2, v1, 0x1

    and-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    add-int v6, p1, v1

    aget v2, v2, v6

    int-to-float v2, v2

    aget v6, v9, v5

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_2

    aget v5, v7, v5

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_3
    if-lt v4, v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a(ILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/p/ab;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    iget-object p3, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/rb;->a(Lcom/huawei/hms/scankit/p/ab;)V

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/rb;->a()[I

    move-result-object p2

    aget p3, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    sget-object v4, Lcom/huawei/hms/scankit/p/rb;->a:[C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/huawei/hms/scankit/p/rb;->c:[C

    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/p/rb;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/huawei/hms/scankit/p/rb;->c:[C

    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/p/rb;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/huawei/hms/scankit/p/rb;->g:I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    int-to-float v3, v2

    :goto_2
    add-int/lit8 v4, p2, -0x1

    if-ge p3, v4, :cond_2

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/rb;->e:[I

    aget v4, v4, p3

    add-int/2addr v2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    int-to-float p2, v2

    new-instance p3, Lcom/huawei/hms/scankit/aiscan/common/x;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/rb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/huawei/hms/scankit/aiscan/common/z;

    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float p1, p1

    invoke-direct {v5, v3, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v5, v4, v0

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-direct {v0, p2, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v0, v4, v1

    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 p2, 0x0

    invoke-direct {p3, v2, p2, v4, p1}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object p3

    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
