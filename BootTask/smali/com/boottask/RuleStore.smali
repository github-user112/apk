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

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rule JSON parse failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/boottask/BootDiagnostics;->log(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    return-object v1
.end method


# private static boolean save(Context, JSONArray)
.method private static save(Landroid/content/Context;Lorg/json/JSONArray;)Z
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

    move-result v1

    if-nez v1, :cond_saved

    const-string v0, "rule save failed: commit returned false"

    invoke-static {p0, v0}, Lcom/boottask/BootDiagnostics;->log(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_saved
    const-string v0, "rule save committed"

    invoke-static {p0, v0}, Lcom/boottask/BootDiagnostics;->log(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method


# public static boolean add(Context, JSONObject)
.method public static add(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 1

    invoke-static {p0}, Lcom/boottask/RuleStore;->list(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {p0, v0}, Lcom/boottask/RuleStore;->save(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    return v0
.end method


# public static boolean remove(Context, int)
.method public static remove(Landroid/content/Context;I)Z
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/boottask/RuleStore;->list(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_removed

    const/4 v0, 0x0

    return v0

    :cond_removed
    invoke-static {p0, v0}, Lcom/boottask/RuleStore;->save(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rule remove failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/boottask/BootDiagnostics;->log(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# public static boolean toggle(Context, int)
.method public static toggle(Landroid/content/Context;I)Z
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

    invoke-static {p0, v0}, Lcom/boottask/RuleStore;->save(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rule toggle failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/boottask/BootDiagnostics;->log(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v0
.end method
