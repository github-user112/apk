.class public Lnet/easyconn/broadcast/StdBroadcastManager;
.super Lnet/easyconn/framework/broadcast/BroadcastManager;
.source ""


# static fields
.field public static final BROADCAST_EAP_DEVICE_ATTACHED:Ljava/lang/String; = "net.easyconn.eap.attached"

.field public static final BROADCAST_EAP_DEVICE_DETACHED:Ljava/lang/String; = "net.easyconn.eap.detached"

.field public static final BROADCAST_EAP_DEVICE_INFO:Ljava/lang/String; = "net.easyconn.eap.info"

.field public static final BROADCAST_EAP_DEVICE_PATH:Ljava/lang/String; = "net.easyconn.eap.path"

.field public static final BROADCAST_EAP_LAUNCH_APP:Ljava/lang/String; = "net.easyconn.eap.launchapp"

.field public static final EAP_DEV_PATH:Ljava/lang/String; = "eap_dev_path"

.field public static final EAP_INFO_ExtAcceProtocolName:Ljava/lang/String; = "EAP_INFO_ExtAcceProtocolName"

.field public static final EAP_INFO_ExtAcceProtocolValue:Ljava/lang/String; = "cn.carbit.ecprotocol"

.field public static final EAP_INFO_TransCompName:Ljava/lang/String; = "EAP_INFO_TransCompName"

.field public static final EAP_INFO_TransCompValue:Ljava/lang/String; = "CarBit"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private launchApp()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.eap.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EAP_INFO_ExtAcceProtocolName"

    const-string v2, "cn.carbit.ecprotocol"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EAP_INFO_TransCompName"

    const-string v2, "CarBit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.eap.launchapp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActionRegister(Landroid/content/IntentFilter;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onActionRegister(Landroid/content/IntentFilter;)V

    const-string v0, "net.easyconn.eap.attached"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "net.easyconn.eap.path"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "net.easyconn.eap.detached"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "StdBroadcastManager onActionRegister"

    invoke-static {v0, p1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x55a046d3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x539333d2

    if-eq v0, v1, :cond_1

    const v1, -0x377a3905

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "net.easyconn.eap.detached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "net.easyconn.eap.path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "net.easyconn.eap.attached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_8

    const/4 v0, 0x0

    if-eq p1, v4, :cond_6

    if-eq p1, v2, :cond_4

    return v3

    :cond_4
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_EAP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eqz p1, :cond_5

    .line 1
    invoke-static {}, Lf/a/i/m/f;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcSdkManager unbindTransportDevice isAsync = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0xf

    iput p2, v0, Landroid/os/Message;->what:I

    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return v4

    :cond_5
    throw v0

    :cond_6
    const-string p1, "eap_dev_path"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u5f00\u59cb\u7ed1\u5b9aEAP\u8bbe\u5907"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object p2, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_EAP:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eqz p2, :cond_7

    .line 3
    invoke-static {}, Lf/a/i/m/f;->c()V

    const-string v0, "EcSdkManager bindTransportDevice"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->getValue()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    const/16 p1, 0xe

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p2, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_7
    throw v0

    .line 4
    :cond_8
    invoke-direct {p0}, Lnet/easyconn/broadcast/StdBroadcastManager;->launchApp()V

    return v4
.end method
