.class public Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/ebt/EBTBLEService;->stopAdvertising()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$300(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;->this$0:Lnet/easyconn/ecsdk/ebt/EBTBLEService;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService;->access$300(Lnet/easyconn/ecsdk/ebt/EBTBLEService;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    new-instance v1, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2$1;

    invoke-direct {v1, p0}, Lnet/easyconn/ecsdk/ebt/EBTBLEService$2$1;-><init>(Lnet/easyconn/ecsdk/ebt/EBTBLEService$2;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
