.class public La/a/a/a/l/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/content/Context;

.field public static b:La/a/a/a/l/a;


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/l/a;->e:Z

    sget-object v1, La/a/a/a/l/a;->a:Landroid/content/Context;

    const-string v2, "Config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static b()La/a/a/a/l/a;
    .locals 2

    sget-object v0, La/a/a/a/l/a;->b:La/a/a/a/l/a;

    if-nez v0, :cond_1

    const-class v0, La/a/a/a/l/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/a/a/l/a;->b:La/a/a/a/l/a;

    if-nez v1, :cond_0

    new-instance v1, La/a/a/a/l/a;

    invoke-direct {v1}, La/a/a/a/l/a;-><init>()V

    sput-object v1, La/a/a/a/l/a;->b:La/a/a/a/l/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, La/a/a/a/l/a;->b:La/a/a/a/l/a;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 0

    sput-object p0, La/a/a/a/l/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    sget-object v0, La/a/a/a/l/b;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, La/a/a/a/l/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, La/a/a/a/l/b;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, La/a/a/a/l/b;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1
    iget-object v0, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "KEYCODE_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const-string v5, ","

    const-string v6, ""

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v6, v3, v4

    sget-object v7, La/a/a/a/l/b;->l:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v3, "QTXY_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    :goto_3
    if-ge v4, v7, :cond_1

    aget-object v8, v5, v4

    sget-object v9, La/a/a/a/l/b;->m:Ljava/util/Map;

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-string v3, "RZJQ_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_7

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object v5, La/a/a/a/l/b;->n:Ljava/util/Map;

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    const-string v3, "BZXY_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    :goto_4
    if-ge v4, v7, :cond_1

    aget-object v8, v5, v4

    sget-object v9, La/a/a/a/l/b;->o:Ljava/util/Map;

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/a/a/l/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 4

    sget v0, La/a/a/a/l/b;->w:I

    .line 1
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "MEDIAAPI_BB"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    :goto_0
    sput v0, La/a/a/a/l/b;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc

    sput v0, La/a/a/a/l/b;->b:I

    sput v1, La/a/a/a/l/b;->c:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    sput v0, La/a/a/a/l/b;->b:I

    sput v0, La/a/a/a/l/b;->c:I

    :goto_1
    sget-boolean v0, La/a/a/a/l/b;->k:Z

    .line 3
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v3, "PULL_UP_VEHICLE"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    :goto_2
    sput-boolean v0, La/a/a/a/l/b;->k:Z

    sget-boolean v0, La/a/a/a/l/b;->j:Z

    .line 5
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "STARTING"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    :goto_3
    sput-boolean v2, La/a/a/a/l/b;->j:Z

    invoke-virtual {p0}, La/a/a/a/l/a;->l()V

    invoke-virtual {p0}, La/a/a/a/l/a;->k()V

    sget v0, La/a/a/a/l/b;->d:I

    .line 7
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "VOICE_MIC"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8
    :goto_4
    sput v0, La/a/a/a/l/b;->d:I

    sget v0, La/a/a/a/l/b;->e:I

    .line 9
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, "TOOLBAR_SET"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 10
    :goto_5
    sput v0, La/a/a/a/l/b;->e:I

    sget v0, La/a/a/a/l/b;->f:I

    .line 11
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const-string v2, "VIDEO_SURFACE_MS"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    :goto_6
    sput v0, La/a/a/a/l/b;->f:I

    const-string v0, ""

    .line 13
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    const-string v2, "PHONE_IP"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_7
    sput-object v0, La/a/a/a/l/b;->g:Ljava/lang/String;

    sget v0, La/a/a/a/l/b;->a:I

    .line 15
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    const-string v2, "BUTTON_CONTROL"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 16
    :goto_8
    sput v0, La/a/a/a/l/b;->a:I

    sget v0, La/a/a/a/l/b;->p:I

    .line 17
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_9

    goto :goto_9

    :cond_9
    const-string v2, "LOGCAT_TIMEJG"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 18
    :goto_9
    sput v0, La/a/a/a/l/b;->p:I

    sget-object v0, La/a/a/a/l/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, La/a/a/a/l/b;->r:Ljava/lang/String;

    .line 19
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    const-string v2, "JTGJZ_RZJQ"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_a
    sget-object v1, La/a/a/a/l/b;->q:Ljava/util/List;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget v0, La/a/a/a/l/b;->s:I

    .line 21
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_b

    goto :goto_b

    :cond_b
    const-string v2, "LOGCAT_JT_KG"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 22
    :goto_b
    sput v0, La/a/a/a/l/b;->s:I

    sget v0, La/a/a/a/l/b;->t:I

    .line 23
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_c

    goto :goto_c

    :cond_c
    const-string v2, "BUTTON_CONTROL_TYPE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 24
    :goto_c
    sput v0, La/a/a/a/l/b;->t:I

    sget v0, La/a/a/a/l/b;->u:I

    .line 25
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_d

    goto :goto_d

    :cond_d
    const-string v2, "BACKBUTTONSET"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 26
    :goto_d
    sput v0, La/a/a/a/l/b;->u:I

    sget v0, La/a/a/a/l/b;->v:I

    .line 27
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_e

    goto :goto_e

    :cond_e
    const-string v2, "AUDIO_TRANSMISSION_MODE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 28
    :goto_e
    sput v0, La/a/a/a/l/b;->v:I

    sget v0, La/a/a/a/l/b;->y:I

    .line 29
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_f

    goto :goto_f

    :cond_f
    const-string v2, "STARTING_TIMEOUT"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    :goto_f
    sput v0, La/a/a/a/l/b;->y:I

    sget-wide v0, La/a/a/a/l/b;->x:J

    .line 31
    iget-object v2, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_10

    goto :goto_10

    :cond_10
    const-string v3, "USB_AUTO_CLICK"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 32
    :goto_10
    sput-wide v0, La/a/a/a/l/b;->x:J

    invoke-virtual {p0}, La/a/a/a/l/a;->a()V

    return-void
.end method

.method public f(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, La/a/a/a/l/a;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "USBSBHLPID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    sput-object v0, La/a/a/a/l/b;->h:Ljava/lang/String;

    .line 3
    iget-object v0, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "USBSBHLVID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_1
    sput-object v1, La/a/a/a/l/b;->i:Ljava/lang/String;

    return-void
.end method

.method public l()V
    .locals 3

    sget v0, La/a/a/a/l/b;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "AUDIO_TRACK_STREAM_TYPE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, La/a/a/a/l/b;->b:I

    sget v0, La/a/a/a/l/b;->c:I

    .line 3
    iget-object v1, p0, La/a/a/a/l/a;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "STREAM_MUSIC"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    :goto_1
    sput v0, La/a/a/a/l/b;->c:I

    return-void
.end method
