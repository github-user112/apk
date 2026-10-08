.class public final La/a/a/a/m/m/e/f$a;
.super Ljava/lang/Object;
.source ""


# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La/a/a/a/m/m/e/d;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/e/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/e/f$a;->a:La/a/a/a/m/m/e/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    if-eqz v0, :alive_check

    goto :end

    :alive_check
    sget-boolean v0, La/a/a/a/m/m/e/f;->c:Z

    if-eqz v0, :end

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, La/a/a/a/m/m/e/f;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :send

    const-string v0, "CarLifeHB"

    const-string v1, "heartbeat timeout 30s, terminate transport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La/a/a/a/m/m/e/f;->b()V

    iget-object v4, p0, La/a/a/a/m/m/e/f$a;->a:La/a/a/a/m/m/e/d;

    invoke-virtual {v4}, La/a/a/a/m/m/e/d;->f()V

    goto :end

    :send
    iget-object v4, p0, La/a/a/a/m/m/e/f$a;->a:La/a/a/a/m/m/e/d;

    invoke-static {v4}, La/a/a/a/m/m/e/f;->b(La/a/a/a/m/m/e/d;)V

    :end
    return-void
.end method
