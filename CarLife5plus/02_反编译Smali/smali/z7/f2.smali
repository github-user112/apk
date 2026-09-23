.class public final Lz7/f2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lz7/g2;->e:Lz8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg9/b;

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v1, v2, v0}, Lg9/b;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Lg9/b;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lg9/b;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lz7/g2;

    .line 24
    .line 25
    iget v2, v2, Lz7/g2;->b:I

    .line 26
    .line 27
    if-ne v2, p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    check-cast v0, Lz7/g2;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p0, v0, Lz7/g2;->a:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "\u672a\u77e5\u6a21\u5f0f"

    .line 39
    .line 40
    return-object p0
.end method

.method public static b(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    const v1, 0x18078

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeThemeChangeProto$CarlifeThemeChange;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeThemeChangeProto$CarlifeThemeChange$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p0}, Lcom/baidu/carlife/protobuf/CarlifeThemeChangeProto$CarlifeThemeChange$Builder;->setThemeModes(I)Lcom/baidu/carlife/protobuf/CarlifeThemeChangeProto$CarlifeThemeChange$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 39
    .line 40
    sget-object v1, Lz7/g2;->c:Lz7/f2;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lz7/f2;->a(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v1, "\u3010\u4e92\u8054\u4e3b\u9898\u3011\u5df2\u5207\u6362\u5230"

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-array v1, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p0, v1, v3

    .line 58
    .line 59
    const-string p0, "CarLife_Vehicle"

    .line 60
    .line 61
    invoke-virtual {v0, p0, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
