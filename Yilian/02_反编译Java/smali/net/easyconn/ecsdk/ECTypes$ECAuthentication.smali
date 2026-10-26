.class public Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECAuthentication"
.end annotation


# instance fields
.field public authCheckMode:I

.field public clientSet:Ljava/lang/String;

.field public forceUpdateClientSet:Z

.field public pwd:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->pwd:Ljava/lang/String;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->versionName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->versionCode:I

    iput v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->authCheckMode:I

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->clientSet:Ljava/lang/String;

    iput-boolean v1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->forceUpdateClientSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->pwd:Ljava/lang/String;

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->authCheckMode:I

    return-void
.end method
