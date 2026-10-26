.class public Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECCustomProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECCustomData"
.end annotation


# instance fields
.field public cmdType:I

.field public data:[B

.field public reqSeq:I

.field public rspSeq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->cmdType:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->reqSeq:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->rspSeq:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->data:[B

    return-void
.end method


# virtual methods
.method public getCmdType()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->cmdType:I

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->data:[B

    return-object v0
.end method

.method public getReqSeq()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->reqSeq:I

    return v0
.end method

.method public getRspSeq()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->rspSeq:I

    return v0
.end method

.method public setCmdType(I)V
    .locals 0

    iput p1, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->cmdType:I

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmdType="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->cmdType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reqSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->reqSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rspSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->rspSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->data:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
