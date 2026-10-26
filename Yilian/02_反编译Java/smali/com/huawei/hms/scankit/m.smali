.class public final Lcom/huawei/hms/scankit/m;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lcom/huawei/hms/scankit/p/Aa;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/os/Handler;

.field public e:Lcom/huawei/hms/scankit/a;

.field public final f:Ljava/util/concurrent/CountDownLatch;

.field public g:Landroid/graphics/Rect;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/Aa;Lcom/huawei/hms/scankit/a;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/scankit/p/Aa;",
            "Lcom/huawei/hms/scankit/a;",
            "Ljava/util/Collection<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/aiscan/common/A;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/m;->h:Z

    iput-object p1, p0, Lcom/huawei/hms/scankit/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/hms/scankit/m;->b:Lcom/huawei/hms/scankit/p/Aa;

    iput-object p3, p0, Lcom/huawei/hms/scankit/m;->e:Lcom/huawei/hms/scankit/a;

    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/huawei/hms/scankit/m;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance p2, Ljava/util/EnumMap;

    const-class p3, Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-direct {p2, p3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    if-eqz p5, :cond_0

    invoke-interface {p2, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-class p2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    const-string p2, "preferences_decode_1D_product"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/huawei/hms/scankit/i;->a:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string p2, "preferences_decode_1D_industrial"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/huawei/hms/scankit/i;->b:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string p2, "preferences_decode_QR"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/huawei/hms/scankit/i;->d:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const-string p2, "preferences_decode_Data_Matrix"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/huawei/hms/scankit/i;->e:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string p2, "preferences_decode_Aztec"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/huawei/hms/scankit/i;->f:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_6
    const-string p2, "preferences_decode_PDF417"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/huawei/hms/scankit/i;->g:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object p1, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    sget-object p2, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_8

    iget-object p1, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    sget-object p2, Lcom/huawei/hms/scankit/aiscan/common/d;->f:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p1, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    sget-object p2, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p1, p2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Hints: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeThread"

    invoke-static {p2, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/m;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exception"

    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/m;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/m;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/m;->h:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/scankit/m;->a:Landroid/content/Context;

    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v7, Lcom/huawei/hms/scankit/j;

    iget-object v1, p0, Lcom/huawei/hms/scankit/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/scankit/m;->b:Lcom/huawei/hms/scankit/p/Aa;

    iget-object v3, p0, Lcom/huawei/hms/scankit/m;->e:Lcom/huawei/hms/scankit/a;

    iget-object v4, p0, Lcom/huawei/hms/scankit/m;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/huawei/hms/scankit/m;->g:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/huawei/hms/scankit/m;->h:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/j;-><init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/Aa;Lcom/huawei/hms/scankit/a;Ljava/util/Map;Landroid/graphics/Rect;Z)V

    iput-object v7, p0, Lcom/huawei/hms/scankit/m;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huawei/hms/scankit/m;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
