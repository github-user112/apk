.class public final La/a/a/a/m/m/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/m/m/d/d$a;
.implements La/a/a/a/m/m/d/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/m/m/d/e$a;
    }
.end annotation


# instance fields
.field public final a:La/a/a/a/c;

.field public final b:La/a/a/a/m/m/d/e$a;

.field public final c:La/a/a/a/m/m/d/i;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:La/a/a/a/a/j/f/a;

.field public final g:Lc/a;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/m/m/d/e$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/d/e;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/d/e;->b:La/a/a/a/m/m/d/e$a;

    new-instance p2, La/a/a/a/m/m/d/i;

    invoke-direct {p2, p1, p0}, La/a/a/a/m/m/d/i;-><init>(La/a/a/a/c;La/a/a/a/m/m/d/i$b;)V

    iput-object p2, p0, La/a/a/a/m/m/d/e;->c:La/a/a/a/m/m/d/i;

    const-string p2, "CONFIG_WIFI_DIRECT_NAME"

    invoke-interface {p1, p2}, La/a/a/a/c;->I0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, La/a/a/a/m/m/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, La/a/a/a/m/m/d/e$b;

    invoke-direct {p1, p0}, La/a/a/a/m/m/d/e$b;-><init>(La/a/a/a/m/m/d/e;)V

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/d/e;->g:Lc/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, La/a/a/a/m/m/d/e;->f:La/a/a/a/a/j/f/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, La/a/a/a/m/m/d/e;->d(La/a/a/a/a/j/f/a;)V

    :goto_0
    return-void
.end method

.method public b(La/a/a/a/a/j/f/a;)V
    .locals 1

    const-string v0, "communicator"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/m/m/d/e$c;

    invoke-direct {v0, p0, p1}, La/a/a/a/m/m/d/e$c;-><init>(La/a/a/a/m/m/d/e;La/a/a/a/a/j/f/a;)V

    const-string p1, "block"

    .line 1
    invoke-static {v0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lc/i/a;

    invoke-direct {p1, v0}, Lc/i/a;-><init>(Lc/k/a/a;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final c(La/a/a/a/a/j/f/a;La/a/a/a/a/a/b;)V
    .locals 9

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const-string v4, "args"

    const-string v5, "tag"

    const-string v6, "Bluetooth_CarLife_SDK"

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "handleResponseWirlessStatus"

    aput-object v0, p1, v1

    .line 1
    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, v6, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;

    iget-object p2, p0, La/a/a/a/m/m/d/e;->a:La/a/a/a/c;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessStatusProto$CarlifeWirlessStatus;->getStatus()I

    move-result p1

    invoke-interface {p2, p1}, La/a/a/a/k;->L0(I)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeWirlessStatusProto.CarlifeWirlessStatus"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :sswitch_1
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    new-array v0, v7, [Ljava/lang/Object;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v8, "handleResponseIp is : "

    invoke-static {v8, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6
    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v6, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-eqz p2, :cond_6

    .line 9
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wirelessIp.wirlessip"

    invoke-static {v0, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    iget-object p1, p0, La/a/a/a/m/m/d/e;->b:La/a/a/a/m/m/d/e$a;

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessIpProto$CarlifeWirlessIp;->getWirlessip()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, La/a/a/a/m/m/d/e$a;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    iget-object p2, p0, La/a/a/a/m/m/d/e;->c:La/a/a/a/m/m/d/i;

    .line 10
    iget-boolean p2, p2, La/a/a/a/m/m/d/i;->f:Z

    if-eqz p2, :cond_b

    .line 11
    iget-object p2, p0, La/a/a/a/m/m/d/e;->a:La/a/a/a/c;

    const-wide/16 v0, 0x3e8

    new-instance v2, La/a/a/a/m/m/d/f;

    invoke-direct {v2, p0, p1}, La/a/a/a/m/m/d/f;-><init>(La/a/a/a/m/m/d/e;La/a/a/a/a/j/f/a;)V

    invoke-interface {p2, v0, v1, v2}, La/a/a/a/c;->L(JLc/k/a/a;)V

    goto/16 :goto_6

    :sswitch_2
    new-array p2, v7, [Ljava/lang/Object;

    const-string v0, "handleTargetInfoRequest: MSG_WIRELESS_TARGET_INFO_RESPONSE"

    aput-object v0, p2, v1

    .line 12
    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {p2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v3, v6, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_4
    iget-object p2, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    if-nez p2, :cond_8

    goto/16 :goto_6

    :cond_8
    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x108005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v7, v0, v1, v2}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/m/m/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setWifiDeviceName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;->setTargetInfo(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-virtual {p1, p2}, La/a/a/a/a/j/f/a;->b(La/a/a/a/a/a/b;)V

    iget-object p2, p0, La/a/a/a/m/m/d/e;->c:La/a/a/a/m/m/d/i;

    .line 16
    iget-boolean v0, p2, La/a/a/a/m/m/d/i;->f:Z

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p0, p1}, La/a/a/a/m/m/d/e;->d(La/a/a/a/a/j/f/a;)V

    goto :goto_6

    .line 18
    :cond_9
    iget-object p1, p2, La/a/a/a/m/m/d/i;->e:La/a/a/a/m/m/d/h;

    .line 19
    iget-object p1, p1, La/a/a/a/m/m/d/h;->c:La/a/a/a/n/i/b;

    invoke-virtual {p1}, La/a/a/a/n/i/b;->a()V

    goto :goto_6

    :sswitch_3
    new-array p2, v7, [Ljava/lang/Object;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "handleWirelessInfoRequest: MSG_WIRELESS_INFO_RESPONSE"

    aput-object v8, p2, v1

    .line 21
    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_a

    goto :goto_5

    .line 23
    :cond_a
    invoke-static {p2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v4, v3, v6, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :goto_5
    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v3, 0x108002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v7, v3, v1, v2}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/m/m/d/e;->a:La/a/a/a/c;

    const-string v3, "CONFIG_WIRLESS_TYPE"

    invoke-interface {v2, v3, v0}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;->setWirlessType(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/m/m/d/e;->a:La/a/a/a/c;

    const-string v3, "CONFIG_WIRLESS_FREQUENCY"

    invoke-interface {v2, v3, v0}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;->setWifiFrequency(I)Lcom/baidu/carlife/protobuf/CarlifeWirlessInfoProto$CarlifeWirlessInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-virtual {p1, p2}, La/a/a/a/a/j/f/a;->b(La/a/a/a/a/a/b;)V

    :cond_b
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x100001 -> :sswitch_3
        0x100004 -> :sswitch_2
        0x100007 -> :sswitch_1
        0x100008 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(La/a/a/a/a/j/f/a;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v3, 0x108006

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v1, v3, v0, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, La/a/a/a/a/j/f/a;->b(La/a/a/a/a/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "CarLife_SDK"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "InstantConnectionSetup requestIp exception :"

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    const-string p1, "tag"

    .line 1
    invoke-static {v2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {v3, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 3
    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
