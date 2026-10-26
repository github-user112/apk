.class public Lnet/easyconn/ecsdk/WifiManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/WifiManager;->a(Ljava/net/InetAddress;I)Ljavax/jmdns/JmDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/WifiManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/WifiManager$b;->a:Lnet/easyconn/ecsdk/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 1

    const-string p1, "ecsdk"

    const-string v0, "publishMdns: serviceAdded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 1

    const-string p1, "ecsdk"

    const-string v0, "publishMdns: serviceRemoved"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 1

    const-string p1, "ecsdk"

    const-string v0, "publishMdns: serviceResolved"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
