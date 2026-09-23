.class public final Lh7/b;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:J

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lh7/c;


# direct methods
.method public constructor <init>(Lh7/c;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh7/b;->h:Lh7/c;

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
    invoke-virtual {p0, p1, p2}, Lh7/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lh7/b;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lh7/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    new-instance v0, Lh7/b;

    .line 2
    .line 3
    iget-object v1, p0, Lh7/b;->h:Lh7/c;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lh7/b;-><init>(Lh7/c;Lw8/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lh7/b;->g:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lh7/b;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-wide v2, p0, Lh7/b;->e:J

    .line 9
    .line 10
    iget-object v0, p0, Lh7/b;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lac/w;

    .line 13
    .line 14
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lh7/b;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lac/w;

    .line 32
    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    :cond_2
    :goto_0
    invoke-static {v0}, Lac/z;->p(Lac/w;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iput-object v0, p0, Lh7/b;->g:Ljava/lang/Object;

    .line 43
    .line 44
    iput-wide v2, p0, Lh7/b;->e:J

    .line 45
    .line 46
    iput v1, p0, Lh7/b;->f:I

    .line 47
    .line 48
    invoke-static {v2, v3, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 53
    .line 54
    if-ne p1, v4, :cond_3

    .line 55
    .line 56
    return-object v4

    .line 57
    :cond_3
    :goto_1
    sget-object p1, Li7/j;->a:Lib/d;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object p1, Li7/j;->c:Ldc/l0;

    .line 63
    .line 64
    invoke-virtual {p1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-object v6, p0, Lh7/b;->h:Lh7/c;

    .line 81
    .line 82
    iget-wide v6, v6, Lh7/c;->c:J

    .line 83
    .line 84
    sub-long/2addr v4, v6

    .line 85
    const/4 v6, 0x2

    .line 86
    int-to-long v6, v6

    .line 87
    mul-long v6, v6, v2

    .line 88
    .line 89
    cmp-long v8, v4, v6

    .line 90
    .line 91
    if-lez v8, :cond_2

    .line 92
    .line 93
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 94
    .line 95
    new-array v5, v1, [Ljava/lang/Object;

    .line 96
    .line 97
    const-string v6, "\u3010\u5a92\u4f53\u6a21\u5757\u3011\u6570\u636e\u8d85\u65f6, \u6539\u4e3a\u6682\u505c"

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    aput-object v6, v5, v7

    .line 101
    .line 102
    const-string v6, "CarLife_SDK"

    .line 103
    .line 104
    invoke-virtual {v4, v6, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-virtual {p1, v5, v4}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    sget-object p1, Li7/j;->b:Ldc/l0;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v5, v4}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v5}, Lac/z;->d(Lac/w;Ljava/util/concurrent/CancellationException;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 129
    .line 130
    return-object p1
.end method
