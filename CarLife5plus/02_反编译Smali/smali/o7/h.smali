.class public final Lo7/h;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lr7/g;


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "App"

    .line 5
    .line 6
    iput-object v0, p0, Lo7/h;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "\u60ac\u6d6e\u5e94\u7528"

    .line 9
    .line 10
    iput-object v0, p0, Lo7/h;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "\u652f\u6301\u684c\u9762\u60ac\u6d6e\u5e94\u7528"

    .line 13
    .line 14
    iput-object v0, p0, Lo7/h;->c:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lo7/e;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, p0, v2, v1}, Lo7/e;-><init>(Lo7/h;Lw8/c;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lo7/e;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p0, v2, v1}, Lo7/e;-><init>(Lo7/h;Lw8/c;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/h;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    const p1, 0x3ba4bcd

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(ZLf9/a;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v15, p3

    .line 4
    .line 5
    const-string v0, "onDismissRequest"

    .line 6
    .line 7
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x2d3200c3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v15, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 14
    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int v0, p4, v0

    .line 28
    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v4, 0x12

    .line 32
    .line 33
    if-ne v1, v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    sget-object v1, Lo7/i;->g:Ldc/l0;

    .line 47
    .line 48
    invoke-static {v1, v15}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v4, 0x4c5de2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v15, v4}, Lf1/s;->W(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 63
    .line 64
    if-ne v4, v5, :cond_3

    .line 65
    .line 66
    new-instance v4, Lc8/g;

    .line 67
    .line 68
    const/16 v5, 0x13

    .line 69
    .line 70
    invoke-direct {v4, v3, v5}, Lc8/g;-><init>(Lf9/a;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    move-object v5, v4

    .line 77
    check-cast v5, Lf9/a;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-virtual {v15, v4}, Lf1/s;->p(Z)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Le8/h;

    .line 84
    .line 85
    const/16 v6, 0x8

    .line 86
    .line 87
    invoke-direct {v4, v1, v6}, Le8/h;-><init>(Lf1/v2;I)V

    .line 88
    .line 89
    .line 90
    const v1, 0x161ba9ac

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    and-int/lit8 v16, v0, 0xe

    .line 98
    .line 99
    const/16 v17, 0x3fc

    .line 100
    .line 101
    const-wide/16 v6, 0x0

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    move v4, v2

    .line 110
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lf1/s;->r()Lf1/w1;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    new-instance v0, Lo7/c;

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    move-object/from16 v1, p0

    .line 123
    .line 124
    move/from16 v2, p1

    .line 125
    .line 126
    move/from16 v4, p4

    .line 127
    .line 128
    invoke-direct/range {v0 .. v5}, Lo7/c;-><init>(Lr7/g;ZLf9/a;II)V

    .line 129
    .line 130
    .line 131
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 132
    .line 133
    :cond_4
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized f()V
    .locals 7

    .line 1
    const-string v0, "\u3010\u60ac\u6d6e\u5e7f\u64ad\u3011\u6ce8\u9500\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lo7/h;->d:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Lo7/h;->d:Z

    .line 17
    .line 18
    const-string v2, "FLOAT_APP_SWITCH"

    .line 19
    .line 20
    invoke-static {v2}, Ll8/n;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v2

    .line 27
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 28
    .line 29
    const-string v4, "CarLife_Vehicle"

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v5, 0x2

    .line 48
    new-array v5, v5, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v0, v5, v1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aput-object v2, v5, v0

    .line 54
    .line 55
    invoke-virtual {v3, v4, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "\u3010\u60ac\u6d6e\u5e7f\u64ad\u3011"

    .line 18
    .line 19
    invoke-static {v1, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v0, v2, v3

    .line 28
    .line 29
    const-string v0, "CarLife_Vehicle"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "com.autonavi.plus.showmap"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    const-string p1, "w"

    .line 47
    .line 48
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const-string v0, "h"

    .line 53
    .line 54
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string v2, "x"

    .line 59
    .line 60
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const-string v2, "y"

    .line 65
    .line 66
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    sget-object p2, Ll8/n;->a:Lr8/o;

    .line 71
    .line 72
    sub-int/2addr p1, v7

    .line 73
    add-int/lit8 v5, p1, -0x2

    .line 74
    .line 75
    sub-int/2addr v0, v8

    .line 76
    add-int/lit8 v6, v0, -0x1

    .line 77
    .line 78
    sget-object v10, Lo7/b;->a:Ln1/c;

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    const-string v9, "FLOAT_APP_SWITCH"

    .line 82
    .line 83
    invoke-static/range {v4 .. v10}, Ll8/n;->a(IIIIILjava/lang/String;Ln1/c;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "com.autonavi.plus.closemap"

    .line 92
    .line 93
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    .line 99
    const-string p1, "FLOAT_APP_SWITCH"

    .line 100
    .line 101
    invoke-static {p1}, Ll8/n;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void
.end method
