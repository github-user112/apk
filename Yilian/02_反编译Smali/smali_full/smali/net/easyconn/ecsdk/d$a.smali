.class public Lnet/easyconn/ecsdk/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/d;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/d;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/d$a;->a:Lnet/easyconn/ecsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ecsdk/d$a;->a:Lnet/easyconn/ecsdk/d;

    invoke-static {v0}, Lnet/easyconn/ecsdk/d;->a(Lnet/easyconn/ecsdk/d;)V

    return-void
.end method
