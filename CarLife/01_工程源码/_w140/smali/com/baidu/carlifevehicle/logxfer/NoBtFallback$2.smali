.class Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;
.super Ljava/lang/Object;
.source "NoBtFallback.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->showCredentials()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$box:[Landroid/net/wifi/p2p/WifiP2pGroup;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;->val$box:[Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object p2, p0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;->val$box:[Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 231
    iget-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 232
    return-void
.end method
