.class public Lnet/easyconn/ecsdk/WifiManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/WifiManager;->c()I
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

    iput-object p1, p0, Lnet/easyconn/ecsdk/WifiManager$a;->a:Lnet/easyconn/ecsdk/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ecsdk"

    const-string v3, "begin to publishMdns"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lnet/easyconn/ecsdk/WifiManager$a;->a:Lnet/easyconn/ecsdk/WifiManager;

    invoke-virtual {v3}, Lnet/easyconn/ecsdk/WifiManager;->d()V

    iget-object v3, p0, Lnet/easyconn/ecsdk/WifiManager$a;->a:Lnet/easyconn/ecsdk/WifiManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/easyconn/ecsdk/WifiManager;->a(Lnet/easyconn/ecsdk/WifiManager;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "finish to publishMdns, time="

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
