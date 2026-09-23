.class public final enum Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum CELLPHONE_NUMBER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum FAX_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum OFFICE_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;


# instance fields
.field public final useType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v1, "OTHER_USE_TYPE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v1, "RESIDENTIAL_USE_TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v1, "FAX_USE_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->FAX_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v1, "CELLPHONE_NUMBER_USE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->CELLPHONE_NUMBER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v1, "OFFICE_USE_TYPE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OFFICE_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    sget-object v7, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    aput-object v7, v1, v2

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->FAX_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->CELLPHONE_NUMBER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

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

    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->useType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
    .locals 1

    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
    .locals 1

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getUseType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->useType:I

    return v0
.end method
