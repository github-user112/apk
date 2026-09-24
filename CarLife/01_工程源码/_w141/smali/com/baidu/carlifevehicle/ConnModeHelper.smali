.class public Lcom/baidu/carlifevehicle/ConnModeHelper;
.super Ljava/lang/Object;
.source "ConnModeHelper.java"


# static fields
.field public static final MODE_DIRECT:I = 0x9

.field public static final MODE_HOTSPOT:I = 0x5

.field public static final MODE_WIRE:I = 0x2

.field public static sBtnDirect:Landroid/widget/TextView;

.field public static sBtnHotspot:Landroid/widget/TextView;

.field public static sBtnWire:Landroid/widget/TextView;

.field public static sClick:Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

.field public static sInited:Z

.field public static sMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    sput v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDefaultMode()V
    .locals 3

    :try_start_0
    sget v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const-string v0, "ConnMode"

    const-string v1, "\u9ed8\u8ba4\u8fde\u63a5\u6a21\u5f0f: \u76f4\u8fde(WiFi P2P, CONNECT_TYPE=9)"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    # --- 1.41 Q1: 不再恢复上次模式, 只 log 提示 ---
    const-string v0, "ConnMode"

    const-string v1, "1.41: 默认直连, 不自动切换模式"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e94\u7528\u8fde\u63a5\u6a21\u5f0f\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnMode"

    invoke-static {v1, v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getDefaultType()I
    .locals 1

    sget v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    return v0
.end method

.method public static highlight()V
    .locals 3

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnHotspot:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnWire:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const v0, -0x616162

    sget-object v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnHotspot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnWire:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xff198a

    sget v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnHotspot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnWire:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static infoLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "I"

    invoke-static {p0, v0, p1}, Lcom/baidu/carlifevehicle/ConnLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/view/View;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;

    if-eqz p0, :cond_5

    # 1.17: 把主界面的「下载日志」按钮挂上（见 logxfer/LogXferEntry.java）
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->bind(Landroid/view/View;)V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

    :cond_0
    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnDirect:Landroid/widget/TextView;

    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnHotspot:Landroid/widget/TextView;

    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnWire:Landroid/widget/TextView;

    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->attach(Landroid/widget/TextView;)V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnDirect:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnHotspot:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnHotspot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnWire:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sClick:Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sBtnWire:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    sget-boolean v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sInited:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->highlight()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sInited:Z

    const-string v0, "ConnMode"

    const-string v2, "\u8fde\u63a5\u6a21\u5f0f\u521d\u59cb\u5316\u5f00\u59cb"

    invoke-static {v0, v2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v2

    const-string v3, "CarlifeConnectType"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, La/a/b/r/d;->b(Ljava/lang/String;I)I

    move-result v2

    # --- 1.41 Q1: 钉死直连, 不再恢复上次模式 ---
    const/16 v2, 0x9

    sput v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x9

    sput v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    :goto_0
    invoke-static {v0}, Lcom/baidu/carlifevehicle/InfoDump;->dump(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->applyDefaultMode()V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->highlight()V

    :goto_1
    :try_start_1
    const v0, 0x7f090146

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # 1.17 修正: 原为 if-nez, 导致「当前版本」永远不刷新
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u7248\u672c: 4.0.M1.3-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  [\u4e8c\u6b21\u5f00\u53d1\u7248]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_5
    :goto_2
    return-void
.end method

.method public static modeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    sparse-switch p0, :sswitch_data_0

    const-string v0, "\u672a\u77e5"

    return-object v0

    :sswitch_0
    const-string v0, "\u76f4\u8fde(WiFi P2P)"

    return-object v0

    :sswitch_1
    const-string v0, "\u70ed\u70b9(WiFi AP)"

    return-object v0

    :sswitch_2
    const-string v0, "\u6709\u7ebf(USB AOA)"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static onModeClicked(I)V
    .locals 1
    .param p0, "viewId"    # I

    const v0, 0x7f090141

    if-eq p0, v0, :cond_0

    const v0, 0x7f090142

    if-eq p0, v0, :cond_1

    const v0, 0x7f090143

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->selectMode(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->selectMode(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->selectMode(I)V

    :goto_0
    return-void
.end method

.method public static selectMode(I)V
    .locals 3
    .param p0, "mode"    # I

    sget v0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u5df2\u662f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->modeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnMode"

    invoke-static {v1, v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput p0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    # --- 1.41 Q3-F: 切模式时复位 keepP2pGroup, 防止 P2P 组永远不被清理 ---
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->resetKeepGroup()V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->highlight()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5207\u6362\u8fde\u63a5\u6a21\u5f0f -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->modeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (CONNECT_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnMode"

    invoke-static {v1, v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    # --- 1.18: 停旧任务/建新任务/起任务的整条链放到后台线程, 避免卡死 UI ---
    new-instance v0, Lcom/baidu/carlifevehicle/ConnSwitchTask;

    invoke-direct {v0, p0}, Lcom/baidu/carlifevehicle/ConnSwitchTask;-><init>(I)V

    invoke-virtual {v0}, Lcom/baidu/carlifevehicle/ConnSwitchTask;->start()V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v1

    iget-object v1, v1, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "CarlifeConnectType"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnMode"

    invoke-static {v1, v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
