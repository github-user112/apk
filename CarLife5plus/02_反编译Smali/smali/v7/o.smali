.class public final Lv7/o;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lv7/p;


# direct methods
.method public synthetic constructor <init>(Lv7/p;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv7/o;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7/o;->f:Lv7/p;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lv7/o;->e:I

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
    invoke-virtual {p0, p1, p2}, Lv7/o;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lv7/o;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lv7/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lv7/o;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lv7/o;

    .line 27
    .line 28
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lv7/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget p1, p0, Lv7/o;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lv7/o;

    .line 7
    .line 8
    iget-object v0, p0, Lv7/o;->f:Lv7/p;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, v0, p2, v1}, Lv7/o;-><init>(Lv7/p;Lw8/c;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lv7/o;

    .line 16
    .line 17
    iget-object v0, p0, Lv7/o;->f:Lv7/p;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, p2, v1}, Lv7/o;-><init>(Lv7/p;Lw8/c;I)V

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
    .locals 11

    .line 1
    iget v0, p0, Lv7/o;->e:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lv7/o;->f:Lv7/p;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget p1, v3, Lv7/p;->a:I

    .line 16
    .line 17
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v3, Lv7/p;->f:Lv7/m;

    .line 23
    .line 24
    iget v5, v0, Lv7/m;->c:I

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 29
    .line 30
    :cond_0
    iget v5, v0, Lv7/m;->d:I

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    .line 36
    :cond_1
    iget v5, v0, Lv7/m;->e:I

    .line 37
    .line 38
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    .line 40
    iget v5, v0, Lv7/m;->f:I

    .line 41
    .line 42
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "display"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    .line 57
    .line 58
    invoke-static {v5, v6}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "getDisplays(...)"

    .line 68
    .line 69
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    array-length v6, v5

    .line 73
    const/4 v7, 0x0

    .line 74
    :goto_0
    if-ge v7, v6, :cond_3

    .line 75
    .line 76
    aget-object v9, v5, v7

    .line 77
    .line 78
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-ne v10, p1, :cond_2

    .line 83
    .line 84
    move-object v6, v9

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move-object v6, v2

    .line 90
    :goto_1
    if-eqz v6, :cond_5

    .line 91
    .line 92
    iget p1, v0, Lv7/m;->b:I

    .line 93
    .line 94
    const-string v0, "context"

    .line 95
    .line 96
    if-ne p1, v4, :cond_4

    .line 97
    .line 98
    iget-object p1, v3, Lv7/p;->d:Ll8/u;

    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    new-instance v5, Ll8/u;

    .line 103
    .line 104
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v7, Landroid/view/SurfaceView;

    .line 112
    .line 113
    invoke-direct {v7, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v0, Ld7/d;

    .line 121
    .line 122
    invoke-direct {v0, v4, v3}, Ld7/d;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 126
    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    const/16 v10, 0x8

    .line 130
    .line 131
    invoke-direct/range {v5 .. v10}, Ll8/u;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ll8/u;->b()V

    .line 135
    .line 136
    .line 137
    iput-object v5, v3, Lv7/p;->d:Ll8/u;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    iget-object p1, v3, Lv7/p;->e:Ll8/w;

    .line 141
    .line 142
    if-nez p1, :cond_5

    .line 143
    .line 144
    new-instance v5, Ll8/w;

    .line 145
    .line 146
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v7, Landroid/view/SurfaceView;

    .line 154
    .line 155
    invoke-direct {v7, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v0, Ld7/d;

    .line 163
    .line 164
    invoke-direct {v0, v4, v3}, Ld7/d;-><init>(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 168
    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    const/16 v10, 0x8

    .line 172
    .line 173
    invoke-direct/range {v5 .. v10}, Ll8/w;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 177
    .line 178
    .line 179
    iput-object v5, v3, Lv7/p;->e:Ll8/w;

    .line 180
    .line 181
    :cond_5
    :goto_2
    return-object v1

    .line 182
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, v3, Lv7/p;->c:Lf8/b;

    .line 186
    .line 187
    invoke-virtual {p1}, Lf8/b;->g()V

    .line 188
    .line 189
    .line 190
    iget-object p1, v3, Lv7/p;->f:Lv7/m;

    .line 191
    .line 192
    iget p1, p1, Lv7/m;->b:I

    .line 193
    .line 194
    if-ne p1, v4, :cond_7

    .line 195
    .line 196
    iget-object p1, v3, Lv7/p;->d:Ll8/u;

    .line 197
    .line 198
    if-eqz p1, :cond_6

    .line 199
    .line 200
    invoke-virtual {p1}, Ll8/u;->a()V

    .line 201
    .line 202
    .line 203
    :cond_6
    iput-object v2, v3, Lv7/p;->d:Ll8/u;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    iget-object p1, v3, Lv7/p;->e:Ll8/w;

    .line 207
    .line 208
    if-eqz p1, :cond_9

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-ne p1, v4, :cond_9

    .line 215
    .line 216
    iget-object p1, v3, Lv7/p;->e:Ll8/w;

    .line 217
    .line 218
    if-eqz p1, :cond_8

    .line 219
    .line 220
    invoke-virtual {p1}, Ll8/w;->dismiss()V

    .line 221
    .line 222
    .line 223
    :cond_8
    iput-object v2, v3, Lv7/p;->e:Ll8/w;

    .line 224
    .line 225
    :cond_9
    :goto_3
    return-object v1

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
