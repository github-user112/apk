.class public Lnet/easyconn/license/AppLicenseManager;
.super Lf/a/i/e/a;
.source ""


# static fields
.field public static final AUTH_FAIL_ERROR_CODE_UNEXPECTED_UUID:I = -0x65

.field public static final ERROR_PASSWORD:Ljava/lang/String; = "error_password"


# instance fields
.field public mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/a/i/e/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/easyconn/license/AppLicenseManager;->mUuid:Ljava/lang/String;

    return-void
.end method

.method private generateAuthCheckCode()I
    .locals 5

    iget-object v0, p0, Lf/a/i/e/a;->mContext:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "AUTH_LICENSE_MODE"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/a/i/e/a;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "ENABLE_DOWNLOAD_LICENSE_VIA_CAR_NETWORK"

    if-nez v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLicenseManager generateAuthCheckCode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , enableDownloadLicenseViaCarNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :cond_4
    :goto_3
    return v3
.end method


# virtual methods
.method public getEcAuthentication()Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;
    .locals 4

    const-string v0, "getEcAuthentication start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    invoke-virtual {p0}, Lnet/easyconn/license/AppLicenseManager;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    invoke-virtual {p0}, Lnet/easyconn/license/AppLicenseManager;->getLicensePwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->pwd:Ljava/lang/String;

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    invoke-direct {p0}, Lnet/easyconn/license/AppLicenseManager;->generateAuthCheckCode()I

    move-result v1

    iput v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->authCheckMode:I

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    const-string v1, "tocfree."

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "7.0.1-9011d330b-202404121051"

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->versionName:Ljava/lang/String;

    iget-object v0, p0, Lf/a/i/e/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    const-string v2, "easy_conn"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v3, ","

    invoke-static {v3, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->clientSet:Ljava/lang/String;

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    iget-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    sput-object v1, Ld/s/y;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getEcAuthentication(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;
    .locals 3

    const-string v0, "getEcAuthentication start, has uuid = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/easyconn/license/AppLicenseManager;->mUuid:Ljava/lang/String;

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    iput-object p1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/easyconn/license/AppLicenseManager;->getLicensePwd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->pwd:Ljava/lang/String;

    iget-object p1, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    invoke-direct {p0}, Lnet/easyconn/license/AppLicenseManager;->generateAuthCheckCode()I

    move-result v0

    iput v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->authCheckMode:I

    iget-object p1, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    const-string v0, "tocfree."

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "7.0.1-9011d330b-202404121051"

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->versionName:Ljava/lang/String;

    iget-object p1, p0, Lf/a/i/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    const-string v1, "easy_conn"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string v2, ","

    invoke-static {v2, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->clientSet:Ljava/lang/String;

    iget-object p1, p0, Lf/a/i/e/a;->ecAuthentication:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;->uuid:Ljava/lang/String;

    sput-object v0, Ld/s/y;->m:Ljava/lang/String;

    return-object p1
.end method

.method public getLicensePwd()Ljava/lang/String;
    .locals 1

    const-string v0, "ASDF!@#$asdf1234"

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/easyconn/license/AppLicenseManager;->mUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/license/AppLicenseManager;->mUuid:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
