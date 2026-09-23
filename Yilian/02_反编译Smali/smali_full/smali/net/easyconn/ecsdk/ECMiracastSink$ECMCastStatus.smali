.class public Lnet/easyconn/ecsdk/ECMiracastSink$ECMCastStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECMiracastSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMCastStatus"
.end annotation


# static fields
.field public static final EC_MCAST_STATUS_CONNECT_FAIL:I = 0x5

.field public static final EC_MCAST_STATUS_MESSAGE_MAX:I = 0x270f

.field public static final EC_MCAST_STATUS_MESSAGE_NETWORK_BAD:I = 0x3

.field public static final EC_MCAST_STATUS_MESSAGE_NETWORK_GOOD:I = 0x4

.field public static final EC_MCAST_STATUS_MESSAGE_TRANSPORT_CONNECTED:I = 0x0

.field public static final EC_MCAST_STATUS_MESSAGE_TRANSPORT_DISCONNECTED:I = 0x1

.field public static final EC_MCAST_STATUS_MESSAGE_TRANSPORT_TEARDOWN:I = 0x2

.field public static final EC_MCAST_STATUS_MESSAGE_TRANSPORT_UNKNOW_ERROR:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
