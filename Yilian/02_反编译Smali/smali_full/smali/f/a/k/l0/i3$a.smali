.class public Lf/a/k/l0/i3$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/l0/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/k/l0/i3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/i3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "wifi_state"

    const-string v5, ""

    if-eqz v1, :cond_6

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "wifiState is "

    invoke-static {p2, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 p2, 0x4

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_2

    goto/16 :goto_c

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1}, Lf/a/k/l0/i3;->V()V

    goto/16 :goto_c

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {v0}, Lf/a/k/l0/i3;->U()V

    :cond_2
    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1
    throw p1

    .line 2
    :cond_4
    :goto_0
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 3
    iput-boolean v3, p1, Lf/a/k/l0/i3;->g:Z

    .line 4
    iput-object v5, p1, Lf/a/k/l0/i3;->j:Ljava/lang/String;

    .line 5
    iput-boolean v3, p1, Lf/a/k/l0/i3;->h:Z

    .line 6
    iput-object v5, p1, Lf/a/k/l0/i3;->k:Ljava/lang/String;

    .line 7
    iget-boolean p2, p1, Lf/a/k/l0/i3;->d:Z

    if-eqz p2, :cond_5

    goto/16 :goto_9

    .line 8
    :cond_5
    iget-boolean p2, p1, Lf/a/k/l0/i3;->i:Z

    if-eqz p2, :cond_1e

    .line 9
    invoke-virtual {p1}, Lf/a/k/l0/i3;->W()V

    goto/16 :goto_c

    :cond_6
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x8

    const-string v7, "device"

    const/16 v8, 0x5ac

    if-eqz v1, :cond_e

    const-string p1, "Usb Device Detached!"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 11
    iput-boolean v3, p1, Lf/a/k/l0/i3;->d:Z

    .line 12
    iget-boolean v0, p1, Lf/a/k/l0/i3;->g:Z

    if-nez v0, :cond_8

    .line 13
    iget-boolean v0, p1, Lf/a/k/l0/i3;->h:Z

    if-eqz v0, :cond_7

    goto :goto_1

    .line 14
    :cond_7
    iget-boolean v0, p1, Lf/a/k/l0/i3;->i:Z

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {p1}, Lf/a/k/l0/i3;->W()V

    goto :goto_2

    .line 16
    :cond_8
    :goto_1
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 17
    invoke-virtual {p1}, Lf/a/k/l0/i3;->Z()V

    .line 18
    :cond_9
    :goto_2
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p2

    if-lez p2, :cond_1e

    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 19
    :goto_3
    iput-boolean v0, p2, Lf/a/k/l0/i3;->f:Z

    .line 20
    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 21
    iget-boolean p2, p2, Lf/a/k/l0/i3;->f:Z

    if-eqz p2, :cond_b

    return-void

    :cond_b
    const-string p2, "detached device isIosDevice = "

    .line 22
    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    if-ne v0, v8, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    invoke-static {p2, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 23
    iget-object p2, p2, Lf/a/k/l0/i3;->m:Lf/a/k/l0/i3$b;

    if-eqz p2, :cond_1e

    .line 24
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    if-ne p1, v8, :cond_d

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    invoke-interface {p2, v3, v2}, Lf/a/k/l0/i3$b;->a(ZZ)V

    goto/16 :goto_c

    :cond_e
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p1, "Usb Device attached!"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 25
    iput-boolean v2, p1, Lf/a/k/l0/i3;->d:Z

    .line 26
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p2

    if-lez p2, :cond_1e

    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    if-ne v0, v6, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    .line 27
    :goto_6
    iput-boolean v0, p2, Lf/a/k/l0/i3;->f:Z

    .line 28
    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 29
    iget-boolean p2, p2, Lf/a/k/l0/i3;->f:Z

    if-nez p2, :cond_1e

    .line 30
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    if-ne p1, v8, :cond_10

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 31
    iput-boolean v2, p1, Lf/a/k/l0/i3;->e:Z

    goto :goto_7

    .line 32
    :cond_10
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 33
    iput-boolean v3, p1, Lf/a/k/l0/i3;->e:Z

    .line 34
    :goto_7
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 35
    invoke-virtual {p1}, Lf/a/k/l0/i3;->Y()V

    .line 36
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 37
    iget-object p2, p1, Lf/a/k/l0/i3;->m:Lf/a/k/l0/i3$b;

    if-eqz p2, :cond_11

    .line 38
    iget-boolean p1, p1, Lf/a/k/l0/i3;->e:Z

    .line 39
    invoke-interface {p2, v2, p1}, Lf/a/k/l0/i3$b;->a(ZZ)V

    :cond_11
    const-string p1, "attached device isIosDevice = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 40
    iget-boolean p2, p2, Lf/a/k/l0/i3;->e:Z

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    :cond_12
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p2, p1}, Lf/a/k/l0/i3;->L(Landroid/content/Context;)V

    goto/16 :goto_c

    :cond_13
    const-string p1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const-string v0, "WiFiStatusManager action = WifiP2pManager.WIFI_P2P_CONNECTION_CHANGED_ACTION. isConnected is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "p2pGroupInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object p2, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 42
    iput-boolean v2, p2, Lf/a/k/l0/i3;->h:Z

    if-eqz p1, :cond_14

    .line 43
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    .line 44
    iput-object p1, p2, Lf/a/k/l0/i3;->k:Ljava/lang/String;

    .line 45
    :cond_14
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    goto :goto_8

    :cond_15
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 46
    iput-boolean v3, p1, Lf/a/k/l0/i3;->h:Z

    .line 47
    iput-object v5, p1, Lf/a/k/l0/i3;->k:Ljava/lang/String;

    .line 48
    iget-boolean p2, p1, Lf/a/k/l0/i3;->g:Z

    if-eqz p2, :cond_16

    .line 49
    :goto_8
    invoke-virtual {p1}, Lf/a/k/l0/i3;->Z()V

    goto/16 :goto_c

    .line 50
    :cond_16
    iget-boolean p2, p1, Lf/a/k/l0/i3;->d:Z

    if-eqz p2, :cond_1e

    .line 51
    :goto_9
    invoke-virtual {p1}, Lf/a/k/l0/i3;->Y()V

    goto/16 :goto_c

    :cond_17
    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_18

    const-string p1, "EcBaseFragment Hotspot status is closing."

    goto :goto_b

    :cond_18
    const/16 p2, 0xb

    if-ne p1, p2, :cond_1b

    const-string p1, "EcBaseFragment Hotspot status is closed.."

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    iput-boolean v3, p1, Lf/a/k/l0/i3;->i:Z

    .line 53
    iget-boolean p2, p1, Lf/a/k/l0/i3;->g:Z

    if-eqz p2, :cond_19

    .line 54
    invoke-virtual {p1}, Lf/a/k/l0/i3;->Z()V

    goto :goto_a

    .line 55
    :cond_19
    iget-boolean p2, p1, Lf/a/k/l0/i3;->d:Z

    if-eqz p2, :cond_1a

    .line 56
    invoke-virtual {p1}, Lf/a/k/l0/i3;->Y()V

    .line 57
    :cond_1a
    :goto_a
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1}, Lf/a/k/l0/i3;->Q()V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1}, Lf/a/k/l0/i3;->P()V

    goto :goto_c

    :cond_1b
    const/16 p2, 0xc

    if-ne p1, p2, :cond_1c

    const-string p1, "EcBaseFragment Hotspot status is opening."

    :goto_b
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1c
    const/16 p2, 0xd

    if-ne p1, p2, :cond_1d

    const-string p1, "EcBaseFragment Hotspot status is opened.."

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    iput-boolean v2, p1, Lf/a/k/l0/i3;->i:Z

    .line 58
    invoke-virtual {p1}, Lf/a/k/l0/i3;->W()V

    .line 59
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1}, Lf/a/k/l0/i3;->S()V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1}, Lf/a/k/l0/i3;->R()V

    goto :goto_c

    :cond_1d
    const/16 p2, 0xe

    if-ne p1, p2, :cond_1e

    const-string p1, "EcBaseFragment Hotspot status is failed.."

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    invoke-virtual {p1}, Lf/a/k/l0/i3;->T()V

    :cond_1e
    :goto_c
    iget-object p1, p0, Lf/a/k/l0/i3$a;->a:Lf/a/k/l0/i3;

    .line 60
    iget-boolean p2, p1, Lf/a/k/l0/i3;->g:Z

    if-nez p2, :cond_1f

    .line 61
    iget-boolean p2, p1, Lf/a/k/l0/i3;->d:Z

    if-nez p2, :cond_1f

    .line 62
    iget-boolean p2, p1, Lf/a/k/l0/i3;->i:Z

    if-nez p2, :cond_1f

    .line 63
    invoke-virtual {p1}, Lf/a/k/l0/i3;->X()V

    :cond_1f
    return-void
.end method
