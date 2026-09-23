.class public Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateErrorCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECOTAUpdateErrorCode"
.end annotation


# static fields
.field public static final EC_OTA_ERROR_SOFTWARE_DOWNLOAD_FAILED_VIA_NETWORK:I = -0x1

.field public static final EC_OTA_ERROR_SOFTWARE_DOWNLOAD_FAILED_VIA_PHONE:I = -0x4

.field public static final EC_OTA_ERROR_SOFTWARE_NETWORK_UNAVAILABLE:I = -0x3

.field public static final EC_OTA_ERROR_SOFTWARE_SPACE_NOT_ENOUGH:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
