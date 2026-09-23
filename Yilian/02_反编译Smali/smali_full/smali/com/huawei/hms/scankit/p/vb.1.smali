.class public final Lcom/huawei/hms/scankit/p/vb;
.super Lcom/huawei/hms/scankit/p/Fb;
.source ""


# static fields
.field public static final h:[I


# instance fields
.field public final i:[I

.field public j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/vb;->h:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Fb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/vb;->j:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/vb;->i:[I

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/huawei/hms/scankit/p/vb;->h:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x30

    int-to-char p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/StringBuilder;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_1

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0x3

    :goto_1
    add-int/2addr v5, v4

    move v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/ab;[ILjava/lang/StringBuilder;)I
    .locals 10

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/vb;->i:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v3

    aget p2, p2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v4, v6, :cond_2

    if-ge p2, v3, :cond_2

    sget-object v6, Lcom/huawei/hms/scankit/p/Fb;->e:[[I

    invoke-static {p1, v0, p2, v6}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;[II[[I)I

    move-result v6

    rem-int/lit8 v7, v6, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v7, v0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v0, v8

    add-int/2addr p2, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/16 v7, 0xa

    if-lt v6, v7, :cond_1

    rsub-int/lit8 v6, v4, 0x5

    shl-int v6, v2, v6

    or-int/2addr v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p3, v5}, Lcom/huawei/hms/scankit/p/vb;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/hms/scankit/p/vb;->j:Ljava/lang/String;

    sget-object v4, Lcom/huawei/hms/scankit/p/Fb;->b:[I

    invoke-static {p1, p2, v2, v4}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;IZ[I)[I

    move-result-object p2

    aget p2, p2, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_4

    if-ge p2, v3, :cond_4

    sget-object v4, Lcom/huawei/hms/scankit/p/Fb;->d:[[I

    invoke-static {p1, v0, p2, v4}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;[II[[I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_3

    aget v7, v0, v5

    add-int/2addr p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lcom/huawei/hms/scankit/p/vb;->a(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-eqz p1, :cond_5

    return p2

    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object v0
.end method

.method public a(IILcom/huawei/hms/scankit/p/ab;)Z
    .locals 1

    sub-int p1, p2, p1

    add-int/2addr p1, p2

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p1, v0, v0}, Lcom/huawei/hms/scankit/p/ab;->a(IIZZ)Z

    move-result p1

    return p1
.end method

.method public a([I[I)Z
    .locals 7

    const/4 v0, 0x1

    aget v1, p2, v0

    const/4 v2, 0x0

    aget v3, p2, v2

    sub-int/2addr v1, v3

    aget v3, p1, v0

    aget v4, p1, v2

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    aget p2, p2, v0

    aget p1, p1, v2

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/vb;->j:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide v3, 0x40320ccccccccccdL    # 18.05

    if-eqz p1, :cond_2

    add-int/lit8 p1, p2, -0x5f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v5, p1

    cmpg-double p1, v5, v3

    if-lez p1, :cond_1

    add-int/lit8 p2, p2, -0x71

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    const-wide v3, 0x40357851eb851eb8L    # 21.47

    cmpg-double v1, p1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int/lit8 p2, p2, -0x5f

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    cmpg-double v1, p1, v3

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
