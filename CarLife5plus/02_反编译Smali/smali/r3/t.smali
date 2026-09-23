.class public final Lr3/t;
.super Lc/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lf9/a;

.field public e:Lr3/s;

.field public final f:Landroid/view/View;

.field public final g:Lr3/r;

.field public h:Z


# direct methods
.method public constructor <init>(Lf9/a;Lr3/s;Landroid/view/View;Ln3/m;Ln3/c;Ljava/util/UUID;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p2, Lr3/s;->e:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const v2, 0x7f0f00a1

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x7f0f00a4

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Lc/q;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lr3/t;->d:Lf9/a;

    .line 26
    .line 27
    iput-object p2, p0, Lr3/t;->e:Lr3/s;

    .line 28
    .line 29
    iput-object p3, p0, Lr3/t;->f:Landroid/view/View;

    .line 30
    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_6

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    .line 43
    .line 44
    const v0, 0x106000d

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lr3/t;->e:Lr3/s;

    .line 51
    .line 52
    iget-boolean v0, v0, Lr3/s;->e:Z

    .line 53
    .line 54
    invoke-static {p2, v0}, Li2/c;->K(Landroid/view/Window;Z)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x11

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lr3/t;->e:Lr3/s;

    .line 63
    .line 64
    iget-boolean v0, v0, Lr3/s;->e:Z

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    const v0, 0x10100

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v3, 0x1c

    .line 81
    .line 82
    if-lt v2, v3, :cond_1

    .line 83
    .line 84
    sget-object v3, Lr3/m;->a:Lr3/m;

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Lr3/m;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    const/16 v3, 0x1e

    .line 90
    .line 91
    if-lt v2, v3, :cond_2

    .line 92
    .line 93
    sget-object v2, Lr3/n;->a:Lr3/n;

    .line 94
    .line 95
    invoke-virtual {v2, v0, v1}, Lr3/n;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0, v1}, Lr3/n;->b(Landroid/view/WindowManager$LayoutParams;I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    new-instance v0, Lr3/r;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v0, v2, p2}, Lr3/r;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lr3/t;->e:Lr3/s;

    .line 114
    .line 115
    iget-object v2, v2, Lr3/s;->f:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v3, "Dialog:"

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p6

    .line 134
    const v2, 0x7f08004c

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p5, p1}, Ln3/c;->S(F)F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lb2/m;

    .line 151
    .line 152
    const/4 p5, 0x2

    .line 153
    invoke-direct {p1, p5}, Lb2/m;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lr3/t;->g:Lr3/r;

    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 166
    .line 167
    if-eqz p2, :cond_4

    .line 168
    .line 169
    check-cast p1, Landroid/view/ViewGroup;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    const/4 p1, 0x0

    .line 173
    :goto_1
    if-eqz p1, :cond_5

    .line 174
    .line 175
    invoke-static {p1}, Lr3/t;->c(Landroid/view/ViewGroup;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {p0, v0}, Lc/q;->setContentView(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p3}, Landroidx/lifecycle/i0;->e(Landroid/view/View;)Landroidx/lifecycle/t;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p3}, Landroidx/lifecycle/i0;->f(Landroid/view/View;)Landroidx/lifecycle/s0;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const p2, 0x7f0800c5

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-static {p3}, La/a;->r(Landroid/view/View;)La5/g;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const p2, 0x7f0800c4

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lr3/t;->d:Lf9/a;

    .line 209
    .line 210
    iget-object p2, p0, Lr3/t;->e:Lr3/s;

    .line 211
    .line 212
    invoke-virtual {p0, p1, p2, p4}, Lr3/t;->e(Lf9/a;Lr3/s;Ln3/m;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lc/q;->c:Lc/m0;

    .line 216
    .line 217
    new-instance p2, Lr3/a;

    .line 218
    .line 219
    const/4 p3, 0x1

    .line 220
    invoke-direct {p2, p0, p3}, Lr3/a;-><init>(Lr3/t;I)V

    .line 221
    .line 222
    .line 223
    const-string p3, "<this>"

    .line 224
    .line 225
    invoke-static {p1, p3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance p3, Lc/n0;

    .line 229
    .line 230
    invoke-direct {p3, p2}, Lc/n0;-><init>(Lr3/a;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p0, p3}, Lc/m0;->a(Landroidx/lifecycle/t;Lc/n0;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 238
    .line 239
    const-string p2, "Dialog has no window"

    .line 240
    .line 241
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1
.end method

.method public static final c(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    .line 4
    .line 5
    instance-of v1, p0, Lr3/r;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    if-ge v0, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_1
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Lr3/t;->c(Landroid/view/ViewGroup;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Lf9/a;Lr3/s;Ln3/m;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lr3/t;->d:Lf9/a;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/t;->e:Lr3/s;

    .line 4
    .line 5
    iget-object p1, p2, Lr3/s;->c:Lr3/a0;

    .line 6
    .line 7
    iget-object v0, p0, Lr3/t;->f:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, Lr3/l;->b(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lac/p;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x2000

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const/16 v0, 0x2000

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/16 v0, -0x2001

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setFlags(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    if-ne p1, v2, :cond_4

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    new-instance p1, Lac/p;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_5
    const/4 p1, 0x0

    .line 71
    :goto_2
    iget-object p3, p0, Lr3/t;->g:Lr3/r;

    .line 72
    .line 73
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 74
    .line 75
    .line 76
    iget-boolean p1, p2, Lr3/s;->e:Z

    .line 77
    .line 78
    iget-boolean v0, p2, Lr3/s;->d:Z

    .line 79
    .line 80
    iget-object v3, p3, Lr3/r;->i:Landroid/view/Window;

    .line 81
    .line 82
    iget-boolean v4, p3, Lr3/r;->m:Z

    .line 83
    .line 84
    if-eqz v4, :cond_7

    .line 85
    .line 86
    iget-boolean v4, p3, Lr3/r;->k:Z

    .line 87
    .line 88
    if-ne v0, v4, :cond_7

    .line 89
    .line 90
    iget-boolean v4, p3, Lr3/r;->l:Z

    .line 91
    .line 92
    if-eq p1, v4, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/4 v4, 0x0

    .line 96
    goto :goto_4

    .line 97
    :cond_7
    :goto_3
    const/4 v4, 0x1

    .line 98
    :goto_4
    iput-boolean v0, p3, Lr3/r;->k:Z

    .line 99
    .line 100
    iput-boolean p1, p3, Lr3/r;->l:Z

    .line 101
    .line 102
    if-eqz v4, :cond_a

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/4 v5, -0x2

    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    const/4 v0, -0x2

    .line 112
    goto :goto_5

    .line 113
    :cond_8
    const/4 v0, -0x1

    .line 114
    :goto_5
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    .line 116
    if-ne v0, v4, :cond_9

    .line 117
    .line 118
    iget-boolean v4, p3, Lr3/r;->m:Z

    .line 119
    .line 120
    if-nez v4, :cond_a

    .line 121
    .line 122
    :cond_9
    invoke-virtual {v3, v0, v5}, Landroid/view/Window;->setLayout(II)V

    .line 123
    .line 124
    .line 125
    iput-boolean v2, p3, Lr3/r;->m:Z

    .line 126
    .line 127
    :cond_a
    iget-boolean p2, p2, Lr3/s;->b:Z

    .line 128
    .line 129
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_d

    .line 137
    .line 138
    if-eqz p1, :cond_b

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 p3, 0x1f

    .line 144
    .line 145
    if-ge p1, p3, :cond_c

    .line 146
    .line 147
    const/16 v1, 0x10

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_c
    const/16 v1, 0x30

    .line 151
    .line 152
    :goto_6
    invoke-virtual {p2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    .line 154
    .line 155
    :cond_d
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/t;->e:Lr3/s;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr3/s;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x6f

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lr3/t;->d:Lf9/a;

    .line 24
    .line 25
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lr3/t;->e:Lr3/s;

    .line 6
    .line 7
    iget-boolean v1, v1, Lr3/s;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-object v1, p0, Lr3/t;->g:Lr3/r;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_1

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    add-int/2addr v7, v6

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    add-int/2addr v6, v7

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    add-int/2addr v8, v1

    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/2addr v1, v8

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-static {v5}, Li9/a;->N(F)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-gt v7, v5, :cond_1

    .line 95
    .line 96
    if-gt v5, v6, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Li9/a;->N(F)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-gt v8, v5, :cond_1

    .line 107
    .line 108
    if-gt v5, v1, :cond_1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    if-eq p1, v4, :cond_3

    .line 118
    .line 119
    if-eq p1, v2, :cond_2

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    iput-boolean v3, p0, Lr3/t;->h:Z

    .line 123
    .line 124
    return v0

    .line 125
    :cond_3
    iget-boolean p1, p0, Lr3/t;->h:Z

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Lr3/t;->d:Lf9/a;

    .line 130
    .line 131
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iput-boolean v3, p0, Lr3/t;->h:Z

    .line 135
    .line 136
    return v4

    .line 137
    :cond_4
    iput-boolean v4, p0, Lr3/t;->h:Z

    .line 138
    .line 139
    return v4

    .line 140
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_7

    .line 145
    .line 146
    if-eq p1, v4, :cond_7

    .line 147
    .line 148
    if-eq p1, v2, :cond_7

    .line 149
    .line 150
    :cond_6
    :goto_2
    return v0

    .line 151
    :cond_7
    iput-boolean v3, p0, Lr3/t;->h:Z

    .line 152
    .line 153
    return v0
.end method
