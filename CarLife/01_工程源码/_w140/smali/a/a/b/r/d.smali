.class public La/a/b/r/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:La/a/b/r/d;


# instance fields
.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;

.field public d:Landroid/content/SharedPreferences;

.field public e:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/r/d;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, La/a/b/r/d;->d:Landroid/content/SharedPreferences;

    iput-object v0, p0, La/a/b/r/d;->e:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized a()La/a/b/r/d;
    .locals 2

    const-class v0, La/a/b/r/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/b/r/d;->a:La/a/b/r/d;

    if-nez v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, La/a/b/r/d;->a:La/a/b/r/d;

    if-nez v1, :cond_0

    new-instance v1, La/a/b/r/d;

    invoke-direct {v1}, La/a/b/r/d;-><init>()V

    sput-object v1, La/a/b/r/d;->a:La/a/b/r/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v1, La/a/b/r/d;->a:La/a/b/r/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, La/a/b/r/d;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Carlife"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, La/a/b/r/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    const-string v1, "CarlifeConnectStatus"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, La/a/b/r/d;->d:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, La/a/b/r/d;->e:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "init jar sp fail"

    aput-object v2, v1, v0

    const-string v0, "PreferenceUtil"

    invoke-static {v0, v1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, La/a/b/r/d;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
