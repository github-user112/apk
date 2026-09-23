.class public final Ll8/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lfc/c;

.field public b:Lac/j1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lac/g0;->a:Lhc/e;

    .line 5
    .line 6
    sget-object v0, Lhc/d;->c:Lhc/d;

    .line 7
    .line 8
    invoke-static {}, Lac/z;->b()Lac/l1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ll8/r;->a:Lfc/c;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lf9/k;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ll8/r;->b:Lac/j1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.permission.READ_LOGS"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v1, "--pid="

    .line 23
    .line 24
    invoke-static {v0, v1}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v6, "-T"

    .line 29
    .line 30
    const-string v7, "0"

    .line 31
    .line 32
    const-string v2, "logcat"

    .line 33
    .line 34
    const-string v4, "-v"

    .line 35
    .line 36
    const-string v5, "raw"

    .line 37
    .line 38
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "-T"

    .line 48
    .line 49
    const-string v1, "0"

    .line 50
    .line 51
    const-string v2, "logcat"

    .line 52
    .line 53
    const-string v3, "-v"

    .line 54
    .line 55
    const-string v4, "raw"

    .line 56
    .line 57
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    if-nez p1, :cond_2

    .line 66
    .line 67
    move-object p1, v0

    .line 68
    :cond_2
    const/4 v1, 0x1

    .line 69
    const/4 v2, 0x0

    .line 70
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Ll8/r;->a:Lfc/c;

    .line 84
    .line 85
    new-instance v3, Ll8/q;

    .line 86
    .line 87
    invoke-direct {v3, p1, p2, v2}, Ll8/q;-><init>(Ljava/lang/Process;Lf9/k;Lw8/c;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x3

    .line 91
    invoke-static {v0, v2, v3, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 92
    .line 93
    .line 94
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object p1, v0

    .line 98
    sget-object p2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v3, "\u3010\u65e5\u5fd7\u76d1\u542c\u3011\u542f\u52a8\u5931\u8d25: "

    .line 105
    .line 106
    invoke-static {v3, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v3, 0x2

    .line 111
    new-array v3, v3, [Ljava/lang/Object;

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    aput-object v0, v3, v4

    .line 115
    .line 116
    aput-object p1, v3, v1

    .line 117
    .line 118
    const-string p1, "CarLife_Vehicle"

    .line 119
    .line 120
    invoke-virtual {p2, p1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    iput-object v2, p0, Ll8/r;->b:Lac/j1;

    .line 124
    .line 125
    return-void
.end method
