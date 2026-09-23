.class public Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public decode([BIIIILcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v0, "com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate"

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    :try_start_1
    iget-object v3, v10, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v4, v1, v2, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub;->getDefaultImpl()Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate$Stub;->getDefaultImpl()Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;->decode([BIIIILcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/x;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v10, p0

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate"

    return-object v0
.end method
