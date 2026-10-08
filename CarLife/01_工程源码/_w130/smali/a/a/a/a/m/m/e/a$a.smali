.class public final La/a/a/a/m/m/e/a$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/m/m/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:La/a/a/a/m/m/e/a;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/e/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, La/a/a/a/m/m/e/a$a;->b:Z

    const-string p1, "WIFIConnectThread"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    iget-boolean v0, v1, La/a/a/a/m/m/e/a$a;->b:Z

    if-eqz v0, :cond_d

    sget-object v0, La/a/a/a/l/b;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "wifi onConnectionAttached"

    const-string v3, "is connected stop wifi :"

    const-string v4, "UDPSocket IOException:"

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v7, "args"

    const-string v8, "tag"

    const/4 v9, 0x1

    const-string v10, "CarLife_SDK"

    const/4 v11, 0x0

    if-eqz v0, :cond_8

    :try_start_0
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    new-instance v14, Ljava/net/DatagramPacket;

    iget-object v15, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 1
    iget-object v15, v15, La/a/a/a/m/m/e/a;->d:[B

    .line 2
    invoke-static {v15}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    array-length v12, v15

    invoke-direct {v14, v15, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 3
    iput-object v14, v0, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;

    .line 4
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    invoke-static {v0}, La/a/a/a/m/m/e/a;->h(La/a/a/a/m/m/e/a;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v9, [Ljava/lang/Object;

    const-string v3, "start read broadcast socket"

    aput-object v3, v0, v11

    .line 5
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v10, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 9
    iget-object v0, v0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    .line 10
    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iget-object v3, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 11
    iget-object v3, v3, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;

    .line 12
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-array v0, v9, [Ljava/lang/Object;

    const-string v3, "read broadcast socket"

    aput-object v3, v0, v11

    .line 13
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v6, v10, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_2
    iget-boolean v0, v1, La/a/a/a/m/m/e/a$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 17
    iget-object v3, v0, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;

    if-eqz v3, :cond_0

    .line 18
    invoke-static {v0}, La/a/a/a/m/m/e/a;->h(La/a/a/a/m/m/e/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 19
    iget-object v0, v0, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;

    .line 20
    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    new-array v3, v9, [Ljava/lang/Object;

    const-string v12, "connect  packet:"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 21
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v12, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v12, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v6, v10, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :goto_3
    iget-object v3, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 25
    iget-object v3, v3, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    .line 26
    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v12, "serverIPAddress.hostAddress"

    invoke-static {v0, v12}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, La/a/a/a/m/m/e/b;->d(Ljava/lang/String;)Z

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v11

    .line 27
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_4

    goto :goto_4

    .line 29
    :cond_4
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v10, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :goto_4
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    invoke-virtual {v0}, La/a/a/a/a/j/c;->b()V

    goto/16 :goto_0

    :cond_5
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v2, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 31
    iget-object v2, v2, La/a/a/a/m/m/e/a;->c:La/a/a/a/c;

    .line 32
    invoke-interface {v2}, La/a/a/a/c;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    .line 33
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_6

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v10, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_5
    iput-boolean v11, v1, La/a/a/a/m/m/e/a$a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v4, v2, v11

    aput-object v0, v2, v9

    .line 37
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_7

    goto/16 :goto_8

    .line 39
    :cond_7
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6, v10, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 40
    :cond_8
    :try_start_1
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    invoke-static {v0}, La/a/a/a/m/m/e/a;->h(La/a/a/a/m/m/e/a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v1, La/a/a/a/m/m/e/a$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    invoke-static {v0}, La/a/a/a/m/m/e/a;->h(La/a/a/a/m/m/e/a;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_0

    const-wide/16 v12, 0x3e8

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    :try_start_3
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 41
    iget-object v0, v0, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    .line 42
    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    sget-object v3, La/a/a/a/l/b;->g:Ljava/lang/String;

    const-string v12, "phoneIp"

    invoke-static {v3, v12}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, La/a/a/a/m/m/e/b;->d(Ljava/lang/String;)Z

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v11

    .line 43
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_9

    goto :goto_6

    .line 45
    :cond_9
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v10, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_6
    iget-object v0, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    invoke-virtual {v0}, La/a/a/a/a/j/c;->b()V

    goto/16 :goto_0

    :cond_a
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v2, v1, La/a/a/a/m/m/e/a$a;->c:La/a/a/a/m/m/e/a;

    .line 47
    iget-object v2, v2, La/a/a/a/m/m/e/a;->c:La/a/a/a/c;

    .line 48
    invoke-interface {v2}, La/a/a/a/c;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    .line 49
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_b

    goto :goto_7

    .line 51
    :cond_b
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v10, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_7
    iput-boolean v11, v1, La/a/a/a/m/m/e/a$a;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v4, v2, v11

    aput-object v0, v2, v9

    .line 53
    invoke-static {v10, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_c

    goto :goto_8

    .line 55
    :cond_c
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6, v10, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const-wide/16 v2, 0x3e8

    .line 56
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    nop

    goto/16 :goto_0

    :cond_d
    return-void
.end method
