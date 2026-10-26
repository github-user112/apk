.class public Lnet/easyconn/framework/broadcast/BroadcastManager$EcShortcutBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/broadcast/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcShortcutBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v1, "net.easyconn.start.ec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Receive broadcast type = "

    const/4 v5, -0x1

    const-string v6, "ec_app_type"

    const/4 v7, 0x1

    if-eqz v1, :cond_a

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v4, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-gtz p2, :cond_1

    return-void

    :cond_1
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_2

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->Z:Z

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "startActivity"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn6.mainactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    invoke-static {p1}, Lf/a/i/m/g;->M(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v7, :cond_5

    const-string p1, "EC_PRODUCT_TYPE_DA appPage = "

    invoke-static {p1, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-nez p1, :cond_4

    .line 3
    sput p2, Lf/a/i/i/q;->b0:I

    return-void

    .line 4
    :cond_4
    invoke-virtual {p1, p2}, Lf/a/i/i/q;->T(I)V

    return-void

    :cond_5
    invoke-static {}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->values()[Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_7

    aget-object v1, p1, v3

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->getValue()I

    move-result v4

    if-ne p2, v4, :cond_6

    move-object v2, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    if-nez v2, :cond_8

    return-void

    :cond_8
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-nez p1, :cond_9

    .line 5
    sput-object v2, Lf/a/i/i/q;->a0:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    return-void

    .line 6
    :cond_9
    invoke-virtual {p1, v2}, Lf/a/i/i/q;->S(Lnet/easyconn/ecsdk/ECTypes$ECAppPage;)V

    return-void

    :cond_a
    const-string v1, "net.easyconn.install.ec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v4, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-gtz p2, :cond_b

    return-void

    :cond_b
    invoke-static {p1}, Lf/a/i/m/g;->M(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v7, :cond_e

    const-string p1, "BROADCAST_INSTALL_EC install appPage = "

    invoke-static {p1, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-nez p1, :cond_c

    const-string p1, "BROADCAST_INSTALL_EC install error"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_c
    const-string v0, "installAppPageByChannel appPage = "

    .line 7
    invoke-static {v0, p2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    if-gtz p2, :cond_d

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, p2, Landroid/os/Message;->arg1:I

    const/16 v0, 0x2f

    iput v0, p2, Landroid/os/Message;->what:I

    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    :goto_2
    return-void
.end method
