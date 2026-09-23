.class public Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelPhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
    }
.end annotation


# static fields
.field public static final CELLPHONE_NUMBER_USE_TYPE:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAX_USE_TYPE:I

.field public static final OFFICE_USE_TYPE:I

.field public static final OTHER_USE_TYPE:I

.field public static final RESIDENTIAL_USE_TYPE:I


# instance fields
.field public telPhoneNumber:Ljava/lang/String;

.field public useType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->getUseType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->OTHER_USE_TYPE:I

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OFFICE_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->getUseType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->OFFICE_USE_TYPE:I

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->getUseType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->RESIDENTIAL_USE_TYPE:I

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->FAX_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->getUseType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->FAX_USE_TYPE:I

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->CELLPHONE_NUMBER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->getUseType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->CELLPHONE_NUMBER_USE_TYPE:I

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->useType:I

    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->telPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->telPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->useType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTelPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->telPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUseType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->useType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->telPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->useType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
