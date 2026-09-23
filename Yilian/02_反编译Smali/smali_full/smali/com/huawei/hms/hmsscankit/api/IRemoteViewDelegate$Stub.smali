.class public abstract Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.hms.hmsscankit.api.IRemoteViewDelegate"

.field public static final TRANSACTION_decodeWithBitmap:I = 0xc

.field public static final TRANSACTION_getLightStatus:I = 0xe

.field public static final TRANSACTION_getView:I = 0x1

.field public static final TRANSACTION_onCreate:I = 0x2

.field public static final TRANSACTION_onDestroy:I = 0x3

.field public static final TRANSACTION_onPause:I = 0x4

.field public static final TRANSACTION_onResume:I = 0x5

.field public static final TRANSACTION_onStart:I = 0x6

.field public static final TRANSACTION_onStop:I = 0x7

.field public static final TRANSACTION_pauseContinuouslyScan:I = 0x10

.field public static final TRANSACTION_resumeContinuouslyScan:I = 0xf

.field public static final TRANSACTION_setOnClickListener:I = 0x9

.field public static final TRANSACTION_setOnErrorCallback:I = 0x11

.field public static final TRANSACTION_setOnLightVisbleCallBack:I = 0xd

.field public static final TRANSACTION_setOnResultCallback:I = 0x8

.field public static final TRANSACTION_turnOffLight:I = 0xb

.field public static final TRANSACTION_turnOnLight:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.huawei.hms.hmsscankit.api.IRemoteViewDelegate"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.huawei.hms.hmsscankit.api.IRemoteViewDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    return-object v0

    :cond_1
    new-instance v0, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;
    .locals 1

    sget-object v0, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub$Proxy;->sDefaultImpl:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;)Z
    .locals 1

    sget-object v0, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub$Proxy;->sDefaultImpl:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub$Proxy;->sDefaultImpl:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.huawei.hms.hmsscankit.api.IRemoteViewDelegate"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnErrorCallback(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->pauseContinuouslyScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->resumeContinuouslyScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->getLightStatus()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/api/IOnLightCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnLightVisbleCallBack(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->decodeWithBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->turnOffLight()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->turnOnLight()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnClickListener(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->onStop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->onStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->onResume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->onPause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->onDestroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    :cond_0
    invoke-interface {p0, v2}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->getView()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
