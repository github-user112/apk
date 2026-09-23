.class public Lnet/easyconn/ecsdk/ECTypes$ECMInstBaseInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMInstBaseInfo"
.end annotation


# instance fields
.field public capaOilFlag:Z

.field public capaOilPercent:I

.field public gear:I

.field public gearFlag:Z

.field public rpm:I

.field public rpmFlag:Z

.field public speed:I

.field public speedFlag:Z

.field public tempLiquid:I

.field public tempWater:I

.field public tempWaterLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
