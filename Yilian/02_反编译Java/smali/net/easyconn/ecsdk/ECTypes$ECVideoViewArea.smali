.class public Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECVideoViewArea"
.end annotation


# instance fields
.field public height:I

.field public index:I

.field public originX:I

.field public originY:I

.field public present:I

.field public sHeight:I

.field public sOriginX:I

.field public sOriginY:I

.field public sPresent:I

.field public sWidth:I

.field public width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->index:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->present:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->originX:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->originY:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->width:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->height:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sHeight:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sWidth:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sOriginY:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sOriginX:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sPresent:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->index:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->present:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->originX:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->originY:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->width:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->height:I

    iput p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sPresent:I

    iput p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sOriginX:I

    iput p9, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sOriginY:I

    iput p10, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sWidth:I

    iput p11, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;->sHeight:I

    return-void
.end method
