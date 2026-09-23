.class public final La/a/a/a/m/k/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La/a/a/a/m/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;

.field public volatile f:J

.field public final g:Ljava/lang/Runnable;

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/k/a/c;->b:La/a/a/a/c;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, La/a/a/a/m/k/a/c;->c:Ljava/util/Set;

    const-string p1, ""

    iput-object p1, p0, La/a/a/a/m/k/a/c;->e:Ljava/lang/String;

    new-instance p1, La/a/a/a/m/k/a/a;

    invoke-direct {p1, p0}, La/a/a/a/m/k/a/a;-><init>(La/a/a/a/m/k/a/c;)V

    iput-object p1, p0, La/a/a/a/m/k/a/c;->g:Ljava/lang/Runnable;

    new-instance p1, La/a/a/a/m/k/a/b;

    invoke-direct {p1, p0}, La/a/a/a/m/k/a/b;-><init>(La/a/a/a/m/k/a/c;)V

    iput-object p1, p0, La/a/a/a/m/k/a/c;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, La/a/a/a/m/k/a/c;->d:I

    sget-object p1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v0, p0, La/a/a/a/m/k/a/c;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public Q(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La/a/a/a/a/e;

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, La/a/a/a/a/e;->y:Z

    .line 2
    iput v0, p0, La/a/a/a/m/k/a/c;->d:I

    sget-object p1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v0, p0, La/a/a/a/m/k/a/c;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, La/a/a/a/m/k/a/c;->d:I

    iget-object v0, p0, La/a/a/a/m/k/a/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/m/e;

    invoke-interface {v1, p1}, La/a/a/a/m/e;->s(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public c0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x46

    invoke-virtual {p0, p1}, La/a/a/a/m/k/a/c;->b(I)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a/m/k/a/c;->f:J

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "args"

    const-string v3, "tag"

    const-string v4, "CarLife_SDK"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const v0, 0x1804c

    .line 1
    invoke-interface {p1, v8, v0}, La/a/a/a/c;->z0(II)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    if-eqz v0, :cond_0

    move-object v6, p2

    check-cast v6, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->getAuthenResult()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, La/a/a/a/c;->l0()V

    goto/16 :goto_9

    :cond_1
    invoke-interface {p1}, La/a/a/a/c;->w()V

    goto/16 :goto_9

    :sswitch_1
    new-array v0, v8, [Ljava/lang/Object;

    const-string v9, "AuthenticationStep2 \u83b7\u53d6\u79fb\u52a8\u7aef\u6821\u9a8c\u7801"

    aput-object v9, v0, v7

    .line 2
    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v9, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v9, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1, v4, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    sget-object v0, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v9, p0, La/a/a/a/m/k/a/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    sget-object v9, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v10, 0x1804a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v8, v10, v7, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v5

    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v9, p2, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    if-eqz v9, :cond_3

    move-object v6, p2

    check-cast v6, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;

    :cond_3
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResponseProto$CarlifeAuthenResponse;->getEncryptValue()Ljava/lang/String;

    move-result-object v6

    const-string v9, "AuthenticationStep2.1 authenticationInfo = "

    invoke-static {v9, v6}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v7

    .line 6
    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v6, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v6, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {p2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v6, v1, v4, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    invoke-interface {p1}, La/a/a/a/c;->J0()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->getSdk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, La/a/a/a/m/k/a/c;->e:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string p2, ""

    :goto_2
    new-array v6, v8, [Ljava/lang/Object;

    const-string v9, "AuthenticationStep2.2 mdInfoAuthen = "

    invoke-static {v9, p2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v7

    .line 10
    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p2, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v1, v4, v6}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    new-array p2, v8, [Ljava/lang/Object;

    .line 13
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "AuthenticationStep2.3 encryptionInfo = "

    invoke-static {v9, v6}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v7

    .line 14
    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    invoke-static {p2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v1, v4, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    const/4 v7, 0x1

    .line 17
    :cond_8
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;->setAuthenResult(Z)Lcom/baidu/carlife/protobuf/CarlifeAuthenResultProto$CarlifeAuthenResult$Builder;

    move-result-object p2

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-virtual {v5, p2}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, v5}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    if-nez v7, :cond_11

    iget-object p1, p0, La/a/a/a/m/k/a/c;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, La/a/a/a/n/h;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_9

    .line 18
    :sswitch_2
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    if-eqz v0, :cond_9

    move-object v6, p2

    check-cast v6, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;

    :cond_9
    invoke-interface {p1, v6}, La/a/a/a/c;->c(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V

    .line 19
    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x18003

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v8, v0, v7, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    invoke-interface {p1}, La/a/a/a/c;->m0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setOs(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBoard(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBootloader(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setBrand(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCpuAbi(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCpuAbi2(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setDevice(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setDisplay(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setFingerprint(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setHardware(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setHost(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setManufacturer(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setModel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setProduct(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSerial(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCodename(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setIncremental(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSdk(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setSdkInt(I)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setRelease(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    invoke-interface {p1}, La/a/a/a/c;->getVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;->setCarlifeversion(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v6

    invoke-virtual {v0, v6}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v6, "AuthenticationStep1 \u83b7\u53d6MD\u4fe1\u606f\uff0c\u5f00\u542f\u9274\u6743"

    aput-object v6, v0, v7

    .line 20
    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v6, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v6, :cond_a

    goto :goto_5

    .line 22
    :cond_a
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v4, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    const v0, 0x18048

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v8, v0, v7, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 24
    sget-object v9, La/a/a/a/n/d;->a:Ljava/lang/ThreadLocal;

    const-string v9, "<this>"

    invoke-static {v0, v9}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/m/k/a/c;->e:Ljava/lang/String;

    const-string v5, "2.0;"

    invoke-static {v5, v0}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "AuthenticationStep1.1 randomValue = "

    invoke-static {v6, v0}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 26
    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_b

    goto :goto_6

    .line 28
    :cond_b
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v4, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :goto_6
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;->setRandomValue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, p2}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    sget-object p1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object p2, p0, La/a/a/a/m/k/a/c;->h:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, La/a/a/a/n/h;->a(Ljava/lang/Runnable;J)V

    goto :goto_9

    .line 30
    :sswitch_3
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    if-eqz v0, :cond_c

    move-object v6, p2

    check-cast v6, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    :cond_c
    invoke-interface {p1}, La/a/a/a/c;->r0()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    move-result-object p2

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getCarlifeProtocolVersion()I

    move-result v0

    invoke-interface {p1, v0}, La/a/a/a/c;->E0(I)V

    :cond_d
    if-nez v6, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getMatchStatus()I

    move-result v0

    if-ne v0, v8, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v1, 0x18027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v8, v1, v7, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, La/a/a/a/m/k/a/c;->b(I)V

    sget-object v0, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v1, p0, La/a/a/a/m/k/a/c;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    goto :goto_9

    :cond_10
    invoke-interface {p1, v7}, La/a/a/a/c;->h(Z)V

    invoke-interface {p1}, La/a/a/a/c;->r()V

    .line 31
    :cond_11
    :goto_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10004 -> :sswitch_2
        0x10049 -> :sswitch_1
        0x1004b -> :sswitch_0
    .end sparse-switch
.end method

.method public n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    const p2, 0x18009

    if-ne p1, p2, :cond_0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, La/a/a/a/m/k/a/c;->b(I)V

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public o(La/a/a/a/c;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, La/a/a/a/a/e;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, La/a/a/a/a/e;->y:Z

    .line 2
    sget-object v2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v3, 0x18001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-static {v2, v4, v3, v1, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v2

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    move-result-object v3

    .line 3
    iget v0, v0, La/a/a/a/a/e;->v:I

    .line 4
    invoke-virtual {v3, v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;->setMajorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;->setMinorVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionProto$CarlifeProtocolVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {v2, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    check-cast p1, La/a/a/a/m/d;

    invoke-virtual {p1, v2}, La/a/a/a/m/d;->K0(La/a/a/a/a/a/b;)V

    invoke-virtual {p0, v1}, La/a/a/a/m/k/a/c;->b(I)V

    return-void
.end method
