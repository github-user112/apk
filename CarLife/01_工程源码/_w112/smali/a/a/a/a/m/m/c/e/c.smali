.class public final La/a/a/a/m/m/c/e/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/f/b;


# instance fields
.field public final a:La/a/a/a/c;

.field public final b:Landroid/hardware/usb/UsbDevice;

.field public final c:Landroid/hardware/usb/UsbManager;

.field public final d:La/a/a/a/m/m/c/e/d;

.field public e:Landroid/hardware/usb/UsbInterface;

.field public f:Landroid/hardware/usb/UsbDeviceConnection;

.field public final g:La/a/a/a/m/m/c/e/a;

.field public final h:La/a/a/a/m/m/c/e/b;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(La/a/a/a/c;Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDevice"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/c/e/c;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/m/m/c/e/c;->b:Landroid/hardware/usb/UsbDevice;

    invoke-interface {p1}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "usb"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, La/a/a/a/m/m/c/e/c;->c:Landroid/hardware/usb/UsbManager;

    new-instance p1, La/a/a/a/m/m/c/e/d;

    invoke-direct {p1}, La/a/a/a/m/m/c/e/d;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/c/e/c;->d:La/a/a/a/m/m/c/e/d;

    new-instance p2, La/a/a/a/m/m/c/e/a;

    invoke-direct {p2, p1}, La/a/a/a/m/m/c/e/a;-><init>(La/a/a/a/m/m/c/e/d;)V

    iput-object p2, p0, La/a/a/a/m/m/c/e/c;->g:La/a/a/a/m/m/c/e/a;

    new-instance p2, La/a/a/a/m/m/c/e/b;

    invoke-direct {p2, p1}, La/a/a/a/m/m/c/e/b;-><init>(La/a/a/a/m/m/c/e/d;)V

    iput-object p2, p0, La/a/a/a/m/m/c/e/c;->h:La/a/a/a/m/m/c/e/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, La/a/a/a/m/m/c/e/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->d:La/a/a/a/m/m/c/e/d;

    .line 1
    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v2, v0, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    sget-object v3, La/a/a/a/m/m/c/e/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, v0, La/a/a/a/m/m/c/e/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    iget-object v6, v0, La/a/a/a/m/m/c/e/d;->e:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, La/a/a/a/m/m/c/e/d;->f:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v3, "CarLife_SDK"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "UsbRequestPool requests leak "

    aput-object v8, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v3, v7}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->d:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_0

    :cond_0
    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->e:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_1

    :cond_1
    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_2

    :cond_2
    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2
    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->h:La/a/a/a/m/m/c/e/b;

    .line 3
    iget v3, v0, La/a/a/a/m/m/c/e/b;->c:I

    if-eq v3, v6, :cond_3

    iget-object v0, v0, La/a/a/a/m/m/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 4
    :cond_3
    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p0, La/a/a/a/m/m/c/e/c;->e:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    :goto_3
    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :goto_4
    iput-object v2, p0, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v0, "CarLife_SDK"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "UsbAccessoryCommunicator released"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1

    :cond_6
    :goto_5
    return-void
.end method

