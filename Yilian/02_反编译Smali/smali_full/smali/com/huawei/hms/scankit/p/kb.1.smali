.class public final Lcom/huawei/hms/scankit/p/kb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/huawei/hms/scankit/aiscan/common/u;

.field public b:Lcom/huawei/hms/scankit/p/nb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/kb;->b:Lcom/huawei/hms/scankit/p/nb;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/u;

    sget-object v1, Lcom/huawei/hms/scankit/aiscan/common/h;->f:Lcom/huawei/hms/scankit/aiscan/common/h;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/aiscan/common/u;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/kb;->a:Lcom/huawei/hms/scankit/aiscan/common/u;

    return-void
.end method

.method private a([BI)V
    .locals 5

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/kb;->a:Lcom/huawei/hms/scankit/aiscan/common/u;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/huawei/hms/scankit/aiscan/common/u;->a([II)V
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/bb;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/bb;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/scankit/p/fb;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/fb;-><init>(Lcom/huawei/hms/scankit/p/bb;)V

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/fb;->a()Lcom/huawei/hms/scankit/p/nb;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/kb;->b:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/fb;->b()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/gb;->a([BLcom/huawei/hms/scankit/p/nb;)[Lcom/huawei/hms/scankit/p/gb;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/gb;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/gb;->a()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/gb;->b()I

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/huawei/hms/scankit/p/kb;->a([BI)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    mul-int v7, v6, v2

    add-int/2addr v7, v3

    aget-byte v8, v5, v6

    aput-byte v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Lcom/huawei/hms/scankit/p/jb;->a([BLjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/huawei/hms/scankit/p/nb;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/kb;->b:Lcom/huawei/hms/scankit/p/nb;

    return-object v0
.end method
