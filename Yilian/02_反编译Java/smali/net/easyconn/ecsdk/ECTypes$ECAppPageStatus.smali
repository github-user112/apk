.class public Lnet/easyconn/ecsdk/ECTypes$ECAppPageStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECAppPageStatus"
.end annotation


# static fields
.field public static final EC_APP_PAGE_STATUS_APP_INACTIVE:I = 0x8

.field public static final EC_APP_PAGE_STATUS_CLOSE:I = 0x2

.field public static final EC_APP_PAGE_STATUS_FLOAT_WINDOW_AUTH_FAIL:I = 0x2000

.field public static final EC_APP_PAGE_STATUS_FLOAT_WINDOW_AUTH_PENDING:I = 0x4

.field public static final EC_APP_PAGE_STATUS_MIRROR_AUTH_FAIL:I = 0x4000

.field public static final EC_APP_PAGE_STATUS_MIRROR_AUTH_PENDING:I = 0x10

.field public static final EC_APP_PAGE_STATUS_OPEN:I = 0x1

.field public static final EC_APP_PAGE_STATUS_PHONE_SPACE_EARLY_WARNING:I = 0x40

.field public static final EC_APP_PAGE_STATUS_PHONE_SPACE_NOT_ENOUGHT:I = 0x20

.field public static final EC_APP_PAGE_STATUS_REQUEST_PERMISSION_CAMERA:I = 0x400

.field public static final EC_APP_PAGE_STATUS_REQUEST_PERMISSION_LOCATION:I = 0x80

.field public static final EC_APP_PAGE_STATUS_REQUEST_PERMISSION_MEDIA_APPLE_MUSIC:I = 0x1000

.field public static final EC_APP_PAGE_STATUS_REQUEST_PERMISSION_POWER_SAVING:I = 0x800

.field public static final EC_APP_PAGE_STATUS_REQUEST_PERMISSION_RECODING:I = 0x100

.field public static final EC_APP_PAGE_STATUS_REQUEST_PERMISSION_STORAGE:I = 0x200

.field public static final EC_APP_PAGE_STATUS_UNKNOW:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
