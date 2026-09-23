.class public Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECPageInfo"
.end annotation


# instance fields
.field public iconMd5:Ljava/lang/String;

.field public installState:I

.field public name:Ljava/lang/String;

.field public packageSize:I

.field public page:I

.field public sequence:I

.field public type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    iput p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "page="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", iconMd5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", installState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", packageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
