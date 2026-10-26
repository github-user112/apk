.class public Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMirrorViewConfig"
.end annotation


# instance fields
.field public initArea:I

.field public viewAreaGroup:[Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;


# direct methods
.method public constructor <init>(I[Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;->initArea:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;->viewAreaGroup:[Lnet/easyconn/ecsdk/ECTypes$ECVideoViewArea;

    return-void
.end method
