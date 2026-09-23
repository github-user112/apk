.class public final enum Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CIPHER_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum NO_PASSWORD_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum SAE_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum WEP_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum WPA_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;


# instance fields
.field public final cipherMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v1, "SAE_MODE_TYPE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->SAE_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v1, "WEP_MODE_TYPE"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WEP_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v1, "NO_PASSWORD_MODE_TYPE"

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->NO_PASSWORD_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v1, "WPA_MODE_TYPE"

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WPA_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    sget-object v6, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->SAE_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WEP_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->NO_PASSWORD_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    aput-object v2, v1, v5

    aput-object v0, v1, v3

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->cipherMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
    .locals 1

    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
    .locals 1

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    return-object v0
.end method


# virtual methods
.method public getCipherMode()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->cipherMode:I

    return v0
.end method
