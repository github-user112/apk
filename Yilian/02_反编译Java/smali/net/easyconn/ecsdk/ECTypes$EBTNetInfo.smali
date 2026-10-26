.class public Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EBTNetInfo"
.end annotation


# static fields
.field public static final EBT_BUILD_NET_WIFI_MODE_AP_ACCESS_INTERNET:I = 0x2

.field public static final EBT_BUILD_NET_WIFI_MODE_AP_CUSTOMIZED:I = 0x1

.field public static final EBT_BUILD_NET_WIFI_MODE_DEFAULE:I = 0x0

.field public static final EBT_BUILD_NET_WIFI_MODE_P2P:I = 0x8


# instance fields
.field public auth:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public mode:I

.field public name:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->pwd:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->auth:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->mac:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->mode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->ssid:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->pwd:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->auth:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->mac:Ljava/lang/String;

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->name:Ljava/lang/String;

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->mode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, " ssid = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pwd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " auth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->auth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/easyconn/ecsdk/ECTypes$EBTNetInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
