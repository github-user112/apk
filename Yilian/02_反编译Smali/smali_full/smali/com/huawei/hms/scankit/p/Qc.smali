.class public abstract Lcom/huawei/hms/scankit/p/Qc;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String; = "FORMAT_UNKNOWN"

.field public static b:Ljava/lang/String; = "OTHER"

.field public static c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Landroid/content/Context;

.field public f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/Dc;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Dc;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Qc;->c:Landroid/util/SparseArray;

    new-instance v0, Lcom/huawei/hms/scankit/p/Ec;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Ec;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Qc;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Qc;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/Qc;->c:Landroid/util/SparseArray;

    sget-object v1, Lcom/huawei/hms/scankit/p/Qc;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "huawei_module_scankit_sdk_version"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.huawei.hms.client.service.name:scan"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "com.huawei.hms.client.service.name:scanplus"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "com.huawei.hms.client.service.name:scankit"

    aput-object v4, v1, v2

    if-eqz p1, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "scankit:1.0.2.300"

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const-string v0, "lite-noso"

    return-object v0

    :cond_0
    const-string v0, "lite"

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/Qc;->d:Landroid/util/SparseArray;

    sget-object v1, Lcom/huawei/hms/scankit/p/Qc;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "initValue Exception"

    const-string v1, "HaLog"

    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "package"

    :try_start_1
    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "appid"

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "appName"

    :try_start_3
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "version"

    :try_start_4
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/huawei/hms/scankit/p/Qc;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "hmscoreVersion"

    :try_start_5
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Qc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p1, "PackageManager.NameNotFoundException"

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_6
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v2, "algopt"

    :try_start_7
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Qc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Qc;->e()Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-string v2, "apkVersion"

    if-eqz p1, :cond_1

    :try_start_8
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const-string v3, "unknown"

    :goto_2
    :try_start_9
    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const-string v3, "1.0"

    goto :goto_2

    :goto_3
    :try_start_a
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const-string v2, "service"

    const-string v3, "com.huawei.hms.scankit"

    :try_start_b
    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    const-string v2, "operator"

    :try_start_c
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Uc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    const-string v2, "networkType"

    :try_start_d
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Uc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    const-string v2, "countryCode"

    :try_start_e
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/huawei/hms/scankit/p/Uc;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    const-string v2, "deviceType"

    :try_start_f
    invoke-static {}, Lcom/huawei/hms/scankit/p/Uc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    const-string v2, "emuiVersion"

    :try_start_10
    invoke-static {}, Lcom/huawei/hms/scankit/p/Uc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    const-string v2, "androidVersion"

    :try_start_11
    invoke-static {}, Lcom/huawei/hms/scankit/p/Uc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    const-string v2, "deviceCategory"

    :try_start_12
    invoke-static {}, Lcom/huawei/hms/scankit/p/Uc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_4

    :catch_2
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    const-string p1, "initValue RuntimeException"

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    const-string v0, "unknown"

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.huawei.hwid"

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private d()Z
    .locals 6

    const-string v0, "CN"

    const-string v1, "get"

    const-string v2, "ro.hw.country"

    const-string v3, "android.os.SystemProperties"

    const-string v4, "UNKNOWN"

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "phone"

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :catch_0
    :cond_0
    return v5
.end method

.method private e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HaLog"

    const-string v2, "allowLog: forbidLog"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Qc;->e()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Qc;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Qc;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "hw_app_analytics_state"

    :try_start_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :catch_0
    :cond_2
    return v1
.end method
