.class public final Lcom/huawei/hms/scankit/p/cd;
.super Lcom/huawei/hms/scankit/p/gd;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/gd;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/huawei/hms/scankit/aiscan/common/x;)Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 12

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)I

    move-result v0

    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/x;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const-string v0, "978"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "979"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)I

    move-result v5

    sget v7, Lcom/huawei/hms/ml/scan/HmsScan;->ISBN_NUMBER_FORM:I

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->g()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)[Landroid/graphics/Point;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/huawei/hms/ml/scan/HmsScan;-><init>(Ljava/lang/String;ILjava/lang/String;I[B[Landroid/graphics/Point;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;Lcom/huawei/hms/scankit/F;)V

    return-object v0
.end method
