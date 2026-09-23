.class public Lf/a/i/i/q$d;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lf/a/i/i/q;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", EcSdkManager msg.what = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-static {v0, v3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1b

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", setBTBuildNetCarIp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->setBTBuildNetCarIp(Ljava/lang/String;)I

    goto/16 :goto_1b

    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v3, "phoneId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "rly"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lnet/easyconn/ecsdk/ECSDK;->setBTRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I

    goto/16 :goto_1b

    :pswitch_3
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->unbindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    goto/16 :goto_1b

    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    const-string v4, "iDevice"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/easyconn/ecsdk/IUsbDevice;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lnet/easyconn/ecsdk/ECSDK;->bindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IUsbDevice;)I

    goto/16 :goto_1b

    :pswitch_5
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v3, Lf/a/i/i/q;->a:Landroid/content/Context;

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4, v5, v6}, Lnet/easyconn/ecsdk/ECSDK;->startBTService(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;Ljava/lang/Boolean;)I

    goto/16 :goto_1b

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", BTSPP SET_BT_REQUEST_CONNRESULT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    aget-object v4, v0, v6

    check-cast v4, Ljava/lang/String;

    aget-object v0, v0, v5

    check-cast v0, Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;

    invoke-virtual {v3, v4, v0}, Lnet/easyconn/ecsdk/ECSDK;->setBTRequestBuildNetRly(Ljava/lang/String;Lnet/easyconn/ecsdk/ECTypes$EBTRequestBuildNetRly;)I

    goto/16 :goto_1b

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", BTSPP reStart stopBTSPPServiceHandler"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->stopBTService()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", BTSPP reStart BTSPPServiceHandler"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v3, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->m0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    goto :goto_0

    :cond_0
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BTRFCOMM:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    :goto_0
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;

    invoke-virtual {v0, v3, v4, v5}, Lnet/easyconn/ecsdk/ECSDK;->startBTService(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;)I

    goto/16 :goto_1b

    :pswitch_8
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->stopBTService()V

    goto/16 :goto_1b

    :pswitch_9
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->m0(Landroid/content/Context;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", BTSPP startBTSPPServiceHandler isBle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    iget-object v4, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v4, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BLE:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    goto :goto_1

    :cond_1
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_BTRFCOMM:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    :goto_1
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;

    invoke-virtual {v3, v4, v0, v5}, Lnet/easyconn/ecsdk/ECSDK;->startBTService(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;Lnet/easyconn/ecsdk/IECCallback$IEBTServiceCallBack;)I

    goto/16 :goto_1b

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", CustomProtocol handler REQUEST_CUSTOM_PROTOCOL ecCustomData = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->getCustomProtocol()Lnet/easyconn/ecsdk/ECCustomProtocol;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECCustomProtocol;->sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)I

    goto/16 :goto_1b

    :pswitch_b
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0, v2}, Lf/a/i/i/q;->K(Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_c
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0, v2}, Lf/a/i/i/q;->B(Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_d
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0, v2}, Lf/a/i/i/q;->A(Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_e
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->uploadNetLinkServiceInfo(Lnet/easyconn/ecsdk/ECTypes$ECNetLinkInfo;)I

    goto/16 :goto_1b

    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", EcSdkManager requestDisConnect handle"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->requestAppStopService()I

    goto/16 :goto_1b

    :pswitch_10
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->w(Lf/a/i/i/q;Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_11
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->uploadCarTheme(I)I

    goto/16 :goto_1b

    :pswitch_12
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->v(Lf/a/i/i/q;Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_13
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lf/a/i/i/q;->u(Lf/a/i/i/q;Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_14
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;->EC_CAR_AUTH_TYPE_CAR_LOCAL_NETWORK:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;->EC_CAR_AUTH_QUERY_TYPE_QUICK:Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;

    invoke-virtual {v0, v3, v4}, Lnet/easyconn/ecsdk/ECSDK;->checkLicense(Lnet/easyconn/ecsdk/ECTypes$ECCarAuthType;Lnet/easyconn/ecsdk/ECTypes$ECCarAuthQueryType;)I

    goto/16 :goto_1b

    :pswitch_15
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->g(Lf/a/i/i/q;Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_16
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->t(Lf/a/i/i/q;Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_17
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_2

    const-string v0, "queryPageList begin"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->queryPageList()I

    goto/16 :goto_1b

    :cond_2
    throw v4

    .line 2
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    const-string v4, ", reopen_wifi_service handler begin"

    invoke-static {v0, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->closeWiFiService()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    const-string v4, ", reopen_wifi_service handler next"

    invoke-static {v0, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    const/16 v3, 0x1f4

    invoke-virtual {v0, v3}, Lf/a/i/i/q;->X(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    const-string v4, ", reopen_wifi_service handler end"

    invoke-static {v0, v3, v4}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_19
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->queryVRTips()I

    goto/16 :goto_1b

    :pswitch_1a
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->queryWeather()I

    goto/16 :goto_1b

    :pswitch_1b
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->s(Lf/a/i/i/q;Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_1c
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->disableDownloadSystemAudio()V

    goto/16 :goto_1b

    :pswitch_1d
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->enableDownloadSystemAudio()I

    goto/16 :goto_1b

    :pswitch_1e
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4}, Lf/a/i/i/q;->r(Lf/a/i/i/q;II)V

    goto/16 :goto_1b

    :pswitch_1f
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4}, Lf/a/i/i/q;->q(Lf/a/i/i/q;II)V

    goto/16 :goto_1b

    :pswitch_20
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lf/a/i/i/q;->p(Lf/a/i/i/q;Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_21
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->uploadNightModeStatus(Z)I

    goto/16 :goto_1b

    :pswitch_22
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->o(Lf/a/i/i/q;Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_23
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0}, Lf/a/i/i/q;->n(Lf/a/i/i/q;)V

    goto/16 :goto_1b

    :pswitch_24
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;

    invoke-static {v0, v3}, Lf/a/i/i/q;->l(Lf/a/i/i/q;Lnet/easyconn/ecsdk/ECTypes$ECSystemKeyCode;)V

    goto/16 :goto_1b

    :pswitch_25
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0}, Lf/a/i/i/q;->m(Lf/a/i/i/q;)V

    goto/16 :goto_1b

    :pswitch_26
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0}, Lf/a/i/i/q;->k(Lf/a/i/i/q;)V

    goto/16 :goto_1b

    :pswitch_27
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Lf/a/i/i/q;->j(Lf/a/i/i/q;[Ljava/lang/String;I)V

    goto/16 :goto_1b

    :pswitch_28
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lf/a/i/i/q;->i(Lf/a/i/i/q;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_29
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECSDK;->sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I

    goto/16 :goto_1b

    :pswitch_2a
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lf/a/i/i/q;->h(Lf/a/i/i/q;Ljava/lang/String;)V

    goto/16 :goto_1b

    :goto_2
    :pswitch_2b
    add-int/lit8 v0, v6, 0x1

    if-ge v6, v3, :cond_3

    iget-object v4, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v4, v4, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move v6, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", CLOSE_WIFI_SERVICE remove message DELAY_OPEN_WIFI_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->closeWiFiService()V

    goto/16 :goto_1b

    :pswitch_2c
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 3
    iget-object v0, v0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    if-eqz v0, :cond_3e

    .line 4
    invoke-virtual {v0}, Lf/a/i/p/e;->a()V

    goto/16 :goto_1b

    :cond_4
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 5
    iget-object v0, v0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-eqz v0, :cond_3e

    .line 6
    invoke-virtual {v0}, Lnet/easyconn/netlink/service/NetLinkService;->f()V

    goto/16 :goto_1b

    :pswitch_2d
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 7
    iget-object v4, v3, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    if-nez v4, :cond_5

    .line 8
    new-instance v4, Lf/a/i/p/e;

    iget-object v5, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v5, v5, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lf/a/i/p/e;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v4, v3, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    :cond_5
    const-string v3, "USB"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->openNetLinkService()I

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 11
    iget-object v0, v0, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    .line 12
    invoke-virtual {v0}, Lf/a/i/p/e;->b()V

    goto/16 :goto_1b

    :cond_6
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->openNetLinkService()I

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->J()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", getWifiDeviceIp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 13
    iget-object v3, v3, Lf/a/i/i/q;->A:Lf/a/i/p/e;

    .line 14
    invoke-virtual {v3, v0}, Lf/a/i/p/e;->c(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_7
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 15
    iget-object v0, v0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    if-eqz v0, :cond_3e

    .line 16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "USB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->openNetLinkService()I

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 17
    iget-object v0, v0, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    const-string v3, "127.0.0.1"

    .line 18
    invoke-virtual {v0, v3}, Lnet/easyconn/netlink/service/NetLinkService;->e(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_8
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->openNetLinkService()I

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->J()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", getWifiDeviceIp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 19
    iget-object v3, v3, Lf/a/i/i/q;->R:Lnet/easyconn/netlink/service/NetLinkService;

    .line 20
    invoke-virtual {v3, v0}, Lnet/easyconn/netlink/service/NetLinkService;->e(Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_2e
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->f(Lf/a/i/i/q;Landroid/os/Message;)V

    goto/16 :goto_1b

    :pswitch_2f
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->e(Lf/a/i/i/q;Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_30
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->d(Lf/a/i/i/q;Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_31
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0}, Lf/a/i/i/q;->c(Lf/a/i/i/q;)Z

    goto/16 :goto_1b

    :pswitch_32
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->b(Lf/a/i/i/q;Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_33
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_9

    const-string v0, "sendStopPhoneVR "

    .line 21
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->stopPhoneVR()I

    goto/16 :goto_1b

    :cond_9
    throw v4

    .line 22
    :pswitch_34
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->a(Lf/a/i/i/q;Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_35
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-static {v0, v2}, Lf/a/i/i/q;->x(Lf/a/i/i/q;Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_36
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    .line 23
    iget-object v3, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 24
    invoke-static {v3}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    goto :goto_3

    :cond_a
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "LIST_NET_CARD_MDNS_PUBLISH"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    :goto_3
    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->H(Landroid/content/Context;)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listNetCardMdnsPublish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->openWiFiService()I

    goto/16 :goto_1b

    :cond_b
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lnet/easyconn/ecsdk/ECSDK;->openWiFiService(Ljava/lang/String;Z)I

    goto/16 :goto_1b

    .line 26
    :pswitch_37
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0, v2}, Lf/a/i/i/q;->d0(Landroid/os/Message;)Z

    goto/16 :goto_1b

    :pswitch_38
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_c

    const-string v0, "pauseMirrorInHandler"

    .line 27
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->pauseMirror()I

    goto/16 :goto_1b

    :cond_c
    throw v4

    .line 28
    :pswitch_39
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_d

    const-string v0, "resumeMirrorInHandler"

    .line 29
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->resumeMirror()I

    goto/16 :goto_1b

    :cond_d
    throw v4

    .line 30
    :pswitch_3a
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_f

    const-string v3, "stopMirrorInHandler"

    .line 31
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v3, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lf/a/i/i/q;->K:Lf/a/i/h/d;

    if-eqz v3, :cond_e

    iget-object v0, v0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    invoke-interface {v0, v5}, Lf/a/i/h/c;->m(Z)V

    :cond_e
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->stopMirror()V

    goto/16 :goto_1b

    :cond_f
    throw v4

    .line 32
    :pswitch_3b
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->l0()Z

    goto/16 :goto_1b

    :pswitch_3c
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_11

    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_10

    const-string v3, "closeMirrorConnection begin"

    .line 33
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v6, v0, Lf/a/i/i/q;->V:Z

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->closeMirrorConnection()V

    const-string v0, "closeMirrorConnection end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_10
    throw v4

    .line 34
    :cond_11
    :goto_4
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v3}, Lf/a/i/i/q;->V(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    goto/16 :goto_1b

    :pswitch_3d
    iget-object v4, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 35
    iget-object v0, v4, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "openTransport start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v8, :cond_32

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_MAX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v8, v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openTransport() openType is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v5, v4, Lf/a/i/i/q;->k:Z

    iput-boolean v6, v4, Lf/a/i/i/q;->S:Z

    const-string v0, "openTransport() openTransportRetry\uff1a"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v4, Lf/a/i/i/q;->B:Z

    invoke-static {v0, v9}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, v4, Lf/a/i/i/q;->B:Z

    if-nez v0, :cond_14

    const-string v0, "openTransport() iMirrorStateListener is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v4, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " this.managerClass.hashCode = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v4, Lf/a/i/i/q;->L:Lf/a/i/h/e;

    if-eqz v0, :cond_13

    check-cast v0, Lf/a/k/g0;

    .line 36
    iget-object v9, v0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    instance-of v9, v9, Lf/a/k/l0/g3;

    if-nez v9, :cond_13

    iget-object v9, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    invoke-virtual {v9}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v9

    sget-object v10, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v9, v10, :cond_12

    goto :goto_5

    :cond_12
    iget-boolean v9, v0, Lf/a/k/g0;->J:Z

    if-eqz v9, :cond_13

    iget-object v9, v0, Lf/a/k/g0;->v:Landroid/os/Handler;

    if-eqz v9, :cond_13

    new-instance v10, Lf/a/k/b0;

    invoke-direct {v10, v0}, Lf/a/k/b0;-><init>(Lf/a/k/g0;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_13
    :goto_5
    iget-object v0, v4, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_14

    invoke-interface {v0, v5, v8}, Lf/a/i/h/c;->e(ZLnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    :cond_14
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v9

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 38
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_6

    :cond_15
    :try_start_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v10, "SPEECH_ENGINE_TYPE"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v10, "getSpeechEngineType NumberFormatException, e = "

    invoke-static {v10}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 39
    :goto_6
    invoke-virtual {v9, v5, v0}, Lnet/easyconn/ecsdk/ECSDK;->configTransportInfo(II)I

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v9

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 40
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v10, "0"

    if-nez v0, :cond_16

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_16
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :try_start_1
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v12, "DISABLE_APP_VR"

    invoke-virtual {v0, v12, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v12, "getPropertyDisableAppVr NumberFormatException, e = "

    invoke-static {v12}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v0, v12}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v11

    :goto_7
    const-string v11, "getPropertyDisableAppVr = "

    invoke-static {v11, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    .line 41
    :goto_8
    invoke-virtual {v9, v3, v0}, Lnet/easyconn/ecsdk/ECSDK;->configTransportInfo(II)I

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 42
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_9

    :cond_17
    :try_start_2
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v9, "MIC_SUPPORT_FEATURE"

    invoke-virtual {v0, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    const-string v9, "getPropertyMicSupportFeature NumberFormatException, e = "

    invoke-static {v9}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-ne v0, v3, :cond_1a

    .line 43
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v9, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 44
    invoke-static {v9}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v9

    const-string v11, "1"

    if-nez v9, :cond_18

    goto :goto_b

    :cond_18
    sget-object v9, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v12, "MIC_NUMBER"

    invoke-virtual {v9, v12, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_b
    const-string v9, "mic_number"

    .line 45
    invoke-virtual {v0, v9, v11}, Lnet/easyconn/ecsdk/ECSDK;->configSEParam(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v9, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 46
    invoke-static {v9}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_c

    :cond_19
    sget-object v9, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v11, "PHONE_ECHO_WORK_MODE"

    invoke-virtual {v9, v11, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_c
    const-string v9, "work_mode"

    .line 47
    invoke-virtual {v0, v9, v10}, Lnet/easyconn/ecsdk/ECSDK;->configSEParam(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnet/easyconn/ecsdk/ECSDK;->openTransport(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I

    move-result v0

    iput v0, v4, Lf/a/i/i/q;->U:I

    if-nez v0, :cond_2c

    const-string v0, "openTransport() success, ECTypes = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v6, v4, Lf/a/i/i/q;->B:Z

    iput-boolean v5, v4, Lf/a/i/i/q;->T:Z

    iget-object v0, v4, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v4, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    .line 48
    iput-object v8, v0, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 49
    iget-object v0, v4, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_1b

    invoke-interface {v0, v8}, Lf/a/i/h/c;->n0(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    :cond_1b
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    const-string v9, "carbit_ec_ftp_ota"

    const-string v10, "$Siwei2018@"

    invoke-virtual {v0, v9, v10}, Lnet/easyconn/ecsdk/ECSDK;->openFtpSerer(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const-string v9, "false"

    if-eq v0, v3, :cond_1e

    const/4 v10, 0x4

    if-eq v0, v10, :cond_1e

    if-eqz v0, :cond_1e

    if-eq v0, v7, :cond_1e

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 50
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_1c
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v7, "ALL_TRANS_BY_BT"

    invoke-virtual {v0, v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v0, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_f

    :cond_1e
    :goto_e
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 51
    :goto_f
    iget-object v13, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v13}, Lf/a/i/m/g;->d0(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    iget-object v13, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v13}, Lf/a/i/m/g;->g0(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_20

    const/4 v7, 0x0

    :cond_20
    iget-object v13, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v13}, Lf/a/i/m/g;->b0(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_21

    const/4 v12, 0x0

    :cond_21
    iget-object v13, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v13}, Lf/a/i/m/g;->J(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_22

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_10

    :cond_22
    move/from16 v19, v7

    move v7, v0

    move v0, v10

    move/from16 v10, v19

    :goto_10
    iget-object v13, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 52
    invoke-static {v13}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_23

    goto :goto_11

    :cond_23
    sget-object v13, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v14, "MUSIC_TRANS_BY_BT"

    invoke-virtual {v13, v14, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_11
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_12

    :cond_24
    move v9, v0

    .line 53
    :goto_12
    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 54
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, -0x1

    if-nez v0, :cond_25

    goto :goto_14

    :cond_25
    :try_start_3
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v14, "AUTO_CHANGE_TO_BT"

    invoke-virtual {v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lf/a/i/m/g;->B:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    const-string v14, "getAutoChangeToBT NumberFormatException, e = "

    invoke-static {v14}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sput v13, Lf/a/i/m/g;->B:I

    :goto_13
    const-string v0, "propertyAutoChangeToBT = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v13, Lf/a/i/m/g;->B:I

    invoke-static {v0, v13}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v13, Lf/a/i/m/g;->B:I

    :goto_14
    if-ne v13, v5, :cond_26

    const/4 v6, 0x1

    goto :goto_15

    :cond_26
    if-nez v13, :cond_27

    goto :goto_15

    :cond_27
    move v6, v11

    .line 55
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enableTTS = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", enableVR = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", enableTalkie = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", enableMusic = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", autoChangeToBT = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v13

    move v14, v7

    move v15, v10

    move/from16 v16, v12

    move/from16 v17, v9

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lnet/easyconn/ecsdk/ECSDK;->enableDownloadPhoneAppAudio(ZZZZZ)I

    move-result v0

    const-string v11, "enableDownloadPhoneAppAudio ret = "

    invoke-static {v11, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v13, 0x5

    :goto_16
    iget-boolean v14, v4, Lf/a/i/i/q;->T:Z

    if-eqz v14, :cond_28

    if-eqz v0, :cond_28

    add-int/lit8 v15, v13, -0x1

    if-lez v13, :cond_28

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", retry = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v13

    move v14, v7

    move v0, v15

    move v15, v10

    move/from16 v16, v12

    move/from16 v17, v9

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lnet/easyconn/ecsdk/ECSDK;->enableDownloadPhoneAppAudio(ZZZZZ)I

    move-result v13

    move/from16 v19, v13

    move v13, v0

    move/from16 v0, v19

    goto :goto_16

    :cond_28
    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 56
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 57
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendDriveModeCheckStatusBroadcast()V

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 58
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 59
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendDayOrNightCheckStatusBroadcast()V

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 60
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->f:Lnet/easyconn/framework/broadcast/BroadcastManager;

    .line 61
    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendLinkInBroadcast()V

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0, v5}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d(Z)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->enableDownloadPhoneAppHud()I

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->M(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_29

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->P(Landroid/content/Context;)F

    move-result v0

    iget-object v5, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result v5

    iget-object v6, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lf/a/i/m/g;->K(Landroid/content/Context;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openTransport DA openAppVirtualMachine width = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " height = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " scale = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v7

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v5, v5

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v0, v6

    invoke-virtual {v7, v5, v0}, Lnet/easyconn/ecsdk/ECSDK;->openAppVirtualMachine(II)I

    :cond_29
    iget-object v0, v4, Lf/a/i/i/q;->q:Landroid/os/Handler;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2a
    invoke-virtual {v4}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v5, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-eq v0, v5, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openTransport send message to openMirrorConnection, openType = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, v4, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    :cond_2b
    iget-object v0, v4, Lf/a/i/i/q;->t:Landroid/os/Handler;

    if-eqz v0, :cond_3e

    const/16 v3, 0x19

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1b

    :cond_2c
    const/4 v3, -0x7

    const/4 v7, -0x6

    const-string v9, "openTransport retryTime is = "

    const-string v10, ", ECTypes = "

    if-eq v0, v3, :cond_31

    const/4 v3, -0x5

    if-eq v0, v3, :cond_31

    if-eq v0, v7, :cond_31

    const/4 v3, -0x3

    if-ne v0, v3, :cond_2d

    goto/16 :goto_17

    :cond_2d
    const/4 v3, -0x8

    if-ne v0, v3, :cond_2f

    const-string v0, "openTransport() failed, rt is ECTypes.EC_ERR_PERMISSION_DENIED, ECTypes = "

    .line 63
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v6, v4, Lf/a/i/i/q;->T:Z

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v8, v0, :cond_2e

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_MUX:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    iget-object v3, v4, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    if-eqz v3, :cond_2e

    .line 64
    iput-object v0, v3, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 65
    :cond_2e
    iput-boolean v5, v4, Lf/a/i/i/q;->B:Z

    iget-object v0, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->h(Landroid/content/Context;)J

    move-result-wide v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v4, Lf/a/i/i/q;->r:Landroid/os/Handler;

    iget-object v3, v4, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v3}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1b

    :cond_2f
    iput-boolean v6, v4, Lf/a/i/i/q;->T:Z

    iget-object v3, v4, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v3, :cond_30

    invoke-interface {v3, v0}, Lf/a/i/h/c;->Z(I)V

    :cond_30
    iput-boolean v6, v4, Lf/a/i/i/q;->B:Z

    const-string v3, "openTransport() failed. No Retry! rt is"

    invoke-static {v3, v0, v10}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failedCensus connectFailedCensus rt = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v4, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v0}, Lf/a/i/h/c;->v(I)V

    goto/16 :goto_1b

    :cond_31
    :goto_17
    const-string v3, "openTransport() failed. Retry! rt is "

    invoke-static {v3, v0, v10}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v6, v4, Lf/a/i/i/q;->T:Z

    iput-boolean v5, v4, Lf/a/i/i/q;->B:Z

    iget-object v3, v4, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v3}, Lf/a/i/m/g;->h(Landroid/content/Context;)J

    move-result-wide v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v4, Lf/a/i/i/q;->r:Landroid/os/Handler;

    iget-object v6, v4, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual {v6}, Lf/a/i/i/m;->b()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-ne v0, v7, :cond_3e

    iget-object v3, v4, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v0}, Lf/a/i/h/c;->Z(I)V

    goto/16 :goto_1b

    :cond_32
    iput-boolean v6, v4, Lf/a/i/i/q;->k:Z

    iput-boolean v6, v4, Lf/a/i/i/q;->B:Z

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "openTransport() openType is null"

    invoke-static {v3, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 66
    :pswitch_3e
    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    .line 67
    monitor-enter v3

    :try_start_4
    iget-object v4, v3, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v4}, Lf/a/i/m/g;->c(Landroid/content/Context;)Lf/a/i/a;

    move-result-object v4

    if-nez v4, :cond_33

    const-string v0, "initECSDK: initialize ECSDK,false. Property is null"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_33
    iget-object v7, v3, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    iput-object v0, v4, Lf/a/i/a;->b:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    .line 69
    iget-object v0, v3, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v3}, Lf/a/i/i/q;->G()Ljava/lang/String;

    move-result-object v0

    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initECSDK: initialize ECSDK,deviceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 70
    iget-object v6, v4, Lf/a/i/a;->a:Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;

    .line 71
    iput-object v0, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaModel:Ljava/lang/String;

    .line 72
    iget-object v11, v4, Lf/a/i/a;->c:Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialize ECTypes.ECOptions.workspace = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v7

    iget-object v8, v3, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 74
    iget-object v9, v4, Lf/a/i/a;->b:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

    .line 75
    iget-object v10, v4, Lf/a/i/a;->a:Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;

    .line 76
    iget-object v12, v3, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    invoke-virtual/range {v7 .. v12}, Lnet/easyconn/ecsdk/ECSDK;->initialize(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;Lnet/easyconn/ecsdk/ECTypes$ECOptions;Lnet/easyconn/ecsdk/IECCallback;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_18

    :cond_35
    const/4 v5, 0x0

    :goto_18
    iput-boolean v5, v3, Lf/a/i/i/q;->j:Z

    iget-boolean v4, v3, Lf/a/i/i/q;->j:Z

    if-eqz v4, :cond_39

    sget-boolean v4, Lf/a/i/i/q;->c0:Z

    if-eqz v4, :cond_36

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v4

    invoke-virtual {v4}, Lnet/easyconn/ecsdk/ECSDK;->enableSandbox()V

    const-string v4, "initialize enableSandbox"

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_36
    iget-object v4, v3, Lf/a/i/i/q;->u:Lf/a/i/i/q$c;

    if-eqz v4, :cond_37

    iget-object v4, v3, Lf/a/i/i/q;->u:Lf/a/i/i/q$c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    check-cast v4, Lf/a/i/i/f;

    :try_start_5
    invoke-virtual {v4}, Lf/a/i/i/f;->a()V

    :cond_37
    iget-object v4, v3, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v4, :cond_38

    iget-object v4, v3, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    invoke-interface {v4}, Lf/a/i/h/c;->C()V

    :cond_38
    iget-object v4, v3, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_3a

    iget-object v4, v3, Lf/a/i/i/q;->i:Lf/a/i/i/e;

    iget-object v5, v3, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v5}, Lf/a/i/i/e;->b(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open device after SDK init OK, ret is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v4, :cond_3a

    iget-object v4, v3, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    .line 77
    iput v4, v3, Lf/a/i/i/q;->P:I

    .line 78
    iget-object v4, v3, Lf/a/i/i/q;->N:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    .line 79
    iput v4, v3, Lf/a/i/i/q;->Q:I

    goto :goto_19

    .line 80
    :cond_39
    iget-object v4, v3, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v4, :cond_3a

    iget-object v4, v3, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    invoke-interface {v4, v0}, Lf/a/i/h/c;->h(I)V

    :cond_3a
    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initECSDK: initialize ECSDK, ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1a
    monitor-exit v3

    .line 81
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECSDK;->getCustomProtocol()Lnet/easyconn/ecsdk/ECCustomProtocol;

    move-result-object v0

    iget-object v3, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    invoke-virtual {v0, v3}, Lnet/easyconn/ecsdk/ECCustomProtocol;->registerCustomDataReceiver(Lnet/easyconn/ecsdk/ECCustomProtocol$ICustomDataReceiver;)I

    goto :goto_1b

    :catchall_0
    move-exception v0

    .line 82
    monitor-exit v3

    throw v0

    .line 83
    :pswitch_3f
    iget-object v0, v1, Lf/a/i/i/q$d;->b:Lf/a/i/i/q;

    if-eqz v0, :cond_3d

    const-string v3, "EcSdkManager release sdk"

    .line 84
    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    invoke-virtual {v3}, Lnet/easyconn/ecsdk/ECSDK;->release()V

    iget-object v3, v0, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    .line 85
    iget-object v3, v3, Lf/a/i/i/m;->f:Landroid/os/HandlerThread;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 86
    :cond_3b
    iget-object v3, v0, Lf/a/i/i/q;->f:Landroid/os/HandlerThread;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    :cond_3c
    iget-object v3, v0, Lf/a/i/i/q;->e:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, v0, Lf/a/i/i/q;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "EcSdkManager release end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_3d
    throw v4

    .line 87
    :cond_3e
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lf/a/i/i/q$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", EcSdkManager msg.what end = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_36
        :pswitch_c
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
