.class public Lnet/easyconn/ecsdk/ECTypes$ECVirtualInstStateData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECVirtualInstStateData"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public reason:I

.field public state:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVirtualInstStateData;->state:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECVirtualInstStateData;->reason:I

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECVirtualInstStateData;->msg:Ljava/lang/String;

    return-void
.end method
