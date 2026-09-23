.class public synthetic Lnet/easyconn/ecsdk/c$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->values()[Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/easyconn/ecsdk/c$d;->a:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_USB_ADB:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/easyconn/ecsdk/c$d;->a:[I

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDORID_USB_AOA:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v2, Lnet/easyconn/ecsdk/c$d;->a:[I

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    aput v1, v2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x4

    :try_start_3
    sget-object v2, Lnet/easyconn/ecsdk/c$d;->a:[I

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_EAP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    aput v0, v2, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v1, 0x5

    :try_start_4
    sget-object v2, Lnet/easyconn/ecsdk/c$d;->a:[I

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    aput v1, v2, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lnet/easyconn/ecsdk/c$d;->a:[I

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 v2, 0x6

    aput v2, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lnet/easyconn/ecsdk/c$d;->a:[I

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
