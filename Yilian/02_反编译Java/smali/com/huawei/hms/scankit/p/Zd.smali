.class public final Lcom/huawei/hms/scankit/p/Zd;
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

.method public static a(Lcom/huawei/hms/scankit/p/de;Ljava/lang/String;IIII)Lcom/huawei/hms/scankit/p/bb;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/de;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/de;->a()Lcom/huawei/hms/scankit/p/_d;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/scankit/p/_d;->a(II)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    div-int/2addr p3, v0

    array-length v0, p1

    div-int/2addr p4, v0

    if-ge p3, p4, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    if-le p3, p2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/de;->a()Lcom/huawei/hms/scankit/p/_d;

    move-result-object p0

    mul-int/lit8 p1, p3, 0x4

    invoke-virtual {p0, p3, p1}, Lcom/huawei/hms/scankit/p/_d;->a(II)[[B

    move-result-object p0

    invoke-static {p0, p5}, Lcom/huawei/hms/scankit/p/Zd;->a([[BI)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, p5}, Lcom/huawei/hms/scankit/p/Zd;->a([[BI)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    return-object p0
.end method

.method public static a([[BI)Lcom/huawei/hms/scankit/p/bb;
    .locals 8

    new-instance v0, Lcom/huawei/hms/scankit/p/bb;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->a()V

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    aget-object v5, p0, v4

    const/4 v6, 0x0

    :goto_1
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_0

    add-int v7, v6, p1

    invoke-virtual {v0, v7, v2}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
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

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-ne p2, v0, :cond_7

    new-instance v1, Lcom/huawei/hms/scankit/p/de;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/de;-><init>()V

    const/16 p2, 0x1e

    const/4 v0, 0x2

    if-eqz p5, :cond_6

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->g:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->g:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/de;->a(Z)V

    :cond_0
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->h:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->h:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/be;->valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/be;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/de;->a(Lcom/huawei/hms/scankit/p/be;)V

    :cond_1
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->i:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->i:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/ce;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/ce;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/ce;->c()I

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/ce;->b()I

    move-result v5

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/ce;->d()I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/huawei/hms/scankit/p/de;->a(IIII)V

    :cond_2
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->f:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    sget-object p2, Lcom/huawei/hms/scankit/p/ke;->f:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    throw p1

    :cond_3
    :goto_0
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->a:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    sget-object v0, Lcom/huawei/hms/scankit/p/ke;->a:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    throw p1

    :cond_4
    :goto_1
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    invoke-virtual {v1, p5}, Lcom/huawei/hms/scankit/p/de;->a(Ljava/nio/charset/Charset;)V

    :cond_5
    move v6, p2

    move v3, v0

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    const/16 v6, 0x1e

    :goto_2
    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/Zd;->a(Lcom/huawei/hms/scankit/p/de;Ljava/lang/String;IIII)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode PDF_417, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
