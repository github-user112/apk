.class public final La/a/a/a/m/m/e/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:J

.field public static b:Z

.field public static c:Z

.field public static d:Ljava/lang/Runnable;


# direct methods
.method public static a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, La/a/a/a/m/m/e/f;->a:J

    const/4 v0, 0x1

    sput-boolean v0, La/a/a/a/m/m/e/f;->c:Z

    return-void
.end method

.method public static a(La/a/a/a/m/m/e/d;)V
    .locals 7

    sget-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    if-eqz v0, :go

    return-void

    :go
    const/4 v0, 0x1

    sput-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, La/a/a/a/m/m/e/f;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, La/a/a/a/m/m/e/f;->a:J

    new-instance v2, La/a/a/a/m/m/e/f$a;

    invoke-direct {v2, p0}, La/a/a/a/m/m/e/f$a;-><init>(La/a/a/a/m/m/e/d;)V

    sput-object v2, La/a/a/a/m/m/e/f;->d:Ljava/lang/Runnable;

    sget-object v1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    const-string v0, "CarLifeHB"

    const-string v1, "heartbeat watchdog started (period 1000ms, timeout 30000ms)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, La/a/a/a/m/m/e/f;->b:Z

    sget-object v1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    sget-object v2, La/a/a/a/m/m/e/f;->d:Ljava/lang/Runnable;

    if-eqz v2, :end

    invoke-virtual {v1, v2}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    :end
    const-string v0, "CarLifeHB"

    const-string v1, "heartbeat watchdog stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(La/a/a/a/m/m/e/d;)V
    .locals 5

    :try_start_0
    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v1, 0x20002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/m/m/e/d;->g(La/a/a/a/a/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :end

    :catch_0
    move-exception v0

    const-string v1, "CarLifeHB"

    const-string v2, "heartbeat send failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :end
    return-void
.end method
