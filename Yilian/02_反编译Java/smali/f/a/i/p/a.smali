.class public Lf/a/i/p/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public a:Lnet/easyconn/netlink/service/NetLinkService;

.field public b:Z

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/easyconn/netlink/service/NetLinkService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/i/p/a;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lf/a/i/p/a;->d:Ljava/lang/String;

    const-string v0, "C2PThread Constructor service"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lf/a/i/p/a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "C2PThread thread begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-wide/16 v0, 0x64

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "run: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "127.0.0.1"

    iget-object v1, p0, Lf/a/i/p/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lf/a/i/p/a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 1
    iget-object v1, v1, Lnet/easyconn/netlink/service/NetLinkService;->g:Lf/a/i/h/f;

    if-eqz v1, :cond_0

    .line 2
    move-object v3, v1

    check-cast v3, Lf/a/i/i/q;

    invoke-virtual {v3, v0}, Lf/a/i/i/q;->P(Z)V

    :cond_0
    iget-object v3, p0, Lf/a/i/p/a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 3
    monitor-enter v3

    :try_start_1
    sget-object v4, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;

    if-nez v4, :cond_1

    const-string v4, "NetLinkService openNetworkShare begin"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lnet/easyconn/netlink/service/NetLinkService;->h()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnet/easyconn/netlink/service/NetLinkService;->i()V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-boolean v5, p0, Lf/a/i/p/a;->b:Z

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_b

    .line 5
    :try_start_2
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v5

    invoke-virtual {v5}, Lnet/easyconn/ecsdk/ECSDK;->checkPhoneNetwork()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C2PThread phone network = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v5, :cond_2

    add-int/2addr v4, v7

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C2PThread netLostCount=== "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-lt v4, v6, :cond_4

    const-string v3, "C2PThread network is disconnected"

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lf/a/i/p/a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-virtual {v3}, Lnet/easyconn/netlink/service/NetLinkService;->d()V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v6, :cond_3

    iget-object v3, p0, Lf/a/i/p/a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-virtual {v3}, Lnet/easyconn/netlink/service/NetLinkService;->c()V

    :goto_2
    const/4 v3, 0x0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    iget-object v6, p0, Lf/a/i/p/a;->c:Ljava/lang/Boolean;

    if-nez v6, :cond_5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lf/a/i/p/a;->c:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    move-object v6, v1

    check-cast v6, Lf/a/i/i/q;

    :try_start_3
    invoke-virtual {v6, v0, v2}, Lf/a/i/i/q;->O(ZZ)V

    :cond_5
    iget-object v6, p0, Lf/a/i/p/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v5, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_8

    iget-object v8, p0, Lf/a/i/p/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "C2PThread network is connected"

    invoke-static {v8}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v8, p0, Lf/a/i/p/a;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-virtual {v8}, Lnet/easyconn/netlink/service/NetLinkService;->c()V

    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lf/a/i/p/a;->c:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v1, :cond_8

    move-object v8, v1

    check-cast v8, Lf/a/i/i/q;

    :try_start_4
    invoke-virtual {v8, v0, v5}, Lf/a/i/i/q;->O(ZZ)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    if-eqz v1, :cond_a

    if-eqz v5, :cond_9

    move-object v5, v1

    check-cast v5, Lf/a/i/i/q;

    :try_start_5
    invoke-virtual {v5, v7}, Lf/a/i/i/q;->Q(Z)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    move-object v5, v1

    check-cast v5, Lf/a/i/i/q;

    :try_start_6
    invoke-virtual {v5, v2}, Lf/a/i/i/q;->Q(Z)V

    :cond_a
    :goto_4
    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    const-string v4, "C2PThread error = "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lf/a/i/p/a;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    check-cast v1, Lf/a/i/i/q;

    invoke-virtual {v1, v0}, Lf/a/i/i/q;->N(Z)V

    :cond_c
    const-string v0, "C2PThread thread end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
