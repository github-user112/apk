.class public Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECVideoInfo"
.end annotation


# instance fields
.field public direction:I

.field public mirrorHeight:I

.field public mirrorWidth:I

.field public realHeight:I

.field public realWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorWidth:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorHeight:I

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->direction:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorWidth:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorHeight:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->direction:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "realWidth="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",realHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mirrorWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mirrorHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
