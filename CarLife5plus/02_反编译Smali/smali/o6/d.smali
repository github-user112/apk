.class public final synthetic Lo6/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo6/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lo6/d;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lo6/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo6/d;->b:Landroid/app/Activity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_9

    .line 13
    .line 14
    sget-object v0, Lu3/e;->g:Landroid/os/Handler;

    .line 15
    .line 16
    sget-object v2, Lu3/e;->f:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v4, 0x1c

    .line 21
    .line 22
    if-lt v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    const/16 v4, 0x1b

    .line 30
    .line 31
    const/16 v5, 0x1a

    .line 32
    .line 33
    if-eq v3, v5, :cond_1

    .line 34
    .line 35
    if-ne v3, v4, :cond_2

    .line 36
    .line 37
    :cond_1
    if-nez v2, :cond_2

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_2
    sget-object v6, Lu3/e;->e:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    if-nez v6, :cond_3

    .line 44
    .line 45
    sget-object v6, Lu3/e;->d:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_3
    :try_start_0
    sget-object v6, Lu3/e;->c:Ljava/lang/reflect/Field;

    .line 52
    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-nez v6, :cond_4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    sget-object v7, Lu3/e;->b:Ljava/lang/reflect/Field;

    .line 61
    .line 62
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-nez v7, :cond_5

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    new-instance v9, Lu3/d;

    .line 74
    .line 75
    invoke-direct {v9, v1}, Lu3/d;-><init>(Landroid/app/Activity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v9}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    .line 80
    .line 81
    new-instance v10, Lb4/a;

    .line 82
    .line 83
    const/16 v11, 0x9

    .line 84
    .line 85
    invoke-direct {v10, v11, v9, v6}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .line 90
    .line 91
    const/4 v10, 0x1

    .line 92
    const/4 v12, 0x0

    .line 93
    if-eq v3, v5, :cond_7

    .line 94
    .line 95
    if-ne v3, v4, :cond_6

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/4 v3, 0x0

    .line 99
    goto :goto_1

    .line 100
    :cond_7
    :goto_0
    const/4 v3, 0x1

    .line 101
    :goto_1
    const/16 v4, 0xa

    .line 102
    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    new-array v5, v11, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v6, v5, v12

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    aput-object v6, v5, v10

    .line 115
    .line 116
    const/4 v10, 0x2

    .line 117
    aput-object v6, v5, v10

    .line 118
    .line 119
    const/4 v10, 0x3

    .line 120
    aput-object v3, v5, v10

    .line 121
    .line 122
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    const/4 v10, 0x4

    .line 125
    aput-object v3, v5, v10

    .line 126
    .line 127
    const/4 v10, 0x5

    .line 128
    aput-object v6, v5, v10

    .line 129
    .line 130
    const/4 v10, 0x6

    .line 131
    aput-object v6, v5, v10

    .line 132
    .line 133
    const/4 v6, 0x7

    .line 134
    aput-object v3, v5, v6

    .line 135
    .line 136
    const/16 v6, 0x8

    .line 137
    .line 138
    aput-object v3, v5, v6

    .line 139
    .line 140
    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception v2

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    :goto_2
    :try_start_2
    new-instance v2, Lb4/a;

    .line 150
    .line 151
    invoke-direct {v2, v4, v8, v9}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :goto_3
    new-instance v3, Lb4/a;

    .line 159
    .line 160
    invoke-direct {v3, v4, v8, v9}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    :catchall_1
    :goto_4
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_5
    return-void

    .line 171
    :pswitch_0
    invoke-static {v1}, Lt6/a;->b(Landroid/app/Activity;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
