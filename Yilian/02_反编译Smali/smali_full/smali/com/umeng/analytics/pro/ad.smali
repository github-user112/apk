.class public Lcom/umeng/analytics/pro/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/umeng/analytics/pro/y;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/ad;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v4, p0, Lcom/umeng/analytics/pro/ad;->a:Z

    if-nez v4, :cond_3

    .line 1
    sget-object v4, Lg/a/a/a/a/a$b$b;->a:Lg/a/a/a/a/a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    .line 2
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "com.heytap.openid"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v4, v3, :cond_1

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    const/4 v4, 0x0

    .line 3
    :goto_1
    sput-boolean v4, Ld/s/y;->x:Z

    sput-boolean v3, Ld/s/y;->w:Z

    .line 4
    iput-boolean v3, p0, Lcom/umeng/analytics/pro/ad;->a:Z

    goto :goto_2

    .line 5
    :cond_2
    throw v1

    .line 6
    :cond_3
    :goto_2
    sget-boolean v4, Ld/s/y;->w:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Ld/s/y;->x:Z

    if-nez v4, :cond_4

    new-array p1, v3, [Ljava/lang/String;

    const-string v4, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    aput-object v4, p1, v2

    .line 7
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Ld/s/y;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_3

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v4, "SDK Need Init First!"

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    new-array p1, v3, [Ljava/lang/String;

    const-string v3, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    aput-object v3, p1, v2

    .line 9
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    :goto_3
    return-object v1
.end method
