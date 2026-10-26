.class public Lnet/easyconn/ecsdk/ECTypes$ECMicFeature;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMicFeature"
.end annotation


# static fields
.field public static final EC_MIC_SUPPORT_ECHO_CANCELLATION:I = 0x1

.field public static final EC_MIC_SUPPORT_ECHO_CANCELLATION_UNKNOWN:I = 0x0

.field public static final EC_MIC_SUPPORT_ECHO_CANCELLATION_VIA_PHONE:I = 0x2

.field public static final EC_MIC_SUPPORT_LEFT_CHANNEL_RECORD:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
