.class public final enum Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScanBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCAN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum ALL_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum AZTEC_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODABAR_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODE128_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODE39_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODE93_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum DATAMATRIX_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum EAN13_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum EAN8_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum FORMAT_UNKNOWN:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum ITF14_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum PDF417_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum QRCODE_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum UPCCODE_A_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum UPCCODE_E_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;


# instance fields
.field public final scanType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->FORMAT_UNKNOWN:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "ALL_SCAN_TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ALL_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "QRCODE_SCAN_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->QRCODE_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "AZTEC_SCAN_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->AZTEC_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "DATAMATRIX_SCAN_TYPE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->DATAMATRIX_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "PDF417_SCAN_TYPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v5}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->PDF417_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "CODE39_SCAN_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v6}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE39_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "CODE93_SCAN_TYPE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v7}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE93_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "CODE128_SCAN_TYPE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v8}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE128_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "EAN13_SCAN_TYPE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v9}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN13_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "EAN8_SCAN_TYPE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v10}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN8_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "ITF14_SCAN_TYPE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v11}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ITF14_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "UPCCODE_A_SCAN_TYPE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v12}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_A_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "UPCCODE_E_SCAN_TYPE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v13}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_E_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "CODABAR_SCAN_TYPE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v14}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODABAR_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    sget-object v16, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->FORMAT_UNKNOWN:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v16, v1, v2

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ALL_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->QRCODE_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->AZTEC_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->DATAMATRIX_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->PDF417_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE39_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE93_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE128_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v10

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN13_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v11

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN8_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v12

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ITF14_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v13

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_A_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    aput-object v2, v1, v14

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_E_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

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

    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->scanType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
    .locals 1

    const-class v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
    .locals 1

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    return-object v0
.end method


# virtual methods
.method public getScanType()I
    .locals 2

    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->scanType:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public getUnKnown()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->scanType:I

    return v0
.end method
