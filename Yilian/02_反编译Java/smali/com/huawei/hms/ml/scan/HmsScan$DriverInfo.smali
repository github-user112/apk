.class public Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;
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
    name = "DriverInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avenue:Ljava/lang/String;

.field public certificateNumber:Ljava/lang/String;

.field public certificateType:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public countryOfIssue:Ljava/lang/String;

.field public dateOfBirth:Ljava/lang/String;

.field public dateOfExpire:Ljava/lang/String;

.field public dateOfIssue:Ljava/lang/String;

.field public eyeColor:Ljava/lang/String;

.field public familyName:Ljava/lang/String;

.field public givenName:Ljava/lang/String;

.field public hairColor:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public middleName:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public sex:Ljava/lang/String;

.field public weightRange:Ljava/lang/String;

.field public zipCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->city:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->province:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->avenue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->zipCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfExpire:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->givenName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->sex:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfIssue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->countryOfIssue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->familyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->middleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->eyeColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->hairColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->height:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->weightRange:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateType:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->givenName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->middleName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->familyName:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->sex:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfBirth:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->avenue:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->city:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->province:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->zipCode:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateNumber:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->countryOfIssue:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfIssue:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfExpire:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->eyeColor:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->hairColor:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->height:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->weightRange:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvenue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->avenue:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateType:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryOfIssue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->countryOfIssue:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfExpire()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfIssue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfIssue:Ljava/lang/String;

    return-object v0
.end method

.method public getEyeColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->eyeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public getHairColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->hairColor:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getWeightRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->weightRange:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->avenue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->zipCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfExpire:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->givenName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->sex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->dateOfIssue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->countryOfIssue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->familyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->certificateNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->middleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->eyeColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->hairColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->height:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$DriverInfo;->weightRange:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
