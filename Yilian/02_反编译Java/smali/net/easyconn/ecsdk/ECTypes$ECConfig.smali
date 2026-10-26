.class public Lnet/easyconn/ecsdk/ECTypes$ECConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECConfig"
.end annotation


# instance fields
.field public aoaManufacturer:Ljava/lang/String;

.field public aoaModel:Ljava/lang/String;

.field public aoaUri:Ljava/lang/String;

.field public aoaVersion:Ljava/lang/String;

.field public bonjourMDNSServerPath:Ljava/lang/String;

.field public channel:I

.field public enableSockServerAuth:Z

.field public existAdbServerInSystem:Z

.field public flavor:J

.field public lightningBindApp:Z

.field public packageName:Ljava/lang/String;

.field public phoneAppMainActivity:Ljava/lang/String;

.field public phoneAppPackage:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public thirdChannel:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->channel:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->flavor:J

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppPackage:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppMainActivity:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->lightningBindApp:Z

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->signature:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->bonjourMDNSServerPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->existAdbServerInSystem:Z

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->enableSockServerAuth:Z

    return-void
.end method

.method public constructor <init>(I[IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->channel:I

    iput-wide p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->flavor:J

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppPackage:Ljava/lang/String;

    iput-object p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppMainActivity:Ljava/lang/String;

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    iput-object p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    iput-object p9, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    iput-object p10, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    iput-boolean p11, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->lightningBindApp:Z

    iput-object p12, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->signature:Ljava/lang/String;

    iput-object p13, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->thirdChannel:[I

    const-string p1, ""

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->bonjourMDNSServerPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->existAdbServerInSystem:Z

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->enableSockServerAuth:Z

    return-void
.end method

.method public constructor <init>(I[IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->channel:I

    iput-wide p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->flavor:J

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppPackage:Ljava/lang/String;

    iput-object p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppMainActivity:Ljava/lang/String;

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    iput-object p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    iput-object p9, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    iput-object p10, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    iput-boolean p11, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->lightningBindApp:Z

    iput-object p12, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->signature:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->thirdChannel:[I

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->bonjourMDNSServerPath:Ljava/lang/String;

    iput-boolean p13, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->existAdbServerInSystem:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->enableSockServerAuth:Z

    return-void
.end method
