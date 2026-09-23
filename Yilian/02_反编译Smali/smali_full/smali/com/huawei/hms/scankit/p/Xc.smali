.class public final Lcom/huawei/hms/scankit/p/Xc;
.super Lcom/huawei/hms/scankit/p/gd;
.source ""


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(?:MEBKM:)([\\s\\S]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/Xc;->g:Ljava/util/regex/Pattern;

    const-string v0, "(?:http:/?(?!/)|http//)([\\s\\S]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/Xc;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/gd;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/gd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public b(Lcom/huawei/hms/scankit/aiscan/common/x;)Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 13

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/Xc;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(?<=(?<!\\\\)(?:\\\\\\\\){0,100});"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "TITLE:"

    invoke-static {v0, v3}, Lcom/huawei/hms/scankit/p/Xc;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "URL:"

    invoke-static {v0, v4}, Lcom/huawei/hms/scankit/p/Xc;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/gd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    sget-object v2, Lcom/huawei/hms/scankit/p/Xc;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v7, v0

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;

    invoke-direct {v0, v3, v7}, Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScan;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)I

    move-result v6

    sget v8, Lcom/huawei/hms/ml/scan/HmsScan;->URL_FORM:I

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->g()[B

    move-result-object v9

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)[Landroid/graphics/Point;

    move-result-object v10

    new-instance v12, Lcom/huawei/hms/scankit/F;

    invoke-direct {v12, v0}, Lcom/huawei/hms/scankit/F;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/huawei/hms/ml/scan/HmsScan;-><init>(Ljava/lang/String;ILjava/lang/String;I[B[Landroid/graphics/Point;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;Lcom/huawei/hms/scankit/F;)V

    return-object v1
.end method
