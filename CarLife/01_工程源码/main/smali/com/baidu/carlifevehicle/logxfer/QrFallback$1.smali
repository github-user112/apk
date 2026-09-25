.class Lcom/baidu/carlifevehicle/logxfer/QrFallback$1;
.super Ljava/lang/Object;
.source "QrFallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/logxfer/QrFallback;->onLinkUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->finishSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 75
    :goto_0
    return-void
.end method
