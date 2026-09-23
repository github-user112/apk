.class public Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECGPSInfo"
.end annotation


# instance fields
.field public altitude:D

.field public course:D

.field public latitude:D

.field public longitude:D

.field public speed:D

.field public status:Z

.field public time:J


# direct methods
.method public constructor <init>(ZDDDJDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->status:Z

    iput-wide p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->altitude:D

    iput-wide p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->speed:D

    iput-wide p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->course:D

    iput-wide p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->time:J

    iput-wide p10, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->longitude:D

    iput-wide p12, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->latitude:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "status="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->speed:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", course="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->course:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
