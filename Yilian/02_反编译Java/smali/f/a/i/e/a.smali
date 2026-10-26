.class public abstract Lf/a/i/e/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTH_LICENSE_MODE_AUTO:I = 0x1

.field public static final AUTH_LICENSE_MODE_PHONE:I = 0x0

.field public static final AUTH_LICENSE_MODE_PHONEAUTO:I = 0x2

.field public static final AUTH_LICENSE_MODE_QR:I = 0x3


# instance fields
.field public ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

.field public mContext:Landroid/content/Context;

.field public options:Lnet/easyconn/ecsdk/ECTypes$ECOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/i/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->d(Landroid/content/Context;)Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    move-result-object p1

    iput-object p1, p0, Lf/a/i/e/a;->options:Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    iget-object p1, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    if-nez p1, :cond_0

    new-instance p1, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    invoke-direct {p1}, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;-><init>()V

    iput-object p1, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getEcAuthentication()Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;
.end method

.method public abstract getEcAuthentication(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;
.end method

.method public abstract getLicensePwd()Ljava/lang/String;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method
