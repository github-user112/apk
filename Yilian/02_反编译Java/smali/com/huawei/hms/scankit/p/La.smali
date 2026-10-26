.class public final Lcom/huawei/hms/scankit/p/La;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public a:Lcom/huawei/hms/scankit/p/Aa$d;

.field public b:Lcom/huawei/hms/scankit/p/Ka;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Ka;Lcom/huawei/hms/scankit/p/Aa$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/La;->a:Lcom/huawei/hms/scankit/p/Aa$d;

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/La;->b:Lcom/huawei/hms/scankit/p/Ka;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lcom/huawei/hms/scankit/p/La;->b:Lcom/huawei/hms/scankit/p/Ka;

    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Ka;->b:Landroid/os/Handler;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huawei/hms/scankit/p/La;->a:Lcom/huawei/hms/scankit/p/Aa$d;

    invoke-interface {p2, p1}, Lcom/huawei/hms/scankit/p/Aa$d;->a([B)V

    return-void

    :cond_0
    const v0, 0x7f0b0005

    const-string v1, "MLKitCamera"

    invoke-static {p2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/La;->a:Lcom/huawei/hms/scankit/p/Aa$d;

    invoke-interface {v0, p1}, Lcom/huawei/hms/scankit/p/Aa$d;->a([B)V

    const p1, 0x7f0b0006

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
