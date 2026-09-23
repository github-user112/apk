.class public Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECCarCmd"
.end annotation


# instance fields
.field public cmd:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public pauseMusic:Z

.field public responser:I

.field public thresholdLevel:I

.field public type:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

.field public vrText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;->EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->type:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->id:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->cmd:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->vrText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->pauseMusic:Z

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->responser:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->thresholdLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->id:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->cmd:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->vrText:Ljava/lang/String;

    iput-boolean p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->pauseMusic:Z

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->responser:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->thresholdLevel:I

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;->EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->type:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->type:Lnet/easyconn/ecsdk/ECTypes$ECCarCmdEFFECTType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->id:Ljava/lang/String;

    const-string v3, ",cmd="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->cmd:Ljava/lang/String;

    const-string v3, ",vrText="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->vrText:Ljava/lang/String;

    const-string v3, ",pauseMusic="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->pauseMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",responser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->responser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",thresholdLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->thresholdLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
