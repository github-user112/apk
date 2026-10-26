.class public Lcom/huawei/hms/hmsscankit/DetailRect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/hmsscankit/DetailRect;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOMED_FLAG:Ljava/lang/String; = "CustomedFlag"

.field public static final DEEPLINK_BACK_COLOR:Ljava/lang/String; = "DeepLinkColor"

.field public static final DEEPLINK_JUMP_FLAG:Ljava/lang/String; = "DeepLinkJumpFlag"

.field public static final DEEPLINK_VALUE:Ljava/lang/String; = "DeepLinkValue"

.field public static final DEFALT_HMS_SCAN_VERSIONU:I = 0x0

.field public static final FORMAT_FLAG:Ljava/lang/String; = "FormatValue"

.field public static HMSSCAN_SDK_VALUE:I = 0x3

.field public static final PHOTO_MODE:Ljava/lang/String; = "PhotoMode"

.field public static final RECT_FLAG:Ljava/lang/String; = "RectValue"

.field public static final RETURN_BITMAP:Ljava/lang/String; = "return_bitmap"

.field public static final SCAN_LOCAL_DECODER:Ljava/lang/String; = "localdecoder"

.field public static final SCAN_NEW_UI:Ljava/lang/String; = "localui"

.field public static final SCAN_OFFSCEEN_FLAG:Ljava/lang/String; = "ScanOffSceenFlag"

.field public static final TYPE_TRANS:Ljava/lang/String; = "TransType"

.field public static final VALUE_HMS_SCAN_VERSION:I = 0x3


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/hmsscankit/a;

    invoke-direct {v0}, Lcom/huawei/hms/hmsscankit/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/hmsscankit/DetailRect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/hmsscankit/DetailRect;->width:I

    iput p2, p0, Lcom/huawei/hms/hmsscankit/DetailRect;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/hmsscankit/DetailRect;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/hmsscankit/DetailRect;->height:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/huawei/hms/hmsscankit/DetailRect;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/huawei/hms/hmsscankit/DetailRect;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
