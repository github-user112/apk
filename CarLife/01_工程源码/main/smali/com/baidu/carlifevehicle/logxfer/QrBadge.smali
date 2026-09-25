.class public final Lcom/baidu/carlifevehicle/logxfer/QrBadge;
.super Ljava/lang/Object;
.source "QrBadge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/logxfer/QrBadge$Bridge;
    }
.end annotation


# static fields
.field private static final CONNLOG:Ljava/lang/String; = "com.baidu.carlifevehicle.ConnLog"

.field private static final ID_CONN_MODE_BAR:I = 0x7f090140

.field private static final SIZE_DP:I = 0x78

.field private static final TAG:Ljava/lang/String; = "CarLifeNoBt"

.field private static sBadge:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->attach(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->remove()V

    return-void
.end method

.method private static attach(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 9

    .line 95
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .line 99
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->remove()V

    .line 100
    if-nez p1, :cond_1

    .line 101
    const-string p1, ""

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v1, "wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->wifiPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "&ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "&psk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 111
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 112
    new-instance v1, Lcom/baidu/carlifevehicle/logxfer/QrBadge$Bridge;

    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/QrBadge$Bridge;-><init>()V

    const-string v3, "App"

    invoke-virtual {p1, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x78

    invoke-static {v1, v3}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->dp(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v3, v1

    .line 117
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x70

    invoke-static {v3, v5}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 121
    const v5, 0x7f090140

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 122
    nop

    .line 123
    const/16 v6, 0xc

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_2

    .line 124
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    float-to-int v5, v7

    .line 126
    add-int/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x18

    invoke-static {v7, v8}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->dp(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v1, v7

    if-gt v1, v3, :cond_2

    .line 127
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->dp(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 133
    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->dp(Landroid/content/Context;I)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 137
    :cond_3
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    sput-object p1, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->sBadge:Landroid/webkit/WebView;

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/logxfer/qr_badge.html#"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[\u65e0\u84dd\u7259\u76f4\u8fde] \u4e8c\u7ef4\u7801\u5df2\u4e0a\u5c4f(\u9996\u9875\u89d2\u6807, \u70b9\u4e8c\u7ef4\u7801\u53ef\u5173\u95ed): \u626b\u7801\u52a0\u5165 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->log(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 1

    .line 159
    int-to-float v0, p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float v0, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    return p1
.end method

.method private static esc(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 176
    if-nez p1, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 181
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

    .line 182
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_3
    return-void
.end method

.method public static hide()V
    .locals 2

    .line 81
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/carlifevehicle/logxfer/QrBadge$2;

    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/QrBadge$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 91
    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 6

    .line 190
    :try_start_0
    const-string v0, "com.baidu.carlifevehicle.ConnLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 191
    const-string v1, "logLine"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 192
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    const-string v0, "CarLifeNoBt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void
.end method

.method private static remove()V
    .locals 2

    .line 145
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->sBadge:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 147
    :try_start_0
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->sBadge:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->sBadge:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    .line 153
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->sBadge:Landroid/webkit/WebView;

    .line 155
    :cond_1
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 56
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->mainRoot()Landroid/view/View;

    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    return v0

    .line 63
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 p0, 0x1

    return p0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    return v0

    .line 57
    :cond_2
    :goto_0
    return v0
.end method

.method private static wifiPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI:T:WPA;S:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {v0, p0}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->esc(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    const-string p0, ";P:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v0, p1}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->esc(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    const-string p0, ";;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
