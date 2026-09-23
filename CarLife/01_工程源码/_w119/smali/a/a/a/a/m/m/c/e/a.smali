.class public final La/a/a/a/m/m/c/e/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:La/a/a/a/m/m/c/e/d;

.field public b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public d:La/a/a/a/a/a/b;

.field public e:I

.field public final f:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/c/e/d;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    const/16 p1, 0x4000

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/m/m/c/e/a;->f:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-virtual {p0}, La/a/a/a/m/m/c/e/a;->b()V

    iget-object v0, p0, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_3

    iget-object v1, v0, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, v0, La/a/a/a/m/m/c/e/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbRequest;

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    iget-object v2, v0, La/a/a/a/m/m/c/e/d;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, v0, La/a/a/a/m/m/c/e/d;->c:Landroid/hardware/usb/UsbInterface;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    invoke-virtual {v1, p0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    sget-object v2, La/a/a/a/m/m/c/e/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v2, "CarLife_SDK"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "UsbRequestPool create new in request "

    aput-object v6, v5, v4

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const-string v4, "tag"

    .line 4
    invoke-static {v2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v5, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    .line 6
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v6, v2, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v2, v0, La/a/a/a/m/m/c/e/d;->f:Ljava/util/Set;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1, p0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    iget-object v0, p0, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    iget-object v2, p0, La/a/a/a/m/m/c/e/a;->c:Ljava/nio/ByteBuffer;

    const-string v3, "header"

    invoke-static {v2, v3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, La/a/a/a/m/m/c/e/d;->b(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, La/a/a/a/m/m/c/e/a;->a:La/a/a/a/m/m/c/e/d;

    const-string v2, "MessageReader queue read header failed"

    invoke-static {v0, v1, v2}, La/b/a/a/a;->a(La/a/a/a/m/m/c/e/d;Landroid/hardware/usb/UsbRequest;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 12
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "access before attached or after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/m/m/c/e/a;->e:I

    iput v0, p0, La/a/a/a/m/m/c/e/a;->b:I

    iget-object v0, p0, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/a/a/a/a/a/b;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/m/m/c/e/a;->d:La/a/a/a/a/a/b;

    :goto_0
    return-void
.end method
