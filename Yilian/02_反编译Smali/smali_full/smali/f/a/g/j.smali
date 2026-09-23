.class public Lf/a/g/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;
.implements Lf/a/g/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/g/j$b;,
        Lf/a/g/j$d;,
        Lf/a/g/j$c;
    }
.end annotation


# instance fields
.field public a:Lf/a/g/h;

.field public b:Landroid/content/Context;

.field public c:Lf/a/g/j$d;

.field public d:Lf/a/g/j$b;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lf/a/g/j$c;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/g/j;->f:Z

    iput-boolean v0, p0, Lf/a/g/j;->g:Z

    iput-boolean v0, p0, Lf/a/g/j;->h:Z

    iput-boolean v0, p0, Lf/a/g/j;->i:Z

    iput-boolean v0, p0, Lf/a/g/j;->j:Z

    iput v0, p0, Lf/a/g/j;->k:I

    const/4 v1, -0x1

    iput v1, p0, Lf/a/g/j;->l:I

    iput-boolean v0, p0, Lf/a/g/j;->m:Z

    iput-boolean v0, p0, Lf/a/g/j;->n:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/a/g/j;->o:Z

    iput-boolean v0, p0, Lf/a/g/j;->q:Z

    iput-object p1, p0, Lf/a/g/j;->b:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "bt_hid_manager_msg_thread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lf/a/g/j$d;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lf/a/g/j$d;-><init>(Lf/a/g/j;Landroid/os/Looper;)V

    iput-object v2, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    new-instance p1, Lf/a/g/h;

    invoke-direct {p1, p0}, Lf/a/g/h;-><init>(Lf/a/g/h$b;)V

    iput-object p1, p0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.IBluetoothHidDevice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lf/a/g/h;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    move-object v3, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple system services handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_5

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "not supoort bt hid because can not find IBluetoothHidDevice"

    .line 2
    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 3
    iget-object p1, p1, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_6

    return-void

    .line 4
    :cond_6
    invoke-virtual {p0}, Lf/a/g/j;->k()V

    .line 5
    iget-object p1, p0, Lf/a/g/j;->d:Lf/a/g/j$b;

    if-nez p1, :cond_7

    new-instance p1, Lf/a/g/j$b;

    invoke-direct {p1, p0}, Lf/a/g/j$b;-><init>(Lf/a/g/j;)V

    iput-object p1, p0, Lf/a/g/j;->d:Lf/a/g/j$b;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/g/j;->b:Landroid/content/Context;

    iget-object v1, p0, Lf/a/g/j;->d:Lf/a/g/j$b;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    return-void
.end method

.method public static synthetic d()V
    .locals 1

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->bindBLEHidDeviceError()V

    return-void
.end method

