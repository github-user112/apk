.class public Lcom/umeng/commonsdk/internal/utils/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Kinguser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    return v0

    :catch_1
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Z
    .locals 2

    new-instance v0, Lcom/umeng/commonsdk/internal/utils/e;

    invoke-direct {v0}, Lcom/umeng/commonsdk/internal/utils/e;-><init>()V

    sget-object v1, Lcom/umeng/commonsdk/internal/utils/e$a;->a:Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/internal/utils/e;->a(Lcom/umeng/commonsdk/internal/utils/e$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .locals 8

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/bin"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "/system/xbin/"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "/system/sbin/"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "/sbin/"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "/vendor/bin/"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "/su/bin/"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "/data/local/xbin/"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "/data/local/bin/"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "/data/local/"

    aput-object v5, v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, v1, v2

    new-instance v6, Ljava/io/File;

    const-string v7, "su"

    invoke-static {v5, v7}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
