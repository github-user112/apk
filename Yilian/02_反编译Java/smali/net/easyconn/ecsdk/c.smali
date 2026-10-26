.class public Lnet/easyconn/ecsdk/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lnet/easyconn/ecsdk/IUsbDevice;

.field public b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

.field public c:Landroid/net/LocalServerSocket;

.field public d:Landroid/net/LocalSocket;

.field public e:Ljava/io/InputStream;

.field public f:Ljava/io/OutputStream;

.field public g:Ljava/lang/Thread;

.field public h:Ljava/lang/Thread;

.field public i:Ljava/lang/Thread;

.field public volatile j:Z

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/c;->j:Z

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lnet/easyconn/ecsdk/c;->k:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/c;->l:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lnet/easyconn/ecsdk/c;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    const-string v0, "UsbTransport"

    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/easyconn/ecsdk/c;->c:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lnet/easyconn/ecsdk/c$a;

    invoke-direct {v3, p0}, Lnet/easyconn/ecsdk/c$a;-><init>(Lnet/easyconn/ecsdk/c;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lnet/easyconn/ecsdk/c;->g:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v2, "connect "

    invoke-static {v2, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/easyconn/ecsdk/ECSDK;->adbCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "connected to"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object p1, p0, Lnet/easyconn/ecsdk/c;->c:Landroid/net/LocalServerSocket;

    invoke-virtual {p1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create localServerSocket of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private a([BI)I
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/c;->j:Z

    if-eqz v1, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->k:Ljava/nio/ByteBuffer;

    sub-int v3, p2, v0

    invoke-interface {v1, v2, v3}, Lnet/easyconn/ecsdk/IUsbDevice;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v1, :cond_0

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static synthetic a(Lnet/easyconn/ecsdk/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/c;->d()V

    return-void
.end method

.method private b([BI)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/c;->j:Z

    if-eqz v1, :cond_2

    if-ge v0, p2, :cond_2

    :try_start_0
    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->e:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Try again"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    return v0
.end method

.method private b()V
    .locals 3

    :cond_0
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    invoke-interface {v2, v1, v0}, Lnet/easyconn/ecsdk/IUsbDevice;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emptyUsb ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbTransport"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_0

    return-void
.end method

.method public static synthetic b(Lnet/easyconn/ecsdk/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/c;->e()V

    return-void
.end method

.method private c([BI)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/c;->f:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lnet/easyconn/ecsdk/c;->f:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/easyconn/ecsdk/c$d;->a:[I

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->b:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "EC_TRANSPORT_UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "EC_TRANSPORT_IOS_USB_AIRPLAY"

    return-object v0

    :pswitch_1
    const-string v0, "EC_TRANSPORT_IOS_WIFI_APP"

    return-object v0

    :pswitch_2
    const-string v0, "EC_TRANSPORT_IOS_USB_MUX"

    return-object v0

    :pswitch_3
    const-string v0, "EC_TRANSPORT_IOS_USB_EAP"

    return-object v0

    :pswitch_4
    const-string v0, "EC_TRANSPORT_ANDROID_WIFI"

    return-object v0

    :pswitch_5
    const-string v0, "EC_TRANSPORT_ANDORID_USB_AOA"

    return-object v0

    :pswitch_6
    const-string v0, "EC_TRANSPORT_ANDROID_USB_ADB"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Lnet/easyconn/ecsdk/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/c;->f()V

    return-void
.end method

.method private d([BI)I
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lnet/easyconn/ecsdk/c;->j:Z

    if-eqz v1, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->l:Ljava/nio/ByteBuffer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    iget-object v3, p0, Lnet/easyconn/ecsdk/c;->l:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v3, v2}, Lnet/easyconn/ecsdk/IUsbDevice;->write(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private d()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lnet/easyconn/ecsdk/c;->b()V

    iget-object v0, p0, Lnet/easyconn/ecsdk/c;->c:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/c;->d:Landroid/net/LocalSocket;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    iget-object v0, p0, Lnet/easyconn/ecsdk/c;->d:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/c;->f:Ljava/io/OutputStream;

    iget-object v0, p0, Lnet/easyconn/ecsdk/c;->d:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/c;->e:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/c;->j:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/easyconn/ecsdk/c$b;

    invoke-direct {v1, p0}, Lnet/easyconn/ecsdk/c$b;-><init>(Lnet/easyconn/ecsdk/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/c;->h:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/easyconn/ecsdk/c$c;

    invoke-direct {v1, p0}, Lnet/easyconn/ecsdk/c$c;-><init>(Lnet/easyconn/ecsdk/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/easyconn/ecsdk/c;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lnet/easyconn/ecsdk/c;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lnet/easyconn/ecsdk/c;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "UsbTransport"

    const-string v1, "failed to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "UsbTransport"

    const-string v1, "readThread: begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lnet/easyconn/ecsdk/a;

    invoke-direct {v1}, Lnet/easyconn/ecsdk/a;-><init>()V

    :try_start_0
    const-string v2, "begin to read usb data then proxy to adb"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lnet/easyconn/ecsdk/c;->j:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lnet/easyconn/ecsdk/c;->a([BI)I

    move-result v2

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]readThread: failed to read header from device, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/easyconn/ecsdk/a;->a()V

    const-string v2, "readThread"

    invoke-virtual {p0, v2, v1}, Lnet/easyconn/ecsdk/c;->a(Ljava/lang/String;Lnet/easyconn/ecsdk/a;)V

    iget v2, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-lez v2, :cond_2

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->h:[B

    invoke-direct {p0, v3, v2}, Lnet/easyconn/ecsdk/c;->a([BI)I

    move-result v2

    iget v3, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-eq v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]readThread: failed to read data from device, length=%d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lnet/easyconn/ecsdk/c;->c([BI)I

    move-result v2

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v3

    if-eq v2, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]readThread: failed to send header to socket, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v2, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-lez v2, :cond_0

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->h:[B

    invoke-direct {p0, v3, v2}, Lnet/easyconn/ecsdk/c;->c([BI)I

    move-result v2

    iget v3, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-eq v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]readThread: failed to send data to socket, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const-string v1, "readThread: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()V
    .locals 4

    const-string v0, "UsbTransport"

    const-string v1, "writeThread: begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lnet/easyconn/ecsdk/a;

    invoke-direct {v1}, Lnet/easyconn/ecsdk/a;-><init>()V

    :try_start_0
    const-string v2, "writeThread begin to read adb data then proxy to usb"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lnet/easyconn/ecsdk/c;->j:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lnet/easyconn/ecsdk/c;->b([BI)I

    move-result v2

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]writeThread: failed to read header from socket, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lnet/easyconn/ecsdk/a;->a()V

    const-string v2, "writeThread"

    invoke-virtual {p0, v2, v1}, Lnet/easyconn/ecsdk/c;->a(Ljava/lang/String;Lnet/easyconn/ecsdk/a;)V

    iget v2, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-lez v2, :cond_2

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->h:[B

    invoke-direct {p0, v3, v2}, Lnet/easyconn/ecsdk/c;->b([BI)I

    move-result v2

    iget v3, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-eq v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]writeThread: failed to read data from socket, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lnet/easyconn/ecsdk/c;->d([BI)I

    move-result v2

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->g:[B

    array-length v3, v3

    if-eq v2, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]readThread: failed to write header to device, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v2, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-lez v2, :cond_0

    iget-object v3, v1, Lnet/easyconn/ecsdk/a;->h:[B

    invoke-direct {p0, v3, v2}, Lnet/easyconn/ecsdk/c;->d([BI)I

    move-result v2

    iget v3, v1, Lnet/easyconn/ecsdk/a;->d:I

    if-eq v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbTransport]readThread: failed to write data to device, length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const-string v1, "writeThread: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lnet/easyconn/ecsdk/IUsbDevice;)I
    .locals 3

    const/4 v0, -0x1

    const-string v1, "UsbTransport"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    invoke-interface {p1}, Lnet/easyconn/ecsdk/IUsbDevice;->open()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "failed to open mDevice"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0}, Lnet/easyconn/ecsdk/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/easyconn/ecsdk/c;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const-string p1, "device is null or mDevice is not null"

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/ecsdk/c;->j:Z

    const-string v0, "UsbTransport"

    const-string v1, "UsbTransport: begin to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "mServer: close 1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->c:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/c;->c:Landroid/net/LocalServerSocket;

    :cond_0
    const-string v2, "mServer: close 2"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->f:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const-string v2, "mReader and mWriter: close 2"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->d:Landroid/net/LocalSocket;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/c;->d:Landroid/net/LocalSocket;

    :cond_1
    const-string v2, "mClient: close 2"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v2, "mDevice: close 1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lnet/easyconn/ecsdk/IUsbDevice;->close()V

    :cond_2
    const-string v2, "mDevice: close 2"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v2, "begin to stop ReadThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->h:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/c;->h:Ljava/lang/Thread;

    :cond_3
    const-string v2, "begin to stop WriteThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/easyconn/ecsdk/c;->i:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    iput-object v1, p0, Lnet/easyconn/ecsdk/c;->i:Ljava/lang/Thread;

    :cond_4
    const-string v2, "end to stop WriteThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v2, "UsbTransport: end to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lnet/easyconn/ecsdk/c;->a:Lnet/easyconn/ecsdk/IUsbDevice;

    return-void
.end method

.method public a(Ljava/lang/String;Lnet/easyconn/ecsdk/a;)V
    .locals 3

    iget v0, p2, Lnet/easyconn/ecsdk/a;->a:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "????"

    goto :goto_0

    :sswitch_0
    const-string v0, "OKAY"

    goto :goto_0

    :sswitch_1
    const-string v0, "CNXN"

    goto :goto_0

    :sswitch_2
    const-string v0, "OPEN"

    goto :goto_0

    :sswitch_3
    const-string v0, "AUTH"

    goto :goto_0

    :sswitch_4
    const-string v0, "WRTE"

    goto :goto_0

    :sswitch_5
    const-string v0, "CLSE"

    goto :goto_0

    :sswitch_6
    const-string v0, "SYNC"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbTransport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", arg0="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lnet/easyconn/ecsdk/a;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", arg1="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lnet/easyconn/ecsdk/a;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data_length="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lnet/easyconn/ecsdk/a;->d:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbTransport"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x434e5953 -> :sswitch_6
        0x45534c43 -> :sswitch_5
        0x45545257 -> :sswitch_4
        0x48545541 -> :sswitch_3
        0x4e45504f -> :sswitch_2
        0x4e584e43 -> :sswitch_1
        0x59414b4f -> :sswitch_0
    .end sparse-switch
.end method
