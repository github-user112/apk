.class public final Lx7/c;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lf1/b1;Lw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lx7/c;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lx7/c;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p2, p0, Lx7/c;->g:Lf1/b1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lx7/c;->e:I

    .line 2
    .line 3
    check-cast p1, Lac/w;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lx7/c;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lx7/c;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lx7/c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lx7/c;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lx7/c;

    .line 27
    .line 28
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lx7/c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget p1, p0, Lx7/c;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lx7/c;

    .line 7
    .line 8
    iget-object v0, p0, Lx7/c;->g:Lf1/b1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Lx7/c;->f:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-direct {p1, v2, v0, p2, v1}, Lx7/c;-><init>(Landroid/app/Activity;Lf1/b1;Lw8/c;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lx7/c;

    .line 18
    .line 19
    iget-object v0, p0, Lx7/c;->g:Lf1/b1;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lx7/c;->f:Landroid/app/Activity;

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, p2, v1}, Lx7/c;-><init>(Landroid/app/Activity;Lf1/b1;Lw8/c;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lx7/c;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lx7/c;->g:Lf1/b1;

    .line 4
    .line 5
    iget-object v2, p0, Lx7/c;->f:Landroid/app/Activity;

    .line 6
    .line 7
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lx7/j;

    .line 20
    .line 21
    iget-boolean p1, p1, Lx7/j;->i:Z

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 v0, 0x80e

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lx7/j;

    .line 48
    .line 49
    invoke-static {v2, p1}, Lx7/k;->b(Landroid/app/Activity;Lx7/j;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-object v3

    .line 53
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lx7/j;

    .line 63
    .line 64
    iget-boolean p1, p1, Lx7/j;->j:Z

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x1

    .line 75
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v4, "splitState"

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    const/4 v2, 0x0

    .line 90
    :goto_1
    if-eqz v2, :cond_2

    .line 91
    .line 92
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    move-object p1, v3

    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    invoke-static {p1}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_2
    invoke-static {p1}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v2, "\u3010\u7cfb\u7edf\u8fb9\u680f\u3011\u8bbe\u7f6esplitState\u5931\u8d25: "

    .line 119
    .line 120
    invoke-static {v2, p1}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    aput-object p1, v1, v2

    .line 128
    .line 129
    const-string p1, "ScreenFeature"

    .line 130
    .line 131
    invoke-virtual {v0, p1, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    return-object v3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
