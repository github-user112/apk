.class public Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->analyzInAsyn(Lcom/huawei/hms/mlsdk/common/MLFrame;)Le/d/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/huawei/hms/ml/scan/HmsScan;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

.field public final synthetic val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;Lcom/huawei/hms/mlsdk/common/MLFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

    invoke-static {v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->access$000(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->val$frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    iget-object v2, p0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer$1;->this$0:Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;

    invoke-static {v2}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;->access$100(Lcom/huawei/hms/ml/scan/HmsScanAnalyzer;)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/hmsscankit/ScanUtil;->detectForHmsDector(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLFrame;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
