.class public Lnet/easyconn/ecsdk/ECTypes$ECLogModule;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECLogModule"
.end annotation


# static fields
.field public static final EC_LOG_MODULE_ADB:I = 0x2

.field public static final EC_LOG_MODULE_APP:I = 0x10

.field public static final EC_LOG_MODULE_MCAST:I = 0x40

.field public static final EC_LOG_MODULE_MDNS:I = 0x20

.field public static final EC_LOG_MODULE_MUX:I = 0x4

.field public static final EC_LOG_MODULE_RTP:I = 0x80

.field public static final EC_LOG_MODULE_SDK:I = 0x1

.field public static final EC_LOG_MODULE_TS:I = 0x100

.field public static final EC_LOG_MODULE_UPNP:I = 0x200

.field public static final EC_LOG_MODULE_USB:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
