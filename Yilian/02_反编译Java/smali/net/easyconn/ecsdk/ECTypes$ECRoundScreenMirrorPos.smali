.class public Lnet/easyconn/ecsdk/ECTypes$ECRoundScreenMirrorPos;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECRoundScreenMirrorPos"
.end annotation


# instance fields
.field public mirrorOffsetX:I

.field public mirrorOffsetY:I

.field public screenRadius:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECRoundScreenMirrorPos;->screenRadius:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECRoundScreenMirrorPos;->mirrorOffsetX:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECRoundScreenMirrorPos;->mirrorOffsetY:I

    return-void
.end method
