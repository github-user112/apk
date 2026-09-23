.class public Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;
.super Landroid/app/Activity;
.source "LogDownloadActivity.java"


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
.field private mWeb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static buildAssetUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/logxfer/logxfer.html#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 162
    if-lez v1, :cond_0

    .line 163
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    :try_start_0
    aget-object v2, p0, v1

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v2

    .line 168
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildHint([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 175
    array-length v0, p0

    if-nez v0, :cond_0

    .line 176
    const-string p0, "\u672a\u68c0\u6d4b\u5230\u53ef\u7528\u7f51\u7edc\u5730\u5740\uff0c\u8bf7\u68c0\u67e5 WiFi \u8fde\u63a5"

    return-object p0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u673a\u8fde\u540c\u4e00\u7f51\u7edc\u540e\uff0c\u626b\u4e0a\u9762\u8fd9\u4e2a\u4e8c\u7ef4\u7801\uff08\u4e0b\u9762\u5730\u5740\u53ef\u624b\u52a8\u8f93\u5165\uff09\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 182
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const-string p0, "\n\u672c\u673a\u81ea\u6d4b\u4e5f\u53ef\u76f4\u63a5\u6253\u5f00 http://127.0.0.1:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x46a0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dp(I)I
    .locals 3

    .line 201
    int-to-float v0, p1

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 201
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int p1, p1

    return p1

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private static join([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 191
    if-lez v1, :cond_0

    .line 192
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tryCreateWebView()Landroid/webkit/WebView;
    .locals 3

    .line 143
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 148
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 151
    const v1, -0xe8e9e5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
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

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->init(Landroid/content/Context;)V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 45
    :goto_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->baseUrls()[Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    const v1, -0xe8e9e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v1

    .line 51
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v3, "CarLife \u8f66\u673a\u65e5\u5fd7\u4e0b\u8f7d"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v3, -0x171910

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 57
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->netSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v5, -0x646758

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->tryCreateWebView()Landroid/webkit/WebView;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    .line 77
    iget-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    const-string v11, "CarLifeLogXfer"

    if-eqz v9, :cond_0

    .line 78
    iget-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildAssetUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
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

    .line 83
    :try_start_1
    iget-object v9, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v9, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v1

    .line 85
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

    .line 87
    :goto_1
    goto :goto_2

    .line 88
    :cond_0
    const-string v1, "WebView unavailable, text fallback only"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-static {p1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->buildHint([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v9

    invoke-virtual {v1, v10, v9, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->summary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v10, v5, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v5, "\u8fd4\u56de"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    const v3, -0xd5d7cd

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 119
    new-instance v3, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler;

    invoke-direct {v3}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-direct {p0, v2}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->dp(I)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->setContentView(Landroid/view/View;)V

    .line 126
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

    .line 127
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 213
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->start()V

    .line 214
    const-string v0, "CarLifeLogXfer"

    const-string v1, "activity started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 218
    const-string v0, "CarLifeLogXfer"

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    .line 222
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

    .line 224
    :goto_0
    const-string v1, "activity stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method
