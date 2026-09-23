.class public Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECTouchEventData"
.end annotation


# instance fields
.field public pointX:I

.field public pointY:I

.field public slot:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointX:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointY:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->slot:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "x="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->slot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
