.class public Lf/a/f/a$d;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/f/a;


# direct methods
.method public constructor <init>(Lf/a/f/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string v0, "BleNetworkManager handleMessage  msg.what = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const-string v5, "setWifiApEnabled"

    const/16 v6, 0x1a

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v0, v7, :cond_3

    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    if-eqz v0, :cond_2

    const-string v7, "BleNetworkManager closeAp, Build.VERSION.SDK_INT = "

    .line 3
    invoke-static {v7}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7, v9}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v6, :cond_1

    iget-object v2, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/WifiConfiguration;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v0, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    iget-object v4, v0, Lf/a/f/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "stopTethering"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v0, v0, Lf/a/f/a;->g:Landroid/net/ConnectivityManager;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "stopTethering fail msg =  "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    throw v8

    .line 4
    :cond_3
    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    if-eqz v0, :cond_5

    const-string v9, "BleNetworkManager openAp, Build.VERSION.SDK_INT = "

    .line 5
    invoke-static {v9}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9, v10}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    :try_start_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v6, :cond_4

    iget-object v2, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/WifiConfiguration;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v0, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v5, "android.net.ConnectivityManager$OnStartTetheringCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v0, Lf/a/f/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "startTethering"

    new-array v9, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    aput-object v5, v9, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 6
    new-instance v8, Lf/a/j/j;

    invoke-direct {v8, v5}, Lf/a/j/j;-><init>(Ljava/lang/Class;)V

    .line 7
    new-instance v5, Lf/a/f/c;

    invoke-direct {v5, v0}, Lf/a/f/c;-><init>(Lf/a/f/a;)V

    .line 8
    iput-object v5, v8, Lf/a/j/j;->c:Ljava/lang/reflect/InvocationHandler;

    .line 9
    invoke-virtual {v8}, Lf/a/j/j;->a()Ljava/lang/Object;

    move-result-object v5

    iget-object v0, v0, Lf/a/f/a;->g:Landroid/net/ConnectivityManager;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v7, v3

    aput-object v5, v7, v4

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "startTethering fail msg =  "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    throw v8

    .line 10
    :cond_6
    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    .line 11
    iget-object v0, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "BleNetworkManager closeWifi"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_7
    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    invoke-virtual {v0}, Lf/a/f/a;->b()Z

    move-result v0

    iget-object v2, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    .line 13
    iget-object v2, v2, Lf/a/f/a;->d:Lf/a/f/a$d;

    .line 14
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_8

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BleNetworkManager connectWifi success"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "BleNetworkManager connectWifi rertyCount = "

    invoke-static {v2, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    .line 15
    iget-boolean v2, v2, Lf/a/f/a;->o:Z

    if-nez v2, :cond_9

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_9

    add-int/2addr v0, v3

    .line 16
    iget-object v2, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    .line 17
    iget-object v2, v2, Lf/a/f/a;->d:Lf/a/f/a$d;

    .line 18
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    .line 19
    iget-object v0, v0, Lf/a/f/a;->d:Lf/a/f/a$d;

    .line 20
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    iput-boolean v1, v0, Lf/a/f/a;->h:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BleNetworkManager connectWifi retry fail"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lf/a/f/a$d;->a:Lf/a/f/a;

    .line 21
    iget-object v0, v0, Lf/a/f/a;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "BleNetworkManager openWifi"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 22
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
