.class public Lf/a/i/m/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/h/i;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/i/m/l;->g:J

    iput-wide v0, p0, Lf/a/i/m/l;->h:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lf/a/i/m/l;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/i/m/l;->g:J

    iput-wide v0, p0, Lf/a/i/m/l;->h:J

    iput-wide v0, p0, Lf/a/i/m/l;->e:J

    iput-wide v0, p0, Lf/a/i/m/l;->f:J

    return-void
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lf/a/i/m/l;->a:J

    iget-wide v2, p0, Lf/a/i/m/l;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lf/a/i/m/l;->b:J

    iget-wide v2, p0, Lf/a/i/m/l;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d(JJ)V
    .locals 8

    iget-wide v0, p0, Lf/a/i/m/l;->g:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    iget-wide v2, p0, Lf/a/i/m/l;->h:J

    cmp-long v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long v0, p1, v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iget-wide v6, p0, Lf/a/i/m/l;->c:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lf/a/i/m/l;->c:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lf/a/i/m/l;->e:J

    :cond_1
    iput-wide p1, p0, Lf/a/i/m/l;->g:J

    iget-wide v0, p0, Lf/a/i/m/l;->h:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    sub-long v0, p3, v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    iget-wide v4, p0, Lf/a/i/m/l;->d:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lf/a/i/m/l;->d:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lf/a/i/m/l;->f:J

    :cond_2
    iput-wide p3, p0, Lf/a/i/m/l;->h:J

    const-string v0, "interfaceName totalThisRx "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lf/a/i/m/l;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalThisTx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lf/a/i/m/l;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txBytes = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "interfaceName rtxTraffic rxBytes < lastRx or txBytes < lastTx, return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VpnTrafficStats setDisConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lf/a/i/m/l;->i:Z

    return-void
.end method

.method public final f(Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-wide v0, p0, Lf/a/i/m/l;->a:J

    iget-wide v2, p0, Lf/a/i/m/l;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/a/i/m/l;->a:J

    iget-wide v0, p0, Lf/a/i/m/l;->b:J

    iget-wide v2, p0, Lf/a/i/m/l;->d:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lf/a/i/m/l;->b:J

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/i/m/l;->a:J

    goto :goto_0
.end method
