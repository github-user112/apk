.class public Lcom/huawei/hms/scankit/D;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Lcom/huawei/hms/scankit/D;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/D;
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/D;->a:Lcom/huawei/hms/scankit/D;

    if-nez v0, :cond_1

    const-class v0, Lcom/huawei/hms/scankit/D;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/D;->a:Lcom/huawei/hms/scankit/D;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/D;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/D;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/D;->a:Lcom/huawei/hms/scankit/D;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hms/scankit/D;->a:Lcom/huawei/hms/scankit/D;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;IZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 3

    if-eqz p4, :cond_1

    const-string v0, "multi"

    invoke-virtual {p4, v0}, Lcom/huawei/hms/scankit/p/Kc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p4, p3, v1}, Lcom/huawei/hms/scankit/p/Kc;->a(ZI)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v1, v2, :cond_2

    :cond_0
    const/16 v1, -0x3ed

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Kc$a;->a(I)Lcom/huawei/hms/scankit/p/Kc$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    new-instance v1, Lcom/huawei/hms/scankit/E;

    invoke-direct {v1, p2, p3}, Lcom/huawei/hms/scankit/E;-><init>(IZ)V

    invoke-static {p1, v1}, Lcom/huawei/hms/scankit/k;->a(Landroid/graphics/Bitmap;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/x;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-eqz p4, :cond_3

    invoke-virtual {p4, p1, v0}, Lcom/huawei/hms/scankit/p/Kc;->a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V

    :cond_3
    return-object p1
.end method

.method public a(Ljava/nio/ByteBuffer;IIIZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 8

    if-eqz p6, :cond_2

    const-string v0, "multi"

    invoke-virtual {p6, v0}, Lcom/huawei/hms/scankit/p/Kc;->a(Ljava/lang/String;)V

    mul-int v0, p3, p2

    invoke-virtual {p6, p5, v0}, Lcom/huawei/hms/scankit/p/Kc;->a(ZI)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v1

    const/16 v2, 0x1e

    if-lt p2, v2, :cond_1

    if-ge p3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    if-ge v2, v0, :cond_3

    const/16 v0, -0x3f0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, -0x3ef

    :goto_1
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/Kc$a;->a(I)Lcom/huawei/hms/scankit/p/Kc$a;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    new-instance v0, Lcom/huawei/hms/scankit/E;

    const/4 v6, 0x1

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/huawei/hms/scankit/E;-><init>(IIIZZ)V

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/k;->a(Ljava/nio/ByteBuffer;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/x;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-eqz p6, :cond_4

    invoke-virtual {p6, p1, v1}, Lcom/huawei/hms/scankit/p/Kc;->a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V

    :cond_4
    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;IZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 3

    if-eqz p4, :cond_1

    const-string v0, "single"

    invoke-virtual {p4, v0}, Lcom/huawei/hms/scankit/p/Kc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p4, p3, v1}, Lcom/huawei/hms/scankit/p/Kc;->a(ZI)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v1, v2, :cond_2

    :cond_0
    const/16 v1, -0x3ed

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Kc$a;->a(I)Lcom/huawei/hms/scankit/p/Kc$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    new-instance v1, Lcom/huawei/hms/scankit/E;

    invoke-direct {v1, p2, p3}, Lcom/huawei/hms/scankit/E;-><init>(IZ)V

    invoke-static {p1, v1}, Lcom/huawei/hms/scankit/k;->b(Landroid/graphics/Bitmap;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/x;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-eqz p4, :cond_3

    invoke-virtual {p4, p1, v0}, Lcom/huawei/hms/scankit/p/Kc;->a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V

    :cond_3
    return-object p1
.end method
