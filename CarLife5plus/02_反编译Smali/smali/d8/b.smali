.class public final Ld8/b;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:Lf1/b1;

.field public final synthetic h:Lf1/b1;


# direct methods
.method public constructor <init>(Lf1/b1;Lf1/b1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld8/b;->e:I

    .line 1
    iput-object p1, p0, Ld8/b;->g:Lf1/b1;

    iput-object p2, p0, Ld8/b;->h:Lf1/b1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lf1/b1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld8/b;->e:I

    .line 2
    iput-object p1, p0, Ld8/b;->h:Lf1/b1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ld8/b;->e:I

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
    invoke-virtual {p0, p1, p2}, Ld8/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ld8/b;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ld8/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ld8/b;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ld8/b;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ld8/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    iget p1, p0, Ld8/b;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ld8/b;

    .line 7
    .line 8
    iget-object v0, p0, Ld8/b;->g:Lf1/b1;

    .line 9
    .line 10
    iget-object v1, p0, Ld8/b;->h:Lf1/b1;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1, p2}, Ld8/b;-><init>(Lf1/b1;Lf1/b1;Lw8/c;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance p1, Ld8/b;

    .line 17
    .line 18
    iget-object v0, p0, Ld8/b;->h:Lf1/b1;

    .line 19
    .line 20
    invoke-direct {p1, v0, p2}, Ld8/b;-><init>(Lf1/b1;Lw8/c;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Ld8/b;->e:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Ld8/b;->h:Lf1/b1;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ld8/b;->g:Lf1/b1;

    .line 16
    .line 17
    iget v6, p0, Ld8/b;->f:I

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    if-ne v6, v5, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ls7/h;

    .line 41
    .line 42
    iget-boolean p1, p1, Ls7/h;->a:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iput v5, p0, Ld8/b;->f:I

    .line 47
    .line 48
    const-wide/16 v6, 0x3e8

    .line 49
    .line 50
    invoke-static {v6, v7, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v4, :cond_2

    .line 55
    .line 56
    move-object v1, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ls7/h;

    .line 63
    .line 64
    iget-object p1, p1, Ls7/h;->g:Ljava/lang/String;

    .line 65
    .line 66
    sget-object v3, Ls7/g;->c:Ls7/f;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ls7/f;->a(Ljava/lang/String;)Lr8/j;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {v2, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    :goto_2
    return-object v1

    .line 80
    :pswitch_0
    iget v0, p0, Ld8/b;->f:I

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    if-ne v0, v5, :cond_4

    .line 85
    .line 86
    iget-object v2, p0, Ld8/b;->g:Lf1/b1;

    .line 87
    .line 88
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_5
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Ll8/g;->a:Lr8/o;

    .line 103
    .line 104
    iput-object v2, p0, Ld8/b;->g:Lf1/b1;

    .line 105
    .line 106
    iput v5, p0, Ld8/b;->f:I

    .line 107
    .line 108
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 113
    .line 114
    invoke-static {p1, v0}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    invoke-static {}, Ll8/g;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_5

    .line 125
    :cond_6
    new-instance p1, Lac/i;

    .line 126
    .line 127
    invoke-static {p0}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-direct {p1, v5, v0}, Lac/i;-><init>(ILw8/c;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lac/i;->q()V

    .line 135
    .line 136
    .line 137
    :try_start_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v3, "wifip2p"

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    instance-of v3, v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    move-object v0, v5

    .line 156
    :goto_3
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v0, v3, v6, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    .line 176
    const/16 v6, 0x1f

    .line 177
    .line 178
    if-lt v3, v6, :cond_9

    .line 179
    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    if-eqz v5, :cond_9

    .line 183
    .line 184
    new-instance v3, Ll8/f;

    .line 185
    .line 186
    invoke-direct {v3, p1}, Ll8/f;-><init>(Lac/i;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v5, v3}, Lk2/n;->k(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_9
    invoke-static {}, Ll8/g;->b()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lac/i;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catch_0
    invoke-static {}, Ll8/g;->b()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :goto_4
    invoke-virtual {p1}, Lac/i;->p()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :goto_5
    if-ne p1, v4, :cond_a

    .line 213
    .line 214
    move-object v1, v4

    .line 215
    goto :goto_7

    .line 216
    :cond_a
    :goto_6
    check-cast p1, Ljava/lang/String;

    .line 217
    .line 218
    invoke-interface {v2, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :goto_7
    return-object v1

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
