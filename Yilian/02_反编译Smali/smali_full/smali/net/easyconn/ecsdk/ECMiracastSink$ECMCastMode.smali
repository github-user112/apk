.class public Lnet/easyconn/ecsdk/ECMiracastSink$ECMCastMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECMiracastSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMCastMode"
.end annotation


# static fields
.field public static final EC_MCAST_MODE_DEFAULT:I = 0x0

.field public static final EC_MCAST_MODE_ENABLE_AUDIO:I = 0x2

.field public static final EC_MCAST_MODE_ENABLE_VIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
