.class public Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$2;->this$1:Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback$2;->this$1:Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;

    iget-object v1, v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService$eccBluetoothGattServerCallback;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    iget-object v1, v1, Lnet/easyconn/ecsdk/ebt/EBTService;->mType:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->unbindDirectTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V

    return-void
.end method
