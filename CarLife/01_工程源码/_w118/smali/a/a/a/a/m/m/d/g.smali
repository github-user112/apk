.class public final La/a/a/a/m/m/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "cancelConnect onFailure"

    aput-object v1, p1, v0

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 3
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cancelConnect onSuccess"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 3
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
