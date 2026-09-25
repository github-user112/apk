.class public Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;
.super Landroid/app/Activity;
.source "QrFallbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity$Bridge;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static esc(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 61
    if-nez p1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 66
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_1

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_2

    .line 67
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method

.method static finishSelf()V
    .locals 1

    .line 83
    :try_start_0
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->sInstance:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->sInstance:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 88
    :goto_0
    return-void
.end method

.method private static wifiPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI:T:WPA;S:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {v0, p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->esc(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    const-string p0, ";P:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {v0, p1}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->esc(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    const-string p0, ";;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sput-object p0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->sInstance:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    .line 29
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 31
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_1
    const-string v1, ""

    if-nez v0, :cond_2

    .line 34
    move-object v0, v1

    .line 37
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "wifi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, v0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->wifiPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, "&ssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p1, "&psk="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 45
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity$Bridge;

    invoke-direct {v0, p0}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity$Bridge;-><init>(Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;)V

    const-string v1, "App"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->setContentView(Landroid/view/View;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/logxfer/qr_wifi.html#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 75
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->sInstance:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    if-ne v0, p0, :cond_0

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->sInstance:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    return-void
.end method
