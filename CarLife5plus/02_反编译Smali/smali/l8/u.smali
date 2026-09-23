.class public final Ll8/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/view/Display;

.field public final b:Landroid/view/SurfaceView;

.field public final c:Landroid/view/WindowManager$LayoutParams;

.field public final d:Lf9/n;

.field public final e:Landroid/view/WindowManager;

.field public final f:Landroid/content/Context;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v1

    .line 12
    :cond_1
    const-string p5, "CarLife_Vehicle"

    .line 13
    .line 14
    const-string v0, "display"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Ll8/u;->a:Landroid/view/Display;

    .line 23
    .line 24
    iput-object p2, p0, Ll8/u;->b:Landroid/view/SurfaceView;

    .line 25
    .line 26
    iput-object p3, p0, Ll8/u;->c:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    iput-object p4, p0, Ll8/u;->d:Lf9/n;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    const/4 p3, 0x1

    .line 32
    :try_start_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    invoke-virtual {p4, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Ll8/u;->f:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string p4, "window"

    .line 46
    .line 47
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p4, "null cannot be cast to non-null type android.view.WindowManager"

    .line 52
    .line 53
    invoke-static {p1, p4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast p1, Landroid/view/WindowManager;

    .line 57
    .line 58
    iput-object p1, p0, Ll8/u;->e:Landroid/view/WindowManager;

    .line 59
    .line 60
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 61
    .line 62
    new-array p4, p3, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string v0, "\u3010\u526f\u5c4f\u3011DisplayContext & WindowManager \u521b\u5efa\u6210\u529f"

    .line 65
    .line 66
    aput-object v0, p4, p2

    .line 67
    .line 68
    invoke-virtual {p1, p5, p4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception p1

    .line 73
    sget-object p4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v1, "\u3010\u526f\u5c4f\u3011\u521b\u5efa DisplayContext \u6216 WindowManager \u5931\u8d25"

    .line 79
    .line 80
    aput-object v1, v0, p2

    .line 81
    .line 82
    aput-object p1, v0, p3

    .line 83
    .line 84
    invoke-virtual {p4, p5, v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const-string v0, "CarLife_Vehicle"

    .line 2
    .line 3
    iget-object v1, p0, Ll8/u;->g:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    iget-object v5, p0, Ll8/u;->e:Landroid/view/WindowManager;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    invoke-interface {v5, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_3

    .line 20
    :catch_0
    move-exception v1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 23
    .line 24
    new-array v5, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v6, "\u3010\u526f\u5c4f\u3011View \u5df2\u4ece\u526f\u5c4f\u79fb\u9664"

    .line 27
    .line 28
    aput-object v6, v5, v2

    .line 29
    .line 30
    invoke-virtual {v1, v0, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :goto_1
    iput-object v4, p0, Ll8/u;->g:Landroid/view/View;

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :goto_2
    :try_start_1
    sget-object v5, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    new-array v6, v6, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v7, "\u3010\u526f\u5c4f\u3011\u79fb\u9664 View \u5931\u8d25"

    .line 42
    .line 43
    aput-object v7, v6, v2

    .line 44
    .line 45
    aput-object v1, v6, v3

    .line 46
    .line 47
    invoke-virtual {v5, v0, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :goto_3
    iput-object v4, p0, Ll8/u;->g:Landroid/view/View;

    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_4
    return-void
.end method

.method public final b()V
    .locals 12

    .line 1
    const-string v0, "\u3010\u526f\u5c4f\u3011View \u5df2\u6210\u529f\u6dfb\u52a0\u5230\u526f\u5c4f displayId="

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "CarLife_Vehicle"

    .line 6
    .line 7
    iget-object v4, p0, Ll8/u;->e:Landroid/view/WindowManager;

    .line 8
    .line 9
    if-eqz v4, :cond_6

    .line 10
    .line 11
    iget-object v5, p0, Ll8/u;->f:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v6, p0, Ll8/u;->g:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v4, "\u3010\u526f\u5c4f\u3011\u5df2\u6709 View \u663e\u793a\uff0c\u8df3\u8fc7\u521b\u5efa"

    .line 26
    .line 27
    aput-object v4, v2, v1

    .line 28
    .line 29
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v8, 0x1a

    .line 38
    .line 39
    if-lt v7, v8, :cond_2

    .line 40
    .line 41
    const/16 v7, 0x7f6

    .line 42
    .line 43
    const/16 v9, 0x7f6

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/16 v7, 0x3e8

    .line 47
    .line 48
    const/16 v9, 0x3e8

    .line 49
    .line 50
    :goto_0
    const/16 v10, 0x8

    .line 51
    .line 52
    const/4 v11, -0x3

    .line 53
    const/4 v7, -0x1

    .line 54
    const/4 v8, -0x1

    .line 55
    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 56
    .line 57
    .line 58
    const v7, 0x800033

    .line 59
    .line 60
    .line 61
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 62
    .line 63
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    .line 65
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 66
    .line 67
    iget-object v7, p0, Ll8/u;->c:Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    .line 71
    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 72
    .line 73
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 74
    .line 75
    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    .line 77
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    .line 79
    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 80
    .line 81
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 82
    .line 83
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 84
    .line 85
    :try_start_0
    iget-object v7, p0, Ll8/u;->d:Lf9/n;

    .line 86
    .line 87
    if-eqz v7, :cond_3

    .line 88
    .line 89
    new-instance v7, Lr2/h1;

    .line 90
    .line 91
    invoke-direct {v7, v5}, Lr2/h1;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    new-instance v5, Ll8/m;

    .line 95
    .line 96
    invoke-direct {v5, v2}, Ll8/m;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v7, v5}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 100
    .line 101
    .line 102
    const v8, 0x7f0800c4

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Ll8/t;

    .line 109
    .line 110
    invoke-direct {v5, p0, v2}, Ll8/t;-><init>(Ll8/u;I)V

    .line 111
    .line 112
    .line 113
    new-instance v8, Ln1/c;

    .line 114
    .line 115
    const v9, 0x5db84d89

    .line 116
    .line 117
    .line 118
    invoke-direct {v8, v5, v9, v2}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v8}, Lr2/h1;->setContent(Lf9/n;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    iget-object v7, p0, Ll8/u;->b:Landroid/view/SurfaceView;

    .line 128
    .line 129
    if-eqz v7, :cond_4

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const/4 v7, 0x0

    .line 133
    :goto_1
    iput-object v7, p0, Ll8/u;->g:Landroid/view/View;

    .line 134
    .line 135
    if-eqz v7, :cond_5

    .line 136
    .line 137
    invoke-interface {v4, v7, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 141
    .line 142
    iget-object v5, p0, Ll8/u;->a:Landroid/view/Display;

    .line 143
    .line 144
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-array v5, v2, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v0, v5, v1

    .line 163
    .line 164
    invoke-virtual {v4, v3, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    :cond_5
    return-void

    .line 168
    :goto_2
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 169
    .line 170
    const/4 v5, 0x2

    .line 171
    new-array v5, v5, [Ljava/lang/Object;

    .line 172
    .line 173
    const-string v6, "\u3010\u526f\u5c4f\u3011\u6dfb\u52a0 View \u5230\u526f\u5c4f\u5931\u8d25"

    .line 174
    .line 175
    aput-object v6, v5, v1

    .line 176
    .line 177
    aput-object v0, v5, v2

    .line 178
    .line 179
    invoke-virtual {v4, v3, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_6
    :goto_3
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 184
    .line 185
    new-array v2, v2, [Ljava/lang/Object;

    .line 186
    .line 187
    const-string v4, "\u3010\u526f\u5c4f\u3011WindowManager \u6216 displayContext \u672a\u521d\u59cb\u5316\uff0c\u65e0\u6cd5\u663e\u793a"

    .line 188
    .line 189
    aput-object v4, v2, v1

    .line 190
    .line 191
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
