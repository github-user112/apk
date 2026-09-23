.class public Lcom/boottask/RuleStore;
.super Ljava/lang/Object;


# private static SharedPreferences sp(Context)
.method private static sp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "rules"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# public static JSONArray list(Context)
.method public static list(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 3

    invoke-static {p0}, Lcom/boottask/RuleStore;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "list"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    return-object v1
.end method


# private static void save(Context, JSONArray)
.method private static save(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 2

    invoke-static {p0}, Lcom/boottask/RuleStore;->sp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# public static void add(Context, JSONObject)
.method public static add(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p0}, Lcom/boottask/RuleStore;->list(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {p0, v0}, Lcom/boottask/RuleStore;->save(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void
.end method


# public static void remove(Context, int)
.method public static remove(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/boottask/RuleStore;->list(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/boottask/RuleStore;->save(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void
.end method


# public static void toggle(Context, int)
.method public static toggle(Landroid/content/Context;I)V
    .locals 4

    invoke-static {p0}, Lcom/boottask/RuleStore;->list(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "enabled"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lcom/boottask/RuleStore;->save(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
