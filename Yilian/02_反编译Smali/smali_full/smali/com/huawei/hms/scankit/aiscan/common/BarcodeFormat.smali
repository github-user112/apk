.class public final enum Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum n:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum o:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final synthetic p:[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "CODABAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "CODE_39"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "CODE_93"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "CODE_128"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "DATA_MATRIX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "EAN_8"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "EAN_13"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "ITF"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "PDF_417"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "QR_CODE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "UPC_A"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "UPC_E"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "UPC_EAN_EXTENSION"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->n:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "NONE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->o:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    sget-object v16, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v16, v1, v2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v10

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v11

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v12

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v13

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    aput-object v2, v1, v14

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->n:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->p:[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/b;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/b;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->p:[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
