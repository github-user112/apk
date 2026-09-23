.class public Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;,
        Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;
    }
.end annotation


# static fields
.field public static final TYPE_BUILD_BITMAP_BACKCOLOR:Ljava/lang/String; = "BitmapBackColor"

.field public static final TYPE_BUILD_BITMAP_COLOR:Ljava/lang/String; = "BitmapColor"

.field public static final TYPE_BUILD_BITMAP_CONTENT:Ljava/lang/String; = "BitmapContent"

.field public static final TYPE_BUILD_BITMAP_FOTMAT:Ljava/lang/String; = "BitmapFormat"

.field public static final TYPE_BUILD_BITMAP_HEIGHT:Ljava/lang/String; = "BitmapHeight"

.field public static final TYPE_BUILD_BITMAP_MARGIN:Ljava/lang/String; = "BitmapMargin"

.field public static final TYPE_BUILD_BITMAP_WIDTH:Ljava/lang/String; = "BitmapWidth"


# instance fields
.field public final QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

.field public final bimapColor:I

.field public final bitmapBackgroundColor:I

.field public final logoBitmap:Landroid/graphics/Bitmap;

.field public final margin:I


# direct methods
.method public constructor <init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->margin:I

    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bitmapBackgroundColor:I

    iput p2, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bimapColor:I

    iput-object p4, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->QRErrorCorrection:Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;

    iput-object p5, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->logoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;-><init>(IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption$ErrorCorrectionLevel;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{"

    const-string v1, "margin:"

    invoke-static {v0, v1}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bitmapBackgroundColor:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bitmapBackgroundColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bimapColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->bimapColor:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/a/c/a/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
