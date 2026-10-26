.class public final Lcom/huawei/hms/scankit/aiscan/common/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/huawei/hms/scankit/aiscan/common/h;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/aiscan/common/h;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->a:Lcom/huawei/hms/scankit/aiscan/common/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->b:Ljava/util/List;

    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/i;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/huawei/hms/scankit/aiscan/common/i;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Lcom/huawei/hms/scankit/aiscan/common/i;
    .locals 8

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/aiscan/common/i;

    iget-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-gt v1, p1, :cond_0

    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/i;

    iget-object v4, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->a:Lcom/huawei/hms/scankit/aiscan/common/h;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/h;->a()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Lcom/huawei/hms/scankit/aiscan/common/h;->a(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/i;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;[I)V

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/aiscan/common/i;->c(Lcom/huawei/hms/scankit/aiscan/common/i;)Lcom/huawei/hms/scankit/aiscan/common/i;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/aiscan/common/i;

    return-object p1
.end method


# virtual methods
.method public a([II)V
    .locals 6

    if-eqz p2, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/aiscan/common/v;->a(I)Lcom/huawei/hms/scankit/aiscan/common/i;

    move-result-object v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/i;

    iget-object v5, p0, Lcom/huawei/hms/scankit/aiscan/common/v;->a:Lcom/huawei/hms/scankit/aiscan/common/h;

    invoke-direct {v4, v5, v2}, Lcom/huawei/hms/scankit/aiscan/common/i;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;[I)V

    const/4 v2, 0x1

    invoke-virtual {v4, p2, v2}, Lcom/huawei/hms/scankit/aiscan/common/i;->a(II)Lcom/huawei/hms/scankit/aiscan/common/i;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/huawei/hms/scankit/aiscan/common/i;->b(Lcom/huawei/hms/scankit/aiscan/common/i;)[Lcom/huawei/hms/scankit/aiscan/common/i;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/i;->a()[I

    move-result-object v1

    array-length v2, v1

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v4, v0, v2

    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "No data bytes provided"

    :try_start_1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    throw p1

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string p2, "No error correction bytes"

    :try_start_3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
