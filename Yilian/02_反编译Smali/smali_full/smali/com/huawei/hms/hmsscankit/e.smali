.class public Lcom/huawei/hms/hmsscankit/e;
.super Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Stub;
.source ""


# instance fields
.field public final a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hms/hmsscankit/OnResultCallback;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/e;->a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

    iput-boolean p2, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    return-void
.end method


# virtual methods
.method public onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 5

    const-string v0, "result callback sdk continueScan"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnResultCallbackDelegat"

    invoke-static {v2, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/hms/hmsscankit/e;->b:Ljava/lang/String;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/hmsscankit/e;->b:Ljava/lang/String;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/e;->a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/OnResultCallback;->onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V

    :cond_1
    return-void
.end method
