.class public final Lq6/a;
.super Ld6/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq6/a;->c:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ld6/f;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Ld6/f;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;ILkb/a;)V
    .locals 3

    .line 1
    iget v0, p0, Lq6/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Ls6/b;

    .line 10
    .line 11
    invoke-direct {v1}, Ls6/b;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ls6/c;

    .line 16
    .line 17
    invoke-direct {v1}, Ls6/c;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    const v2, 0xffff

    .line 21
    .line 22
    .line 23
    if-ne p2, v0, :cond_1

    .line 24
    .line 25
    :try_start_0
    iget-object p2, p0, Ld6/f;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Landroid/app/Activity;

    .line 28
    .line 29
    check-cast p2, Lp4/n;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    nop

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    const/16 v2, 0xff

    .line 38
    .line 39
    :cond_1
    :goto_1
    invoke-static {v2}, Lt6/c;->a(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-static {p2, p1}, Ld6/f;->g(ILjava/util/List;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v1, p1}, Lp6/b;->setArguments(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v0}, Lp6/b;->setRetainInstance(Z)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lp6/a;->f()Lo6/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-boolean v0, p1, Lo6/a;->b:Z

    .line 58
    .line 59
    invoke-interface {v1}, Lp6/a;->f()Lo6/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p3, p1, Lo6/a;->f:Lkb/a;

    .line 64
    .line 65
    iget-object p1, p0, Ld6/f;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lp4/x;

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    new-instance p2, Lp4/a;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Lp4/a;-><init>(Lp4/x;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lp4/k;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 p3, 0x0

    .line 82
    invoke-virtual {p2, p3, v1, p1}, Lp4/a;->d(ILp4/k;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lp4/a;->c()V

    .line 86
    .line 87
    .line 88
    :goto_2
    return-void

    .line 89
    :pswitch_0
    const/4 v0, 0x1

    .line 90
    if-ne p2, v0, :cond_3

    .line 91
    .line 92
    new-instance p2, Lr6/b;

    .line 93
    .line 94
    invoke-direct {p2}, Lr6/b;-><init>()V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    new-instance p2, Lr6/c;

    .line 99
    .line 100
    invoke-direct {p2}, Lr6/c;-><init>()V

    .line 101
    .line 102
    .line 103
    :goto_3
    const v1, 0xffff

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lt6/c;->a(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1, p1}, Ld6/f;->g(ILjava/util/List;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p2, p1}, Lp6/b;->setArguments(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, v0}, Lp6/b;->setRetainInstance(Z)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p2}, Lp6/a;->f()Lo6/a;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-boolean v0, p1, Lo6/a;->b:Z

    .line 125
    .line 126
    invoke-interface {p2}, Lp6/a;->f()Lo6/a;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p3, p1, Lo6/a;->f:Lkb/a;

    .line 131
    .line 132
    iget-object p1, p0, Ld6/f;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Landroid/app/FragmentManager;

    .line 135
    .line 136
    if-nez p1, :cond_4

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p1, p2, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 152
    .line 153
    .line 154
    :goto_4
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
