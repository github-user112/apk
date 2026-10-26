.class public Lnet/easyconn/ecsdk/ECTypes$ECQrAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECQrAction"
.end annotation


# static fields
.field public static final EC_QR_ACTION_BLE:I = 0x80

.field public static final EC_QR_ACTION_BT:I = 0x40

.field public static final EC_QR_ACTION_DEFAULT:I = 0x0

.field public static final EC_QR_ACTION_USB_ANDROID:I = 0x10

.field public static final EC_QR_ACTION_USB_IPHONE:I = 0x20

.field public static final EC_QR_ACTION_WIFI_AP_MODE_ACCESS_INTERNET:I = 0x2

.field public static final EC_QR_ACTION_WIFI_AP_MODE_CUSTOMIZED:I = 0x1

.field public static final EC_QR_ACTION_WIFI_P2P_MODE:I = 0x8

.field public static final EC_QR_ACTION_WIFI_STATION_MODE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
