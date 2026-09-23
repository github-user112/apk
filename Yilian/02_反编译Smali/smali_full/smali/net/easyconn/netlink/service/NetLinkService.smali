.class public Lnet/easyconn/netlink/service/NetLinkService;
.super Landroid/net/VpnService;
.source ""

# interfaces
.implements Lf/a/i/p/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/netlink/service/NetLinkService$b;,
        Lnet/easyconn/netlink/service/NetLinkService$c;
    }
.end annotation


# static fields
.field public static n:Landroid/os/ParcelFileDescriptor;

.field public static o:Lf/a/i/p/c;


# instance fields
.field public a:Lf/a/i/p/a;

.field public b:Lnet/easyconn/netlink/service/NetLinkService$b;

.field public c:Z

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public g:Lf/a/i/h/f;

.field public h:Ljava/lang/String;

.field public i:Landroid/os/IBinder;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public final m:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    const-string v0, "DnsProxy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->f:Z

    new-instance v1, Lnet/easyconn/netlink/service/NetLinkService$c;

    invoke-direct {v1, p0}, Lnet/easyconn/netlink/service/NetLinkService$c;-><init>(Lnet/easyconn/netlink/service/NetLinkService;)V

    iput-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->i:Landroid/os/IBinder;

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->j:Z

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->k:Z

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    new-instance v0, Lnet/easyconn/netlink/service/NetLinkService$a;

    invoke-direct {v0, p0}, Lnet/easyconn/netlink/service/NetLinkService$a;-><init>(Lnet/easyconn/netlink/service/NetLinkService;)V

    iput-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static l()V
    .locals 3

    const-string v0, "NetLinkService stopVpnProxy."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    sput-object v1, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    :cond_0
    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;

    if-eqz v0, :cond_3

    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, Lf/a/i/p/c;->b:Z

    iget-object v2, v0, Lf/a/i/p/c;->a:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object v2, v0, Lf/a/i/p/c;->c:Ljava/lang/Process;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    iget-object v0, v0, Lf/a/i/p/c;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "GuardedProcess"

    const-string v2, "interrupted thread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    sput-object v1, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    if-nez v0, :cond_0

    const-string v0, "NetLinkService startAll"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "net.easyconn.android.netlink.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/net/VpnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 3

    const-string v0, "NetLinkService notifyDisconnected"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.usb.netlink.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "error_code"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "NetLinkService onNetworkConnected: mVpnOpened = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetLinked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    const-string v1, "NetLinkService notifyConnected"

    .line 1
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.easyconn.usb.netlink.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/net/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "NetLinkService onNetworkDisconnected: mVpnOpened = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetLinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->f:Z

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->b()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    const-string v0, "NetLinkService onUsbConnected: begin mRemoteIP = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->a:Lf/a/i/p/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->a:Lf/a/i/p/a;

    if-eqz v0, :cond_0

    const-string v1, "C2PThread exit"

    .line 1
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf/a/i/p/a;->b:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lf/a/i/p/a;

    invoke-direct {v0, p0}, Lf/a/i/p/a;-><init>(Lnet/easyconn/netlink/service/NetLinkService;)V

    iput-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->a:Lf/a/i/p/a;

    .line 3
    iput-object p1, v0, Lf/a/i/p/a;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "NetLinkService onUsbConnected: end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 4

    const-string v0, "NetLinkService onUsbDisconnected: begin mVpnOpened = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetLinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->f:Z

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->a:Lf/a/i/p/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->a:Lf/a/i/p/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "C2PThread exit"

    .line 1
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v0, v1, Lf/a/i/p/a;->b:Z

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2
    iput-object v2, p0, Lnet/easyconn/netlink/service/NetLinkService;->a:Lf/a/i/p/a;

    goto :goto_0

    .line 3
    :cond_0
    throw v2

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lnet/easyconn/netlink/service/NetLinkService;->l()V

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->k()V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->b()V

    :cond_2
    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "NetLinkService onUsbDisconnected: end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(Z)V
    .locals 1

    const-string v0, "NetLinkService onVpnPrepareDone: prepareOk="

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->h()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "NetLinkService onVpnPrepareDone: failed to establishVPN"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService;->g:Lf/a/i/h/f;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService;->g:Lf/a/i/h/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lf/a/i/i/q;

    :try_start_1
    invoke-virtual {p1}, Lf/a/i/i/q;->R()V

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->f()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()Z
    .locals 15

    const-string v0, "NetLinkService establishVPN"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    const-string v1, ":"

    const/16 v2, 0x2f

    const/16 v3, 0x5dc

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    const-string v6, "EC_VPN"

    invoke-virtual {v0, v6}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    const-string v3, "26.26.26.1"

    const/16 v6, 0x18

    invoke-virtual {v0, v3, v6}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    const-string v3, "8.8.8.8"

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    invoke-virtual {p0}, Landroid/net/VpnService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lf/a/i/b;->bypass_private_route:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    aget-object v7, v3, v6

    aget-object v8, v3, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v3, v6

    aget-object v9, v3, v6

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetLinkService establishVPN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_3

    invoke-virtual {p0}, Landroid/net/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lnet/easyconn/netlink/service/NetLinkService;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "net.easyconn"

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lnet/easyconn/netlink/service/NetLinkService;->h:Ljava/lang/String;

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetLinkService this.app.packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " filterPackageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    :cond_2
    invoke-virtual {v0, v6}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    :cond_3
    const-string v3, "NetLinkService establishVPN builder.establish()"

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    sput-object v0, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    const-string v0, "NetLinkService establishVPN builder.establish() end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_5

    const-string v0, "NetLinkService establishVPN mVpnPfd is null"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "NetLinkService establishVPN: failed to establish builder, "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v3}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to add uid rule"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/easyconn/netlink/service/NetLinkService;->l()V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_13

    const-string v3, "NetLinkService openVpnProxy: establishVPN ok"

    .line 2
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetLinkService startVpnProxy mRemoteIP:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v3, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    if-nez v3, :cond_6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "NetLinkService startVpnProxy: VPN is not built yet"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    .line 4
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    sget-object v7, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v8, "TUN_SOCKS_DIR"

    invoke-virtual {v7, v8, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "/libtun2socks.so"

    const-string v9, ""

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_9
    invoke-static {v6, v8}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_a
    :goto_5
    move-object v6, v9

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetLinkService customerDir = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v7, "/lib/libtun2socks.so"

    invoke-static {v2, v7}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    new-array v10, v7, [Ljava/lang/String;

    aput-object v6, v10, v5

    aput-object v2, v10, v4

    const/4 v2, 0x2

    const-string v6, "/system/bin/libtun2socks.so"

    aput-object v6, v10, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/VpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v6, v11, v8}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v10, v8

    const/4 v6, 0x4

    const-string v11, "/system/lib/libtun2socks.so"

    aput-object v11, v10, v6

    const/4 v11, 0x5

    const-string v12, "/system/lib64/libtun2socks.so"

    aput-object v12, v10, v11

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v7, :cond_c

    aget-object v7, v10, v12

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v13}, Ljava/io/File;->canExecute()Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "NetLinkService find path = "

    const-string v14, " not execute, error"

    invoke-static {v13, v7, v14}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v7, v13}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x6

    goto :goto_7

    :cond_c
    move-object v7, v9

    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetLinkService libPathEventually = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "NetLinkService startVpnProxy: can not found libtun2socks.so"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_e
    const/16 v9, 0x10

    new-array v10, v9, [Ljava/lang/String;

    aput-object v7, v10, v5

    const-string v7, "--netif-ipaddr"

    aput-object v7, v10, v4

    const-string v7, "26.26.26.2"

    aput-object v7, v10, v2

    const-string v7, "--netif-netmask"

    aput-object v7, v10, v8

    const-string v7, "255.255.255.0"

    aput-object v7, v10, v6

    const-string v7, "--socks-server-addr"

    aput-object v7, v10, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2aab

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v10, v7

    const/4 v1, 0x7

    const-string v7, "--tunfd"

    aput-object v7, v10, v1

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    const/16 v1, 0x9

    const-string v3, "--tunmtu"

    aput-object v3, v10, v1

    const/16 v1, 0xa

    const/16 v3, 0x5dc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    const/16 v1, 0xb

    const-string v3, "--sock-path"

    aput-object v3, v10, v1

    const/16 v1, 0xc

    const-string v3, "sock_path"

    aput-object v3, v10, v1

    const/16 v1, 0xd

    const-string v3, "--enable-udprelay"

    aput-object v3, v10, v1

    const/16 v1, 0xe

    const-string v3, "--dnsgw"

    aput-object v3, v10, v1

    const/16 v1, 0xf

    const-string v3, "127.0.0.1:8053"

    aput-object v3, v10, v1

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p0}, Lf/a/i/m/g;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "--username"

    aput-object v3, v1, v5

    const-string v3, "carbit"

    aput-object v3, v1, v4

    const-string v3, "--password"

    aput-object v3, v1, v2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v2

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECSDK;->getSockServerPwd()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    array-length v3, v1

    add-int/2addr v3, v9

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v10, v5, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-le v3, v9, :cond_10

    array-length v3, v1

    invoke-static {v1, v5, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    const-string v1, "NetLinkService startVpnProxy: new GuardedProcess, is auth = "

    invoke-static {v1, v2}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    :try_start_1
    new-instance v1, Lf/a/i/p/c;

    invoke-direct {v1}, Lf/a/i/p/c;-><init>()V

    sput-object v1, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;

    invoke-virtual {p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 6
    new-instance v3, Lf/a/i/p/b;

    invoke-direct {v3, v1, v6, v2, p0}, Lf/a/i/p/b;-><init>(Lf/a/i/p/c;[Ljava/lang/String;Ljava/io/File;Lf/a/i/p/c$a;)V

    iput-object v3, v1, Lf/a/i/p/c;->a:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-string v1, "NetLinkService startVpnProxy: tun2socket process started"

    .line 7
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "NetLinkService startVpnProxy ok"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_a

    :catch_1
    move-exception v1

    const-string v2, "NetLinkService startVpnProxy: failed to start tun2sock process, "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    sget-object v1, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v1

    const-string v2, "NetLinkService startVpnProxy: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_11

    const-string v1, "NetLinkService openVpnProxy startVpnProxy true, mVpnOpened = "

    .line 8
    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetLinkService startDnsProxy: mDnsThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->k()V

    new-instance v1, Lnet/easyconn/netlink/service/NetLinkService$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/easyconn/netlink/service/NetLinkService$b;-><init>(Lnet/easyconn/netlink/service/NetLinkService;Lnet/easyconn/netlink/service/NetLinkService$a;)V

    iput-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b

    :cond_11
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "NetLinkService openVpnProxy: failed to startVpnProxy"

    .line 10
    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->g:Lf/a/i/h/f;

    if-eqz v1, :cond_12

    check-cast v1, Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->R()V

    :cond_12
    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->f()V

    :cond_13
    :goto_b
    return v0
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->j:Z

    .line 2
    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->k:Z

    .line 3
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "NETLINK_NOT_POP_VPN_DIALOG"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "NetLinkService startVpnPrepare: failed to establishVPN"

    .line 4
    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->g:Lf/a/i/h/f;

    if-eqz v0, :cond_1

    check-cast v0, Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->R()V

    :cond_1
    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->f()V

    goto :goto_1

    :cond_2
    const-string v0, "NetLinkService startVpnPrepare"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/net/VpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnet/easyconn/netlink/ui/NetlinkActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "prepareVpn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public final j()V
    .locals 2

    const-string v0, "NetLinkService stopAll mStarted = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    :try_start_0
    iget-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->f()V

    return-void
.end method

.method public final k()V
    .locals 2

    const-string v0, "NetLinkService stopDnsProxy start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLinkService stopDnsProxy mDnsThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->native_stopDnsProxy()I

    const-string v0, "NetLinkService stopDnsProxy end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NetLinkService stopDnsProxy mDnsThread interrupt"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    const-string v0, "NetLinkService stopDnsProxy mDnsThread stop"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->b:Lnet/easyconn/netlink/service/NetLinkService$b;

    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    const-string v0, "NetLinkService stopDnsProxy stop"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final native native_startDnsProxy(Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method public final native native_stopDnsProxy()I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLinkService onBind: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mStarted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mTun2SockProcess="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->a()V

    const-string p1, "NetLinkService onBind end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService;->i:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "NetLinkService onCreate"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "NetLinkService onDestroy"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->j()V

    const-string v0, "NetLinkService onDestroy end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    const-string p1, "NetLinkService onRebind"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onRevoke()V
    .locals 1

    const-string v0, "NetLinkService onRevoke"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->j()V

    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    return-void
.end method

.method public onStart()V
    .locals 6

    sget-object v0, Lnet/easyconn/netlink/service/NetLinkService;->n:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "NetLinkService mVpnPfd null, return!"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x5

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    mul-int/lit16 v1, v2, 0x3e8

    int-to-long v3, v1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "sock_path"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/easyconn/netlink/service/JniHelper;->sendFd(ILjava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const-string v3, "NetLinkService startVpnProxy: sendFd ok"

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v3, "NetLinkService startVpnProxy: sendFd fail"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "NetLinkService sendFd: "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NetLinkService onStartCommand: intent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mStarted="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lnet/easyconn/netlink/service/NetLinkService;->e:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mTun2SockProcess="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/easyconn/netlink/service/NetLinkService;->o:Lf/a/i/p/c;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/easyconn/netlink/service/NetLinkService;->a()V

    const-string p1, "NetLinkService onStartCommand end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLinkService onUnbind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
