.class public abstract Lq3/i;
.super Landroid/view/ViewGroup;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Le4/m;
.implements Lf1/j;
.implements Lq2/r1;
.implements Le4/n;


# instance fields
.field public final a:Lj2/d;

.field public final b:Landroid/view/View;

.field public final c:Lq2/q1;

.field public d:Lf9/a;

.field public e:Z

.field public f:Lf9/a;

.field public g:Lf9/a;

.field public h:Lr1/p;

.field public i:Lf9/k;

.field public j:Ln3/c;

.field public k:Lf9/k;

.field public l:Landroidx/lifecycle/t;

.field public m:La5/g;

.field public final n:[I

.field public o:J

.field public p:Le4/r1;

.field public final q:Lq3/h;

.field public final r:Lq3/h;

.field public s:Lf9/k;

.field public final t:[I

.field public u:I

.field public v:I

.field public final w:Ld6/i;

.field public x:Z

.field public final y:Lq2/h0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf1/q;ILj2/d;Landroid/view/View;Lq2/q1;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lq3/i;->a:Lj2/d;

    .line 5
    .line 6
    iput-object p5, p0, Lq3/i;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p6, p0, Lq3/i;->c:Lq2/q1;

    .line 9
    .line 10
    sget-object p1, Lr2/c3;->a:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    const p1, 0x7f08003e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lq3/a;

    .line 26
    .line 27
    move-object p3, p0

    .line 28
    check-cast p3, Lq3/q;

    .line 29
    .line 30
    invoke-direct {p2, p3, p1}, Lq3/a;-><init>(Landroid/view/ViewGroup;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p2}, Le4/k0;->l(Landroid/view/View;Le4/s0;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p0}, Le4/d0;->i(Landroid/view/View;Le4/n;)V

    .line 37
    .line 38
    .line 39
    sget-object p2, Lq3/g;->d:Lq3/g;

    .line 40
    .line 41
    iput-object p2, p0, Lq3/i;->d:Lf9/a;

    .line 42
    .line 43
    sget-object p2, Lq3/g;->c:Lq3/g;

    .line 44
    .line 45
    iput-object p2, p0, Lq3/i;->f:Lf9/a;

    .line 46
    .line 47
    sget-object p2, Lq3/g;->b:Lq3/g;

    .line 48
    .line 49
    iput-object p2, p0, Lq3/i;->g:Lf9/a;

    .line 50
    .line 51
    sget-object p2, Lr1/m;->a:Lr1/m;

    .line 52
    .line 53
    iput-object p2, p0, Lq3/i;->h:Lr1/p;

    .line 54
    .line 55
    invoke-static {}, Lg5/a;->h()Ln3/d;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lq3/i;->j:Ln3/c;

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    new-array p5, p2, [I

    .line 63
    .line 64
    iput-object p5, p0, Lq3/i;->n:[I

    .line 65
    .line 66
    const-wide/16 p5, 0x0

    .line 67
    .line 68
    iput-wide p5, p0, Lq3/i;->o:J

    .line 69
    .line 70
    new-instance p5, Lq3/h;

    .line 71
    .line 72
    const/4 p6, 0x1

    .line 73
    invoke-direct {p5, p3, p6}, Lq3/h;-><init>(Lq3/q;I)V

    .line 74
    .line 75
    .line 76
    iput-object p5, p0, Lq3/i;->q:Lq3/h;

    .line 77
    .line 78
    new-instance p5, Lq3/h;

    .line 79
    .line 80
    invoke-direct {p5, p3, p1}, Lq3/h;-><init>(Lq3/q;I)V

    .line 81
    .line 82
    .line 83
    iput-object p5, p0, Lq3/i;->r:Lq3/h;

    .line 84
    .line 85
    new-array p5, p2, [I

    .line 86
    .line 87
    iput-object p5, p0, Lq3/i;->t:[I

    .line 88
    .line 89
    const/high16 p5, -0x80000000

    .line 90
    .line 91
    iput p5, p0, Lq3/i;->u:I

    .line 92
    .line 93
    iput p5, p0, Lq3/i;->v:I

    .line 94
    .line 95
    new-instance p5, Ld6/i;

    .line 96
    .line 97
    invoke-direct {p5, p6}, Ld6/i;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object p5, p0, Lq3/i;->w:Ld6/i;

    .line 101
    .line 102
    new-instance p5, Lq2/h0;

    .line 103
    .line 104
    const/4 v0, 0x3

    .line 105
    invoke-direct {p5, v0}, Lq2/h0;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iput-object p3, p5, Lq2/h0;->n:Lq3/q;

    .line 109
    .line 110
    invoke-static {p4}, Landroidx/compose/ui/input/nestedscroll/a;->a(Lj2/d;)Lr1/p;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    sget-object v0, Lq3/b;->d:Lq3/b;

    .line 115
    .line 116
    new-instance v1, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 117
    .line 118
    invoke-direct {v1, v0, p6}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 119
    .line 120
    .line 121
    check-cast p4, Lq2/z0;

    .line 122
    .line 123
    invoke-virtual {p4, v1}, Lq2/z0;->a(Lr1/p;)Lr1/p;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    new-instance v0, Lk2/d0;

    .line 128
    .line 129
    invoke-direct {v0}, Lk2/d0;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v1, Lk2/e0;

    .line 133
    .line 134
    invoke-direct {v1, p3, p1}, Lk2/e0;-><init>(Lq3/q;I)V

    .line 135
    .line 136
    .line 137
    iput-object v1, v0, Lk2/d0;->a:Lk2/e0;

    .line 138
    .line 139
    new-instance v1, Lba/j;

    .line 140
    .line 141
    invoke-direct {v1}, Lba/j;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v2, v0, Lk2/d0;->b:Lba/j;

    .line 145
    .line 146
    if-eqz v2, :cond_0

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    iput-object v3, v2, Lba/j;->b:Ljava/lang/Object;

    .line 150
    .line 151
    :cond_0
    iput-object v1, v0, Lk2/d0;->b:Lba/j;

    .line 152
    .line 153
    iput-object v0, v1, Lba/j;->b:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lq3/i;->setOnRequestDisallowInterceptTouchEvent$ui_release(Lf9/k;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {p4, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    new-instance v0, Lq3/e;

    .line 163
    .line 164
    invoke-direct {v0, p3, p5, p3}, Lq3/e;-><init>(Lq3/q;Lq2/h0;Lq3/q;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p4, v0}, Landroidx/compose/ui/draw/a;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 168
    .line 169
    .line 170
    move-result-object p4

    .line 171
    new-instance v0, Lq3/c;

    .line 172
    .line 173
    invoke-direct {v0, p3, p5, p2}, Lq3/c;-><init>(Lq3/q;Lq2/h0;I)V

    .line 174
    .line 175
    .line 176
    invoke-static {p4, v0}, Landroidx/compose/ui/layout/a;->d(Lr1/p;Lf9/k;)Lr1/p;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iget-object p4, p0, Lq3/i;->h:Lr1/p;

    .line 181
    .line 182
    invoke-interface {p4, p2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    invoke-virtual {p5, p4}, Lq2/h0;->d0(Lr1/p;)V

    .line 187
    .line 188
    .line 189
    new-instance p4, Lc1/a1;

    .line 190
    .line 191
    const/4 v0, 0x5

    .line 192
    invoke-direct {p4, v0, p5, p2}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iput-object p4, p0, Lq3/i;->i:Lf9/k;

    .line 196
    .line 197
    iget-object p2, p0, Lq3/i;->j:Ln3/c;

    .line 198
    .line 199
    invoke-virtual {p5, p2}, Lq2/h0;->Z(Ln3/c;)V

    .line 200
    .line 201
    .line 202
    new-instance p2, Lb2/a;

    .line 203
    .line 204
    invoke-direct {p2, v0, p5}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iput-object p2, p0, Lq3/i;->k:Lf9/k;

    .line 208
    .line 209
    new-instance p2, Lq3/c;

    .line 210
    .line 211
    invoke-direct {p2, p3, p5, p1}, Lq3/c;-><init>(Lq3/q;Lq2/h0;I)V

    .line 212
    .line 213
    .line 214
    iput-object p2, p5, Lq2/h0;->L:Lq3/c;

    .line 215
    .line 216
    new-instance p2, Lk2/e0;

    .line 217
    .line 218
    invoke-direct {p2, p3, p6}, Lk2/e0;-><init>(Lq3/q;I)V

    .line 219
    .line 220
    .line 221
    iput-object p2, p5, Lq2/h0;->M:Lk2/e0;

    .line 222
    .line 223
    new-instance p2, Lq3/d;

    .line 224
    .line 225
    invoke-direct {p2, p3, p5, p1}, Lq3/d;-><init>(Landroid/view/ViewGroup;Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p5, p2}, Lq2/h0;->c0(Lo2/m0;)V

    .line 229
    .line 230
    .line 231
    iput-object p5, p0, Lq3/i;->y:Lq2/h0;

    .line 232
    .line 233
    return-void
.end method

.method private final getSnapshotObserver()Lq2/s1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Expected AndroidViewHolder to be attached when observing reads."

    .line 8
    .line 9
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lq3/i;->c:Lq2/q1;

    .line 13
    .line 14
    check-cast v0, Lr2/u;

    .line 15
    .line 16
    invoke-virtual {v0}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static final synthetic j(Lq3/q;)Lq2/s1;
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/i;->getSnapshotObserver()Lq2/s1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k(Lq3/q;III)I
    .locals 1

    .line 1
    const/high16 p0, 0x40000000    # 2.0f

    .line 2
    .line 3
    if-gez p3, :cond_3

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, -0x2

    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    if-ne p3, p1, :cond_1

    .line 13
    .line 14
    if-eq p2, v0, :cond_1

    .line 15
    .line 16
    const/high16 p0, -0x80000000

    .line 17
    .line 18
    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p1, -0x1

    .line 24
    if-ne p3, p1, :cond_2

    .line 25
    .line 26
    if-eq p2, v0, :cond_2

    .line 27
    .line 28
    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_3
    :goto_0
    invoke-static {p3, p1, p2}, Li9/a;->n(III)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public static l(Lx3/b;IIII)Lx3/b;
    .locals 2

    .line 1
    iget v0, p0, Lx3/b;->a:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    const/4 p1, 0x0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    iget v1, p0, Lx3/b;->b:I

    .line 9
    .line 10
    sub-int/2addr v1, p2

    .line 11
    if-gez v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :cond_1
    iget p2, p0, Lx3/b;->c:I

    .line 15
    .line 16
    sub-int/2addr p2, p3

    .line 17
    if-gez p2, :cond_2

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    :cond_2
    iget p0, p0, Lx3/b;->d:I

    .line 21
    .line 22
    sub-int/2addr p0, p4

    .line 23
    if-gez p0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    move p1, p0

    .line 27
    :goto_0
    invoke-static {v0, v1, p2, p1}, Lx3/b;->b(IIII)Lx3/b;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/core/widget/NestedScrollView;IIIII)V
    .locals 11

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    int-to-float v0, p2

    .line 11
    const/4 v1, -0x1

    .line 12
    int-to-float v1, v1

    .line 13
    mul-float v0, v0, v1

    .line 14
    .line 15
    int-to-float v2, p3

    .line 16
    mul-float v2, v2, v1

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-long v3, v0

    .line 23
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v5, v0

    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    shl-long v2, v3, v0

    .line 31
    .line 32
    const-wide v7, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v5, v7

    .line 38
    or-long/2addr v2, v5

    .line 39
    move v4, p4

    .line 40
    int-to-float v4, v4

    .line 41
    mul-float v4, v4, v1

    .line 42
    .line 43
    move/from16 v5, p5

    .line 44
    .line 45
    int-to-float v5, v5

    .line 46
    mul-float v5, v5, v1

    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-long v9, v1

    .line 53
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    int-to-long v4, v1

    .line 58
    shl-long v0, v9, v0

    .line 59
    .line 60
    and-long/2addr v4, v7

    .line 61
    or-long/2addr v0, v4

    .line 62
    if-nez p6, :cond_1

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v4, 0x2

    .line 67
    :goto_0
    iget-object v5, p0, Lq3/i;->a:Lj2/d;

    .line 68
    .line 69
    iget-object v5, v5, Lj2/d;->a:Lj2/g;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    iget-boolean v7, v5, Lr1/o;->n:Z

    .line 75
    .line 76
    if-eqz v7, :cond_2

    .line 77
    .line 78
    invoke-static {v5}, Lq2/f;->j(Lq2/d2;)Lq2/d2;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    move-object v6, v5

    .line 83
    check-cast v6, Lj2/g;

    .line 84
    .line 85
    :cond_2
    if-eqz v6, :cond_3

    .line 86
    .line 87
    move-wide p4, v0

    .line 88
    move-wide p2, v2

    .line 89
    move/from16 p6, v4

    .line 90
    .line 91
    move-object p1, v6

    .line 92
    invoke-virtual/range {p1 .. p6}, Lj2/g;->f0(JJI)J

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->g:Lf9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->f:Lf9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Landroid/view/View;Le4/r1;)Le4/r1;
    .locals 0

    .line 1
    new-instance p1, Le4/r1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Le4/r1;-><init>(Le4/r1;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lq3/i;->p:Le4/r1;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lq3/i;->m(Le4/r1;)Le4/r1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final e(III[I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    int-to-float p1, p1

    .line 11
    const/4 v0, -0x1

    .line 12
    int-to-float v0, v0

    .line 13
    mul-float p1, p1, v0

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    mul-float p2, p2, v0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-long v0, p1

    .line 23
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long p1, p1

    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    shl-long/2addr v0, v2

    .line 31
    const-wide v3, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr p1, v3

    .line 37
    or-long/2addr p1, v0

    .line 38
    const/4 v0, 0x1

    .line 39
    if-nez p3, :cond_1

    .line 40
    .line 41
    const/4 p3, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p3, 0x2

    .line 44
    :goto_0
    iget-object v1, p0, Lq3/i;->a:Lj2/d;

    .line 45
    .line 46
    iget-object v1, v1, Lj2/d;->a:Lj2/g;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-boolean v6, v1, Lr1/o;->n:Z

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-static {v1}, Lq2/f;->j(Lq2/d2;)Lq2/d2;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v5, v1

    .line 60
    check-cast v5, Lj2/g;

    .line 61
    .line 62
    :cond_2
    if-eqz v5, :cond_3

    .line 63
    .line 64
    invoke-virtual {v5, p3, p1, p2}, Lj2/g;->E(IJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-wide/16 p1, 0x0

    .line 70
    .line 71
    :goto_1
    shr-long v1, p1, v2

    .line 72
    .line 73
    long-to-int p3, v1

    .line 74
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    invoke-static {p3}, Lr2/j0;->h(F)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    const/4 v1, 0x0

    .line 83
    aput p3, p4, v1

    .line 84
    .line 85
    and-long/2addr p1, v3

    .line 86
    long-to-int p2, p1

    .line 87
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-static {p1}, Lr2/j0;->h(F)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    aput p1, p4, v0

    .line 96
    .line 97
    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    and-int/lit8 p1, p3, 0x2

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    and-int/lit8 p1, p3, 0x1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    return p2
.end method

.method public final g(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p2, p0, Lq3/i;->w:Ld6/i;

    .line 3
    .line 4
    if-ne p4, p1, :cond_0

    .line 5
    .line 6
    iput p3, p2, Ld6/i;->c:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput p3, p2, Ld6/i;->b:I

    .line 10
    .line 11
    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lq3/i;->t:[I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v4, v1, v2

    .line 12
    .line 13
    aget v5, v1, v0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int v6, v2, v4

    .line 20
    .line 21
    aget v1, v1, v0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int v7, v2, v1

    .line 28
    .line 29
    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 30
    .line 31
    move-object v3, p1

    .line 32
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 33
    .line 34
    .line 35
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getDensity()Ln3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->j:Ln3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInteropView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutNode()Lq2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->y:Lq2/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->l:Landroidx/lifecycle/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModifier()Lr1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->h:Lr1/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/i;->w:Ld6/i;

    .line 2
    .line 3
    iget v1, v0, Ld6/i;->b:I

    .line 4
    .line 5
    iget v0, v0, Ld6/i;->c:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public final getOnDensityChanged$ui_release()Lf9/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/k;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/i;->k:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnModifierChanged$ui_release()Lf9/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/k;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/i;->i:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnRequestDisallowInterceptTouchEvent$ui_release()Lf9/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/k;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/i;->s:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRelease()Lf9/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/i;->g:Lf9/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReset()Lf9/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/i;->f:Lf9/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedStateRegistryOwner()La5/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->m:La5/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdate()Lf9/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/i;->d:Lf9/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/view/View;I)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lq3/i;->w:Ld6/i;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iput v1, v0, Ld6/i;->c:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput v1, v0, Ld6/i;->b:I

    .line 11
    .line 12
    return-void
.end method

.method public final i(Landroidx/core/widget/NestedScrollView;IIIII[I)V
    .locals 12

    .line 1
    iget-object p1, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    int-to-float p1, p2

    .line 11
    const/4 p2, -0x1

    .line 12
    int-to-float p2, p2

    .line 13
    mul-float p1, p1, p2

    .line 14
    .line 15
    int-to-float p3, p3

    .line 16
    mul-float p3, p3, p2

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-long v0, p1

    .line 23
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long v2, p1

    .line 28
    const/16 p1, 0x20

    .line 29
    .line 30
    shl-long/2addr v0, p1

    .line 31
    const-wide v4, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v2, v4

    .line 37
    or-long v7, v0, v2

    .line 38
    .line 39
    move/from16 p3, p4

    .line 40
    .line 41
    int-to-float p3, p3

    .line 42
    mul-float p3, p3, p2

    .line 43
    .line 44
    move/from16 v0, p5

    .line 45
    .line 46
    int-to-float v0, v0

    .line 47
    mul-float v0, v0, p2

    .line 48
    .line 49
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    int-to-long p2, p2

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-long v0, v0

    .line 59
    shl-long/2addr p2, p1

    .line 60
    and-long/2addr v0, v4

    .line 61
    or-long v9, p2, v0

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    if-nez p6, :cond_1

    .line 65
    .line 66
    const/4 v11, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 p3, 0x2

    .line 69
    const/4 v11, 0x2

    .line 70
    :goto_0
    iget-object p3, p0, Lq3/i;->a:Lj2/d;

    .line 71
    .line 72
    iget-object p3, p3, Lj2/d;->a:Lj2/g;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz p3, :cond_2

    .line 76
    .line 77
    iget-boolean v1, p3, Lr1/o;->n:Z

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-static {p3}, Lq2/f;->j(Lq2/d2;)Lq2/d2;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    move-object v0, p3

    .line 86
    check-cast v0, Lj2/g;

    .line 87
    .line 88
    :cond_2
    move-object v6, v0

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-virtual/range {v6 .. v11}, Lj2/g;->f0(JJI)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-wide/16 v0, 0x0

    .line 97
    .line 98
    :goto_1
    shr-long v2, v0, p1

    .line 99
    .line 100
    long-to-int p1, v2

    .line 101
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {p1}, Lr2/j0;->h(F)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/4 p3, 0x0

    .line 110
    aput p1, p7, p3

    .line 111
    .line 112
    and-long/2addr v0, v4

    .line 113
    long-to-int p1, v0

    .line 114
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-static {p1}, Lr2/j0;->h(F)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    aput p1, p7, p2

    .line 123
    .line 124
    return-void
.end method

.method public final invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lq3/i;->x:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/baidu/carlife/sdk/internal/a;

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    iget-object v0, p0, Lq3/i;->r:Lq3/h;

    .line 12
    .line 13
    invoke-direct {p1, v0, p2}, Lcom/baidu/carlife/sdk/internal/a;-><init>(Lf9/a;I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lq3/i;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lq3/i;->y:Lq2/h0;

    .line 23
    .line 24
    invoke-virtual {p1}, Lq2/h0;->C()V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m(Le4/r1;)Le4/r1;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Le4/r1;->a:Le4/n1;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v1, v2}, Le4/n1;->g(I)Lx3/b;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Lx3/b;->e:Lx3/b;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lx3/b;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/16 v2, -0x9

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Le4/n1;->h(I)Lx3/b;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v3}, Lx3/b;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Le4/n1;->f()Le4/i;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :cond_0
    move-object/from16 v1, p0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object/from16 v1, p0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_0
    iget-object v2, v1, Lq3/i;->y:Lq2/h0;

    .line 43
    .line 44
    iget-object v2, v2, Lq2/h0;->E:Lq2/d1;

    .line 45
    .line 46
    iget-object v2, v2, Lq2/d1;->c:Lq2/t;

    .line 47
    .line 48
    iget-object v3, v2, Lq2/t;->O:Lq2/a2;

    .line 49
    .line 50
    iget-boolean v3, v3, Lr1/o;->n:Z

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    invoke-virtual {v2, v3, v4}, Lq2/h1;->F(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-static {v3, v4}, Li9/a;->M(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    shr-long v6, v3, v5

    .line 68
    .line 69
    long-to-int v7, v6

    .line 70
    if-gez v7, :cond_3

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    :cond_3
    const-wide v8, 0xffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    and-long/2addr v3, v8

    .line 79
    long-to-int v4, v3

    .line 80
    if-gez v4, :cond_4

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    :cond_4
    invoke-static {v2}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Lo2/w;->k()J

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    shr-long v12, v10, v5

    .line 92
    .line 93
    long-to-int v3, v12

    .line 94
    and-long/2addr v10, v8

    .line 95
    long-to-int v11, v10

    .line 96
    iget-wide v12, v2, Lo2/v0;->c:J

    .line 97
    .line 98
    shr-long v14, v12, v5

    .line 99
    .line 100
    long-to-int v10, v14

    .line 101
    and-long/2addr v12, v8

    .line 102
    long-to-int v13, v12

    .line 103
    int-to-float v10, v10

    .line 104
    int-to-float v12, v13

    .line 105
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    int-to-long v13, v10

    .line 110
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    const/16 v12, 0x20

    .line 115
    .line 116
    int-to-long v5, v10

    .line 117
    shl-long/2addr v13, v12

    .line 118
    and-long/2addr v5, v8

    .line 119
    or-long/2addr v5, v13

    .line 120
    invoke-virtual {v2, v5, v6}, Lq2/h1;->F(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    invoke-static {v5, v6}, Li9/a;->M(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    shr-long v12, v5, v12

    .line 129
    .line 130
    long-to-int v2, v12

    .line 131
    sub-int/2addr v3, v2

    .line 132
    if-gez v3, :cond_5

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    :cond_5
    and-long/2addr v5, v8

    .line 136
    long-to-int v2, v5

    .line 137
    sub-int/2addr v11, v2

    .line 138
    if-gez v11, :cond_6

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    goto :goto_1

    .line 142
    :cond_6
    move v6, v11

    .line 143
    :goto_1
    if-nez v7, :cond_7

    .line 144
    .line 145
    if-nez v4, :cond_7

    .line 146
    .line 147
    if-nez v3, :cond_7

    .line 148
    .line 149
    if-nez v6, :cond_7

    .line 150
    .line 151
    :goto_2
    return-object v0

    .line 152
    :cond_7
    iget-object v0, v0, Le4/r1;->a:Le4/n1;

    .line 153
    .line 154
    invoke-virtual {v0, v7, v4, v3, v6}, Le4/n1;->n(IIII)Le4/r1;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq3/i;->q:Lq3/h;

    .line 5
    .line 6
    invoke-virtual {v0}, Lq3/h;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lq3/i;->x:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/baidu/carlife/sdk/internal/a;

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    iget-object v0, p0, Lq3/i;->r:Lq3/h;

    .line 12
    .line 13
    invoke-direct {p1, v0, p2}, Lcom/baidu/carlife/sdk/internal/a;-><init>(Lf9/a;I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lq3/i;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lq3/i;->y:Lq2/h0;

    .line 23
    .line 24
    invoke-virtual {p1}, Lq2/h0;->C()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v1}, Lq3/i;->getSnapshotObserver()Lq2/s1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lq2/s1;->a:Lp1/u;

    .line 11
    .line 12
    iget-object v2, v0, Lp1/u;->g:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v0, v0, Lp1/u;->f:Lh1/e;

    .line 16
    .line 17
    iget v3, v0, Lh1/e;->c:I

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    if-ge v5, v3, :cond_8

    .line 22
    .line 23
    iget-object v7, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v7, v7, v5

    .line 26
    .line 27
    check-cast v7, Lp1/t;

    .line 28
    .line 29
    iget-object v8, v7, Lp1/t;->f:Ls/h0;

    .line 30
    .line 31
    invoke-virtual {v8, v1}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Ls/c0;

    .line 36
    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    :cond_0
    move/from16 v16, v5

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    iget-object v9, v8, Ls/c0;->b:[Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v10, v8, Ls/c0;->c:[I

    .line 45
    .line 46
    iget-object v8, v8, Ls/c0;->a:[J

    .line 47
    .line 48
    array-length v11, v8

    .line 49
    add-int/lit8 v11, v11, -0x2

    .line 50
    .line 51
    if-ltz v11, :cond_0

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    :goto_1
    aget-wide v13, v8, v12

    .line 55
    .line 56
    move/from16 v16, v5

    .line 57
    .line 58
    not-long v4, v13

    .line 59
    const/16 v17, 0x7

    .line 60
    .line 61
    shl-long v4, v4, v17

    .line 62
    .line 63
    and-long/2addr v4, v13

    .line 64
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    and-long v4, v4, v17

    .line 70
    .line 71
    cmp-long v19, v4, v17

    .line 72
    .line 73
    if-eqz v19, :cond_4

    .line 74
    .line 75
    sub-int v4, v12, v11

    .line 76
    .line 77
    not-int v4, v4

    .line 78
    ushr-int/lit8 v4, v4, 0x1f

    .line 79
    .line 80
    const/16 v5, 0x8

    .line 81
    .line 82
    rsub-int/lit8 v4, v4, 0x8

    .line 83
    .line 84
    const/4 v15, 0x0

    .line 85
    :goto_2
    if-ge v15, v4, :cond_3

    .line 86
    .line 87
    const-wide/16 v18, 0xff

    .line 88
    .line 89
    and-long v18, v13, v18

    .line 90
    .line 91
    const-wide/16 v20, 0x80

    .line 92
    .line 93
    cmp-long v22, v18, v20

    .line 94
    .line 95
    if-gez v22, :cond_2

    .line 96
    .line 97
    shl-int/lit8 v18, v12, 0x3

    .line 98
    .line 99
    add-int v18, v18, v15

    .line 100
    .line 101
    const/16 v19, 0x8

    .line 102
    .line 103
    aget-object v5, v9, v18

    .line 104
    .line 105
    aget v18, v10, v18

    .line 106
    .line 107
    invoke-virtual {v7, v1, v5}, Lp1/t;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    const/16 v19, 0x8

    .line 112
    .line 113
    :goto_3
    shr-long v13, v13, v19

    .line 114
    .line 115
    add-int/lit8 v15, v15, 0x1

    .line 116
    .line 117
    const/16 v5, 0x8

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    if-ne v4, v5, :cond_5

    .line 121
    .line 122
    :cond_4
    if-eq v12, v11, :cond_5

    .line 123
    .line 124
    add-int/lit8 v12, v12, 0x1

    .line 125
    .line 126
    move/from16 v5, v16

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    :goto_4
    iget-object v4, v7, Lp1/t;->f:Ls/h0;

    .line 130
    .line 131
    invoke-virtual {v4}, Ls/h0;->j()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_6

    .line 136
    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_6
    if-lez v6, :cond_7

    .line 141
    .line 142
    iget-object v4, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 143
    .line 144
    sub-int v5, v16, v6

    .line 145
    .line 146
    aget-object v7, v4, v16

    .line 147
    .line 148
    aput-object v7, v4, v5

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    goto :goto_6

    .line 153
    :cond_7
    :goto_5
    add-int/lit8 v5, v16, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_8
    iget-object v4, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 158
    .line 159
    sub-int v5, v3, v6

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    invoke-static {v5, v3, v6, v4}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iput v5, v0, Lh1/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    monitor-exit v2

    .line 168
    return-void

    .line 169
    :goto_6
    monitor-exit v2

    .line 170
    throw v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    iget-object p1, p0, Lq3/i;->b:Landroid/view/View;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 46
    .line 47
    .line 48
    iput p1, p0, Lq3/i;->u:I

    .line 49
    .line 50
    iput p2, p0, Lq3/i;->v:I

    .line 51
    .line 52
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    .line 13
    mul-float p2, p2, p1

    .line 14
    .line 15
    mul-float p3, p3, p1

    .line 16
    .line 17
    invoke-static {p2, p3}, Lg5/a;->s(FF)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    iget-object p1, p0, Lq3/i;->a:Lj2/d;

    .line 22
    .line 23
    invoke-virtual {p1}, Lj2/d;->c()Lac/w;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lq3/f;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v3, p0

    .line 31
    move v2, p4

    .line 32
    invoke-direct/range {v1 .. v6}, Lq3/f;-><init>(ZLq3/i;JLw8/c;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-static {p1, p3, v1, p2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 38
    .line 39
    .line 40
    return v0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lq3/i;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    .line 13
    mul-float p2, p2, p1

    .line 14
    .line 15
    mul-float p3, p3, p1

    .line 16
    .line 17
    invoke-static {p2, p3}, Lg5/a;->s(FF)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object p1, p0, Lq3/i;->a:Lj2/d;

    .line 22
    .line 23
    invoke-virtual {p1}, Lj2/d;->c()Lac/w;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lk2/k0;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v6}, Lk2/k0;-><init>(Ljava/lang/Object;JLw8/c;I)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    invoke-static {p1, v5, v1, p2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x17

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lq3/i;->y:Lq2/h0;

    .line 13
    .line 14
    invoke-virtual {p1}, Lq2/h0;->C()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/i;->s:Lf9/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setDensity(Ln3/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->j:Ln3/c;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/i;->j:Ln3/c;

    .line 6
    .line 7
    iget-object v0, p0, Lq3/i;->k:Lf9/k;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->l:Landroidx/lifecycle/t;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/i;->l:Landroidx/lifecycle/t;

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setModifier(Lr1/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->h:Lr1/p;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/i;->h:Lr1/p;

    .line 6
    .line 7
    iget-object v0, p0, Lq3/i;->i:Lf9/k;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setOnDensityChanged$ui_release(Lf9/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/k;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/i;->k:Lf9/k;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnModifierChanged$ui_release(Lf9/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/k;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/i;->i:Lf9/k;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnRequestDisallowInterceptTouchEvent$ui_release(Lf9/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/k;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/i;->s:Lf9/k;

    .line 2
    .line 3
    return-void
.end method

.method public final setRelease(Lf9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/i;->g:Lf9/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setReset(Lf9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/i;->f:Lf9/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setSavedStateRegistryOwner(La5/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/i;->m:La5/g;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lq3/i;->m:La5/g;

    .line 6
    .line 7
    const v0, 0x7f0800c4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setUpdate(Lf9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/i;->d:Lf9/a;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lq3/i;->e:Z

    .line 5
    .line 6
    iget-object p1, p0, Lq3/i;->q:Lq3/h;

    .line 7
    .line 8
    invoke-virtual {p1}, Lq3/h;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
