.class public final Lk7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lt7/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CarLife\u8bbe\u7f6e"

    .line 5
    .line 6
    iput-object v0, p0, Lk7/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lk7/a;->b:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lk7/a;->c:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ll8/d;->a:Lr8/o;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "AUDIO_TRANSMISSION_MODE"

    .line 9
    .line 10
    invoke-static {v1, v2}, Ll8/d;->b(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    const-string v4, "AudioEntry"

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lh7/c;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lh7/c;-><init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lh7/d;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lh7/d;-><init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lh7/e;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lh7/e;-><init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 44
    .line 45
    new-array v5, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v6, "\u3010\u97f3\u9891\u6a21\u5757\u3011\u6ce8\u518c\u97f3\u9891\u6a21\u5757"

    .line 48
    .line 49
    aput-object v6, v5, v1

    .line 50
    .line 51
    invoke-virtual {v2, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    const-string v2, "VOICE_MIC"

    .line 55
    .line 56
    invoke-static {v3, v2}, Ll8/d;->b(ILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    new-instance v2, Lj7/b;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lj7/b;-><init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 71
    .line 72
    new-array v5, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string v6, "\u3010\u97f3\u9891\u6a21\u5757\u3011\u6ce8\u518c\u9ea6\u514b\u98ce\u6a21\u5757"

    .line 75
    .line 76
    aput-object v6, v5, v1

    .line 77
    .line 78
    invoke-virtual {v2, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    const-string v2, "MUSIC_HUD"

    .line 82
    .line 83
    invoke-static {v3, v2}, Ll8/d;->b(ILjava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-ne v2, v3, :cond_2

    .line 88
    .line 89
    new-instance v2, Li7/h;

    .line 90
    .line 91
    invoke-direct {v2}, Li7/h;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 98
    .line 99
    new-array v2, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    const-string v3, "\u3010\u97f3\u9891\u6a21\u5757\u3011\u6ce8\u518c\u97f3\u4e50\u4fe1\u606f\u6a21\u5757"

    .line 102
    .line 103
    aput-object v3, v2, v1

    .line 104
    .line 105
    invoke-virtual {v0, v4, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->f(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->e(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()Lt7/h;
    .locals 1

    .line 1
    sget-object v0, Lt7/h;->c:Lt7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lk7/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lk7/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lt7/f;
    .locals 1

    .line 1
    sget-object v0, Lt7/f;->e:Lt7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ILf1/s;)V
    .locals 3

    .line 1
    const v0, 0x32b728fc

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    const/16 v1, 0x30

    .line 24
    .line 25
    sget-object v2, Lk7/j;->a:Lk7/j;

    .line 26
    .line 27
    invoke-virtual {v2, v0, p2, v1}, Lk7/j;->c(Ljava/util/List;Lf1/s;I)V

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    new-instance v0, La8/d;

    .line 37
    .line 38
    const/16 v1, 0xe

    .line 39
    .line 40
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 44
    .line 45
    :cond_2
    return-void
.end method
