.class public Lnet/easyconn/netlink/service/NetLinkService$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/netlink/service/NetLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/netlink/service/NetLinkService;


# direct methods
.method public constructor <init>(Lnet/easyconn/netlink/service/NetLinkService;Lnet/easyconn/netlink/service/NetLinkService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "NetLinkService dns thread start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 1
    iget-object v0, v0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetLinkService dns thread mRemoteIP = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 3
    iget-object v1, v1, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    const-string v2, ", return"

    .line 4
    invoke-static {v0, v1, v2}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-virtual {v0}, Lnet/easyconn/netlink/service/NetLinkService;->f()V

    return-void

    :cond_0
    const-string v0, "NetLinkService dns thread start begin mCtrlFromEC = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 5
    iget-boolean v1, v1, Lnet/easyconn/netlink/service/NetLinkService;->f:Z

    .line 6
    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 7
    iget-boolean v0, v0, Lnet/easyconn/netlink/service/NetLinkService;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    .line 9
    iput-boolean v1, v0, Lnet/easyconn/netlink/service/NetLinkService;->d:Z

    .line 10
    :cond_1
    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EC_AUTO_NET_LINK_KEY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    iget-object v0, p0, Lnet/easyconn/netlink/service/NetLinkService$b;->a:Lnet/easyconn/netlink/service/NetLinkService;

    const/16 v1, 0x1f75

    .line 13
    iget-object v2, v0, Lnet/easyconn/netlink/service/NetLinkService;->l:Ljava/lang/String;

    const/16 v3, 0x2aac

    const-string v4, "0.0.0.0"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/easyconn/netlink/service/NetLinkService;->native_startDnsProxy(Ljava/lang/String;ILjava/lang/String;I)I

    const-string v0, "NetLinkService dns thread start end"

    .line 15
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
