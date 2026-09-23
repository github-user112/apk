.class public Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/easyconn/ecsdk/ebt/IEBTRfCommHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ebt/EBTSPPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EBTRfCommHandle"
.end annotation


# instance fields
.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mClientSocket:Landroid/bluetooth/BluetoothSocket;

.field public mRfCommServiceName:Ljava/lang/String;

.field public mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "ECRfComm"

    iput-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mRfCommServiceName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTSPPService$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;-><init>()V

    return-void
.end method

.method private closeClient()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ecsdk:ebtservice"

    const-string v1, "mClientSocket  close"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getRfCommClient()I
    .locals 5

    const-string v0, "ecsdk:ebtservice"

    const-string v1, "socketAccept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "mServiceSocket is null"

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->closeClient()V

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socketAccept mServiceSocket accept error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public recvData(I[B)I
    .locals 3

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    const-string v1, "ecsdk:ebtservice"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "socketRead mClientSocket is null"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-eq p1, v0, :cond_1

    const-string p2, "socketRead sock = "

    const-string v0, " no match mClientSocket = "

    invoke-static {p2, p1, v0}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_1
    array-length v0, p2

    if-eq v2, v0, :cond_2

    array-length v0, p2

    sub-int/2addr v0, v2

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "socketRead read error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public registerRfCommServer([B)I
    .locals 7

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    array-length v0, p1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mRfCommServiceName:Ljava/lang/String;

    new-instance v6, Ljava/util/UUID;

    invoke-direct {v6, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1, v0, v6}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ecsdk:ebtservice"

    const-string v2, "listenSocketWithSDPServiceRecord error"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public sendData(I[B)I
    .locals 4

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    const-string v2, "ecsdk:ebtservice"

    if-nez v0, :cond_0

    const-string p1, "socketWrite mClientSocket is null"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-eq p1, v0, :cond_1

    const-string v0, "socketWrite sock = "

    const-string v3, " no match mClientSocket = "

    invoke-static {v0, p1, v3}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mClientSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, p2

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "socketWrite read error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public unregisterRfCommServer([B)V
    .locals 1

    invoke-direct {p0}, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->closeClient()V

    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "ecsdk:ebtservice"

    const-string v0, "mServiceSocket  close"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTSPPService$EBTRfCommHandle;->mServiceSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
