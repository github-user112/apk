.class public final La8/i;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:Lp1/p;

.field public final synthetic f:Lf1/b1;

.field public final synthetic g:Lf1/b1;

.field public final synthetic h:Lf1/b1;

.field public final synthetic i:Lf1/b1;

.field public final synthetic j:Lf1/h1;


# direct methods
.method public constructor <init>(Lp1/p;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/h1;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, La8/i;->e:Lp1/p;

    .line 2
    .line 3
    iput-object p2, p0, La8/i;->f:Lf1/b1;

    .line 4
    .line 5
    iput-object p3, p0, La8/i;->g:Lf1/b1;

    .line 6
    .line 7
    iput-object p4, p0, La8/i;->h:Lf1/b1;

    .line 8
    .line 9
    iput-object p5, p0, La8/i;->i:Lf1/b1;

    .line 10
    .line 11
    iput-object p6, p0, La8/i;->j:Lf1/h1;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Ly8/i;-><init>(ILw8/c;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, La8/i;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, La8/i;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, La8/i;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    new-instance v0, La8/i;

    .line 2
    .line 3
    iget-object v5, p0, La8/i;->i:Lf1/b1;

    .line 4
    .line 5
    iget-object v6, p0, La8/i;->j:Lf1/h1;

    .line 6
    .line 7
    iget-object v1, p0, La8/i;->e:Lp1/p;

    .line 8
    .line 9
    iget-object v2, p0, La8/i;->f:Lf1/b1;

    .line 10
    .line 11
    iget-object v3, p0, La8/i;->g:Lf1/b1;

    .line 12
    .line 13
    iget-object v4, p0, La8/i;->h:Lf1/b1;

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, La8/i;-><init>(Lp1/p;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/h1;Lw8/c;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "--pid="

    .line 2
    .line 3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, La8/t;->a:La8/t;

    .line 7
    .line 8
    iget-object p1, p0, La8/i;->f:Lf1/b1;

    .line 9
    .line 10
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, La8/i;->e:Lp1/p;

    .line 23
    .line 24
    invoke-virtual {v2}, Lp1/p;->clear()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object p1, p0, La8/i;->g:Lf1/b1;

    .line 28
    .line 29
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lj8/k0;

    .line 34
    .line 35
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 36
    .line 37
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const-string v3, "logcat"

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "-v"

    .line 62
    .line 63
    const-string v6, "time"

    .line 64
    .line 65
    const-string v7, "-T"

    .line 66
    .line 67
    const-string v8, "0"

    .line 68
    .line 69
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    const-string p1, "logcat"

    .line 82
    .line 83
    const-string v0, "-v"

    .line 84
    .line 85
    const-string v1, "time"

    .line 86
    .line 87
    const-string v3, "-T"

    .line 88
    .line 89
    const-string v4, "0"

    .line 90
    .line 91
    filled-new-array {p1, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_0
    sget-object v0, La8/t;->b:Ll8/r;

    .line 100
    .line 101
    iget-object v3, p0, La8/i;->h:Lf1/b1;

    .line 102
    .line 103
    iget-object v4, p0, La8/i;->i:Lf1/b1;

    .line 104
    .line 105
    iget-object v5, p0, La8/i;->j:Lf1/h1;

    .line 106
    .line 107
    new-instance v1, La8/h;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-direct/range {v1 .. v6}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1, v1}, Ll8/r;->a(Ljava/util/List;Lf9/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :goto_1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 118
    .line 119
    const-string v0, "\u4e0d\u652f\u6301\u65e5\u5fd7\u76d1\u542c"

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-static {v1, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const/4 v3, 0x2

    .line 132
    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v2, v3, v1

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    aput-object p1, v3, v1

    .line 138
    .line 139
    const-string p1, "CarLife_Vehicle"

    .line 140
    .line 141
    invoke-virtual {v0, p1, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_1
    sget-object p1, La8/t;->b:Ll8/r;

    .line 146
    .line 147
    iget-object v0, p1, Ll8/r;->b:Lac/j1;

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    iput-object v1, p1, Ll8/r;->b:Lac/j1;

    .line 156
    .line 157
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 158
    .line 159
    return-object p1
.end method
