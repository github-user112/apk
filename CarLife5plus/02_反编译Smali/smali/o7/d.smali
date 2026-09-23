.class public final Lo7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo7/h;


# direct methods
.method public synthetic constructor <init>(Lo7/h;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo7/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/d;->b:Lo7/h;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p2, p0, Lo7/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget-object p2, Lo7/i;->g:Ldc/l0;

    .line 14
    .line 15
    invoke-virtual {p2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lo7/i;

    .line 20
    .line 21
    iget v0, p2, Lo7/i;->a:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    sget-object p1, Ll8/n;->a:Lr8/o;

    .line 29
    .line 30
    const-string v7, "FLOAT_APP_SWITCH"

    .line 31
    .line 32
    iget v3, p2, Lo7/i;->b:I

    .line 33
    .line 34
    iget v4, p2, Lo7/i;->c:I

    .line 35
    .line 36
    iget v5, p2, Lo7/i;->d:I

    .line 37
    .line 38
    iget v6, p2, Lo7/i;->e:I

    .line 39
    .line 40
    new-instance p1, Lo7/a;

    .line 41
    .line 42
    iget-object p2, p0, Lo7/d;->b:Lo7/h;

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lo7/a;-><init>(Lo7/h;)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Ln1/c;

    .line 48
    .line 49
    const p2, 0x3b404dce

    .line 50
    .line 51
    .line 52
    invoke-direct {v8, p1, p2, v1}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-static/range {v2 .. v8}, Ll8/n;->a(IIIIILjava/lang/String;Ln1/c;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string p1, "FLOAT_APP_SWITCH"

    .line 61
    .line 62
    invoke-static {p1}, Ll8/n;->b(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_0
    check-cast p1, Lo7/i;

    .line 69
    .line 70
    iget p1, p1, Lo7/i;->a:I

    .line 71
    .line 72
    if-ne p1, v1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lo7/d;->b:Lo7/h;

    .line 75
    .line 76
    const-string p2, "\u3010\u60ac\u6d6e\u5e7f\u64ad\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 77
    .line 78
    monitor-enter p1

    .line 79
    :try_start_0
    iget-boolean v0, p1, Lo7/h;->d:Z

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "com.autonavi.plus.showmap"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v2, "com.autonavi.plus.closemap"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v2, "com.autonavi.plus.offset"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2, p1, v0}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 108
    .line 109
    .line 110
    iput-boolean v1, p1, Lo7/h;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    move-object p2, v0

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 118
    .line 119
    const-string v3, "CarLife_Vehicle"

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    new-array v0, v1, [Ljava/lang/Object;

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    aput-object p2, v0, v1

    .line 141
    .line 142
    invoke-virtual {v2, v3, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_1
    monitor-exit p1

    .line 146
    goto :goto_3

    .line 147
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    throw p2

    .line 149
    :cond_3
    iget-object p1, p0, Lo7/d;->b:Lo7/h;

    .line 150
    .line 151
    invoke-virtual {p1}, Lo7/h;->f()V

    .line 152
    .line 153
    .line 154
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 155
    .line 156
    return-object p1

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
