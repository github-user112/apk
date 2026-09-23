.class public Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECNavigationHudInfo"
.end annotation


# instance fields
.field public arriveTime:J

.field public arriveTimeZone:Ljava/lang/String;

.field public cameraDistance:I

.field public cameraSpeed:I

.field public cameraType:Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;

.field public carDirection:I

.field public currentRoad:Ljava/lang/String;

.field public destinationRemainingDistance:I

.field public destinationRemainingTime:I

.field public naviIcon:Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;

.field public nextRoad:Ljava/lang/String;

.field public roadRemainingDistance:I

.field public roadRemainingTime:I

.field public status:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;Ljava/lang/String;ILnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;IILnet/easyconn/ecsdk/ECTypes$ECNaviIcon;Ljava/lang/String;IIIIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->status:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->currentRoad:Ljava/lang/String;

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->carDirection:I

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraType:Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraSpeed:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraDistance:I

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->naviIcon:Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;

    iput-object p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->nextRoad:Ljava/lang/String;

    iput p9, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->roadRemainingDistance:I

    iput p10, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->roadRemainingTime:I

    iput p11, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->destinationRemainingDistance:I

    iput p12, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->destinationRemainingTime:I

    iput-wide p13, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTime:J

    iput-object p15, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTimeZone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->status:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",currentRoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->currentRoad:Ljava/lang/String;

    const-string v3, ",carDirection="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->carDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",cameraType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraType:Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",cameraSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",cameraDistance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",naviIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->naviIcon:Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",nextRoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->nextRoad:Ljava/lang/String;

    const-string v3, ",roadRemainingDistance="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->roadRemainingDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",roadRemainingTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->roadRemainingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",destinationRemainingDistance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->destinationRemainingDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",destinationRemainingTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->destinationRemainingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",arriveTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",arriveTimeZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
