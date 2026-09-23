.class public Lcom/huawei/hms/scankit/p/Zc;
.super Lcom/huawei/hms/scankit/p/gd;
.source ""


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/Yc;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Yc;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Zc;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/gd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Zc;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;
    .locals 38

    move-object/from16 v0, p1

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const/4 v9, 0x6

    aput-object v3, v1, v9

    const/4 v10, 0x7

    aput-object v3, v1, v10

    const/16 v11, 0x8

    aput-object v3, v1, v11

    const/16 v12, 0x9

    aput-object v3, v1, v12

    const/16 v13, 0xa

    aput-object v3, v1, v13

    const/16 v14, 0xb

    aput-object v3, v1, v14

    const/16 v15, 0xc

    aput-object v3, v1, v15

    const/16 v16, 0xd

    aput-object v3, v1, v16

    aput-object p2, v1, v2

    array-length v3, v0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_0
    const/16 v18, 0x0

    if-ge v15, v3, :cond_2

    aget-object v14, v0, v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v13, v6, :cond_0

    return-object v18

    :cond_0
    sget-object v13, Lcom/huawei/hms/scankit/p/Zc;->g:Ljava/util/List;

    invoke-virtual {v14, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v1, v12

    const/16 v17, 0x1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0x9

    const/16 v13, 0xa

    const/16 v14, 0xb

    goto :goto_0

    :cond_2
    if-eqz v17, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v1, v6

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p0

    iput-object v0, v3, Lcom/huawei/hms/scankit/p/Zc;->h:Ljava/lang/String;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;

    move-object/from16 v19, v0

    aget-object v20, v1, v2

    aget-object v21, v1, v4

    aget-object v22, v1, v5

    aget-object v23, v1, v6

    aget-object v24, v1, v7

    aget-object v25, v1, v8

    aget-object v26, v1, v9

    aget-object v27, v1, v10

    aget-object v28, v1, v11

    const/16 v2, 0x9

    aget-object v29, v1, v2

    const/16 v2, 0xa

    aget-object v30, v1, v2

    const/16 v2, 0xb

    aget-object v31, v1, v2

    const/16 v2, 0xc

    aget-object v32, v1, v2

    aget-object v33, v1, v16

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v19 .. v37}, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    move-object/from16 v3, p0

    return-object v18
.end method

.method public b(Lcom/huawei/hms/scankit/aiscan/common/x;)Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 12

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x22

    if-le v1, v3, :cond_1

    const/4 v1, 0x4

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ANSI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    const/16 v5, 0x17

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/huawei/hms/scankit/p/Zc;->a([Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScan;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)I

    move-result v5

    iget-object v6, p0, Lcom/huawei/hms/scankit/p/Zc;->h:Ljava/lang/String;

    sget v7, Lcom/huawei/hms/ml/scan/HmsScan;->DRIVER_INFO_FORM:I

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->g()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)[Landroid/graphics/Point;

    move-result-object v9

    new-instance v11, Lcom/huawei/hms/scankit/F;

    invoke-direct {v11, v0}, Lcom/huawei/hms/scankit/F;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/huawei/hms/ml/scan/HmsScan;-><init>(Ljava/lang/String;ILjava/lang/String;I[B[Landroid/graphics/Point;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;Lcom/huawei/hms/scankit/F;)V

    return-object v1

    :cond_1
    return-object v2
.end method
