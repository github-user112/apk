.class public Lcom/baidu/carlifevehicle/ConnLog$Tick;
.super Ljava/lang/Object;
.source "ConnLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->doTick()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
