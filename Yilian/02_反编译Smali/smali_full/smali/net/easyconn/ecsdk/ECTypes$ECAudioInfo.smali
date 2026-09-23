.class public Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECAudioInfo"
.end annotation


# instance fields
.field public channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

.field public format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

.field public sampleRate:I


# direct methods
.method public constructor <init>(ILnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sampleRate="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
