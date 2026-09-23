.class public final enum Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCorrectionLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field public static final enum H:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field public static final enum L:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field public static final enum M:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field public static final enum Q:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    const-string v1, "L"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->L:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    const-string v1, "M"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->M:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    const-string v1, "Q"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->Q:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    const-string v1, "H"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->H:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    sget-object v6, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->L:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->M:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->Q:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;
    .locals 1

    const-class v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;
    .locals 1

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    return-object v0
.end method
