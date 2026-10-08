.class public Lcom/baidu/carlifevehicle/ConnLog$UiTask;
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
    .locals 0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->flush()V

    return-void
.end method
