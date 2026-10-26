.class public Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECOTAUpdateSoftware"
.end annotation


# instance fields
.field public createTime:Ljava/lang/String;

.field public iconPath:Ljava/lang/String;

.field public isFullDist:I

.field public isRemote:Z

.field public md5Path:Ljava/lang/String;

.field public modifyTime:Ljava/lang/String;

.field public packagePath:Ljava/lang/String;

.field public softwareId:Ljava/lang/String;

.field public softwareName:Ljava/lang/String;

.field public softwareSize:J

.field public vcDesc:Ljava/lang/String;

.field public vcDetail:Ljava/lang/String;

.field public vcTitle:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareName:Ljava/lang/String;

    iput-wide p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareSize:J

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->versionCode:I

    iput-object p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcDesc:Ljava/lang/String;

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcTitle:Ljava/lang/String;

    iput-object p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcDetail:Ljava/lang/String;

    iput-object p9, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->createTime:Ljava/lang/String;

    iput-object p10, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->modifyTime:Ljava/lang/String;

    iput p11, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->isFullDist:I

    iput-object p12, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->packagePath:Ljava/lang/String;

    iput-object p13, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->md5Path:Ljava/lang/String;

    iput-object p14, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->iconPath:Ljava/lang/String;

    iput-boolean p15, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->isRemote:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "softwareId="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareId:Ljava/lang/String;

    const-string v3, ", softwareName="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareName:Ljava/lang/String;

    const-string v3, ", softwareSize="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->softwareSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", vcDesc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcDesc:Ljava/lang/String;

    const-string v3, ", vcTitle="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcTitle:Ljava/lang/String;

    const-string v3, ", vcDetail="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->vcDetail:Ljava/lang/String;

    const-string v3, ", createTime="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->createTime:Ljava/lang/String;

    const-string v3, ", modifyTime="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->modifyTime:Ljava/lang/String;

    const-string v3, ", isFullDist="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->isFullDist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packagePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->packagePath:Ljava/lang/String;

    const-string v3, ", md5Path="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->md5Path:Ljava/lang/String;

    const-string v3, ", iconPath="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->iconPath:Ljava/lang/String;

    const-string v3, ", isRemote="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;->isRemote:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
