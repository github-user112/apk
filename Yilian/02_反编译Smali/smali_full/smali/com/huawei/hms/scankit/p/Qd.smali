.class public final Lcom/huawei/hms/scankit/p/Qd;
.super Lcom/huawei/hms/scankit/p/Vd;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Vd;-><init>()V

    return-void
.end method

.method public static a(I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    :goto_1
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;
    .locals 1
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

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne p2, v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/huawei/hms/scankit/p/Vd;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;IILjava/util/Map;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode CODE_39, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)[Z
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    const/16 v1, 0x9

    new-array v2, v1, [I

    add-int/lit8 v3, v0, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v5, v0, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    sget-object v7, Lcom/huawei/hms/scankit/p/tb;->a:[I

    aget v6, v7, v6

    invoke-static {v6, v2}, Lcom/huawei/hms/scankit/p/Qd;->a(I[I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    aget v7, v2, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad contents: error contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-array v1, v3, [Z

    const/16 v3, 0x94

    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/p/Qd;->a(I[I)V

    const/4 v5, 0x1

    invoke-static {v1, v4, v2, v5}, Lcom/huawei/hms/scankit/p/Vd;->a([ZI[IZ)I

    move-result v7

    new-array v8, v5, [I

    aput v5, v8, v4

    invoke-static {v1, v7, v8, v4}, Lcom/huawei/hms/scankit/p/Vd;->a([ZI[IZ)I

    move-result v9

    add-int/2addr v9, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_3

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    sget-object v11, Lcom/huawei/hms/scankit/p/tb;->a:[I

    aget v10, v11, v10

    invoke-static {v10, v2}, Lcom/huawei/hms/scankit/p/Qd;->a(I[I)V

    invoke-static {v1, v9, v2, v5}, Lcom/huawei/hms/scankit/p/Vd;->a([ZI[IZ)I

    move-result v10

    add-int/2addr v10, v9

    invoke-static {v1, v10, v8, v4}, Lcom/huawei/hms/scankit/p/Vd;->a([ZI[IZ)I

    move-result v9

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/p/Qd;->a(I[I)V

    invoke-static {v1, v9, v2, v5}, Lcom/huawei/hms/scankit/p/Vd;->a([ZI[IZ)I

    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
