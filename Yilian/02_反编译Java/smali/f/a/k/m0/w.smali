.class public final synthetic Lf/a/k/m0/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/m0/t0;

.field public final synthetic b:Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/m0/t0;Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/m0/w;->a:Lf/a/k/m0/t0;

    iput-object p2, p0, Lf/a/k/m0/w;->b:Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/m0/w;->a:Lf/a/k/m0/t0;

    iget-object v1, p0, Lf/a/k/m0/w;->b:Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;

    invoke-virtual {v0, v1}, Lf/a/k/m0/t0;->s0(Lnet/easyconn/ecsdk/ECTypes$ECOTAUpdateSoftware;)V

    return-void
.end method
