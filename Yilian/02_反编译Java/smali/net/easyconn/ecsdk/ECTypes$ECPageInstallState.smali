.class public Lnet/easyconn/ecsdk/ECTypes$ECPageInstallState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECPageInstallState"
.end annotation


# static fields
.field public static final EC_PAGE_INSTALL_STATE_CAN_UPDATE:I = 0x5

.field public static final EC_PAGE_INSTALL_STATE_DEFAULT:I = 0x0

.field public static final EC_PAGE_INSTALL_STATE_DOWNLOADED:I = 0xe

.field public static final EC_PAGE_INSTALL_STATE_DOWNLOADING:I = 0xa

.field public static final EC_PAGE_INSTALL_STATE_INSTALLED:I = 0x3

.field public static final EC_PAGE_INSTALL_STATE_INSTALLING:I = 0x2

.field public static final EC_PAGE_INSTALL_STATE_INSTALL_FAIL:I = 0x4

.field public static final EC_PAGE_INSTALL_STATE_PAGE_NOT_STARTED:I = 0x1000

.field public static final EC_PAGE_INSTALL_STATE_PAGE_STARTED:I = 0x4000

.field public static final EC_PAGE_INSTALL_STATE_PAGE_STARTING:I = 0x2000

.field public static final EC_PAGE_INSTALL_STATE_PHONE_NO_ENOUGH_SPACE:I = 0xd

.field public static final EC_PAGE_INSTALL_STATE_PHONE_UNINSTALLED:I = 0xb

.field public static final EC_PAGE_INSTALL_STATE_TO_BE_INSTALLED:I = 0xc

.field public static final EC_PAGE_INSTALL_STATE_UNINSTALLED:I = 0x1

.field public static final EC_PAGE_INSTALL_STATE_UNINSTALLING:I = 0x8

.field public static final EC_PAGE_INSTALL_STATE_UNINSTALLING_FAIL:I = 0x9

.field public static final EC_PAGE_INSTALL_STATE_UPDATE_FAIL:I = 0x7

.field public static final EC_PAGE_INSTALL_STATE_UPDATING:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
