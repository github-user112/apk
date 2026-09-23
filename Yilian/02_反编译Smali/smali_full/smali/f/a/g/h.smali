.class public Lf/a/g/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/g/h$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

.field public final b:Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

.field public c:Lf/a/g/h$b;

.field public d:Landroid/content/Context;

.field public e:Landroid/bluetooth/BluetoothManager;

.field public f:Landroid/bluetooth/BluetoothAdapter;

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/bluetooth/BluetoothDevice;

.field public i:Landroid/bluetooth/BluetoothHidDevice;

.field public j:Z

.field public k:Z

.field public final l:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Lf/a/g/h$b;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/4 v1, 0x1

    const/16 v2, 0x320

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x2bf2

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    iput-object v7, p0, Lf/a/g/h;->a:Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 1
    sget-object v1, Lf/a/g/g;->a:[B

    array-length v1, v1

    sget-object v2, Lf/a/g/g;->b:[B

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    sget-object v1, Lf/a/g/g;->c:[B

    array-length v1, v1

    add-int/2addr v2, v1

    new-array v13, v2, [B

    sget-object v1, Lf/a/g/g;->a:[B

    array-length v2, v1

    invoke-static {v1, v4, v13, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v2, Lf/a/g/g;->b:[B

    sget-object v5, Lf/a/g/g;->a:[B

    array-length v5, v5

    sget-object v6, Lf/a/g/g;->b:[B

    array-length v7, v6

    mul-int v7, v7, v1

    add-int/2addr v7, v5

    array-length v5, v6

    invoke-static {v2, v4, v13, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lf/a/g/g;->c:[B

    sget-object v2, Lf/a/g/g;->a:[B

    array-length v2, v2

    sget-object v5, Lf/a/g/g;->b:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    sget-object v2, Lf/a/g/g;->c:[B

    array-length v2, v2

    invoke-static {v1, v4, v13, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, -0x40

    const-string v9, "VV Mouse"

    const-string v10, "VV for you"

    const-string v11, "VV"

    move-object v8, v0

    .line 2
    invoke-direct/range {v8 .. v13}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    iput-object v0, p0, Lf/a/g/h;->b:Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    iput-boolean v4, p0, Lf/a/g/h;->j:Z

    iput-boolean v4, p0, Lf/a/g/h;->k:Z

    new-instance v0, Lf/a/g/h$a;

    invoke-direct {v0, p0}, Lf/a/g/h$a;-><init>(Lf/a/g/h;)V

    iput-object v0, p0, Lf/a/g/h;->l:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object p1, p0, Lf/a/g/h;->c:Lf/a/g/h$b;

    invoke-static {}, Lnet/easyconn/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/a/g/h;->d:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lf/a/g/h;->e:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    goto :goto_1

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "BtHidHelper not supoort bt hid can not get BluetoothManager"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lf/a/g/h;->g:Ljava/util/Set;

    const-string v0, "BtHidHelper getConnectedBtDevice bondedDevices.size = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lf/a/g/h;->g:Ljava/util/Set;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/g/h;->g:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lf/a/g/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    :try_start_0
    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const-string v5, "isConnected"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BtHidHelper getConnectedBtDevice bondedDevice name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " addr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BtHidHelper getConnectedBtDevice e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public b()I
    .locals 8

    const-class v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HID_DEVICE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BtHidHelper getInputDeviceHiddenConstant : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v7}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "BtHidHelper getInputDeviceHiddenConstant : -1"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    return v0
.end method

.method public c(IIIZ)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lf/a/g/k;

    xor-int/lit8 v2, p4, 0x1

    new-instance v3, Lf/a/g/k;

    invoke-direct {v3}, Lf/a/g/k;-><init>()V

    const/4 v4, 0x3

    const/4 v5, 0x2

    shl-int/2addr p3, v5

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr p3, v4

    :goto_0
    int-to-byte p3, p3

    iput-byte p3, v3, Lf/a/g/k;->a:B

    const/4 p3, 0x0

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    int-to-short p1, p1

    :goto_1
    iput-short p1, v3, Lf/a/g/k;->b:S

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    int-to-short p1, p2

    :goto_2
    iput-short p1, v3, Lf/a/g/k;->c:S

    aput-object v3, v1, p3

    const/4 p1, 0x6

    new-array p2, p1, [B

    aput-byte v2, p2, p3

    .line 1
    aget-object p4, v1, p3

    iget-byte p4, p4, Lf/a/g/k;->a:B

    aput-byte p4, p2, v0

    aget-object p4, v1, p3

    iget-short p4, p4, Lf/a/g/k;->b:S

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p2, v5

    aget-object p4, v1, p3

    iget-short p4, p4, Lf/a/g/k;->b:S

    shr-int/lit8 p4, p4, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p2, v4

    aget-object p4, v1, p3

    iget-short p4, p4, Lf/a/g/k;->c:S

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v2, 0x4

    aput-byte p4, p2, v2

    aget-object p4, v1, p3

    iget-short p4, p4, Lf/a/g/k;->c:S

    shr-int/lit8 p4, p4, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v1, 0x5

    aput-byte p4, p2, v1

    .line 2
    iget-object p4, p0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    if-nez p4, :cond_3

    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "BtHidHelper sendHidTouch failed,  hid device is null"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v1, p0, Lf/a/g/h;->h:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_4

    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "BtHidHelper sendHidTouch failed,  remote device is null"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p4, v1, v0, p2}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p1, :cond_5

    const-string v0, "BtHidHelper sendHidTouch data ["

    const-string v1, "] = "

    invoke-static {v0, p4, v1}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p2, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public d(I)V
    .locals 7

    iget-object v0, p0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BtHidHelper sendKeycodeHome failed,  hid device is null"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lf/a/g/h;->h:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BtHidHelper sendKeycodeHome failed,  remote device is null"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ltz p1, :cond_3

    const v3, 0xffff

    if-le p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    new-array v5, v4, [B

    int-to-byte v6, v3

    aput-byte v6, v5, v1

    const/4 v6, 0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BtHidHelper sendKeycode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " end"

    invoke-static {v0, p1, v2}, Le/a/c/a/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BtHidHelper unRegisterBluetoothHid"

    invoke-static {v2, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtHidHelper unRegisterBluetoothHid devices = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BtHidHelper unRegisterBluetoothHid mHidDevice.disconnect devices = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " end"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->unregisterApp()Z

    const-string v1, "BtHidHelper unRegisterBluetoothHid unregisterApp end"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lf/a/g/h;->f:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_4

    const/16 v2, 0x13

    iget-object v3, p0, Lf/a/g/h;->i:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const-string v1, "BtHidHelper unRegisterBluetoothHid closeProfileProxy end"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_4
    iput-boolean v0, p0, Lf/a/g/h;->j:Z

    iput-boolean v0, p0, Lf/a/g/h;->k:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BtHidHelper unRegisterBluetoothHid end"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
