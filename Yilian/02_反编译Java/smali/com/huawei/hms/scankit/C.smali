.class public Lcom/huawei/hms/scankit/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hms/scankit/p/Aa$d;


# instance fields
.field public a:Lcom/huawei/hms/scankit/m;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/C;->a:Lcom/huawei/hms/scankit/m;

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    const-string v0, "request frame time:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan-time"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/C;->a:Lcom/huawei/hms/scankit/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/m;->a()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_decode:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
