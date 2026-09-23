.class public final Lh7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;
.implements Li7/i;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final a:Lcom/baidu/carlife/sdk/CarLifeContext;

.field public final b:Li7/f;

.field public c:J


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lh7/c;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    new-instance p1, Li7/f;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-direct {p1, v0, p0}, Li7/f;-><init>(ILi7/i;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lh7/c;->b:Li7/f;

    .line 18
    .line 19
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 20
    .line 21
    new-instance p1, Lh7/a;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {p1, p0, v0, v1}, Lh7/a;-><init>(Lh7/c;Lw8/c;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ll8/c;->b(Lf9/n;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ll7/d;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Li7/d;->a:Lr8/o;

    .line 7
    .line 8
    invoke-static {p0}, Li7/d;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 12
    .line 13
    const-string v0, "\u3010\u5a92\u4f53\u6a21\u5757\u3011\u64ad\u653e\u51fa\u9519: "

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p2, v0, v1

    .line 24
    .line 25
    const-string p2, "CarLife_SDK"

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lh7/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lh7/b;-><init>(Lh7/c;Lw8/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(Li7/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lh7/c;->b:Li7/f;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Li7/f;->c(Ljava/lang/Float;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-static {v0}, Lg5/a;->P(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p0, v1, v1, v0}, Li7/d;->c(Landroid/media/AudioManager$OnAudioFocusChangeListener;III)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 26
    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "\u3010\u5a92\u4f53\u6a21\u5757\u3011\u64ad\u653e\u4e2d, \u8bf7\u6c42\u97f3\u9891\u7126\u70b9"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    const-string v2, "CarLife_SDK"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final e(Ll7/d;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    sget-object v0, Li7/j;->a:Lib/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Li7/j;->b:Ldc/l0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lh7/c;->b:Li7/f;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Li7/f;->c(Ljava/lang/Float;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 31
    .line 32
    new-instance v0, Lh7/a;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v0, p0, v1, v2}, Lh7/a;-><init>(Lh7/c;Lw8/c;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 11

    .line 1
    const/4 v0, -0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lh7/c;->b:Li7/f;

    .line 5
    .line 6
    const-string v4, "CarLife_SDK"

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, -0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    if-eq p1, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v3, p1}, Li7/f;->c(Ljava/lang/Float;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 29
    .line 30
    new-array v0, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v2, "\u3010\u97f3\u9891\u7126\u70b9\u3011\u83b7\u5f97\u7126\u70b9, \u6062\u590d\u64ad\u653e"

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    invoke-virtual {p1, v4, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-object v5, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 41
    .line 42
    const p1, 0x18028

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/4 v9, 0x4

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-static/range {v5 .. v10}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v3, 0x3

    .line 62
    invoke-virtual {v0, v3}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setStatusID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->payload(Lcom/google/protobuf/s0;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lh7/c;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 78
    .line 79
    invoke-interface {v0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 83
    .line 84
    new-array v0, v2, [Ljava/lang/Object;

    .line 85
    .line 86
    const-string v2, "\u3010\u97f3\u9891\u7126\u70b9\u3011\u6c38\u4e45\u5931\u53bb\u7126\u70b9, \u505c\u6b62\u64ad\u653e"

    .line 87
    .line 88
    aput-object v2, v0, v1

    .line 89
    .line 90
    invoke-virtual {p1, v4, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    const/4 p1, 0x0

    .line 95
    invoke-virtual {v3, p1}, Li7/f;->c(Ljava/lang/Float;)V

    .line 96
    .line 97
    .line 98
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 99
    .line 100
    new-array v0, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v2, "\u3010\u97f3\u9891\u7126\u70b9\u3011\u4e34\u65f6\u5931\u53bb\u7126\u70b9, \u964d\u4f4e\u97f3\u91cf\u7ee7\u7eed\u64ad\u653e"

    .line 103
    .line 104
    aput-object v2, v0, v1

    .line 105
    .line 106
    invoke-virtual {p1, v4, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

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
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Li7/d;->a:Lr8/o;

    .line 7
    .line 8
    invoke-static {p0}, Li7/d;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lh7/c;->b:Li7/f;

    .line 12
    .line 13
    invoke-virtual {p1}, Li7/f;->d()V

    .line 14
    .line 15
    .line 16
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

.method public final onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Li7/d;->a:Lr8/o;

    .line 7
    .line 8
    invoke-static {p0}, Li7/d;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lh7/c;->b:Li7/f;

    .line 12
    .line 13
    invoke-virtual {p1}, Li7/f;->d()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "\u3010\u8fde\u63a5\u72b6\u6001\u3011\u8bbe\u5907\u91cd\u65b0\u8fde\u63a5\uff0c\u5173\u95ed\u65e7\u6d41"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "CarLife_SDK"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
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
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getChannel()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lh7/c;->b:Li7/f;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    :pswitch_0
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iput-wide v3, p0, Lh7/c;->c:J

    .line 35
    .line 36
    sget-object p1, Li7/j;->a:Lib/d;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object p1, Li7/j;->c:Ldc/l0;

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, v0}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Li7/f;->b(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :pswitch_2
    sget-object p1, Li7/j;->a:Lib/d;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object p1, Li7/j;->c:Ldc/l0;

    .line 62
    .line 63
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2, p2}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Li7/f;->c(Ljava/lang/Float;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_3
    sget-object p1, Li7/j;->a:Lib/d;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object p1, Li7/j;->b:Ldc/l0;

    .line 87
    .line 88
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2, p2}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object p1, v1, Li7/f;->c:Landroid/media/AudioTrack;

    .line 97
    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/media/AudioTrack;->pause()V

    .line 101
    .line 102
    .line 103
    :cond_0
    sget-object p1, Li7/j;->g:Li7/j;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Li7/f;->e(Li7/j;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v1, Li7/f;->b:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-interface {p1}, Li7/i;->b()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Li7/f;->d()V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_4
    sget-object p1, Li7/j;->a:Lib/d;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    sget-object p1, Li7/j;->c:Ldc/l0;

    .line 123
    .line 124
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2, p2}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    sget-object p1, Li7/j;->b:Ldc/l0;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2, p2}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Li7/f;->d()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_5
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeMusicInitProto.CarlifeMusicInit"

    .line 149
    .line 150
    invoke-static {p2, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;

    .line 154
    .line 155
    invoke-static {}, Lg5/a;->K()Lk7/k;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget v0, v0, Lk7/k;->b:I

    .line 160
    .line 161
    mul-int/lit16 v0, v0, 0x400

    .line 162
    .line 163
    new-instance v3, Ll7/c;

    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getSampleRate()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getChannelConfig()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getSampleFormat()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    invoke-direct {v3, v4, v5, p2}, Ll7/c;-><init>(III)V

    .line 178
    .line 179
    .line 180
    new-instance p2, Ll7/g;

    .line 181
    .line 182
    invoke-direct {p2, p1, v3, v0}, Ll7/g;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Ll7/c;I)V

    .line 183
    .line 184
    .line 185
    iput-object p2, v1, Li7/f;->d:Ll7/g;

    .line 186
    .line 187
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 188
    .line 189
    new-instance p1, Li7/e;

    .line 190
    .line 191
    invoke-direct {p1, v1, p2, v2}, Li7/e;-><init>(Li7/f;Ll7/d;Lw8/c;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Ll8/c;->b(Lf9/n;)V

    .line 195
    .line 196
    .line 197
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 198
    return p1

    .line 199
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->b(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
