.class public final La/a/a/a/m/m/d/d;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements La/a/a/a/a/j/f/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/m/m/d/d$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final c:La/a/a/a/c;

.field public final d:La/a/a/a/m/m/d/d$a;

.field public final e:Lc/a;

.field public final f:Lc/a;

.field public g:La/a/a/a/a/j/f/a;

.field public h:Z

.field public final i:Lc/a;

.field public final j:La/a/a/a/m/m/d/d$c;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/m/m/d/d$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/d/d;->d:La/a/a/a/m/m/d/d$a;

    new-instance p1, La/a/a/a/m/m/d/d$b;

    invoke-direct {p1, p0}, La/a/a/a/m/m/d/d$b;-><init>(La/a/a/a/m/m/d/d;)V

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/d/d;->e:Lc/a;

    new-instance p1, La/a/a/a/m/m/d/d$e;

    invoke-direct {p1, p0}, La/a/a/a/m/m/d/d$e;-><init>(La/a/a/a/m/m/d/d;)V

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/d/d;->f:Lc/a;

    sget-object p1, La/a/a/a/m/m/d/d$d;->b:La/a/a/a/m/m/d/d$d;

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/d/d;->i:Lc/a;

    new-instance p1, La/a/a/a/m/m/d/d$c;

    invoke-direct {p1, p0}, La/a/a/a/m/m/d/d$c;-><init>(La/a/a/a/m/m/d/d;)V

    iput-object p1, p0, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, La/a/a/a/m/m/d/d;->g:La/a/a/a/a/j/f/a;

    iget-object p1, p0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, La/a/a/a/m/m/d/d;->e:Lc/a;

    invoke-interface {v0}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {p1, v0}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "args"

    const-string v3, "tag"

    const/4 v4, 0x1

    const-string v5, "CarLife_SDK"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    iget-boolean p2, p0, La/a/a/a/m/m/d/d;->h:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {p2}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    const-wide/16 v8, 0x3e8

    invoke-virtual {p2, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "bluetoothReceiver ACTION_STATE_CHANGED "

    aput-object v0, p2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    .line 1
    invoke-static {v5, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, v5, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 4
    invoke-static {p1, v0}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "bluetoothReceiver ACTION_CONNECTION_STATE_CHANGED "

    aput-object v0, p2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    .line 5
    invoke-static {v5, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, v5, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ne p1, v6, :cond_4

    .line 8
    iget-object p1, p0, La/a/a/a/m/m/d/d;->g:La/a/a/a/a/j/f/a;

    if-nez p1, :cond_4

    iget-object p1, p0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, La/a/a/a/m/m/d/d;->j:La/a/a/a/m/m/d/d$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method
