.class public Lf/a/k/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/framework/sdkservice/EasyConnectService$a;


# instance fields
.field public final synthetic a:Lf/a/k/g0;


# direct methods
.method public constructor <init>(Lf/a/k/g0;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/h0;->a:Lf/a/k/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEasyconnServiceConnected OnInitComplete"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/h0;->a:Lf/a/k/g0;

    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 2
    invoke-virtual {v1, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->setOnBroadcastListener(Lnet/easyconn/framework/broadcast/BroadcastManager$c;)V

    iget-object v0, p0, Lf/a/k/h0;->a:Lf/a/k/g0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
