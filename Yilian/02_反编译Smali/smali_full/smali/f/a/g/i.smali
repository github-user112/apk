.class public Lf/a/g/i;
.super Landroid/bluetooth/BluetoothHidDevice$Callback;
.source ""


# instance fields
.field public final synthetic a:Lf/a/g/h;


# direct methods
.method public constructor <init>(Lf/a/g/h;)V
    .locals 0

    iput-object p1, p0, Lf/a/g/i;->a:Lf/a/g/h;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtHidHelper onAppStatusChanged pluggedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , registered = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/g/i;->a:Lf/a/g/h;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lf/a/g/h;->j:Z

    iput-boolean v0, p1, Lf/a/g/h;->k:Z

    iget-object p1, p1, Lf/a/g/h;->c:Lf/a/g/h$b;

    if-eqz p1, :cond_1

    check-cast p1, Lf/a/g/j;

    invoke-virtual {p1, p2}, Lf/a/g/j;->j(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Lf/a/g/h;->j:Z

    iput-boolean v0, p1, Lf/a/g/h;->k:Z

    iget-object p1, p1, Lf/a/g/h;->c:Lf/a/g/h$b;

    if-eqz p1, :cond_1

    check-cast p1, Lf/a/g/j;

    invoke-virtual {p1, v0}, Lf/a/g/j;->j(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    const-string p1, "BtHidHelper onConnectionStateChanged state = "

    invoke-static {p1, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lf/a/g/i;->a:Lf/a/g/h;

    iput-boolean v0, p1, Lf/a/g/h;->j:Z

    iput-boolean v0, p1, Lf/a/g/h;->k:Z

    :cond_0
    iget-object p1, p0, Lf/a/g/i;->a:Lf/a/g/h;

    iget-object p1, p1, Lf/a/g/h;->c:Lf/a/g/h$b;

    if-eqz p1, :cond_6

    check-cast p1, Lf/a/g/j;

    if-eqz p1, :cond_5

    const-string v1, "BtHidManager onAppConnectionStateChanged state = "

    .line 1
    invoke-static {v1, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p1, Lf/a/g/j;->k:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iput v3, p1, Lf/a/g/j;->l:I

    iget-object v1, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lf/a/g/j;->a()V

    :cond_1
    iget v1, p1, Lf/a/g/j;->k:I

    if-ne v1, v3, :cond_3

    if-eqz p2, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    :cond_2
    iput v0, p1, Lf/a/g/j;->l:I

    iget-object v0, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lf/a/g/j;->a()V

    :cond_3
    iget v0, p1, Lf/a/g/j;->k:I

    const-wide/16 v4, 0x1388

    if-eq v0, v3, :cond_4

    if-nez p2, :cond_4

    const/4 v0, -0x1

    iput v0, p1, Lf/a/g/j;->l:I

    invoke-virtual {p1}, Lf/a/g/j;->o()V

    invoke-virtual {p1}, Lf/a/g/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    new-instance v1, Lf/a/g/e;

    invoke-direct {v1, p1}, Lf/a/g/e;-><init>(Lf/a/g/j;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iput p2, p1, Lf/a/g/j;->k:I

    if-ne p2, v3, :cond_6

    iget-object p2, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_0
    return-void
.end method
