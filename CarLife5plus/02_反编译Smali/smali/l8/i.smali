.class public final synthetic Ll8/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Ln1/c;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(IIIIILjava/lang/String;Ln1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Ll8/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p1, p0, Ll8/i;->b:I

    .line 7
    .line 8
    iput-object p7, p0, Ll8/i;->c:Ln1/c;

    .line 9
    .line 10
    iput p2, p0, Ll8/i;->d:I

    .line 11
    .line 12
    iput p3, p0, Ll8/i;->e:I

    .line 13
    .line 14
    iput p4, p0, Ll8/i;->f:I

    .line 15
    .line 16
    iput p5, p0, Ll8/i;->g:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    new-instance v1, Lr2/h1;

    .line 2
    .line 3
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Lr2/h1;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ll8/m;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v2}, Ll8/m;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 17
    .line 18
    .line 19
    const v3, 0x7f0800c4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ll8/l;

    .line 26
    .line 27
    iget-object v3, p0, Ll8/i;->c:Ln1/c;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v0, v3, v4}, Ll8/l;-><init>(Ln1/c;I)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ln1/c;

    .line 34
    .line 35
    const v5, 0x2e1b450d

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v0, v5, v4}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lr2/h1;->setContent(Lf9/n;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Ll8/i;->b:I

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Ll8/n;->a:Lr8/o;

    .line 50
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v3, 0x1a

    .line 54
    .line 55
    if-lt v0, v3, :cond_0

    .line 56
    .line 57
    const/16 v0, 0x7f6

    .line 58
    .line 59
    const/16 v8, 0x7f6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/16 v0, 0x7d2

    .line 63
    .line 64
    const/16 v8, 0x7d2

    .line 65
    .line 66
    :goto_0
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    const/4 v7, -0x2

    .line 69
    const/4 v10, -0x3

    .line 70
    const/4 v6, -0x2

    .line 71
    const/16 v9, 0x228

    .line 72
    .line 73
    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 74
    .line 75
    .line 76
    const v0, 0x800033

    .line 77
    .line 78
    .line 79
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    .line 81
    iget v0, p0, Ll8/i;->d:I

    .line 82
    .line 83
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    .line 85
    iget v0, p0, Ll8/i;->e:I

    .line 86
    .line 87
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    .line 89
    iget v0, p0, Ll8/i;->f:I

    .line 90
    .line 91
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 92
    .line 93
    iget v0, p0, Ll8/i;->g:I

    .line 94
    .line 95
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    .line 97
    :try_start_0
    sget-object v0, Ll8/n;->a:Lr8/o;

    .line 98
    .line 99
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/view/WindowManager;

    .line 104
    .line 105
    invoke-interface {v0, v1, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v7, "\u3010\u60ac\u6d6e\u6a21\u5757\u3011addView\u5931\u8d25: "

    .line 117
    .line 118
    invoke-static {v7, v6}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const/4 v7, 0x2

    .line 123
    new-array v7, v7, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v6, v7, v2

    .line 126
    .line 127
    aput-object v0, v7, v4

    .line 128
    .line 129
    const-string v0, "CarLife_Vehicle"

    .line 130
    .line 131
    invoke-virtual {v3, v0, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    sget-object v0, Ll8/n;->c:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    iget-object v2, p0, Ll8/i;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    sget-object v0, Ll8/n;->b:Ljava/util/LinkedHashMap;

    .line 142
    .line 143
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return-void
.end method
