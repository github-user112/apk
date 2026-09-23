.class public final La/a/a/a/m/j/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:La/a/a/a/m/h;

.field public d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

.field public e:La/a/a/a/m/j/a;

.field public f:Landroid/view/Surface;

.field public g:La/a/a/a/a/f;

.field public h:La/a/a/a/m/i;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/m/h;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/j/b;->c:La/a/a/a/m/h;

    check-cast p1, La/a/a/a/a/e;

    .line 1
    iget-object p2, p1, La/a/a/a/a/e;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    iget-object v0, p1, La/a/a/a/a/e;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, La/a/a/a/a/f;

    .line 5
    iget-object p1, p1, La/a/a/a/a/e;->b:Landroid/content/Context;

    const/16 v2, 0x3c

    .line 6
    invoke-direct {v1, p1, p2, v0, v2}, La/a/a/a/a/f;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, La/a/a/a/m/j/b;->g:La/a/a/a/a/f;

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/a/a/a/m/j/a;->b()V

    iput-object v0, p0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    :goto_0
    iput-object v0, p0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

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

    .line 1
    iget-object p1, p0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/a/a/a/m/j/a;->b()V

    iput-object v0, p0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    :goto_0
    iput-object v0, p0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public c0(La/a/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x18007

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, La/a/a/a/a/a/b$a;->a(ILjava/lang/Integer;I)La/a/a/a/a/a/b;

    move-result-object p1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/m/j/b;->g:La/a/a/a/a/f;

    .line 2
    iget v1, v1, La/a/a/a/a/f;->b:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;->setWidth(I)Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/m/j/b;->g:La/a/a/a/a/f;

    .line 4
    iget v1, v1, La/a/a/a/a/f;->c:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;->setHeight(I)Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/m/j/b;->g:La/a/a/a/a/f;

    .line 6
    iget v1, v1, La/a/a/a/a/f;->d:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;->setFrameRate(I)Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    iget-object v0, p0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    invoke-interface {v0, p1}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result v0

    const v1, 0x10008

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const p1, 0x20001

    if-eq v0, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-virtual {p2}, La/a/a/a/a/a/b;->l()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "message"

    .line 1
    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, La/a/a/a/m/j/a;->g:Z

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p2, La/a/a/a/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    iget-object v0, p1, La/a/a/a/m/j/a;->i:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, p2, La/a/a/a/a/a/b;->i:[B

    .line 5
    invoke-virtual {p2}, La/a/a/a/a/a/b;->k()I

    move-result v5

    invoke-virtual {p2}, La/a/a/a/a/a/b;->l()I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-object v0, p1, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    new-array p2, v4, [Ljava/lang/Object;

    iget-object v0, p1, La/a/a/a/m/j/a;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FrameDecoder messageQueue size "

    invoke-static {v1, v0}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 6
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "args"

    invoke-static {p2, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v6, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    .line 8
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v6, v7, v0, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-boolean p2, p1, La/a/a/a/m/j/a;->h:Z

    if-nez p2, :cond_5

    iput-boolean v4, p1, La/a/a/a/m/j/a;->h:Z

    new-array p2, v4, [Ljava/lang/Object;

    iget-boolean p1, p1, La/a/a/a/m/j/a;->h:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v6, "FrameDecoder isFirstDataFrame: "

    invoke-static {v6, p1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    .line 10
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, v0, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_5
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_6
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    if-eqz p2, :cond_c

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    iput-object p2, p0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    iget-object v0, p0, La/a/a/a/m/j/b;->c:La/a/a/a/m/h;

    invoke-static {p2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result p2

    .line 14
    iget-object v1, p0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 15
    invoke-static {v1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result v1

    invoke-interface {v0, p2, v1}, La/a/a/a/m/h;->b(II)V

    iget-object p2, p0, La/a/a/a/m/j/b;->f:Landroid/view/Surface;

    if-eqz p2, :cond_8

    new-instance p2, La/a/a/a/m/j/a;

    iget-object v0, p0, La/a/a/a/m/j/b;->f:Landroid/view/Surface;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 17
    invoke-static {v1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0, v1}, La/a/a/a/m/j/a;-><init>(La/a/a/a/c;Landroid/view/Surface;Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V

    iput-object p2, p0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x18009

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p2, v4, v0, v3, v1}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    invoke-interface {p1, p2}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    const-string p1, "CarLife_SDK"

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "RemoteDisplayRenderer postMessage MSG_CMD_VIDEO_ENCODER_START 1"

    aput-object v0, p2, v3

    const-string v0, "tag"

    .line 18
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    monitor-exit p0

    iget-object p1, p0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    if-nez p1, :cond_9

    goto :goto_5

    .line 22
    :cond_9
    iget-object p2, p0, La/a/a/a/m/j/b;->h:La/a/a/a/m/i;

    if-nez p2, :cond_a

    goto :goto_4

    .line 23
    :cond_a
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result p1

    invoke-interface {p2, v0, p1}, La/a/a/a/m/i;->a(II)V

    :goto_4
    const-string p1, "CarLife_SDK"

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "RemoteDisplayRenderer decoder surface null"

    aput-object v0, p2, v3

    const-string v0, "tag"

    .line 24
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_b

    goto :goto_5

    .line 26
    :cond_b
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :goto_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_c
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->a(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method
