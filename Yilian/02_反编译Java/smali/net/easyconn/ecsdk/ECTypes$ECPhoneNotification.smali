.class public Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECPhoneNotification"
.end annotation


# instance fields
.field public appIcon:[B

.field public appIconFormat:I

.field public appIconLen:I

.field public appName:Ljava/lang/String;

.field public context:Ljava/lang/String;

.field public dateTime:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->appName:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->title:Ljava/lang/String;

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->context:Ljava/lang/String;

    iput-object p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->dateTime:Ljava/lang/String;

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->appIconFormat:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->appIcon:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, " appName = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
