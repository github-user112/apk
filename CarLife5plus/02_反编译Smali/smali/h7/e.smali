.class public final Lh7/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;
.implements Li7/i;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final a:Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

.field public final b:Li7/f;

.field public final c:Lr8/o;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh7/e;->a:Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 5
    .line 6
    new-instance p1, Li7/f;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-direct {p1, v0, p0}, Li7/f;-><init>(ILi7/i;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lh7/e;->b:Li7/f;

    .line 13
    .line 14
    new-instance p1, La5/e;

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    invoke-direct {p1, v0, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lh7/e;->c:Lr8/o;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ll7/d;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Li7/d;->a:Lr8/o;

    .line 7
    .line 8
    invoke-static {p0}, Li7/d;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 12
    .line 13
    const-string v1, "\u3010\u8bed\u97f3\u97f3\u9891\u3011\u64ad\u653e\u51fa\u9519: "

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object p2, v2, v3

    .line 24
    .line 25
    const-string p2, "CarLife_SDK"

    .line 26
    .line 27
    invoke-virtual {v0, p2, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lh7/e;->c:Lr8/o;

    .line 31
    .line 32
    invoke-virtual {p2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ll7/d;

    .line 37
    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lh7/e;->a:Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 41
    .line 42
    const p2, 0x18072

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Li7/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ll7/d;)V
    .locals 5

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Li7/d;->a:Lr8/o;

    .line 7
    .line 8
    invoke-static {p0}, Li7/d;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v3, "\u3010\u8bed\u97f3\u97f3\u9891\u3011\u91ca\u653e\u7126\u70b9"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v3, v2, v4

    .line 20
    .line 21
    const-string v3, "CarLife_SDK"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lh7/e;->c:Lr8/o;

    .line 27
    .line 28
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ll7/d;

    .line 33
    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lh7/e;->a:Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 37
    .line 38
    const v0, 0x18072

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(II)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lg5/a;->P(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    const/16 v1, 0x18

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-static {p0, v2, v0, v1}, Li7/d;->c(Landroid/media/AudioManager$OnAudioFocusChangeListener;III)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "\u3010\u8bed\u97f3\u97f3\u9891\u3011\u8bf7\u6c42\u72ec\u5360\u97f3\u9891\u7126\u70b9"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    const-string v2, "CarLife_SDK"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lh7/e;->b:Li7/f;

    .line 9
    .line 10
    invoke-virtual {p1}, Li7/f;->d()V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v1, "\u3010\u8bed\u97f3\u97f3\u9891\u3011\u8bed\u97f3\u64ad\u62a5\u5931\u53bb\u7126\u70b9\uff0c\u505c\u6b62\u64ad\u653e"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    const-string v1, "CarLife_SDK"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
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
    iget-object p1, p0, Lh7/e;->b:Li7/f;

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
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v1, 0x10071

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    iget-object v4, p0, Lh7/e;->b:Li7/f;

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lh7/e;->c:Lr8/o;

    .line 25
    .line 26
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ll7/d;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v1, "source"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 41
    .line 42
    new-instance v1, Li7/e;

    .line 43
    .line 44
    invoke-direct {v1, v4, v0, v3}, Li7/e;-><init>(Li7/f;Ll7/d;Lw8/c;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ll8/c;->b(Lf9/n;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v5, "\u3010\u8bed\u97f3\u97f3\u9891\u3011\u64ad\u653e\u63d0\u793a\u97f3\uff08\u53ee\u4e00\u58f0\uff09"

    .line 56
    .line 57
    aput-object v5, v1, v2

    .line 58
    .line 59
    const-string v5, "CarLife_SDK"

    .line 60
    .line 61
    invoke-virtual {v0, v5, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getChannel()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x5

    .line 69
    if-ne v0, v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    packed-switch v0, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    :pswitch_0
    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {v4}, Li7/f;->d()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {v4}, Li7/f;->d()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {v4, p2}, Li7/f;->b(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_4
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getProtoPayload()Lcom/google/protobuf/s0;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeTTSInitProto.CarlifeTTSInit"

    .line 96
    .line 97
    invoke-static {p2, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    .line 101
    .line 102
    invoke-static {p1, p2}, Ll7/f;->a(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;)Ll7/g;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, v4, Li7/f;->d:Ll7/g;

    .line 107
    .line 108
    sget-object p2, Ll8/c;->a:Lfc/c;

    .line 109
    .line 110
    new-instance p2, Li7/e;

    .line 111
    .line 112
    invoke-direct {p2, v4, p1, v3}, Li7/e;-><init>(Li7/f;Ll7/d;Lw8/c;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2}, Ll8/c;->b(Lf9/n;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    :goto_0
    return v2

    .line 119
    :pswitch_data_0
    .packed-switch 0x50002
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
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
