.class public final Lr3/v;
.super Lr2/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final A:[I

.field public i:Lf9/a;

.field public j:Lr3/z;

.field public k:Ljava/lang/String;

.field public final l:Landroid/view/View;

.field public final m:Lr3/x;

.field public final n:Landroid/view/WindowManager;

.field public final o:Landroid/view/WindowManager$LayoutParams;

.field public p:Lr3/y;

.field public q:Ln3/m;

.field public final r:Lf1/k1;

.field public final s:Lf1/k1;

.field public t:Ln3/k;

.field public final u:Lf1/f0;

.field public final v:Landroid/graphics/Rect;

.field public final w:Lp1/u;

.field public x:Lc/h0;

.field public final y:Lf1/k1;

.field public z:Z


# direct methods
.method public constructor <init>(Lf9/a;Lr3/z;Ljava/lang/String;Landroid/view/View;Ln3/c;Lr3/y;Ljava/util/UUID;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lr3/w;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lr3/x;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1}, Lr2/a;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lr3/v;->i:Lf9/a;

    .line 26
    .line 27
    iput-object p2, p0, Lr3/v;->j:Lr3/z;

    .line 28
    .line 29
    iput-object p3, p0, Lr3/v;->k:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p4, p0, Lr3/v;->l:Landroid/view/View;

    .line 32
    .line 33
    iput-object v0, p0, Lr3/v;->m:Lr3/x;

    .line 34
    .line 35
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "window"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    .line 46
    .line 47
    invoke-static {p1, p2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Landroid/view/WindowManager;

    .line 51
    .line 52
    iput-object p1, p0, Lr3/v;->n:Landroid/view/WindowManager;

    .line 53
    .line 54
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 57
    .line 58
    .line 59
    const p2, 0x800033

    .line 60
    .line 61
    .line 62
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    .line 64
    iget-object p2, p0, Lr3/v;->j:Lr3/z;

    .line 65
    .line 66
    invoke-static {p4}, Lr3/l;->b(Landroid/view/View;)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    iget-boolean v0, p2, Lr3/z;->b:Z

    .line 71
    .line 72
    iget p2, p2, Lr3/z;->a:I

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    if-eqz p3, :cond_1

    .line 77
    .line 78
    or-int/lit16 p2, p2, 0x2000

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    if-eqz v0, :cond_2

    .line 82
    .line 83
    if-nez p3, :cond_2

    .line 84
    .line 85
    and-int/lit16 p2, p2, -0x2001

    .line 86
    .line 87
    :cond_2
    :goto_1
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    .line 89
    const/16 p2, 0x3ea

    .line 90
    .line 91
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 92
    .line 93
    invoke-virtual {p4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 98
    .line 99
    const/4 p2, -0x2

    .line 100
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 101
    .line 102
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    .line 104
    const/4 p2, -0x3

    .line 105
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 106
    .line 107
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const p3, 0x7f0e002a

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lr3/v;->o:Landroid/view/WindowManager$LayoutParams;

    .line 126
    .line 127
    iput-object p6, p0, Lr3/v;->p:Lr3/y;

    .line 128
    .line 129
    sget-object p1, Ln3/m;->a:Ln3/m;

    .line 130
    .line 131
    iput-object p1, p0, Lr3/v;->q:Ln3/m;

    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iput-object p2, p0, Lr3/v;->r:Lf1/k1;

    .line 139
    .line 140
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lr3/v;->s:Lf1/k1;

    .line 145
    .line 146
    new-instance p1, Lb1/a;

    .line 147
    .line 148
    const/16 p2, 0x10

    .line 149
    .line 150
    invoke-direct {p1, p2, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lr3/v;->u:Lf1/f0;

    .line 158
    .line 159
    const/16 p1, 0x8

    .line 160
    .line 161
    int-to-float p1, p1

    .line 162
    new-instance p2, Landroid/graphics/Rect;

    .line 163
    .line 164
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object p2, p0, Lr3/v;->v:Landroid/graphics/Rect;

    .line 168
    .line 169
    new-instance p2, Lp1/u;

    .line 170
    .line 171
    new-instance p3, Lr3/j;

    .line 172
    .line 173
    const/4 p6, 0x2

    .line 174
    invoke-direct {p3, p0, p6}, Lr3/j;-><init>(Lr3/v;I)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p2, p3}, Lp1/u;-><init>(Lf9/k;)V

    .line 178
    .line 179
    .line 180
    iput-object p2, p0, Lr3/v;->w:Lp1/u;

    .line 181
    .line 182
    const p2, 0x1020002

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 186
    .line 187
    .line 188
    invoke-static {p4}, Landroidx/lifecycle/i0;->e(Landroid/view/View;)Landroidx/lifecycle/t;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {p0, p2}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p4}, Landroidx/lifecycle/i0;->f(Landroid/view/View;)Landroidx/lifecycle/s0;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    const p3, 0x7f0800c5

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p4}, La/a;->r(Landroid/view/View;)La5/g;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    const p3, 0x7f0800c4

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string p3, "Popup:"

    .line 218
    .line 219
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    const p3, 0x7f08004c

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const/4 p2, 0x0

    .line 236
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p5, p1}, Ln3/c;->S(F)F

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 244
    .line 245
    .line 246
    new-instance p1, Lb2/m;

    .line 247
    .line 248
    const/4 p2, 0x3

    .line 249
    invoke-direct {p1, p2}, Lb2/m;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 253
    .line 254
    .line 255
    sget-object p1, Lr3/q;->a:Ln1/c;

    .line 256
    .line 257
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iput-object p1, p0, Lr3/v;->y:Lf1/k1;

    .line 262
    .line 263
    const/4 p1, 0x2

    .line 264
    new-array p1, p1, [I

    .line 265
    .line 266
    iput-object p1, p0, Lr3/v;->A:[I

    .line 267
    .line 268
    return-void
.end method

.method private final getContent()Lf9/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/n;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/v;->y:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf9/n;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getParams$ui_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getParentLayoutCoordinates()Lo2/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->s:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo2/w;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getVisibleDisplayBounds()Ln3/k;
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/v;->m:Lr3/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr3/v;->l:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lr3/v;->v:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ln3/k;

    .line 14
    .line 15
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    invoke-direct {v0, v2, v3, v4, v1}, Ln3/k;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static final synthetic h(Lr3/v;)Lo2/w;
    .locals 0

    .line 1
    invoke-direct {p0}, Lr3/v;->getParentLayoutCoordinates()Lo2/w;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final setContent(Lf9/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/n;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/v;->y:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setParentLayoutCoordinates(Lo2/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->s:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILf1/s;)V
    .locals 5

    .line 1
    const v0, -0x331e2520

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    :goto_0
    or-int/2addr v0, p1

    .line 18
    and-int/lit8 v2, v0, 0x3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v2, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_1
    and-int/2addr v0, v4

    .line 28
    invoke-virtual {p2, v0, v1}, Lf1/s;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Lr3/v;->getContent()Lf9/n;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, p2, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 47
    .line 48
    .line 49
    :goto_2
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    new-instance v0, Lc1/n;

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    invoke-direct {v0, p0, p1, v1}, Lc1/n;-><init>(Lr2/a;II)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/v;->j:Lr3/z;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr3/z;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x6f

    .line 24
    .line 25
    if-ne v0, v1, :cond_5

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v1, v2, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    iget-object p1, p0, Lr3/v;->i:Lf9/a;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_4
    return v2

    .line 81
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method public final e(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lr2/a;->e(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    iget-object p2, p1, Lr3/v;->j:Lr3/z;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iget-object p4, p1, Lr3/v;->o:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    iput p3, p4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 31
    .line 32
    iget-object p2, p1, Lr3/v;->m:Lr3/x;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p2, p1, Lr3/v;->n:Landroid/view/WindowManager;

    .line 38
    .line 39
    invoke-interface {p2, p0, p4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final f(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lr3/v;->j:Lr3/z;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lr3/v;->getVisibleDisplayBounds()Ln3/k;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p2, p1, Ln3/k;->c:I

    .line 11
    .line 12
    iget v0, p1, Ln3/k;->a:I

    .line 13
    .line 14
    sub-int/2addr p2, v0

    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget v1, p1, Ln3/k;->d:I

    .line 22
    .line 23
    iget p1, p1, Ln3/k;->b:I

    .line 24
    .line 25
    sub-int/2addr v1, p1

    .line 26
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-super {p0, p2, p1}, Lr2/a;->f(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final getCanCalculatePosition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->u:Lf1/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getParams$ui_release()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->o:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->q:Ln3/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPopupContentSize-bOM6tXw()Ln3/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->r:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln3/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getPositionProvider()Lr3/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->p:Lr3/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr3/v;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSubCompositionView()Lr2/a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getTestTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewRoot()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final i(Lf1/v;Lf9/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lr2/a;->setParentCompositionContext(Lf1/v;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lr3/v;->setContent(Lf9/n;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lr3/v;->z:Z

    .line 9
    .line 10
    return-void
.end method

.method public final j(Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/v;->i:Lf9/a;

    .line 2
    .line 3
    iput-object p3, p0, Lr3/v;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lr3/v;->j:Lr3/z;

    .line 6
    .line 7
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lr3/v;->j:Lr3/z;

    .line 18
    .line 19
    iget-object p1, p0, Lr3/v;->l:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {p1}, Lr3/l;->b(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-boolean p3, p2, Lr3/z;->b:Z

    .line 26
    .line 27
    iget p2, p2, Lr3/z;->a:I

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    or-int/lit16 p2, p2, 0x2000

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz p3, :cond_2

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    and-int/lit16 p2, p2, -0x2001

    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object p1, p0, Lr3/v;->o:Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    .line 46
    iget-object p2, p0, Lr3/v;->m:Lr3/x;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lr3/v;->n:Landroid/view/WindowManager;

    .line 52
    .line 53
    invoke-interface {p2, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    const/4 p2, 0x1

    .line 63
    if-ne p1, p2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    new-instance p1, Lac/p;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_4
    const/4 p2, 0x0

    .line 73
    :goto_2
    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final k()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lr3/v;->getParentLayoutCoordinates()Lo2/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Lo2/w;->isAttached()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {v0}, Lo2/w;->k()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    invoke-interface {v0, v3, v4}, Lo2/w;->d(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    shr-long v5, v3, v0

    .line 31
    .line 32
    long-to-int v6, v5

    .line 33
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const-wide v6, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v3, v6

    .line 47
    long-to-int v4, v3

    .line 48
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    int-to-long v4, v5

    .line 57
    shl-long/2addr v4, v0

    .line 58
    int-to-long v8, v3

    .line 59
    and-long/2addr v8, v6

    .line 60
    or-long/2addr v4, v8

    .line 61
    new-instance v3, Ln3/k;

    .line 62
    .line 63
    shr-long v8, v4, v0

    .line 64
    .line 65
    long-to-int v9, v8

    .line 66
    and-long/2addr v4, v6

    .line 67
    long-to-int v5, v4

    .line 68
    shr-long v10, v1, v0

    .line 69
    .line 70
    long-to-int v0, v10

    .line 71
    add-int/2addr v0, v9

    .line 72
    and-long/2addr v1, v6

    .line 73
    long-to-int v2, v1

    .line 74
    add-int/2addr v2, v5

    .line 75
    invoke-direct {v3, v9, v5, v0, v2}, Ln3/k;-><init>(IIII)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lr3/v;->t:Ln3/k;

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ln3/k;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    iput-object v3, p0, Lr3/v;->t:Ln3/k;

    .line 87
    .line 88
    invoke-virtual {p0}, Lr3/v;->m()V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    return-void
.end method

.method public final l(Lo2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr3/v;->setParentLayoutCoordinates(Lo2/w;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lr3/v;->k()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m()V
    .locals 13

    .line 1
    iget-object v3, p0, Lr3/v;->t:Ln3/k;

    .line 2
    .line 3
    if-nez v3, :cond_1

    .line 4
    .line 5
    :cond_0
    move-object v2, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lr3/v;->getPopupContentSize-bOM6tXw()Ln3/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v6, v0, Ln3/l;->a:J

    .line 14
    .line 15
    invoke-direct {p0}, Lr3/v;->getVisibleDisplayBounds()Ln3/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, v0, Ln3/k;->c:I

    .line 20
    .line 21
    iget v2, v0, Ln3/k;->a:I

    .line 22
    .line 23
    sub-int/2addr v1, v2

    .line 24
    iget v2, v0, Ln3/k;->d:I

    .line 25
    .line 26
    iget v0, v0, Ln3/k;->b:I

    .line 27
    .line 28
    sub-int/2addr v2, v0

    .line 29
    int-to-long v0, v1

    .line 30
    const/16 v8, 0x20

    .line 31
    .line 32
    shl-long/2addr v0, v8

    .line 33
    int-to-long v4, v2

    .line 34
    const-wide v9, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v4, v9

    .line 40
    or-long/2addr v4, v0

    .line 41
    new-instance v1, Lg9/w;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const-wide/16 v11, 0x0

    .line 47
    .line 48
    iput-wide v11, v1, Lg9/w;->a:J

    .line 49
    .line 50
    sget-object v11, Lr3/d;->g:Lr3/d;

    .line 51
    .line 52
    new-instance v0, Lr3/u;

    .line 53
    .line 54
    move-object v2, p0

    .line 55
    invoke-direct/range {v0 .. v7}, Lr3/u;-><init>(Lg9/w;Lr3/v;Ln3/k;JJ)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v2, Lr3/v;->w:Lp1/u;

    .line 59
    .line 60
    invoke-virtual {v3, p0, v11, v0}, Lp1/u;->c(Ljava/lang/Object;Lf9/k;Lf9/a;)V

    .line 61
    .line 62
    .line 63
    iget-wide v0, v1, Lg9/w;->a:J

    .line 64
    .line 65
    shr-long v6, v0, v8

    .line 66
    .line 67
    long-to-int v3, v6

    .line 68
    iget-object v6, v2, Lr3/v;->o:Landroid/view/WindowManager$LayoutParams;

    .line 69
    .line 70
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 71
    .line 72
    and-long/2addr v0, v9

    .line 73
    long-to-int v1, v0

    .line 74
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 75
    .line 76
    iget-object v0, v2, Lr3/v;->j:Lr3/z;

    .line 77
    .line 78
    iget-boolean v0, v0, Lr3/z;->e:Z

    .line 79
    .line 80
    iget-object v1, v2, Lr3/v;->m:Lr3/x;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    shr-long v7, v4, v8

    .line 85
    .line 86
    long-to-int v0, v7

    .line 87
    and-long/2addr v4, v9

    .line 88
    long-to-int v3, v4

    .line 89
    invoke-virtual {v1, p0, v0, v3}, Lr3/x;->a(Lr3/v;II)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v0, v2, Lr3/v;->n:Landroid/view/WindowManager;

    .line 96
    .line 97
    invoke-interface {v0, p0, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lr2/a;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr3/v;->w:Lp1/u;

    .line 5
    .line 6
    invoke-virtual {v0}, Lp1/u;->d()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lr3/v;->j:Lr3/z;

    .line 10
    .line 11
    iget-boolean v0, v0, Lr3/z;->c:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x21

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lr3/v;->x:Lc/h0;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lr3/v;->i:Lf9/a;

    .line 27
    .line 28
    new-instance v1, Lc/h0;

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-direct {v1, v2, v0}, Lc/h0;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lr3/v;->x:Lc/h0;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lr3/v;->x:Lc/h0;

    .line 37
    .line 38
    invoke-static {p0, v0}, La4/a;->e(Lr3/v;Lc/h0;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr3/v;->w:Lp1/u;

    .line 5
    .line 6
    iget-object v1, v0, Lp1/u;->h:Lg4/e;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lg4/e;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lp1/u;->a()V

    .line 14
    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x21

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lr3/v;->x:Lc/h0;

    .line 23
    .line 24
    invoke-static {p0, v0}, La4/a;->f(Lr3/v;Lc/h0;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lr3/v;->x:Lc/h0;

    .line 29
    .line 30
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/v;->j:Lr3/z;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr3/z;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    cmpg-float v1, v1, v2

    .line 27
    .line 28
    if-ltz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    cmpl-float v1, v1, v3

    .line 40
    .line 41
    if-gez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    cmpg-float v1, v1, v2

    .line 48
    .line 49
    if-ltz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    cmpl-float v1, v1, v2

    .line 61
    .line 62
    if-ltz v1, :cond_2

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lr3/v;->i:Lf9/a;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return v0

    .line 72
    :cond_2
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/4 v2, 0x4

    .line 79
    if-ne v1, v2, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lr3/v;->i:Lf9/a;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    return v0

    .line 89
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    return p1
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setParentLayoutDirection(Ln3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/v;->q:Ln3/m;

    .line 2
    .line 3
    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Ln3/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/v;->r:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPositionProvider(Lr3/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/v;->p:Lr3/y;

    .line 2
    .line 3
    return-void
.end method

.method public final setTestTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/v;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
