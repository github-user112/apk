.class public Lf/a/i/g/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile b:Lf/a/i/g/a;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/a/i/g/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lf/a/i/g/a;
    .locals 2

    sget-object v0, Lf/a/i/g/a;->b:Lf/a/i/g/a;

    if-nez v0, :cond_1

    sget-object v0, Lf/a/i/g/a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/a/i/g/a;->b:Lf/a/i/g/a;

    if-nez v1, :cond_0

    new-instance v1, Lf/a/i/g/a;

    invoke-direct {v1, p0}, Lf/a/i/g/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf/a/i/g/a;->b:Lf/a/i/g/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lf/a/i/g/a;->b:Lf/a/i/g/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
