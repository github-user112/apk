.class public Lf/a/g/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/g/h;


# direct methods
.method public constructor <init>(Lf/a/g/h;)V
    .locals 0

    iput-object p1, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string v0, "BtHidHelper onServiceConnected profile = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    invoke-virtual {v0}, Lf/a/g/h;->b()I

    move-result v0

    if-ne p1, v0, :cond_2

    instance-of p1, p2, Landroid/bluetooth/BluetoothHidDevice;

    if-nez p1, :cond_0

    const-string p1, "BtHidHelper Proxy received but it\'s not BluetoothHidDevice"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    iput-object p2, p1, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p1, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    iget-object p1, p1, Lf/a/g/h;->c:Lf/a/g/h$b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    iget-object p1, p1, Lf/a/g/h;->c:Lf/a/g/h$b;

    check-cast p1, Lf/a/g/j;

    if-eqz p1, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "BtHidManager onProfileServiceConnected"

    .line 1
    invoke-static {v0, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lf/a/g/j;->i:Z

    invoke-virtual {p1}, Lf/a/g/j;->m()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "BtHidHelper onServiceConnected.exception"

    .line 2
    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    const-string v0, "BtHidHelper onServiceDisconnected profile = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    invoke-virtual {v0}, Lf/a/g/h;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lf/a/g/h$a;->a:Lf/a/g/h;

    iput-boolean v1, p1, Lf/a/g/h;->j:Z

    iput-boolean v1, p1, Lf/a/g/h;->k:Z

    iget-object p1, p1, Lf/a/g/h;->c:Lf/a/g/h$b;

    if-eqz p1, :cond_1

    check-cast p1, Lf/a/g/j;

    if-eqz p1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BtHidManager onProfileServiceDisConnected"

    .line 1
    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p1, Lf/a/g/j;->i:Z

    invoke-virtual {p1}, Lf/a/g/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    new-instance v1, Lf/a/g/a;

    invoke-direct {v1, p1}, Lf/a/g/a;-><init>(Lf/a/g/j;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
