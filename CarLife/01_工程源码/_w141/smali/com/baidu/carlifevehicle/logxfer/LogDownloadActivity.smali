.class public Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;
.super Landroid/app/Activity;
.source "LogDownloadActivity.java"

# interfaces
.implements Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler;
    }
.end annotation


# static fields
.field private static final BG:I = -0xe8e9e5

.field private static final FG:I = -0x171910

.field private static final FG2:I = -0x646758

.field private static final TAG:Ljava/lang/String; = "CarLifeLogXfer"


# instance fields
.field private mHint:Landroid/widget/TextView;

.field private mNets:Landroid/widget/TextView;

.field private mUrls:[Ljava/lang/String;

.field private mWeb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;[Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->applyUrls([Ljava/lang/String;)V

    return-void
.end method

.method private applyUrls([Ljava/lang/String;)V
    .locals 4

    .line 254
    if-nez p1, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mUrls:[Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    return-void

    .line 262
    :cond_1
    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mUrls:[Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 264
    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildAssetUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview reload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarLifeLogXfer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview reload failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildHint([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    const v0, -0x646758

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    :cond_3
    iget-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mNets:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 278
    :try_start_1
    iget-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mNets:Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->netSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    goto :goto_1

    .line 279
    :catchall_1
    move-exception p1

    .line 282
    :cond_4
    :goto_1
    return-void
.end method

.method private static buildAssetUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/logxfer/logxfer.html#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 172
    if-lez v1, :cond_0

    .line 173
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    :try_start_0
    aget-object v2, p0, v1

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_1

    .line 177
    :catchall_0
    move-exception v2

    .line 178
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildHint([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 185
    array-length v0, p0

    if-nez v0, :cond_0

    .line 186
    const-string p0, "\u672a\u68c0\u6d4b\u5230\u53ef\u7528\u7f51\u7edc\u5730\u5740\n\u8bf7\u8fde\u63a5 WiFi \u6216\u5f00\u542f\u70ed\u70b9\uff0c\u4e8c\u7ef4\u7801\u4f1a\u81ea\u52a8\u51fa\u73b0"

    return-object p0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u673a\u8fde\u540c\u4e00\u7f51\u7edc\u540e\uff0c\u626b\u4e0a\u9762\u8fd9\u4e2a\u4e8c\u7ef4\u7801\uff08\u4e0b\u9762\u5730\u5740\u53ef\u624b\u52a8\u8f93\u5165\uff09\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 192
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const-string p0, "\n\u672c\u673a\u81ea\u6d4b\u4e5f\u53ef\u76f4\u63a5\u6253\u5f00 http://127.0.0.1:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x46a0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dp(I)I
    .locals 3

    .line 211
    int-to-float v0, p1

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 211
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int p1, p1

    return p1

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private static join([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 201
    if-lez v1, :cond_0

    .line 202
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tryCreateWebView()Landroid/webkit/WebView;
    .locals 3

    .line 153
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 161
    const v1, -0xe8e9e5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create WebView failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLifeLogXfer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->init(Landroid/content/Context;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 52
    :goto_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->baseUrls()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mUrls:[Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mUrls:[Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    const v1, -0xe8e9e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v1

    .line 59
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v3, "CarLife \u8f66\u673a\u65e5\u5fd7\u4e0b\u8f7d"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v3, -0x171910

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mNets:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->netSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v5, -0x646758

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->tryCreateWebView()Landroid/webkit/WebView;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    .line 86
    iget-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    const-string v11, "CarLifeLogXfer"

    if-eqz v9, :cond_0

    .line 87
    iget-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildAssetUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "webview load "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_1
    iget-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v9, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    goto :goto_1

    .line 93
    :catchall_1
    move-exception v1

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "webview loadUrl failed: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1
    goto :goto_2

    .line 97
    :cond_0
    const-string v1, "WebView unavailable, text fallback only"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    .line 102
    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildHint([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v9

    invoke-virtual {v1, v10, v9, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->summary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v10, v5, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    const-string v5, "\u8fd4\u56de"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    const v3, -0xd5d7cd

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 129
    new-instance v3, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler;

    invoke-direct {v3}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    invoke-direct {p0, v2}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->setContentView(Landroid/view/View;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity created, urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public onNetChanged([Ljava/lang/String;)V
    .locals 2

    .line 242
    :try_start_0
    new-instance v0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;-><init>(Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    goto :goto_0

    .line 247
    :catchall_0
    move-exception p1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLifeLogXfer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 223
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->start()V

    .line 225
    invoke-static {p0, p0}, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->start(Landroid/content/Context;Lcom/baidu/carlifevehicle/logxfer/NetWatch$Listener;)V

    .line 228
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->isRunning()Z

    move-result v0

    const-string v1, "CarLifeLogXfer"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    const-string v2, "\u7aef\u53e3 18080 \u542f\u52a8\u5931\u8d25\uff08\u53ef\u80fd\u88ab\u5360\u7528\uff09\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    const v2, -0x9495

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    const-string v0, "server not running after start()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mUrls:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mUrls:[Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildHint([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mHint:Landroid/widget/TextView;

    const v2, -0x646758

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    :cond_1
    :goto_0
    const-string v0, "activity started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 285
    const-string v0, "CarLifeLogXfer"

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 287
    :try_start_0
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/NetWatch;->stop(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    goto :goto_0

    .line 288
    :catchall_0
    move-exception v1

    .line 291
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    goto :goto_1

    .line 292
    :catchall_1
    move-exception v1

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1
    const-string v1, "activity stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method
