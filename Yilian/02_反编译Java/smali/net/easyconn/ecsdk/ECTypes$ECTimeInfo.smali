.class public Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECTimeInfo"
.end annotation


# instance fields
.field public dateTime:Ljava/lang/String;

.field public gmtTime:J

.field public localTime:J

.field public timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->gmtTime:J

    iput-wide v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->localTime:J

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->timeZone:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->gmtTime:J

    iput-wide p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->localTime:J

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->gmtTime:J

    iput-wide p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->localTime:J

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->timeZone:Ljava/lang/String;

    iput-object p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->dateTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "gmtTime="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->gmtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->localTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
