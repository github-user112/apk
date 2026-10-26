.class public final Lcom/huawei/hms/scankit/p/ae;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ae;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/hms/scankit/p/ae;->b:I

    return-void
.end method

.method private a(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ae;->a:[B

    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ae;->a:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    throw p1
.end method


# virtual methods
.method public a(ZI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget v1, p0, Lcom/huawei/hms/scankit/p/ae;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/huawei/hms/scankit/p/ae;->b:I

    invoke-direct {p0, v1, p1}, Lcom/huawei/hms/scankit/p/ae;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)[B
    .locals 5

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ae;->a:[B

    array-length v0, v0

    mul-int v0, v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/ae;->a:[B

    div-int v4, v2, p1

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
