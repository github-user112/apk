.class public Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECAudioCardDevice"
.end annotation


# instance fields
.field public card:I

.field public device:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;->card:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;->device:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;->card:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioCardDevice;->device:I

    return-void
.end method
