.class public final Lo6/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Iterator;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ld6/f;

.field public final synthetic d:Lib/d;

.field public final synthetic e:Lb3/q;


# direct methods
.method public constructor <init>(Lb3/q;Ljava/util/Iterator;Landroid/app/Activity;Ld6/f;Lib/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo6/e;->e:Lb3/q;

    .line 5
    .line 6
    iput-object p2, p0, Lo6/e;->a:Ljava/util/Iterator;

    .line 7
    .line 8
    iput-object p3, p0, Lo6/e;->b:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lo6/e;->c:Ld6/f;

    .line 11
    .line 12
    iput-object p5, p0, Lo6/e;->d:Lib/d;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :cond_0
    :goto_1
    iget-object v2, p0, Lo6/e;->a:Ljava/util/Iterator;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v4, p0, Lo6/e;->b:Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v4, v1}, Lc7/a;->K(Landroid/content/Context;Ljava/util/List;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v8, v1

    .line 36
    if-eqz v8, :cond_3

    .line 37
    .line 38
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    :cond_3
    move-object v6, p0

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_4
    const/4 v0, 0x0

    .line 48
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ly6/a;

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ly6/a;->s(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_8

    .line 59
    .line 60
    invoke-virtual {v1}, Ly6/a;->g()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x1

    .line 65
    if-eqz v1, :cond_7

    .line 66
    .line 67
    check-cast v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_7

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/4 v3, 0x0

    .line 80
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ly6/a;

    .line 91
    .line 92
    invoke-virtual {v5, v4, v2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const/4 v3, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    move v2, v3

    .line 102
    :cond_7
    if-nez v2, :cond_8

    .line 103
    .line 104
    invoke-virtual {p0}, Lo6/e;->run()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_a

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ly6/a;

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Ly6/a;->p(Landroid/content/Context;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_9

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_9
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_3

    .line 136
    :cond_a
    iget-object v10, p0, Lo6/e;->d:Lib/d;

    .line 137
    .line 138
    iget-object v9, p0, Lo6/e;->c:Ld6/f;

    .line 139
    .line 140
    if-nez v0, :cond_b

    .line 141
    .line 142
    invoke-static {v4, v8, v9, v10, p0}, Lb3/q;->q(Landroid/app/Activity;Ljava/util/List;Ld6/f;Lib/d;Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_b
    new-instance v5, Ll0/m;

    .line 147
    .line 148
    const/4 v11, 0x1

    .line 149
    iget-object v7, p0, Lo6/e;->b:Landroid/app/Activity;

    .line 150
    .line 151
    move-object v6, p0

    .line 152
    invoke-direct/range {v5 .. v11}, Ll0/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    int-to-long v0, v0

    .line 156
    sget-object v2, Lc7/b;->a:Landroid/os/Handler;

    .line 157
    .line 158
    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_4
    new-instance v0, Landroidx/lifecycle/z;

    .line 163
    .line 164
    const/16 v1, 0x13

    .line 165
    .line 166
    iget-object v2, v6, Lo6/e;->e:Lb3/q;

    .line 167
    .line 168
    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const-wide/16 v1, 0x64

    .line 172
    .line 173
    sget-object v3, Lc7/b;->a:Landroid/os/Handler;

    .line 174
    .line 175
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .line 177
    .line 178
    return-void
.end method
