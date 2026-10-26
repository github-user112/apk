.class public Lnet/easyconn/ecsdk/ECSDK$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/ECSDK;->bindTransportDevice(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

.field public final synthetic b:Lnet/easyconn/ecsdk/ECSDK;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ECSDK;Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECSDK$a;->b:Lnet/easyconn/ecsdk/ECSDK;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECSDK$a;->a:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK$a;->b:Lnet/easyconn/ecsdk/ECSDK;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ECSDK;->access$000(Lnet/easyconn/ecsdk/ECSDK;)Lnet/easyconn/ecsdk/IECCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/ecsdk/ECSDK$a;->b:Lnet/easyconn/ecsdk/ECSDK;

    invoke-static {v0}, Lnet/easyconn/ecsdk/ECSDK;->access$000(Lnet/easyconn/ecsdk/ECSDK;)Lnet/easyconn/ecsdk/IECCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/ecsdk/ECSDK$a;->a:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    invoke-interface {v0, v1}, Lnet/easyconn/ecsdk/IECCallback;->onPhoneConnected(Lnet/easyconn/ecsdk/ECTypes$ECTransportType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
