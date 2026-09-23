.class public final Lv7/f;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lv7/g;


# direct methods
.method public synthetic constructor <init>(Lv7/g;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv7/f;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7/f;->f:Lv7/g;

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
    iget v0, p0, Lv7/f;->e:I

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
    invoke-virtual {p0, p1, p2}, Lv7/f;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lv7/f;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lv7/f;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lv7/f;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lv7/f;

    .line 27
    .line 28
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lv7/f;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p1, p0, Lv7/f;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lv7/f;

    .line 7
    .line 8
    iget-object v0, p0, Lv7/f;->f:Lv7/g;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, v0, p2, v1}, Lv7/f;-><init>(Lv7/g;Lw8/c;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lv7/f;

    .line 16
    .line 17
    iget-object v0, p0, Lv7/f;->f:Lv7/g;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, p2, v1}, Lv7/f;-><init>(Lv7/g;Lw8/c;I)V

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
    .locals 12

    .line 1
    iget v0, p0, Lv7/f;->e:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lv7/f;->f:Lv7/g;

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
    iget p1, v3, Lv7/g;->a:I

    .line 16
    .line 17
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v3, Lv7/g;->h:Lv7/m;

    .line 23
    .line 24
    iget v5, v0, Lv7/m;->i:I

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 29
    .line 30
    :cond_0
    iget v5, v0, Lv7/m;->j:I

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    .line 36
    :cond_1
    iget v5, v0, Lv7/m;->k:I

    .line 37
    .line 38
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    .line 40
    iget v5, v0, Lv7/m;->l:I

    .line 41
    .line 42
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 43
    .line 44
    if-eqz p1, :cond_6

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
    const/4 v9, 0x0

    .line 75
    :goto_0
    if-ge v9, v6, :cond_3

    .line 76
    .line 77
    aget-object v10, v5, v9

    .line 78
    .line 79
    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-ne v11, p1, :cond_2

    .line 84
    .line 85
    move-object v6, v10

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move-object v6, v2

    .line 91
    :goto_1
    if-eqz v6, :cond_6

    .line 92
    .line 93
    iget p1, v0, Lv7/m;->h:I

    .line 94
    .line 95
    if-ne p1, v4, :cond_4

    .line 96
    .line 97
    iget-object p1, v3, Lv7/g;->c:Ll8/u;

    .line 98
    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    new-instance v5, Ll8/u;

    .line 102
    .line 103
    new-instance p1, Lv7/d;

    .line 104
    .line 105
    invoke-direct {p1, v3, v7}, Lv7/d;-><init>(Lv7/g;I)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Ln1/c;

    .line 109
    .line 110
    const v0, -0x39065010

    .line 111
    .line 112
    .line 113
    invoke-direct {v9, p1, v0, v4}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 114
    .line 115
    .line 116
    const/4 v10, 0x2

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-direct/range {v5 .. v10}, Ll8/u;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 119
    .line 120
    .line 121
    iput-object v5, v3, Lv7/g;->c:Ll8/u;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object p1, v3, Lv7/g;->d:Ll8/w;

    .line 125
    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    new-instance v5, Ll8/w;

    .line 129
    .line 130
    new-instance p1, Lv7/d;

    .line 131
    .line 132
    invoke-direct {p1, v3, v4}, Lv7/d;-><init>(Lv7/g;I)V

    .line 133
    .line 134
    .line 135
    new-instance v9, Ln1/c;

    .line 136
    .line 137
    const v0, -0x78d92c57

    .line 138
    .line 139
    .line 140
    invoke-direct {v9, p1, v0, v4}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 141
    .line 142
    .line 143
    const/4 v10, 0x2

    .line 144
    const/4 v7, 0x0

    .line 145
    invoke-direct/range {v5 .. v10}, Ll8/w;-><init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V

    .line 146
    .line 147
    .line 148
    iput-object v5, v3, Lv7/g;->d:Ll8/w;

    .line 149
    .line 150
    :cond_5
    :goto_2
    iget-object p1, v3, Lv7/g;->b:Lfc/c;

    .line 151
    .line 152
    new-instance v0, Lb8/g;

    .line 153
    .line 154
    const/16 v4, 0x13

    .line 155
    .line 156
    invoke-direct {v0, v3, v2, v4}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 157
    .line 158
    .line 159
    const/4 v3, 0x3

    .line 160
    invoke-static {p1, v2, v0, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 161
    .line 162
    .line 163
    :cond_6
    return-object v1

    .line 164
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, v3, Lv7/g;->h:Lv7/m;

    .line 168
    .line 169
    iget p1, p1, Lv7/m;->h:I

    .line 170
    .line 171
    if-ne p1, v4, :cond_8

    .line 172
    .line 173
    iget-object p1, v3, Lv7/g;->c:Ll8/u;

    .line 174
    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    invoke-virtual {p1}, Ll8/u;->a()V

    .line 178
    .line 179
    .line 180
    :cond_7
    iput-object v2, v3, Lv7/g;->c:Ll8/u;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    iget-object p1, v3, Lv7/g;->d:Ll8/w;

    .line 184
    .line 185
    if-eqz p1, :cond_a

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-ne p1, v4, :cond_a

    .line 192
    .line 193
    iget-object p1, v3, Lv7/g;->d:Ll8/w;

    .line 194
    .line 195
    if-eqz p1, :cond_9

    .line 196
    .line 197
    invoke-virtual {p1}, Ll8/w;->dismiss()V

    .line 198
    .line 199
    .line 200
    :cond_9
    iput-object v2, v3, Lv7/g;->d:Ll8/w;

    .line 201
    .line 202
    :cond_a
    :goto_3
    return-object v1

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
