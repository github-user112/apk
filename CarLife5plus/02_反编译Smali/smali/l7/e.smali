.class public final Ll7/e;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:Ll7/g;


# direct methods
.method public constructor <init>(Ll7/g;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll7/e;->e:Ll7/g;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ll7/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ll7/e;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ll7/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 1

    .line 1
    new-instance p1, Ll7/e;

    .line 2
    .line 3
    iget-object v0, p0, Ll7/e;->e:Ll7/g;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Ll7/e;-><init>(Ll7/g;Lw8/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "\u3010\u97f3\u9891\u6570\u636e\u3011\u6d88\u8d39\u7ebf\u7a0b\u5df2\u542f\u52a8"

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    const-string v3, "CarLife_SDK"

    .line 15
    .line 16
    invoke-virtual {p1, v3, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Ll7/e;->e:Ll7/g;

    .line 20
    .line 21
    iget-boolean v1, p1, Ll7/g;->d:Z

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-static {p1}, Ll7/g;->a(Ll7/g;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v4, "\u3010\u97f3\u9891\u6570\u636e\u3011\u5904\u7406\u8fc7\u7a0b\u5f02\u5e38: "

    .line 37
    .line 38
    invoke-static {v4, p1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-array v4, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, v4, v2

    .line 45
    .line 46
    invoke-virtual {v1, v3, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_1
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 51
    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string v1, "\u3010\u97f3\u9891\u6570\u636e\u3011\u6d88\u8d39\u7ebf\u7a0b\u88ab\u4e2d\u65ad"

    .line 55
    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    invoke-virtual {p1, v3, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 62
    .line 63
    return-object p1
.end method
