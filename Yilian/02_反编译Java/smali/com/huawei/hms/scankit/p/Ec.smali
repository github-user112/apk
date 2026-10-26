.class public final Lcom/huawei/hms/scankit/p/Ec;
.super Landroid/util/SparseArray;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->ARTICLE_NUMBER_FORM:I

    const-string v1, "ARTICLE_NUMBER"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->EMAIL_CONTENT_FORM:I

    const-string v1, "EMAIL_CONTENT"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->TEL_PHONE_NUMBER_FORM:I

    const-string v1, "TEL_PHONE_NUMBER"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->PURE_TEXT_FORM:I

    const-string v1, "PURE_TEXT"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->SMS_FORM:I

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->URL_FORM:I

    const-string v1, "URL"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->WIFI_CONNECT_INFO_FORM:I

    const-string v1, "WIFI_CONNECT_INFO"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->EVENT_INFO_FORM:I

    const-string v1, "EVENT_INFO"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->CONTACT_DETAIL_FORM:I

    const-string v1, "CONTACT_DETAIL"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->DRIVER_INFO_FORM:I

    const-string v1, "DRIVER_INFO"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->LOCATION_COORDINATE_FORM:I

    const-string v1, "LOCATION_COORDINATE"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/huawei/hms/ml/scan/HmsScan;->ISBN_NUMBER_FORM:I

    const-string v1, "ISBN_NUMBER"

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/huawei/hms/scankit/p/Qc;->b:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