.method public static synthetic i()V
    .locals 1

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->unbindHidDevice()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v0, "BtHidManager attemtBindBLEHidDevice mIsTransportOpen = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/g/j;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mHidSupportStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/g/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/g/j;->h:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lf/a/g/j;->l:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p0, v2}, Lf/a/g/j;->b(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BtHidManager attemtBindBLEHidDevice support"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 1
    iget-object v0, v0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v3, p0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 3
    iget-object v3, v3, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "BtHidManager attemtBindBLEHidDevice checkBtHidCorrect carBtName = "

    const-string v5, " , carBtMac = "

    .line 4
    invoke-static {v4, v0, v5, v3}, Le/a/c/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v6}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "02:00:00:00:00:00"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lf/a/g/j;->p:Lf/a/g/j$c;

    if-eqz v1, :cond_8

    check-cast v1, Lf/a/i/i/i;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EasyConnectService checkBtHidCorrect carBtName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v5, v1, Lf/a/i/i/i;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v5, v5, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v5, :cond_8

    iget-object v1, v1, Lf/a/i/i/i;->a:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    if-eqz v1, :cond_3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConnectedBtAddress carBtName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " carBtMac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " phoneBtName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " phoneBtMac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "carBtName"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "carBtMac"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phoneBtName"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phoneBtMac"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x34

    iput v0, v4, Landroid/os/Message;->what:I

    iget-object v0, v1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_3
    throw v4

    .line 7
    :cond_4
    throw v4

    :cond_5
    :goto_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager attemtBindBLEHidDevice checkBtHidCorrect not need  beacause carBtMac is invalid"

    .line 8
    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lf/a/g/j;->h:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lf/a/g/j;->l:I

    if-nez v0, :cond_7

    invoke-virtual {p0, v1}, Lf/a/g/j;->b(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager attemtBindBLEHidDevice not support"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager attemtBindBLEHidDevice waitting ..."

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz p1, :cond_0

    new-instance v1, Lf/a/g/j$a;

    invoke-direct {v1, p0}, Lf/a/g/j$a;-><init>(Lf/a/g/j;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lf/a/g/c;->a:Lf/a/g/c;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtHidManager bindBLEHidDevice end , isSupoort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 3

    iget-boolean v0, p0, Lf/a/g/j;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BtHidManager start return becasue bt not open"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lf/a/g/j;->n:Z

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BtHidManager start return becasue bt not connect"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lf/a/g/j;->f:Z

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BtHidManager start return becasue ui not foreground"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic e()V
    .locals 0

    invoke-virtual {p0}, Lf/a/g/j;->m()V

    return-void
.end method

.method public synthetic f(I)V
    .locals 1

    iget-object v0, p0, Lf/a/g/j;->a:Lf/a/g/h;

    invoke-virtual {v0, p1}, Lf/a/g/h;->d(I)V

    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-virtual {p0}, Lf/a/g/j;->m()V

    return-void
.end method

.method public synthetic h(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)V
    .locals 4

    iget-object v0, p0, Lf/a/g/j;->a:Lf/a/g/h;

    iget v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointX:I

    iget v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointY:I

    iget p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->slot:I

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;->EC_TOUCH_UP:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    if-ne p2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1, p2}, Lf/a/g/h;->c(IIIZ)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtHidManager onAppRegisterStatusChanged registered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lf/a/g/j;->j:Z

    invoke-virtual {p0}, Lf/a/g/j;->m()V

    return-void
.end method

.method public k()V
    .locals 6

    iget-object v0, p0, Lf/a/g/j;->a:Lf/a/g/h;

    .line 1
    iget-object v0, v0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lf/a/g/j;->a:Lf/a/g/h;

    invoke-virtual {v1}, Lf/a/g/h;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BtHidManager onBluetoothStatusChange bluetoothOpen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bluetoothConnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lf/a/g/j;->n:Z

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "BtHidManager onBluetoothStatusChange connect to disconnet"

    invoke-static {v5, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lf/a/g/j;->m:Z

    iput-boolean v1, p0, Lf/a/g/j;->n:Z

    invoke-virtual {p0}, Lf/a/g/j;->o()V

    iget-object v0, p0, Lf/a/g/j;->a:Lf/a/g/h;

    invoke-virtual {v0}, Lf/a/g/h;->e()V

    iput-boolean v2, p0, Lf/a/g/j;->i:Z

    iput-boolean v2, p0, Lf/a/g/j;->j:Z

    iput v3, p0, Lf/a/g/j;->l:I

    iput v2, p0, Lf/a/g/j;->k:I

    invoke-virtual {p0}, Lf/a/g/j;->n()V

    return-void

    :cond_1
    iget-boolean v3, p0, Lf/a/g/j;->n:Z

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BtHidManager onBluetoothStatusChange disconnet to connect"

    invoke-static {v3, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lf/a/g/j;->m:Z

    iput-boolean v1, p0, Lf/a/g/j;->n:Z

    invoke-virtual {p0}, Lf/a/g/j;->m()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lf/a/g/j;->o()V

    iget-object v4, p0, Lf/a/g/j;->a:Lf/a/g/h;

    invoke-virtual {v4}, Lf/a/g/h;->e()V

    iput-boolean v2, p0, Lf/a/g/j;->i:Z

    iput-boolean v2, p0, Lf/a/g/j;->j:Z

    iput v3, p0, Lf/a/g/j;->l:I

    iput v2, p0, Lf/a/g/j;->k:I

    invoke-virtual {p0}, Lf/a/g/j;->n()V

    :cond_3
    iput-boolean v0, p0, Lf/a/g/j;->m:Z

    iput-boolean v1, p0, Lf/a/g/j;->n:Z

    return-void
.end method

.method public l(Z)V
    .locals 3

    iput-boolean p1, p0, Lf/a/g/j;->f:Z

    iget-boolean v0, p0, Lf/a/g/j;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "BtHidManager setAppForeground to Foreground"

    invoke-static {v2, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/g/j;->m()V

    :cond_0
    iget-boolean v0, p0, Lf/a/g/j;->g:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager setAppForeground to Background"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/g/j;->n()V

    :cond_1
    iput-boolean p1, p0, Lf/a/g/j;->g:Z

    return-void
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Lf/a/g/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BtHidManager start mProfileServiceConnected :"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/g/j;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAppRegistered :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/g/j;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHidConnectionState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/g/j;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/g/j;->i:Z

    if-nez v0, :cond_2

    .line 1
    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager firstStep"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_2
    iget-boolean v0, p0, Lf/a/g/j;->j:Z

    if-nez v0, :cond_6

    .line 3
    iget-object v0, p0, Lf/a/g/j;->a:Lf/a/g/h;

    iget-boolean v2, v0, Lf/a/g/h;->j:Z

    if-eqz v2, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager secondStep return because registed"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, v0, Lf/a/g/h;->k:Z

    if-eqz v0, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager secondStep return because registing"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager secondStep"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 4
    :cond_6
    iget v0, p0, Lf/a/g/j;->k:I

    if-nez v0, :cond_8

    .line 5
    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager thirdStep"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    iget-boolean v0, p0, Lf/a/g/j;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager unBindBLEHidDevice return because not bind"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    sget-object v2, Lf/a/g/d;->a:Lf/a/g/d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lf/a/g/j;->q:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BtHidManager unBindBLEHidDevice end"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyCodeData(I)V
    .locals 2

    iget-boolean v0, p0, Lf/a/g/j;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BtHidManager onTouchEventData return because mirror-Phone is not bt-Phone"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "BtHidManager onKeyCodeData i = "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    new-instance v1, Lf/a/g/b;

    invoke-direct {v1, p0, p1}, Lf/a/g/b;-><init>(Lf/a/g/j;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEventData(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)V
    .locals 3

    iget-boolean v0, p0, Lf/a/g/j;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "BtHidManager onTouchEventData return because mirror-Phone is not bt-Phone"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "BtHidManager onTouchEventData pointX = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pointY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->pointY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slot = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;->slot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , ecTouchEventType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/j;->c:Lf/a/g/j$d;

    new-instance v1, Lf/a/g/f;

    invoke-direct {v1, p0, p1, p2}, Lf/a/g/f;-><init>(Lf/a/g/j;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
