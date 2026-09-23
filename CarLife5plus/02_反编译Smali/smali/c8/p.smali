.class public final Lc8/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/h0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/p;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lc8/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/w0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lw0/w0;->j()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lw0/w0;->i:Lf1/k1;

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lv/s0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lv/s0;->g()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ls0/c;

    .line 37
    .line 38
    iget-object v0, v0, Ls0/c;->c:Lf1/k1;

    .line 39
    .line 40
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ls0/b;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ls0/b;->close()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :pswitch_2
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lr3/v;

    .line 55
    .line 56
    iget-object v1, v0, Lr2/a;->c:Lr2/f3;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lr2/f3;->h()V

    .line 61
    .line 62
    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    iput-object v1, v0, Lr2/a;->c:Lr2/f3;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lr3/v;->n:Landroid/view/WindowManager;

    .line 73
    .line 74
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_3
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lr3/t;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lr3/t;->g:Lr3/r;

    .line 86
    .line 87
    iget-object v1, v0, Lr2/a;->c:Lr2/f3;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v1}, Lr2/f3;->h()V

    .line 92
    .line 93
    .line 94
    :cond_2
    const/4 v1, 0x0

    .line 95
    iput-object v1, v0, Lr2/a;->c:Lr2/f3;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_4
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lr2/l1;

    .line 104
    .line 105
    iget-object v0, v0, Lr2/l1;->b:Lr2/m1;

    .line 106
    .line 107
    invoke-virtual {v0}, Lr2/m1;->invoke()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_5
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lq0/f;

    .line 114
    .line 115
    iget-object v1, v0, Lq0/f;->e:Lp1/u;

    .line 116
    .line 117
    iget-object v2, v1, Lp1/u;->h:Lg4/e;

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2}, Lg4/e;->a()V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {v1}, Lp1/u;->a()V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 128
    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 132
    .line 133
    .line 134
    :cond_4
    const/4 v1, 0x0

    .line 135
    iput-object v1, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_6
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Ll5/l;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Ll5/l;->j:Ldc/l0;

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Ldc/l0;->h(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_7
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lw0/r1;

    .line 155
    .line 156
    invoke-virtual {v0}, Lw0/r1;->n()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_8
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lh0/c0;

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    iput-boolean v1, v0, Lh0/c0;->f:Z

    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_9
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lh0/h0;

    .line 171
    .line 172
    iget-object v1, v0, Lh0/h0;->c:Lf1/t0;

    .line 173
    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    iput-boolean v2, v1, Lf1/t0;->a:Z

    .line 178
    .line 179
    :cond_5
    const/4 v1, 0x0

    .line 180
    iput-object v1, v0, Lh0/h0;->c:Lf1/t0;

    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_a
    iget-object v0, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Lh0/s;

    .line 186
    .line 187
    const/4 v1, 0x0

    .line 188
    iput-object v1, v0, Lh0/s;->d:Ln1/c;

    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_b
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, Lc8/z0;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_c
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v1, p0, Lc8/p;->b:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Lc8/q;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
