.class public final Lz7/x1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a()Ljava/util/List;
    .locals 5

    .line 1
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    const-string v1, "TASKER_SEQUENCE"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object v0, Lz7/b2;->g:Ljava/util/List;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    :try_start_0
    sget-object v2, Loc/b;->d:Loc/b;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Lnc/c;

    .line 26
    .line 27
    sget-object v4, Lz7/b2;->Companion:Lz7/x1;

    .line 28
    .line 29
    invoke-virtual {v4}, Lz7/x1;->serializer()Lkc/a;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Lnc/c;-><init>(Lkc/a;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3, v0}, Loc/b;->a(Lnc/c;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    return-object v0

    .line 43
    :catch_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v3, "\u3010\u4efb\u52a1\u914d\u7f6e\u3011\u89e3\u6790\u5931\u8d25\uff0c\u6062\u590d\u9ed8\u8ba4\u914d\u7f6e"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    aput-object v3, v2, v4

    .line 52
    .line 53
    const-string v3, "CarLife_Vehicle"

    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 59
    .line 60
    invoke-static {v1}, Ll8/d;->h(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lz7/b2;->g:Ljava/util/List;

    .line 64
    .line 65
    return-object v0
.end method


# virtual methods
.method public final serializer()Lkc/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkc/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz7/w1;->a:Lz7/w1;

    .line 2
    .line 3
    return-object v0
.end method
