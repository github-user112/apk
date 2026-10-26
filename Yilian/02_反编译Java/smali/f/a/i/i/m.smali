.class public Lf/a/i/i/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/IECCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/i/m$e;
    }
.end annotation


# static fields
.field public static final G:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public A:J

.field public final B:Ljava/lang/StringBuilder;

.field public volatile C:Ljava/io/File;

.field public final D:Ljava/lang/Object;

.field public final E:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public F:Lf/a/i/h/e;

.field public final a:Landroid/net/wifi/WifiManager;

.field public b:Z

.field public c:Z

.field public volatile d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

.field public e:Landroid/os/Handler;

.field public f:Landroid/os/HandlerThread;

.field public g:Landroid/os/Handler;

.field public h:Lf/a/i/i/q;

.field public i:Landroid/content/Context;

.field public j:Z

.field public k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lf/a/i/h/c;

.field public n:Lf/a/i/h/d;

.field public o:Lf/a/i/h/a;

.field public p:Lf/a/i/h/b;

.field public q:Lf/a/i/h/g;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:J

.field public w:I

.field public x:I

.field public y:J

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lf/a/i/i/m$a;

    invoke-direct {v1}, Lf/a/i/i/m$a;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lf/a/i/i/m;->G:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/a/i/i/q;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/m;->c:Z

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_MAX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v1, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-boolean v0, p0, Lf/a/i/i/m;->j:Z

    iput-boolean v0, p0, Lf/a/i/i/m;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a/i/i/m;->l:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/a/i/i/m;->t:Z

    const/4 v1, -0x1

    iput v1, p0, Lf/a/i/i/m;->u:I

    iput v1, p0, Lf/a/i/i/m;->w:I

    iput v1, p0, Lf/a/i/i/m;->x:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lf/a/i/i/m;->y:J

    iput v0, p0, Lf/a/i/i/m;->z:I

    iput-wide v1, p0, Lf/a/i/i/m;->A:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/a/i/i/m;->D:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf/a/i/i/m;->E:Ljava/util/HashSet;

    iput-object p1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    iput-object p2, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 1
    iget-object p1, p2, Lf/a/i/i/q;->c:Landroid/net/wifi/WifiManager;

    .line 2
    iput-object p1, p0, Lf/a/i/i/m;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static a(Lf/a/i/i/m;Ljava/lang/String;Ljava/util/List;)V
    .locals 12

    if-eqz p0, :cond_8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;

    new-instance v11, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;

    iget v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    iget v5, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    iget-object v6, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    iget v8, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    iget v9, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    iget v10, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->sequence:I

    const-string v7, ""

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;-><init>(IILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iget-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    const-string v5, "appName"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ec_app_type"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v4, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    new-instance v5, Lf/a/i/i/b;

    invoke-direct {v5, v2}, Lf/a/i/i/b;-><init>(Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    array-length v6, v4

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    const-string v4, "appIcon"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const-string v3, " generateShortcutList page = "

    invoke-static {p1, v3}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    const-string v4, " not find icon"

    invoke-static {v3, v2, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "ecapps"

    invoke-virtual {p2, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lf/a/i/h/b;->onShortcutListReceived(Ljava/lang/String;)V

    :cond_6
    const-string p2, " iMirrorConnectionListener = "

    invoke-static {p1, p2}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " originalPageInfos = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lf/a/i/h/c;->c0(Ljava/util/List;)V

    :cond_7
    return-void

    :cond_8
    const/4 p0, 0x0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static synthetic d(Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;
    .locals 2

    const-string v0, "ecTransportType = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_EAP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/m0/r0;

    .line 1
    iput-boolean p1, v0, Lf/a/k/m0/r0;->n:Z

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf/a/i/i/m;->k:Z

    if-eq v0, p1, :cond_1

    const-string v0, "notifyAccessibilityStatus status changed, current is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/i/i/m;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", target is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lf/a/i/i/m;->k:Z

    invoke-virtual {p0}, Lf/a/i/i/m;->i()V

    :cond_1
    return-void
.end method

.method public g(ZII)V
    .locals 2

    const-string v0, "notifyAppForegroundStatus isMirrorSuccess = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/i/i/m;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mirrorType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-boolean p3, p0, Lf/a/i/i/m;->j:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    .line 1
    invoke-static {p3}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    sget-object p3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "NOT_MIRROR_NOTIFY_APP_MIRROR_STATUS"

    const-string v1, "false"

    invoke-virtual {p3, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    :goto_0
    if-nez p3, :cond_1

    return-void

    .line 2
    :cond_1
    iget p3, p0, Lf/a/i/i/m;->u:I

    if-eq p2, p3, :cond_4

    iput-boolean p1, p0, Lf/a/i/i/m;->t:Z

    iget-object p3, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz p3, :cond_3

    iput p2, p0, Lf/a/i/i/m;->u:I

    check-cast p3, Lf/a/k/m0/r0;

    invoke-virtual {p3, p1, p2}, Lf/a/k/m0/r0;->d(ZI)V

    iget-object p1, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    check-cast p1, Lf/a/k/m0/r0;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_3
    invoke-virtual {p0}, Lf/a/i/i/m;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    iput p2, p0, Lf/a/i/i/m;->u:I

    :cond_4
    :goto_1
    return-void
.end method

.method public h(I)Z
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/m;->b:Z

    const-string v1, "notifyPhoneDisconnect reason is "

    invoke-static {v1, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 1
    iget-boolean v1, v1, Lf/a/i/i/q;->j:Z

    if-nez v1, :cond_0

    const-string p1, "notifyPhoneDisconnect return"

    .line 2
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lf/a/i/i/q;->p0(Z)Z

    iget-object v1, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz v1, :cond_1

    check-cast v1, Lf/a/k/g0;

    invoke-virtual {v1, p1}, Lf/a/k/g0;->i0(I)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->M()V

    :goto_0
    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 3
    iget v3, v1, Lf/a/i/i/q;->U:I

    .line 4
    iput v0, v1, Lf/a/i/i/q;->U:I

    const-string v1, "notifyPhoneDisconnect iMirrorConnectionListener = "

    .line 5
    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " openTransportRt = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, v3}, Lf/a/i/h/c;->e(ZLnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    :cond_2
    iget-object v1, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v1, :cond_3

    check-cast v1, Lf/a/k/m0/r0;

    invoke-virtual {v1, p1}, Lf/a/k/m0/r0;->x(I)V

    :cond_3
    iget-object v1, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v1, :cond_5

    check-cast v1, Lf/a/k/m0/r0;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    throw v3

    .line 7
    :cond_5
    :goto_1
    iget-object v1, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lf/a/i/h/b;->notifyPhoneDisconnect(I)V

    :cond_6
    iget-object p1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 8
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 9
    invoke-virtual {p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendLinkOutBroadcast()V

    iget-object p1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {p1, v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d(Z)V

    const-string p1, "notifyPhoneDisconnect end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lf/a/i/i/m;->t:Z

    iput-boolean v0, p0, Lf/a/i/i/m;->j:Z

    iget-object p1, p0, Lf/a/i/i/m;->E:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lf/a/i/i/m;->u:I

    invoke-virtual {p0}, Lf/a/i/i/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/i/i/m;->j:Z

    :cond_0
    return-void
.end method

.method public j(Lf/a/i/h/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcCallBack setVideoEventListener iMirrorEventListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lf/a/i/i/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lf/a/i/i/m;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lf/a/i/i/m;->t:Z

    iget v1, p0, Lf/a/i/i/m;->u:I

    check-cast p1, Lf/a/k/m0/r0;

    invoke-virtual {p1, v0, v1}, Lf/a/k/m0/r0;->d(ZI)V

    :cond_2
    return-void
.end method

.method public onBulkDataReceived(Ljava/nio/ByteBuffer;I)V
    .locals 0

    return-void
.end method

.method public onCallAction(Lnet/easyconn/ecsdk/ECTypes$ECCallType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallAction type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; number is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lf/a/i/h/b;->onPhoneCallAction(Lnet/easyconn/ecsdk/ECTypes$ECCallType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCarCmdNotified(Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;)V
    .locals 2

    const-string v0, "onCarCmdNotified carCmd.cmd:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " carCmd.id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " carCmd.pauseMusic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->pauseMusic:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/a;->onVoiceCMD(Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;)V

    :cond_0
    return-void
.end method

.method public onECStatusMessage(Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;)V
    .locals 5

    const-string v0, "onECStatusMessage - onECStatusMessage begin "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "onECStatusMessage - EC_STATUS_MESSAGE_ACQUIRE_BLUETOOTH_A2DP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1
    :pswitch_1
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SPLIT_OVERLAY:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    goto/16 :goto_2

    :pswitch_2
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_FOREGROUND_SPLIT_OVERLAY:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_IOS_APP_MIRROR_CLOSEING"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lf/a/i/h/c;->F()V

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_IOS_APP_MIRROR_STARTING"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lf/a/i/h/c;->A()V

    goto/16 :goto_4

    :pswitch_5
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_NET_LINK_CLOSE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EC_AUTO_NET_LINK_KEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    iget-object v0, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    invoke-virtual {v0, v2}, Lf/a/i/i/q;->p0(Z)Z

    goto/16 :goto_4

    :pswitch_6
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_NET_LINK_OPEN"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->m0()Z

    goto/16 :goto_4

    :pswitch_7
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_IMUX_READ_VERSION_TIMEOUT"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lf/a/i/h/c;->d()V

    goto/16 :goto_4

    :pswitch_8
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_VR_TIPS_SHOW"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Lf/a/i/h/b;->onCustomVrShow(Z)V

    goto/16 :goto_4

    :pswitch_9
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_VR_TIPS_HIDE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lf/a/i/h/b;->onCustomVrShow(Z)V

    goto/16 :goto_4

    :pswitch_a
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_DISABLE_ACCESSIBILITY"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lf/a/i/i/m;->f(Z)V

    goto/16 :goto_4

    :pswitch_b
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_ENABLE_ACCESSIBILITY"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lf/a/i/i/m;->f(Z)V

    goto/16 :goto_4

    :pswitch_c
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_SWITCH_EASYCONN_TO_BACKGROUND"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz v0, :cond_8

    check-cast v0, Lf/a/k/g0;

    .line 4
    invoke-virtual {v0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_4

    :pswitch_d
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_OPEN_BLUETOOTH_SETTING"

    .line 5
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lf/a/i/h/b;->onOpenBluetoothSetting()V

    goto/16 :goto_4

    :pswitch_e
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_OPEN_BLUETOOTH_PHONE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lf/a/i/h/b;->onAcquire2BluePhoneView()V

    goto/16 :goto_4

    :pswitch_f
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_SWITCH_TO_FRONT"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    invoke-interface {v0}, Lf/a/i/h/b;->onPullToFront()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BroadcastEventListener onPullToFront"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    const/high16 v1, 0x10200000

    const-string v2, "android.intent.category.DEFAULT"

    const-string v3, "net.easyconn6.mainactivity"

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    if-eqz v0, :cond_8

    .line 6
    iget-boolean v0, v0, Lf/a/i/i/q;->Z:Z

    if-nez v0, :cond_8

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_1
    check-cast v0, Lf/a/k/g0;

    .line 8
    sget-boolean v4, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v4, :cond_8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :pswitch_10
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_TALKIE_STOPPED"

    .line 9
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Lf/a/i/h/b;->onTalkieRecordStatus(Z)V

    :cond_2
    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lf/a/i/h/a;->onTalkieRecordStatus(Z)V

    goto/16 :goto_4

    :pswitch_11
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_TALKIE_STARTED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Lf/a/i/h/b;->onTalkieRecordStatus(Z)V

    :cond_3
    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Lf/a/i/h/a;->onTalkieRecordStatus(Z)V

    goto/16 :goto_4

    :pswitch_12
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_SWITCH_TO_SYSTEM_MAIN_PAGE"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz v0, :cond_8

    check-cast v0, Lf/a/k/g0;

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, v0, Lf/a/k/g0;->u:Lf/a/i/j/c;

    const v1, 0x13880

    const/16 v2, 0x2774

    const-string v3, "EC_WW_MIRROR_SUCCEED_MENU_HOME"

    invoke-virtual {v0, v1, v2, v3}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    goto/16 :goto_4

    .line 11
    :pswitch_13
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3, v2}, Lf/a/i/h/b;->onA2dpAcquire(ZZ)V

    :cond_4
    iget-object v0, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz v0, :cond_8

    goto :goto_0

    :pswitch_14
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3, v3}, Lf/a/i/h/b;->onA2dpAcquire(ZZ)V

    :cond_5
    iget-object v0, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz v0, :cond_8

    :goto_0
    check-cast v0, Lf/a/k/g0;

    goto/16 :goto_4

    :pswitch_15
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_VR_STOPPED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Lf/a/i/h/a;->onVRStatus(Z)V

    :cond_6
    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lf/a/i/h/b;->onAppVRStatus(Z)V

    goto/16 :goto_4

    :pswitch_16
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_VR_STARTED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, v3}, Lf/a/i/h/a;->onVRStatus(Z)V

    :cond_7
    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Lf/a/i/h/b;->onAppVRStatus(Z)V

    goto :goto_4

    :pswitch_17
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_NAVI_STOPPED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lf/a/i/h/b;->onAppNaviStatus(Z)V

    goto :goto_4

    :pswitch_18
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_NAVI_STARTED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Lf/a/i/h/b;->onAppNaviStatus(Z)V

    goto :goto_4

    :pswitch_19
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_UNSCREENLOCKED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_8

    check-cast v0, Lf/a/k/m0/r0;

    const-string v1, "onPhoneScreenLockStatusChange locked = false"

    .line 12
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v2, v0, Lf/a/k/m0/r0;->o:Z

    goto :goto_1

    :pswitch_1a
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_SCREENLOCKED"

    .line 13
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_8

    check-cast v0, Lf/a/k/m0/r0;

    const-string v1, "onPhoneScreenLockStatusChange locked = true"

    .line 14
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v3, v0, Lf/a/k/m0/r0;->o:Z

    .line 15
    :goto_1
    invoke-virtual {p0}, Lf/a/i/i/m;->i()V

    goto :goto_4

    :pswitch_1b
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SPLIT:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    goto :goto_2

    :pswitch_1c
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_BACKGROUND_SAME:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    :goto_2
    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lf/a/i/i/m;->g(ZII)V

    goto :goto_4

    :pswitch_1d
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_FOREGROUND"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :pswitch_1e
    const-string v0, "onECStatusMessage - EC_STATUS_MESSAGE_APP_FOREGROUND_SAME"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :pswitch_1f
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->EC_STATUS_MESSAGE_APP_FOREGROUND:Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;

    :goto_3
    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECStatusMessage;->getValue()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Lf/a/i/i/m;->g(ZII)V

    :cond_8
    :goto_4
    const-string v0, "onECStatusMessage - onECStatusMessage end "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onInputCancel()V
    .locals 1

    const-string v0, "onInputCancel"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/m0/r0;

    .line 1
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->p()V

    goto :goto_0

    :cond_0
    const-string v0, "iMirrorEventListener is null"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onInputSelection(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputSelection->start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/m0/r0;

    .line 1
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, p1, p2}, Lf/a/k/k0/d;->y(II)V

    goto :goto_0

    :cond_0
    const-string p1, "iMirrorEventListener is null"

    .line 2
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onInputStart(Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputStart->ecInputInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/m0/r0;

    .line 1
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, p1}, Lf/a/k/k0/d;->D(Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;)V

    goto :goto_0

    :cond_0
    const-string p1, "iMirrorEventListener is null"

    .line 2
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onInputText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onInputText->s = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_0

    check-cast v0, Lf/a/k/m0/r0;

    .line 1
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, p1}, Lf/a/k/k0/d;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLicenseAuthFail(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLicenseAuthFail->errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lf/a/i/i/q;->l:Z

    iput p1, v0, Lf/a/i/i/q;->o:I

    iput-object p2, v0, Lf/a/i/i/q;->p:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseLicenseAuthFailQueryType exception, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "queryType"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 3
    :cond_0
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;->EC_CAR_AUTH_QUERY_TYPE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->Z()V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lf/a/i/h/c;->onLicenseAuthFail(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;->EC_CAR_AUTH_QUERY_TYPE_QUICK:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lf/a/i/h/c;->P(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLicenseAuthSuccess(ILjava/lang/String;)V
    .locals 1

    const-string v0, "onLicenseAuthSuccess"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lf/a/i/h/c;->onLicenseAuthSuccess(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz p1, :cond_2

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    throw p1

    .line 2
    :cond_2
    :goto_0
    iget-object p1, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lf/a/i/h/b;->onLicenseAuthSuccess()V

    :cond_3
    return-void
.end method

.method public onMirrorDisconnected()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onMirrorDisconnected()"

    invoke-static {v2, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    check-cast v1, Lf/a/k/g0;

    invoke-virtual {v1, v2}, Lf/a/k/g0;->i0(I)Z

    :cond_0
    iget-object v1, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v1, :cond_1

    check-cast v1, Lf/a/k/m0/r0;

    invoke-virtual {v1, v2}, Lf/a/k/m0/r0;->x(I)V

    :cond_1
    iput-boolean v0, p0, Lf/a/i/i/m;->j:Z

    return-void
.end method

.method public onMirrorRequestReconnect()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onMirrorRequestReconnect()"

    invoke-static {v2, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ecSdkManager.isAppForeground()->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 1
    iget-boolean v2, v2, Lf/a/i/i/q;->Z:Z

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz v0, :cond_2

    check-cast v0, Lf/a/k/g0;

    .line 3
    iget-object v1, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v2, v1, Lf/a/i/i/q;->Z:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, v0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v0, v0, Lf/a/k/l0/g3;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lf/a/i/i/q;->k0()V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_3

    check-cast v0, Lf/a/k/m0/r0;

    .line 8
    iget-object v1, v0, Lf/a/k/m0/r0;->b:Landroid/os/Handler;

    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lf/a/k/m0/i0;

    invoke-direct {v2, v0}, Lf/a/k/m0/i0;-><init>(Lf/a/k/k0/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, " MirrorPresenter onMirrorRequestReconnect"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onMirrorVideoInfoChanged(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMirrorVideoInfoChanged i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i1 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i2 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method public onMirrorVideoReceived([BIILnet/easyconn/ecsdk/ECTypes$ECVideoInfo;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v9, p4

    const-string v2, "/mnt/sdcard/h264/"

    iget-boolean v0, v1, Lf/a/i/i/m;->b:Z

    if-nez v0, :cond_0

    const-string v0, "onMirrorVideoReceived() firstFrame start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_6

    iget-wide v12, v1, Lf/a/i/i/m;->y:J

    sub-long v12, v10, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMirrorVideoReceived decode time start = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " frame len = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from last end time = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lf/a/i/i/m;->y:J

    cmp-long v4, v14, v6

    if-eqz v4, :cond_1

    move-wide v14, v12

    :cond_1
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-wide v14, v1, Lf/a/i/i/m;->y:J

    cmp-long v0, v14, v6

    if-lez v0, :cond_2

    const-wide/16 v14, 0x8

    cmp-long v0, v12, v14

    if-gez v0, :cond_2

    cmp-long v0, v12, v6

    if-ltz v0, :cond_2

    sub-long/2addr v14, v12

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v0, v1, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v1, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    iget-object v4, v1, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    aget-byte v8, v3, v0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    if-lt v0, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const-string v0, "onMirrorVideoReceived H264 type = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v1, Lf/a/i/i/m;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v0, v1, Lf/a/i/i/m;->c:Z

    const/4 v12, 0x1

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lf/a/i/i/m;->s:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lf/a/i/i/m;->r:Z

    if-eqz v0, :cond_a

    :cond_7
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_8
    iget v0, v1, Lf/a/i/i/m;->z:I

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v13, v1, Lf/a/i/i/m;->A:J

    sub-long/2addr v6, v13

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%05d"

    new-array v8, v12, [Ljava/lang/Object;

    iget v13, v1, Lf/a/i/i/m;->z:I

    add-int/2addr v13, v12

    iput v13, v1, Lf/a/i/i/m;->z:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v8, v14

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".h264"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lf/a/i/i/m;->A:J

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    iget-object v0, v1, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v2, :cond_b

    iget-object v0, v1, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_c

    iget v6, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorWidth:I

    iget v7, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->mirrorHeight:I

    iget v8, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->direction:I

    check-cast v0, Lf/a/k/m0/r0;

    .line 1
    iget-object v2, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v2 .. v8}, Lf/a/k/k0/d;->F([BIIIII)V

    goto :goto_5

    .line 2
    :cond_b
    iget-object v0, v1, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_c

    check-cast v0, Lf/a/k/m0/r0;

    .line 3
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    move/from16 v2, p2

    invoke-interface {v0, v3, v2, v5}, Lf/a/k/k0/d;->H([BII)V

    .line 4
    :cond_c
    :goto_5
    iget v0, v1, Lf/a/i/i/m;->w:I

    iget v2, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    if-ne v0, v2, :cond_d

    iget v0, v1, Lf/a/i/i/m;->x:I

    iget v2, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    if-eq v0, v2, :cond_f

    :cond_d
    iget-object v0, v1, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_e

    const-string v0, "onMirrorVideoInfoChanged w="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " i2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->direction:I

    invoke-static {v0, v2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v0, v1, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    iget v2, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    iget v3, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    iget v4, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->direction:I

    check-cast v0, Lf/a/k/m0/r0;

    .line 5
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0, v2, v3, v4}, Lf/a/k/k0/d;->l(III)V

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "onMirrorVideoReceived iMirrorEventListener is null, can not callback to ui"

    .line 6
    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_6
    iget v0, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realWidth:I

    iput v0, v1, Lf/a/i/i/m;->w:I

    iget v0, v9, Lnet/easyconn/ecsdk/ECTypes$ECVideoInfo;->realHeight:I

    iput v0, v1, Lf/a/i/i/m;->x:I

    iput-boolean v12, v1, Lf/a/i/i/m;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v10

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-gtz v0, :cond_10

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_11

    :cond_10
    iput-wide v2, v1, Lf/a/i/i/m;->y:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode time total consume  time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_11
    iget-boolean v0, v1, Lf/a/i/i/m;->b:Z

    if-nez v0, :cond_12

    iput-boolean v12, v1, Lf/a/i/i/m;->b:Z

    const-string v0, "onMirrorVideoReceived() firstFrame end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public onOTAUpdateCheckResult([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOTAUpdateCheckResult ecotaUpdateSoftwares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ecotaUpdateSoftwares1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",i1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lf/a/i/h/g;->u([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I[Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V

    :cond_0
    return-void
.end method

.method public onOTAUpdateCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOTAUpdateCompleted s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s3="

    const-string v2, ",i="

    invoke-static {v0, p3, v1, p4, v2}, Le/a/c/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p5}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v3, p0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    if-eqz v3, :cond_0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lf/a/i/h/g;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onOTAUpdateError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOTAUpdateError s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lf/a/i/h/g;->M(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOTAUpdateProgress(Ljava/lang/String;FII)V
    .locals 2

    const-string v0, "onOTAUpdateProgress->iOTAUpdateListener:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " i1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p4}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v0, p0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lf/a/i/h/g;->j(Ljava/lang/String;FII)V

    :cond_0
    return-void
.end method

.method public onOTAUpdateRequestDownload([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V
    .locals 1

    const-string v0, "onOTAUpdateRequestDownload"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->q:Lf/a/i/h/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lf/a/i/h/g;->onOTAUpdateRequestDownload([Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;I)V

    :cond_0
    return-void
.end method

.method public onPageIconReceived([Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "onPageIconReceived ecIconInfos is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 1
    iget-boolean v1, v1, Lf/a/i/i/q;->T:Z

    if-nez v1, :cond_1

    const-string p1, "onPageIconReceived ecIconInfos, but not TransportOpen, return"

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "onPageIconReceived begin"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/i/m;->D:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v2, p0, Lf/a/i/i/m;->l:Ljava/util/List;

    if-nez v2, :cond_3

    const-string p1, "onPageIconReceived pageInfoList is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, p1, v3

    iget-object v5, p0, Lf/a/i/i/m;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;

    iget v7, v4, Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;->page:I

    iget v8, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    if-ne v7, v8, :cond_4

    iget-object v5, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    iget-object v7, v4, Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;->iconData:[B

    iget-object v8, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget v9, v4, Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;->iconFormat:I

    invoke-static {v5, v7, v8, v9}, Ld/s/y;->Z(Ljava/io/File;[BLjava/lang/String;I)Ljava/io/File;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPageIconReceived save icon page = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;->page:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", saveFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v5, :cond_5

    invoke-static {v5}, Ld/s/y;->F(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPageIconReceived saveIcon md5 not correct, saveFileMd5 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pageInfo.iconMd5 = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPageListReceived onPageListDownloads remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;->page:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lf/a/i/i/m;->E:Ljava/util/HashSet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lnet/easyconn/ecsdk/ECTypes$ECIconInfo;->page:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "onPageIconReceived handle completed lock end send PAGE_LIST_ICON_RECEIVED"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/m;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    iget-object v1, p0, Lf/a/i/i/m;->l:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onPageInstallResult([Lnet/easyconn/ecsdk/ECTypes$ECPageInstallResult;)V
    .locals 2

    const-string v0, "onPageInstallResult->ecPageInstallResults"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageInstallResult  send PAGE_LIST_INSTALL_RESULT ecPageInstallResults = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onPageInstallResult ecPageInstallResults is null"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPageListReceived([Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "onPageListReceived ecPageInfos is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 1
    iget-boolean v1, v1, Lf/a/i/i/q;->T:Z

    if-nez v1, :cond_1

    const-string p1, "onPageListReceived ecPageInfos, but not TransportOpen, return"

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "onPageListReceived begin"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    if-nez v1, :cond_7

    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/shortcut"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    const-string p1, "onPageListReceived shortcutPath is null !!!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    :cond_7
    const-string v1, "onPageListReceived shortcutPath = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    if-eqz v2, :cond_8

    const-string v2, " exist = "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isWrite = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isRead = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/i/m;->D:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_b

    aget-object v6, p1, v5

    iget-object v7, p0, Lf/a/i/i/m;->C:Ljava/io/File;

    new-instance v8, Lf/a/i/i/a;

    invoke-direct {v8, v6}, Lf/a/i/i/a;-><init>(Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPageListReceived pageInfo page = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " iconMd5 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " packageSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->packageSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " installState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->installState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v7, :cond_a

    array-length v8, v7

    if-lez v8, :cond_a

    iget-object v8, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->iconMd5:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aget-object v7, v7, v0

    invoke-static {v7}, Ld/s/y;->F(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    :cond_a
    iget v6, v6, Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageListReceived iconQueryList size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_11

    iput-object v1, p0, Lf/a/i/i/m;->l:Ljava/util/List;

    const/4 p1, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_f

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lf/a/i/i/m;->E:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageListReceived onPageListDownloads add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v4, p0, Lf/a/i/i/m;->E:Ljava/util/HashSet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/2addr p1, v0

    goto :goto_4

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageListReceived iconQueryList handle completed size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    monitor-exit v2

    return-void

    :cond_10
    iget-object p1, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    iget-object v0, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    :cond_11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "onPageListReceived pageList send PAGE_LIST_RECEIVED"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/i/m;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public onPageStatusChanged(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStatusChanged-> page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lf/a/i/h/c;->onPageStatusChanged(III)V

    :cond_0
    return-void
.end method

.method public onParallelWorldAudioSource(I)V
    .locals 1

    const-string v0, "onParallelWorldAudioSource = "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/c;->onParallelWorldAudioSource(I)V

    :cond_0
    const-string p1, "onParallelWorldAudioSource end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onParallelWorldCache(Lnet/easyconn/ecsdk/ECTypes$ECParallelWorldCache;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParallelWorldCache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    iget v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECParallelWorldCache;->noticeType:I

    iget v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECParallelWorldCache;->parallelWorldUsedCache:I

    iget p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECParallelWorldCache;->phoneLeftSpace:I

    invoke-interface {v0, v1, v2, p1}, Lf/a/i/h/c;->o(III)V

    :cond_0
    return-void
.end method

.method public onPhoneAppExited()V
    .locals 5

    const-string v0, "onPhoneAppExited"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lf/a/i/i/m;->h(I)Z

    new-instance v1, Lf/a/i/i/m$d;

    invoke-direct {v1, p0}, Lf/a/i/i/m$d;-><init>(Lf/a/i/i/m;)V

    .line 1
    sget-object v2, Lf/a/i/i/m;->G:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "APP_USB_EXITED_RECONNECT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "onPhoneAppExited usb can\'t reopenTransport, return"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "onPhoneAppExited wait 2000 openTransport"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    iget-object v2, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 5
    iput-boolean v1, v0, Lf/a/i/i/q;->B:Z

    return-void
.end method

.method public onPhoneAppHUD(Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneAppHUD->data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/b;->onNavigationInfo(Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;)V

    :cond_0
    return-void
.end method

.method public onPhoneAppHUDLaneGuidancePicture(Lnet/easyconn/ecsdk/ECTypes$ECHudLaneGuidancePictureInfo;)V
    .locals 0

    return-void
.end method

.method public onPhoneAppHUDRoadJunctionPicture(Lnet/easyconn/ecsdk/ECTypes$ECHudRoadJunctionPictureInfo;)V
    .locals 0

    return-void
.end method

.method public onPhoneAppInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onPhoneAppInfo data="

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onPhoneAppMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneAppMusicInfo->ecAppMusicInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/b;->onAppMusicStatus(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V

    :cond_0
    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lf/a/i/h/a;->onMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V

    :cond_1
    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lf/a/i/h/c;->onMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V

    :cond_2
    return-void
.end method

.method public onPhoneAppMusicInfoCover(Lnet/easyconn/ecsdk/ECTypes$ECMusicInfoCover;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicInfoCover = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECMusicInfoCover;->data:[B

    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lf/a/i/h/c;->m0([BI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lf/a/i/h/c;->m0([BI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhoneAudioData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lf/a/i/i/m;->v:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-string v2, "onPhoneAudioData-name="

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    iput-wide v0, p0, Lf/a/i/i/m;->v:J

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lf/a/i/h/a;->onQtData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lf/a/i/h/a;->onData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPhoneAudioInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 2

    const-string v0, "onPhoneAudioInterrupt:type = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/a;->onInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_0
    return-void
.end method

.method public onPhoneAudioSetVolume(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V
    .locals 2

    const-string v0, "onPhoneAudioSetVolume type = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    invoke-interface {v0, p1, p2}, Lf/a/i/h/a;->onVolume(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;F)V

    :cond_0
    return-void
.end method

.method public onPhoneAudioStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
    .locals 2

    const-string v0, "onPhoneAudioStart:type = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECAudioInfo = (sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->channel:Lnet/easyconn/ecsdk/ECTypes$ECAudioChannelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;->format:Lnet/easyconn/ecsdk/ECTypes$ECAudioFormatType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lf/a/i/h/a;->onQtStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lf/a/i/h/a;->onStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lf/a/i/h/b;->onPhoneAudioStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_2
    return-void
.end method

.method public onPhoneAudioStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 2

    const-string v0, "onPhoneAudioStop:type = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lf/a/i/h/a;->onQtStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lf/a/i/h/a;->onStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lf/a/i/h/b;->onPhoneAudioStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_2
    return-void
.end method

.method public onPhoneBluetoothState(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneBluetoothState state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneBtMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lf/a/i/h/c;->onPhoneBluetoothState(ILjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    check-cast p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {p2, p1}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e(I)V

    return-void
.end method

.method public onPhoneConnected(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/i/m;->b:Z

    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "key_ec_save_h264_state"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    iput-boolean v1, p0, Lf/a/i/i/m;->s:Z

    new-instance v1, Ljava/io/File;

    invoke-static {}, Ld/s/y;->I()Ljava/io/File;

    move-result-object v2

    const-string v3, "h264"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-boolean v2, p0, Lf/a/i/i/m;->c:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lf/a/i/i/m;->s:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lf/a/i/i/m;->r:Z

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/h264/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lf/a/i/i/m;->y:J

    iput v0, p0, Lf/a/i/i/m;->z:I

    iput-wide v1, p0, Lf/a/i/i/m;->A:J

    const-string v1, "onPhoneConnected type is "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " h264.exists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf/a/i/i/m;->r:Z

    invoke-static {v1, v2}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_ANDROID_WIFI:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->D(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq p1, v1, :cond_4

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->E(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lf/a/i/i/m;->h:Lf/a/i/i/q;

    .line 3
    iget-boolean v1, v1, Lf/a/i/i/q;->T:Z

    if-eqz v1, :cond_6

    const-string p1, "Transport is opened, return."

    .line 4
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_APP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, v1, :cond_7

    const-string p1, "Airplay enabled, not to response ios inner connection, return."

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v2

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECSDK;->getWifiPhoneIp()Ljava/lang/String;

    move-result-object v2

    const-string v4, "USB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "127."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-object v1, p0, Lf/a/i/i/m;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_9

    :cond_9
    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    const-string v4, ""

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "WLAN_INTERFACE_NAME"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "interceptOpenTransport wifi wlanInterface = "

    invoke-static {v4, v1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lf/a/i/i/m;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v6, v7, :cond_c

    goto/16 :goto_7

    :cond_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_19

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    const-string v6, "interceptOpenTransport wifi frequency = "

    invoke-static {v6, v5}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/16 v6, 0xbb8

    if-ge v5, v6, :cond_19

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "interceptOpenTransport wifi phoneIpv = "

    invoke-static {v6, v2}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    :cond_d
    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " displayName = "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " begin"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    :cond_10
    :goto_4
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    instance-of v10, v8, Ljava/net/Inet4Address;

    if-eqz v10, :cond_14

    invoke-virtual {v9, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ipv4 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v1, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_5

    :cond_11
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "IS_CONNECT_2_4G_NETWORK"

    const-string v4, "true"

    invoke-virtual {v1, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    .line 9
    :goto_6
    iget-object v2, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lf/a/i/i/m;->m:Lf/a/i/h/c;

    invoke-interface {v2, v1}, Lf/a/i/h/c;->f0(Z)V

    :cond_13
    if-eqz v1, :cond_1a

    const-string v2, "interceptOpenTransport not isConnect2_4GWlan, return"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptOpenTransport wifi wlanInterface "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ipv6 = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :cond_15
    :goto_7
    const-string v1, "interceptOpenTransport connectionInfo is not COMPLETED, return"

    goto :goto_b

    :cond_16
    :goto_8
    const-string v1, "interceptOpenTransport wlanInterface is null, return"

    goto :goto_b

    :cond_17
    :goto_9
    const-string v1, "interceptOpenTransport mWifiManager is null or isWifiDisabled, return"

    goto :goto_b

    :cond_18
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptOpenTransport type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wifiPhoneIp = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", return"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_19
    :goto_c
    const/4 v1, 0x0

    :cond_1a
    :goto_d
    if-eqz v1, :cond_1b

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onPhoneConnected wifi wlanInterface is 2.4G, can\'t connect"

    .line 10
    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, v0, :cond_1c

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    :cond_1c
    iput-object p1, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const/4 p1, -0x1

    iput p1, p0, Lf/a/i/i/m;->u:I

    iget-object p1, p0, Lf/a/i/i/m;->E:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send message to open transport ecTransportType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoneControlCarRequest(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onPhoneControlCarRequest s = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lf/a/i/i/m;->F:Lf/a/i/h/e;

    if-eqz p1, :cond_1

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhoneDisconnected(I)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/i/i/m;->b:Z

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "EcSdkManager msg.what = removeAll"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-nez v0, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "onPhoneDisconnected type is null"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onPhoneDisconnected type is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/i/i/m;->h(I)Z

    new-instance v0, Lf/a/i/i/m$b;

    invoke-direct {v0, p0}, Lf/a/i/i/m$b;-><init>(Lf/a/i/i/m;)V

    .line 1
    sget-object v1, Lf/a/i/i/m;->G:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lf/a/i/i/m;->n:Lf/a/i/h/d;

    if-eqz v0, :cond_1

    check-cast v0, Lf/a/k/m0/r0;

    .line 3
    iget-object v0, v0, Lf/a/k/m0/r0;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->p()V

    .line 4
    :cond_1
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_MAX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iput-object v0, p0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const-string v0, "resetMirrorSize"

    .line 5
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lf/a/i/i/m;->w:I

    iput v0, p0, Lf/a/i/i/m;->x:I

    .line 6
    iput-boolean p1, p0, Lf/a/i/i/m;->k:Z

    .line 7
    invoke-virtual {p0}, Lf/a/i/i/m;->i()V

    const-string p1, "onPhoneDisconnected end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoneNotification(Lnet/easyconn/ecsdk/ECTypes$ECPhoneNotification;)V
    .locals 0

    return-void
.end method

.method public onStartCarMicRecord(Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)I
    .locals 2

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lf/a/i/h/a;->onCarMicRecord(ZLnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "onStartCarMicRecord ret = "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    return p1
.end method

.method public onStopCarMicRecord()V
    .locals 3

    const-string v0, "onStopCarMicRecord "

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->o:Lf/a/i/h/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lf/a/i/h/a;->onCarMicRecord(ZLnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)I

    :cond_0
    return-void
.end method

.method public onTransportStopedByApp()V
    .locals 2

    const-string v0, "onTransportStopedByApp"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lf/a/i/i/m;->h(I)Z

    new-instance v0, Lf/a/i/i/m$c;

    invoke-direct {v0, p0}, Lf/a/i/i/m$c;-><init>(Lf/a/i/i/m;)V

    .line 1
    sget-object v1, Lf/a/i/i/m;->G:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVRTextReceived(Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVRTextReceived->vrTextInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/b;->onPhoneVRText(Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;)V

    :cond_0
    return-void
.end method

.method public onVRTipsReceived(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onVRTipsReceived->s = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->B(Landroid/content/Context;)Z

    move-result v0

    const-string v1, " onVRTipsReceived enableVRTips = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/b;->onVRTips(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVirtualInstStateChanged(Lnet/easyconn/ecsdk/ECTypes$ECVirtualInstStateData;)V
    .locals 0

    return-void
.end method

.method public onWeatherReceived(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onWeatherReceived->info = "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/i/i/m;->i:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->C(Landroid/content/Context;)Z

    move-result v0

    const-string v1, " onWeatherReceived enableWeatherInfo = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/i/i/m;->p:Lf/a/i/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/h/b;->onWeatherInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
