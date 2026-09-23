.class public final Lv7/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# instance fields
.field public final a:I

.field public final b:Lfc/c;

.field public final c:Lf8/b;

.field public d:Ll8/u;

.field public e:Ll8/w;

.field public final f:Lv7/m;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv7/p;->a:I

    .line 5
    .line 6
    sget-object p1, Lac/g0;->a:Lhc/e;

    .line 7
    .line 8
    sget-object p1, Lfc/m;->a:Lbc/d;

    .line 9
    .line 10
    invoke-static {p1}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lv7/p;->b:Lfc/c;

    .line 15
    .line 16
    new-instance p1, Lf8/b;

    .line 17
    .line 18
    invoke-direct {p1}, Lf8/b;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lv7/p;->c:Lf8/b;

    .line 22
    .line 23
    sget-object p1, Lv7/m;->n:Ldc/l0;

    .line 24
    .line 25
    invoke-virtual {p1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lv7/m;

    .line 30
    .line 31
    iput-object p1, p0, Lv7/p;->f:Lv7/m;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->b(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "\u3010\u526f\u5c4f\u3011\u8fde\u63a5\u65ad\u5f00\uff0c\u79fb\u9664 SurfaceView"

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    const-string v2, "CarLife_Vehicle"

    .line 17
    .line 18
    invoke-virtual {p1, v2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lv7/o;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p0, v0, v1}, Lv7/o;-><init>(Lv7/p;Lw8/c;I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    iget-object v2, p0, Lv7/p;->b:Lfc/c;

    .line 29
    .line 30
    invoke-static {v2, v0, p1, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final synthetic onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->d(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->f(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 6

    .line 1
    const-string v0, "CarLife_Vehicle"

    .line 2
    .line 3
    const-string v1, "\u3010\u89c6\u9891\u6a21\u5757\u3011\u6536\u5230\u89c6\u9891\u521d\u59cb\u5316\u53c2\u6570\uff1a"

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "message"

    .line 11
    .line 12
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const v2, 0x10008

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iget-object v4, p0, Lv7/p;->c:Lf8/b;

    .line 24
    .line 25
    if-eq p1, v2, :cond_1

    .line 26
    .line 27
    const v0, 0x20001

    .line 28
    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v4, p2}, Lf8/b;->c(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x1

    .line 38
    :try_start_0
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeVideoEncoderInfoProto.CarlifeVideoEncoderInfo"

    .line 43
    .line 44
    invoke-static {p2, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    .line 48
    .line 49
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 50
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-array v5, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v1, v5, v3

    .line 66
    .line 67
    invoke-virtual {v2, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p2}, Lf8/b;->d(Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p2

    .line 75
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v4, "\u3010\u89c6\u9891\u6a21\u5757\u3011\u89e3\u6790\u89c6\u9891\u521d\u59cb\u5316\u6d88\u606f\u5931\u8d25"

    .line 81
    .line 82
    aput-object v4, v2, v3

    .line 83
    .line 84
    aput-object p2, v2, p1

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return v3
.end method

.method public final onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const p2, 0x18009

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    new-array v1, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v2, "\u3010\u526f\u5c4f\u3011\u6536\u5230\u89c6\u9891\u542f\u52a8\u6307\u4ee4\uff0c\u51c6\u5907\u663e\u793a SurfaceView"

    .line 27
    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    const-string v2, "CarLife_Vehicle"

    .line 31
    .line 32
    invoke-virtual {p1, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lv7/o;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {p1, p0, v1, p2}, Lv7/o;-><init>(Lv7/p;Lw8/c;I)V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x3

    .line 42
    iget-object v2, p0, Lv7/p;->b:Lfc/c;

    .line 43
    .line 44
    invoke-static {v2, v1, p1, p2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 45
    .line 46
    .line 47
    :cond_0
    return v0
.end method
