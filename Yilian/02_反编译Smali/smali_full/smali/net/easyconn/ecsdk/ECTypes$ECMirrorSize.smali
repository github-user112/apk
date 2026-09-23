.class public Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMirrorSize"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;->width:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;->width:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorSize;->height:I

    return-void
.end method
