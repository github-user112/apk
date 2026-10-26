.class public Lnet/easyconn/license/ToCFreeAppLicenseManager;
.super Lnet/easyconn/license/AppLicenseManager;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/license/AppLicenseManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf/a/i/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_0
    const-string v1, "getUuid uuid = "

    invoke-static {v1, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
