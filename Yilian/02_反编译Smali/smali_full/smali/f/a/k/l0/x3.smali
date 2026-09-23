.class public Lf/a/k/l0/x3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# instance fields
.field public final synthetic a:Lf/a/k/l0/z3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/z3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/x3;->a:Lf/a/k/l0/z3;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "QrRegisterFragment onAvailable"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object p1, p0, Lf/a/k/l0/x3;->a:Lf/a/k/l0/z3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lf/a/k/l0/z3;->a0(Lf/a/k/l0/z3;Z)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    const-string v0, "QrRegisterFragment onLosing"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "QrRegisterFragment onLost"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p1, p0, Lf/a/k/l0/x3;->a:Lf/a/k/l0/z3;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf/a/k/l0/z3;->a0(Lf/a/k/l0/z3;Z)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    const-string v0, "QrRegisterFragment onUnavailable"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method
