.class public final synthetic La/a/a/a/m/k/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/a/a/m/k/a/c;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/m/k/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/k/a/a;->b:La/a/a/a/m/k/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, La/a/a/a/m/k/a/a;->b:La/a/a/a/m/k/a/c;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, La/a/a/a/m/k/a/c;->f:J

    sub-long/2addr v1, v3

    const-string v3, "args"

    const-string v4, "tag"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "CarLife_SDK"

    const-wide/16 v8, 0x1388

    cmp-long v10, v1, v8

    new-array v1, v6, [Ljava/lang/Object;

    if-lez v10, :cond_1

    const-string v2, "ConnectionEstablishHandler heartbeat timeout"

    aput-object v2, v1, v5

    .line 2
    invoke-static {v7, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    .line 4
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v7, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v0, v0, La/a/a/a/m/k/a/c;->b:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->a()V

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, La/a/a/a/m/k/a/c;->f:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v8, "ConnectionEstablishHandler message delay "

    invoke-static {v8, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 6
    invoke-static {v7, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v3, 0x2

    if-nez v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v7, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-object v0, v0, La/a/a/a/m/k/a/c;->b:La/a/a/a/c;

    const v1, 0x20002

    invoke-interface {v0, v3, v1}, La/a/a/a/c;->z0(II)V

    :goto_2
    return-void
.end method
