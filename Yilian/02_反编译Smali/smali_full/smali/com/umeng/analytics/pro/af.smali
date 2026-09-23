.class public Lcom/umeng/analytics/pro/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/umeng/analytics/pro/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lg/a/b/b/a/c;->a(Landroid/content/Context;)Lg/a/b/b/a/c;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2
    sget-boolean v4, Lg/a/b/b/a/c;->b:Z

    if-nez v4, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    const-string v4, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    aput-object v4, p1, v0

    .line 3
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ld/s/y;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    .line 4
    :cond_1
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    aput-object v1, p1, v0

    .line 5
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    :goto_0
    return-object v3
.end method
