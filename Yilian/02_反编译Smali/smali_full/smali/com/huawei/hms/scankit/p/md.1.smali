.class public final Lcom/huawei/hms/scankit/p/md;
.super Lcom/huawei/hms/scankit/p/gd;
.source ""


# static fields
.field public static final g:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "WIFI:[^:]"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/md;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/gd;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "WEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v1, "WPA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WPA2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    const-string v2, "WPA/WPA2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    const-string v2, "WPA2/WPA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v1, "SAE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public b(Lcom/huawei/hms/scankit/aiscan/common/x;)Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 14

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/md;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0, v1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "S:"

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/huawei/hms/scankit/p/gd;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "P:"

    invoke-static {v2, v0, v3, v4}, Lcom/huawei/hms/scankit/p/gd;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    const-string v5, "T:"

    invoke-static {v5, v0, v3, v4}, Lcom/huawei/hms/scankit/p/gd;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, " "

    invoke-static {v4, v2}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/md;->c(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v1, v2, v0}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)I

    move-result v7

    sget v9, Lcom/huawei/hms/ml/scan/HmsScan;->WIFI_CONNECT_INFO_FORM:I

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->g()[B

    move-result-object v10

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)[Landroid/graphics/Point;

    move-result-object v11

    new-instance v13, Lcom/huawei/hms/scankit/F;

    invoke-direct {v13, v3}, Lcom/huawei/hms/scankit/F;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcom/huawei/hms/ml/scan/HmsScan;-><init>(Ljava/lang/String;ILjava/lang/String;I[B[Landroid/graphics/Point;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;Lcom/huawei/hms/scankit/F;)V

    return-object v0

    :cond_6
    :goto_2
    return-object v2
.end method
