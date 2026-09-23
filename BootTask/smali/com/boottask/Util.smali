.class public Lcom/boottask/Util;
.super Ljava/lang/Object;


# public static String[] eventKeys()
.method public static eventKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "boot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "screen_on"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unlock"

    aput-object v2, v0, v1

    return-object v0
.end method


# public static String[] eventLabels()
.method public static eventLabels()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "开机完成"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "屏幕亮屏"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "屏幕解锁"

    aput-object v2, v0, v1

    return-object v0
.end method


# public static String[] actionKeys()
.method public static actionKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "open"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "close"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unmute"

    aput-object v2, v0, v1

    return-object v0
.end method


# public static String[] actionLabels()
.method public static actionLabels()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "打开应用"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "关闭应用"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "静音"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "取消静音"

    aput-object v2, v0, v1

    return-object v0
.end method


# public static String eventLabel(String key)
.method public static eventLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/boottask/Util;->eventKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/boottask/Util;->eventLabels()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# public static String actionLabel(String key)
.method public static actionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/boottask/Util;->actionKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/boottask/Util;->actionLabels()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# public static String describe(JSONObject rule) —— 线性无分支, 过 Dalvik 校验
.method public static describe(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/boottask/Util;->enabledTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event"

    const-string v3, "boot"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boottask/Util;->eventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "delay"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/boottask/Util;->delayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "action"

    const-string v3, "open"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boottask/Util;->actionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/boottask/Util;->pkgText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# 帮手: 布尔 -> 标签 (early return, 无汇合)
.method private static enabledTag(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_off

    const-string v0, "[启用] "

    return-object v0

    :cond_off
    const-string v0, "[停用] "

    return-object v0
.end method


# 帮手: 秒数 -> 文本
.method private static delayText(I)Ljava/lang/String;
    .locals 2

    if-lez p0, :cond_empty

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b49\u5f85"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_empty
    const-string v0, ""

    return-object v0
.end method


# 帮手: 打开/关闭动作附加包名
.method private static pkgText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "action"

    const-string v1, "open"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_yes

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_no

    :cond_yes
    const-string v0, "pkg"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_no
    const-string v0, ""

    return-object v0
.end method


# public static ArrayAdapter adapter(Context, String[])
.method public static adapter(Landroid/content/Context;[Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v1, 0x1090003

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-object v2
.end method


# public static void toast(Context, String)
.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
