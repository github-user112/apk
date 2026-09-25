.class Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;
.super Ljava/lang/Object;
.source "QrBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/logxfer/QrBadge;->show(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pass:Ljava/lang/String;

.field final synthetic val$root:Landroid/view/View;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;->val$ssid:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;->val$pass:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;->val$ssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;->val$pass:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/QrBadge$1;->val$root:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->access$000(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u65e0\u84dd\u7259\u76f4\u8fde] \u89d2\u6807\u663e\u793a\u5931\u8d25(\u4e0d\u5f71\u54cd\u624b\u52a8\u5165\u7ec4): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->access$100(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method
