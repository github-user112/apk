.class public Lcom/tencent/bugly/proguard/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public final c:Landroid/content/Context;

.field public final d:I

.field public final e:[B

.field public final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field public final g:Lcom/tencent/bugly/crashreport/common/strategy/c;

.field public final h:Lcom/tencent/bugly/proguard/P;

.field public final i:Lcom/tencent/bugly/proguard/W;

.field public final j:I

.field public final k:Lcom/tencent/bugly/proguard/T;

.field public final l:Lcom/tencent/bugly/proguard/T;

.field public m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:J

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;ZIIZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/T;",
            "ZIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, 0x2

    iput p8, p0, Lcom/tencent/bugly/proguard/X;->a:I

    const/16 p8, 0x7530

    iput p8, p0, Lcom/tencent/bugly/proguard/X;->b:I

    const/4 p8, 0x0

    iput-object p8, p0, Lcom/tencent/bugly/proguard/X;->m:Ljava/lang/String;

    const/4 p8, 0x0

    iput p8, p0, Lcom/tencent/bugly/proguard/X;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/X;->q:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/X;->r:J

    iput-boolean p8, p0, Lcom/tencent/bugly/proguard/X;->s:Z

    iput-object p1, p0, Lcom/tencent/bugly/proguard/X;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p8

    iput-object p8, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/X;->e:[B

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/proguard/X;->g:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/P;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/P;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/X;->h:Lcom/tencent/bugly/proguard/P;

    invoke-static {}, Lcom/tencent/bugly/proguard/W;->a()Lcom/tencent/bugly/proguard/W;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/X;->i:Lcom/tencent/bugly/proguard/W;

    iput p2, p0, Lcom/tencent/bugly/proguard/X;->j:I

    iput-object p5, p0, Lcom/tencent/bugly/proguard/X;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/bugly/proguard/X;->n:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/bugly/proguard/X;->k:Lcom/tencent/bugly/proguard/T;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/W;->d:Lcom/tencent/bugly/proguard/T;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/X;->l:Lcom/tencent/bugly/proguard/T;

    iput p3, p0, Lcom/tencent/bugly/proguard/X;->d:I

    if-lez p9, :cond_0

    iput p9, p0, Lcom/tencent/bugly/proguard/X;->a:I

    :cond_0
    if-lez p10, :cond_1

    iput p10, p0, Lcom/tencent/bugly/proguard/X;->b:I

    :cond_1
    iput-boolean p11, p0, Lcom/tencent/bugly/proguard/X;->s:Z

    iput-object p12, p0, Lcom/tencent/bugly/proguard/X;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;ZZ)V
    .locals 13

    const/4 v9, 0x2

    const/16 v10, 0x7530

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/tencent/bugly/proguard/X;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/T;ZIIZLjava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/bugly/proguard/X;->b(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[Upload] Failed to upload for no status header."

    invoke-virtual {p0, v2, v0}, Lcom/tencent/bugly/proguard/X;->a(ILjava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "[key]: %s, [value]: %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 v0, -0x1

    const-string v4, "status"

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p1, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    const-string p1, "status of server is "

    invoke-static {p1, v9}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move v0, v9

    :catchall_1
    const-string p1, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/tencent/bugly/proguard/X;->a(ILjava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a([BLcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/ha;->a([BI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/tencent/bugly/proguard/N;->a([BLcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)Lcom/tencent/bugly/proguard/ua;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v8, "failed to decode response package"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    iget p2, v3, Lcom/tencent/bugly/proguard/ua;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, v3, Lcom/tencent/bugly/proguard/ua;->e:[B

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    array-length v0, p2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/X;->g:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/c;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const-string v6, "failed to process response package"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const-string v6, "successfully uploaded"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a([BLjava/util/Map;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "Failed to upload for no response!"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/bugly/proguard/X;->a(ILjava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[Upload] Received %d bytes"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    array-length p1, p1

    if-nez p1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v8, "response data from server is empty"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "[Upload] HTTP headers from server: key = %s, value = %s"

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ha;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method private a([BLjava/util/Map;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/X;->a([BLjava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/X;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/proguard/X;->a([BLcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "tls"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prodId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    const-string v2, "bundleId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/lang/String;

    const-string v2, "appVer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->o:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget v1, p0, Lcom/tencent/bugly/proguard/X;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "platformId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    const-string v2, "sdkVer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->g:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "strategylastUpdateTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "status"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "[Upload] Headers does not contain %s"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v1, p0, v0

    invoke-static {v3, p0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_1
    const-string v1, "Bugly-Version"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v1, p0, v0

    invoke-static {v3, p0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "bugly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "[Upload] Bugly version is not valid: %s"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "[Upload] Bugly version from headers is: %s"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v4

    :cond_4
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "[Upload] Headers is empty."

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "network is not available"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->e:[B

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->c:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->g:Lcom/tencent/bugly/crashreport/common/strategy/c;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->h:Lcom/tencent/bugly/proguard/P;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "illegal local strategy"

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "illegal access error"

    return-object v0

    :cond_5
    :goto_1
    const-string v0, "request package is empty!"

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->i:Lcom/tencent/bugly/proguard/W;

    iget v1, p0, Lcom/tencent/bugly/proguard/X;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/W;->a(IJ)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->k:Lcom/tencent/bugly/proguard/T;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/X;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/bugly/proguard/T;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/X;->l:Lcom/tencent/bugly/proguard/T;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tencent/bugly/proguard/X;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/bugly/proguard/T;->a(I)V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "[Upload] Failed to upload(%d): %s"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/X;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/X;->r:J

    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V
    .locals 13

    move-object v0, p0

    iget v1, v0, Lcom/tencent/bugly/proguard/X;->d:I

    const/16 v2, 0x276

    if-eq v1, v2, :cond_1

    const/16 v2, 0x280

    if-eq v1, v2, :cond_0

    const/16 v2, 0x33e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x348

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "userinfo"

    goto :goto_0

    :cond_1
    const-string v1, "crash"

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "[Upload] Success: %s"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object p4, v4, v1

    const-string v1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    iget-wide v1, v0, Lcom/tencent/bugly/proguard/X;->q:J

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/X;->r:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-object v1, v0, Lcom/tencent/bugly/proguard/X;->i:Lcom/tencent/bugly/proguard/W;

    iget-boolean v2, v0, Lcom/tencent/bugly/proguard/X;->s:Z

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/W;->a(Z)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/X;->q:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/X;->r:J

    add-long/2addr v1, v3

    iget-object v3, v0, Lcom/tencent/bugly/proguard/X;->i:Lcom/tencent/bugly/proguard/W;

    iget-boolean v4, v0, Lcom/tencent/bugly/proguard/X;->s:Z

    invoke-virtual {v3, v1, v2, v4}, Lcom/tencent/bugly/proguard/W;->a(JZ)V

    :cond_3
    iget-object v4, v0, Lcom/tencent/bugly/proguard/X;->k:Lcom/tencent/bugly/proguard/T;

    if-eqz v4, :cond_4

    iget v5, v0, Lcom/tencent/bugly/proguard/X;->d:I

    iget-wide v7, v0, Lcom/tencent/bugly/proguard/X;->q:J

    iget-wide v9, v0, Lcom/tencent/bugly/proguard/X;->r:J

    move-object v6, p1

    move v11, p2

    move-object/from16 v12, p4

    invoke-interface/range {v4 .. v12}, Lcom/tencent/bugly/proguard/T;->a(ILcom/tencent/bugly/proguard/ua;JJZLjava/lang/String;)V

    :cond_4
    iget-object v4, v0, Lcom/tencent/bugly/proguard/X;->l:Lcom/tencent/bugly/proguard/T;

    if-eqz v4, :cond_5

    iget v5, v0, Lcom/tencent/bugly/proguard/X;->d:I

    iget-wide v7, v0, Lcom/tencent/bugly/proguard/X;->q:J

    iget-wide v9, v0, Lcom/tencent/bugly/proguard/X;->r:J

    move-object v6, p1

    move v11, p2

    move-object/from16 v12, p4

    invoke-interface/range {v4 .. v12}, Lcom/tencent/bugly/proguard/T;->a(ILcom/tencent/bugly/proguard/ua;JJZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    iget p1, p0, Lcom/tencent/bugly/proguard/X;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/X;->p:I

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/X;->q:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/X;->q:J

    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/ua;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/c;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "resp == null!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    iget-byte v1, p1, Lcom/tencent/bugly/proguard/ua;->c:B

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "resp result error %d"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/tencent/bugly/proguard/ua;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ha;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/tencent/bugly/proguard/ua;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/J;->a()Lcom/tencent/bugly/proguard/J;

    move-result-object v3

    sget v4, Lcom/tencent/bugly/crashreport/common/strategy/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "device"

    :try_start_1
    iget-object v1, p1, Lcom/tencent/bugly/proguard/ua;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "UTF-8"

    :try_start_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/J;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/I;Z)Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ua;->i:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    iget-wide v3, p1, Lcom/tencent/bugly/proguard/ua;->g:J

    iput-wide v3, p2, Lcom/tencent/bugly/crashreport/common/info/a;->u:J

    iget p2, p1, Lcom/tencent/bugly/proguard/ua;->d:I

    const/16 v1, 0x1fe

    if-ne p2, v1, :cond_5

    iget-object v1, p1, Lcom/tencent/bugly/proguard/ua;->e:[B

    if-nez v1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_3
    const-class p2, Lcom/tencent/bugly/proguard/wa;

    invoke-static {v1, p2}, Lcom/tencent/bugly/proguard/N;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object p2

    check-cast p2, Lcom/tencent/bugly/proguard/wa;

    if-nez p2, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    iget p1, p1, Lcom/tencent/bugly/proguard/ua;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_4
    invoke-virtual {p3, p2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/proguard/wa;)V

    :cond_5
    return v2
.end method

.method public run()V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/bugly/proguard/X;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/X;->q:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/X;->r:J

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/X;->c()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/X;->e:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/ha;->b([BI)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "failed to zip request body"

    const/4 v8, 0x0

    move-object v3, p0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/X;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/X;->a()V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/X;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/X;->g:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v8, v6, 0x1

    iget v9, p0, Lcom/tencent/bugly/proguard/X;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v6, v9, :cond_4

    if-le v8, v7, :cond_2

    const-string v6, "[Upload] Failed to upload last time, wait and try(%d) again."

    :try_start_2
    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v6, p0, Lcom/tencent/bugly/proguard/X;->b:I

    int-to-long v9, v6

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/ha;->c(J)V

    iget v6, p0, Lcom/tencent/bugly/proguard/X;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v8, v6, :cond_2

    const-string v4, "[Upload] Use the back-up url at the last time: %s"

    :try_start_3
    new-array v6, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/X;->n:Ljava/lang/String;

    aput-object v9, v6, v0

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/aa;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tencent/bugly/proguard/X;->n:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    const-string v6, "[Upload] Send %d bytes"

    :try_start_4
    new-array v9, v7, [Ljava/lang/Object;

    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/tencent/bugly/proguard/X;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v9, 0x4

    :try_start_5
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v0

    iget v10, p0, Lcom/tencent/bugly/proguard/X;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/tencent/bugly/proguard/X;->h:Lcom/tencent/bugly/proguard/P;

    invoke-virtual {v6, v4, v1, p0, v3}, Lcom/tencent/bugly/proguard/P;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/X;Ljava/util/Map;)[B

    move-result-object v6

    iget-object v9, p0, Lcom/tencent/bugly/proguard/X;->h:Lcom/tencent/bugly/proguard/P;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/P;->c:Ljava/util/Map;

    invoke-direct {p0, v6, v9, v5}, Lcom/tencent/bugly/proguard/X;->a([BLjava/util/Map;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    move v6, v8

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v12, "failed after many attempts"

    const/4 v13, 0x0

    move-object v8, p0

    :try_start_6
    invoke-virtual/range {v8 .. v13}, Lcom/tencent/bugly/proguard/X;->a(Lcom/tencent/bugly/proguard/ua;ZILjava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
