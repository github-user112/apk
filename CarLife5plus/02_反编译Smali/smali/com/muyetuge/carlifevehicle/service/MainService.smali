.class public final Lcom/muyetuge/carlifevehicle/service/MainService;
.super Landroid/app/Service;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/muyetuge/carlifevehicle/service/MainService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "m9/e0",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    const-class v3, Lt7/e;

    .line 8
    .line 9
    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "load(...)"

    .line 14
    .line 15
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Lt7/a;

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    invoke-direct {v4, v5}, Lt7/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lwb/h;

    .line 29
    .line 30
    invoke-direct {v5, v3, v2, v4}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lt7/a;->c:Lt7/a;

    .line 34
    .line 35
    new-instance v4, Lwb/c;

    .line 36
    .line 37
    invoke-direct {v4, v1, v5, v3}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lt7/b;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lt7/b;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lwb/c;

    .line 46
    .line 47
    invoke-direct {v5, v0, v4, v3}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v3

    .line 56
    invoke-static {v3}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :goto_0
    invoke-static {v3}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "OptionLoader"

    .line 65
    .line 66
    if-nez v4, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v6, "\u6a21\u5757\u52a0\u8f7d\u5931\u8d25: "

    .line 76
    .line 77
    invoke-static {v6, v4}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-array v6, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v4, v6, v1

    .line 84
    .line 85
    invoke-virtual {v3, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v3, Ls8/w;->a:Ls8/w;

    .line 89
    .line 90
    :goto_1
    check-cast v3, Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lt7/e;

    .line 107
    .line 108
    :try_start_1
    invoke-interface {v4}, Lt7/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v6

    .line 113
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const-string v8, "\u3010\u6a21\u5757\u52a0\u8f7d\u3011\u6a21\u5757\u521d\u59cb\u5316\u5931\u8d25: "

    .line 124
    .line 125
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    new-array v8, v0, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object v4, v8, v1

    .line 132
    .line 133
    aput-object v6, v8, v2

    .line 134
    .line 135
    invoke-virtual {v7, v5, v8}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 140
    .line 141
    new-array v2, v2, [Ljava/lang/Object;

    .line 142
    .line 143
    const-string v3, "\u3010\u8fde\u63a5\u670d\u52a1\u3011\u670d\u52a1\u521b\u5efa"

    .line 144
    .line 145
    aput-object v3, v2, v1

    .line 146
    .line 147
    const-string v1, "CarLife_Vehicle"

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/muyetuge/carlifevehicle/service/MainService;->a:Z

    .line 6
    .line 7
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v3, "\u3010\u8fde\u63a5\u670d\u52a1\u3011\u670d\u52a1\u9500\u6bc1"

    .line 13
    .line 14
    aput-object v3, v2, v0

    .line 15
    .line 16
    const-string v0, "CarLife_Vehicle"

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    sget-boolean p1, Lcom/muyetuge/carlifevehicle/service/MainService;->a:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;->connect()V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 14
    .line 15
    const-string v1, "\u3010\u8fde\u63a5\u670d\u52a1\u3011\u670d\u52a1\u542f\u52a8: flags="

    .line 16
    .line 17
    const-string v2, ", startId="

    .line 18
    .line 19
    invoke-static {p2, p3, v1, v2}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-array p3, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aput-object p2, p3, v1

    .line 27
    .line 28
    const-string p2, "CarLife_Vehicle"

    .line 29
    .line 30
    invoke-virtual {p1, p2, p3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-boolean v0, Lcom/muyetuge/carlifevehicle/service/MainService;->a:Z

    .line 34
    .line 35
    :cond_0
    return v0
.end method