.method public b(La/a/a/a/a/a/b;)V
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->h:La/a/a/a/m/m/c/e/b;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "message"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    const/4 v1, 0x0

    iput v1, v0, La/a/a/a/m/m/c/e/b;->c:I

    iget-object v2, v0, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v2, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v3, :cond_3

    iget-object v3, v2, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, v2, La/a/a/a/m/m/c/e/d;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbRequest;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v3}, Landroid/hardware/usb/UsbRequest;-><init>()V

    iget-object v5, v2, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, v2, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    invoke-static {v6}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    sget-object v5, La/a/a/a/m/m/c/e/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v5, "CarLife_SDK"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "UsbRequestPool create new out request "

    aput-object v8, v7, v1

    aput-object v3, v7, v4

    const-string v1, "tag"

    .line 5
    invoke-static {v5, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v7, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    .line 7
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v8, v5, v6}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object v1, v2, La/a/a/a/m/m/c/e/d;->f:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v2

    .line 11
    invoke-virtual {p1, v4}, La/a/a/a/a/a/b;->q(Z)[B

    .line 12
    iget-object v1, p1, La/a/a/a/a/a/b;->h:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, v0, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    .line 14
    iget-object p1, p1, La/a/a/a/a/a/b;->h:Ljava/nio/ByteBuffer;

    const-string v2, "message.wrappedHeader"

    .line 15
    invoke-static {p1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v3, p1, v2}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, La/a/a/a/m/m/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void

    :cond_2
    iget-object p1, v0, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    const-string v0, "MessageReader queue send header failed"

    invoke-static {p1, v3, v0}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 16
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "access before attached or after release"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method public c()La/a/a/a/a/a/b;
    .locals 15

    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->g:La/a/a/a/m/m/c/e/a;

    invoke-virtual {v0}, La/a/a/a/m/m/c/e/a;->a()V

    :goto_0
    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, La/a/a/a/m/m/c/e/c;->f:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, La/a/a/a/m/m/c/e/c;->d:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v1, v0}, La/a/a/a/m/m/c/e/d;->a(Landroid/hardware/usb/UsbRequest;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "CarLife_SDK"

    const-string v4, "tag"

    const-string v5, "args"

    const-string v6, "request"

    const/4 v7, 0x0

    if-eqz v1, :cond_13

    iget-object v1, p0, La/a/a/a/m/m/c/e/c;->g:La/a/a/a/m/m/c/e/a;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, " or message size "

    const-string v9, "invalid message channel "

    const-string v10, "MessageReader read zero header length"

    const-string v11, "header.array()"

    const-string v12, "MessageReader queue read message failed"

    const/16 v13, 0x1a

    const/4 v14, 0x0

    if-lt v6, v13, :cond_8

    .line 2
    iget-object v6, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    if-nez v6, :cond_5

    iget-object v6, v1, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_1

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v10, v6, v7

    .line 3
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_1
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    invoke-virtual {v1}, La/a/a/a/m/m/c/e/a;->a()V

    goto/16 :goto_6

    :cond_1
    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v11}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v2}, Lb/e/b/g;->l0([BII)I

    move-result v3

    iget-object v4, v1, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v11}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lb/e/b/g;->k0([BI)I

    move-result v4

    iput v4, v1, La/a/a/a/m/m/c/e/a;->b:I

    if-lt v3, v2, :cond_2

    const/4 v5, 0x7

    if-gt v3, v5, :cond_2

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    sget-object v2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const/4 v5, 0x2

    invoke-static {v2, v3, v14, v4, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v2

    .line 7
    iget-object v3, v2, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget-object v3, v2, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 10
    iget v4, v1, La/a/a/a/m/m/c/e/a;->b:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    .line 11
    iget-object v4, v2, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    const-string v5, "message.wrappedBody"

    .line 12
    invoke-static {v4, v5}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v1, La/a/a/a/m/m/c/e/a;->b:I

    invoke-virtual {v3, v0, v4, v5}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v2, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v2}, La/a/a/a/a/a/b;->s()V

    iget-object v1, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-static {v1, v0, v12}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v9, v3, v8}, La/b/a/a/a;->g(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, La/a/a/a/m/m/c/e/a;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v6}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v6, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, v1, La/a/a/a/m/m/c/e/a;->b:I

    sub-int v4, v3, v2

    if-ne v2, v3, :cond_6

    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    iget-object v0, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iput-object v14, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    goto/16 :goto_5

    :cond_6
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v3, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    const-string v5, "readingMessage!!.wrappedBody"

    .line 16
    invoke-static {v3, v5}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v4}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v1}, La/a/a/a/m/m/c/e/a;->b()V

    iget-object v1, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-static {v1, v0, v12}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 17
    :cond_8
    iget-object v6, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    const-string v13, "queuedBuffer"

    if-nez v6, :cond_e

    iget-object v6, v1, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_a

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v10, v6, v7

    .line 18
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_9

    goto :goto_3

    .line 20
    :cond_9
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_3
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    invoke-virtual {v1}, La/a/a/a/m/m/c/e/a;->a()V

    goto/16 :goto_6

    :cond_a
    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v11}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v2}, Lb/e/b/g;->l0([BII)I

    move-result v3

    iget-object v4, v1, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v11}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lb/e/b/g;->k0([BI)I

    move-result v4

    iput v4, v1, La/a/a/a/m/m/c/e/a;->b:I

    if-lt v3, v2, :cond_b

    const/4 v5, 0x7

    if-gt v3, v5, :cond_b

    if-lez v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_d

    sget-object v2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const/4 v5, 0x2

    invoke-static {v2, v3, v14, v4, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v2

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    iget-object v4, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-static {v4, v13}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_c

    iput-object v2, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, La/a/a/a/a/a/b;->s()V

    iget-object v1, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-static {v1, v0, v12}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v9, v3, v8}, La/b/a/a/a;->g(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, La/a/a/a/m/m/c/e/a;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    iget-object v4, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    invoke-static {v4}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 22
    iget-object v4, v4, La/a/a/a/a/a/b;->i:[B

    .line 23
    iget v5, v1, La/a/a/a/m/m/c/e/a;->e:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, v1, La/a/a/a/m/m/c/e/a;->e:I

    add-int/2addr v3, v2

    iput v3, v1, La/a/a/a/m/m/c/e/a;->e:I

    iget v2, v1, La/a/a/a/m/m/c/e/a;->b:I

    sub-int v4, v2, v3

    if-ne v3, v2, :cond_f

    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    iget-object v0, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iput-object v14, v1, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    :goto_5
    move-object v14, v0

    goto :goto_6

    :cond_f
    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    iget-object v3, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-static {v3, v13}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-le v4, v5, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {v2, v0, v3, v4}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_6
    if-nez v14, :cond_11

    goto/16 :goto_0

    :cond_11
    return-object v14

    :cond_12
    invoke-virtual {v1}, La/a/a/a/m/m/c/e/a;->b()V

    iget-object v1, v1, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    invoke-static {v1, v0, v12}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 24
    :cond_13
    iget-object v1, p0, La/a/a/a/m/m/c/e/c;->h:La/a/a/a/m/m/c/e/b;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v1, La/a/a/a/m/m/c/e/b;->c:I

    const-string v8, "MessageReader queue send body failed"

    const-string v9, "sendingMessage!!.wrappedBody"

    if-nez v6, :cond_18

    iget-object v6, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v6}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 26
    iget-object v6, v6, La/a/a/a/a/a/b;->h:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_16

    new-array v6, v2, [Ljava/lang/Object;

    const-string v8, "MessageSender send zero header length"

    aput-object v8, v6, v7

    .line 28
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_14

    goto :goto_7

    .line 30
    :cond_14
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :goto_7
    iget-object v2, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    iget-object v3, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 32
    iget-object v3, v3, La/a/a/a/a/a/b;->h:Ljava/nio/ByteBuffer;

    const-string v4, "sendingMessage!!.wrappedHeader"

    .line 33
    invoke-static {v3, v4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v3, v4}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_0

    :cond_15
    iget-object v1, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    const-string v2, "MessageReader queue send header failed"

    invoke-static {v1, v0, v2}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    iput v2, v1, La/a/a/a/m/m/c/e/b;->c:I

    iget-object v2, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 34
    iget-object v2, v2, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 36
    iget-object v2, v2, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 37
    iget-object v3, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, La/a/a/a/a/a/b;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    iget-object v3, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 38
    iget-object v3, v3, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 39
    invoke-static {v3, v9}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v4}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, La/a/a/a/a/a/b;->o()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_0

    :cond_17
    iget-object v1, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    invoke-static {v1, v0, v8}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    iget-object v6, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v6}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 40
    iget-object v6, v6, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-nez v6, :cond_1b

    new-array v6, v2, [Ljava/lang/Object;

    const-string v10, "MessageSender send zero body length"

    aput-object v10, v6, v7

    .line 42
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_19

    goto :goto_8

    .line 44
    :cond_19
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_8
    iget-object v2, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    iget-object v3, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 46
    iget-object v3, v3, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 47
    invoke-static {v3, v9}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, La/a/a/a/m/m/c/e/b;->d:La/a/a/a/a/a/b;

    invoke-static {v4}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, La/a/a/a/a/a/b;->o()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    iget-object v1, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    invoke-static {v1, v0, v8}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v2, 0x2

    iput v2, v1, La/a/a/a/m/m/c/e/b;->c:I

    iget-object v2, v1, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    invoke-virtual {v2, v0}, La/a/a/a/m/m/c/e/d;->c(Landroid/hardware/usb/UsbRequest;)V

    iget-object v0, v1, La/a/a/a/m/m/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 48
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UsbDeviceConnection requestWait return null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UsbAccessoryCommunicator read from terminated communicator"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
