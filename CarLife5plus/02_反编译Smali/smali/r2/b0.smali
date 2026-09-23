.class public final Lr2/b0;
.super Le4/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final Q:Ls/v;


# instance fields
.field public A:Z

.field public B:Lr2/y;

.field public C:Ls/w;

.field public final D:Ls/x;

.field public final E:Ls/u;

.field public final F:Ls/u;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:La2/b;

.field public final J:Ls/w;

.field public K:Lr2/l2;

.field public L:Z

.field public final M:Ls/u;

.field public final N:Landroidx/lifecycle/z;

.field public final O:Ljava/util/ArrayList;

.field public final P:Lr2/a0;

.field public final d:Lr2/u;

.field public e:I

.field public final f:Lr2/a0;

.field public final g:Landroid/view/accessibility/AccessibilityManager;

.field public h:J

.field public final i:Lr2/v;

.field public final j:Lr2/w;

.field public k:Ljava/util/List;

.field public final l:Landroid/os/Handler;

.field public final m:Lr2/x;

.field public n:I

.field public o:I

.field public p:Lf4/e;

.field public q:Lf4/e;

.field public r:Z

.field public final s:Ls/w;

.field public final t:Ls/w;

.field public final u:Ls/r0;

.field public final v:Ls/r0;

.field public w:I

.field public x:Ljava/lang/Integer;

.field public final y:Ls/g;

.field public final z:Lcc/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sget-object v2, Ls/j;->a:Ls/v;

    .line 9
    .line 10
    new-instance v2, Ls/v;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ls/v;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget v3, v2, Ls/v;->b:I

    .line 16
    .line 17
    if-ltz v3, :cond_2

    .line 18
    .line 19
    add-int/lit8 v4, v3, 0x20

    .line 20
    .line 21
    iget-object v5, v2, Ls/v;->a:[I

    .line 22
    .line 23
    array-length v6, v5

    .line 24
    if-ge v6, v4, :cond_0

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    mul-int/lit8 v6, v6, 0x3

    .line 28
    .line 29
    div-int/lit8 v6, v6, 0x2

    .line 30
    .line 31
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v6, "copyOf(...)"

    .line 40
    .line 41
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v5, v2, Ls/v;->a:[I

    .line 45
    .line 46
    :cond_0
    iget-object v5, v2, Ls/v;->a:[I

    .line 47
    .line 48
    iget v6, v2, Ls/v;->b:I

    .line 49
    .line 50
    if-eq v3, v6, :cond_1

    .line 51
    .line 52
    invoke-static {v4, v3, v6, v5, v5}, Ls8/l;->M(III[I[I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    const/16 v6, 0xc

    .line 57
    .line 58
    invoke-static {v3, v4, v6, v1, v5}, Ls8/l;->Q(III[I[I)V

    .line 59
    .line 60
    .line 61
    iget v1, v2, Ls/v;->b:I

    .line 62
    .line 63
    add-int/2addr v1, v0

    .line 64
    iput v1, v2, Ls/v;->b:I

    .line 65
    .line 66
    sput-object v2, Lr2/b0;->Q:Ls/v;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string v0, ""

    .line 70
    .line 71
    invoke-static {v0}, Lt/a;->d(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    throw v0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x7f080007
        0x7f080008
        0x7f080013
        0x7f08001e
        0x7f080021
        0x7f080022
        0x7f080023
        0x7f080024
        0x7f080025
        0x7f080026
        0x7f080009
        0x7f08000a
        0x7f08000b
        0x7f08000c
        0x7f08000d
        0x7f08000e
        0x7f08000f
        0x7f080010
        0x7f080011
        0x7f080012
        0x7f080014
        0x7f080015
        0x7f080016
        0x7f080017
        0x7f080018
        0x7f080019
        0x7f08001a
        0x7f08001b
        0x7f08001c
        0x7f08001d
        0x7f08001f
        0x7f080020
    .end array-data
.end method

.method public constructor <init>(Lr2/u;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Le4/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/b0;->d:Lr2/u;

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    iput v0, p0, Lr2/b0;->e:I

    .line 9
    .line 10
    new-instance v1, Lr2/a0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lr2/a0;-><init>(Lr2/b0;I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lr2/b0;->f:Lr2/a0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "accessibility"

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 29
    .line 30
    invoke-static {v1, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 34
    .line 35
    iput-object v1, p0, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    .line 37
    const-wide/16 v3, 0x64

    .line 38
    .line 39
    iput-wide v3, p0, Lr2/b0;->h:J

    .line 40
    .line 41
    new-instance v3, Lr2/v;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lr2/v;-><init>(Lr2/b0;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lr2/b0;->i:Lr2/v;

    .line 47
    .line 48
    new-instance v3, Lr2/w;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Lr2/w;-><init>(Lr2/b0;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Lr2/b0;->j:Lr2/w;

    .line 54
    .line 55
    const/4 v3, -0x1

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lr2/b0;->k:Ljava/util/List;

    .line 61
    .line 62
    new-instance v1, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lr2/b0;->l:Landroid/os/Handler;

    .line 72
    .line 73
    new-instance v1, Lr2/x;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lr2/x;-><init>(Lr2/b0;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lr2/b0;->m:Lr2/x;

    .line 79
    .line 80
    iput v0, p0, Lr2/b0;->n:I

    .line 81
    .line 82
    iput v0, p0, Lr2/b0;->o:I

    .line 83
    .line 84
    new-instance v0, Ls/w;

    .line 85
    .line 86
    invoke-direct {v0}, Ls/w;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lr2/b0;->s:Ls/w;

    .line 90
    .line 91
    new-instance v0, Ls/w;

    .line 92
    .line 93
    invoke-direct {v0}, Ls/w;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lr2/b0;->t:Ls/w;

    .line 97
    .line 98
    new-instance v0, Ls/r0;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Ls/r0;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lr2/b0;->u:Ls/r0;

    .line 104
    .line 105
    new-instance v0, Ls/r0;

    .line 106
    .line 107
    invoke-direct {v0, v2}, Ls/r0;-><init>(I)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lr2/b0;->v:Ls/r0;

    .line 111
    .line 112
    iput v3, p0, Lr2/b0;->w:I

    .line 113
    .line 114
    new-instance v0, Ls/g;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Ls/g;-><init>(I)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lr2/b0;->y:Ls/g;

    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    const/4 v1, 0x1

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-static {v1, v0, v2}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lr2/b0;->z:Lcc/h;

    .line 129
    .line 130
    iput-boolean v1, p0, Lr2/b0;->A:Z

    .line 131
    .line 132
    sget-object v0, Ls/l;->a:Ls/w;

    .line 133
    .line 134
    const-string v2, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    .line 135
    .line 136
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lr2/b0;->C:Ls/w;

    .line 140
    .line 141
    new-instance v3, Ls/x;

    .line 142
    .line 143
    invoke-direct {v3}, Ls/x;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v3, p0, Lr2/b0;->D:Ls/x;

    .line 147
    .line 148
    new-instance v3, Ls/u;

    .line 149
    .line 150
    invoke-direct {v3}, Ls/u;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v3, p0, Lr2/b0;->E:Ls/u;

    .line 154
    .line 155
    new-instance v3, Ls/u;

    .line 156
    .line 157
    invoke-direct {v3}, Ls/u;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v3, p0, Lr2/b0;->F:Ls/u;

    .line 161
    .line 162
    const-string v3, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL"

    .line 163
    .line 164
    iput-object v3, p0, Lr2/b0;->G:Ljava/lang/String;

    .line 165
    .line 166
    const-string v3, "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL"

    .line 167
    .line 168
    iput-object v3, p0, Lr2/b0;->H:Ljava/lang/String;

    .line 169
    .line 170
    new-instance v3, La2/b;

    .line 171
    .line 172
    const/16 v4, 0xd

    .line 173
    .line 174
    invoke-direct {v3, v4}, La2/b;-><init>(I)V

    .line 175
    .line 176
    .line 177
    iput-object v3, p0, Lr2/b0;->I:La2/b;

    .line 178
    .line 179
    new-instance v3, Ls/w;

    .line 180
    .line 181
    invoke-direct {v3}, Ls/w;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v3, p0, Lr2/b0;->J:Ls/w;

    .line 185
    .line 186
    new-instance v3, Lr2/l2;

    .line 187
    .line 188
    invoke-virtual {p1}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ly2/o;->a()Ly2/m;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v3, v4, v0}, Lr2/l2;-><init>(Ly2/m;Ls/k;)V

    .line 200
    .line 201
    .line 202
    iput-object v3, p0, Lr2/b0;->K:Lr2/l2;

    .line 203
    .line 204
    sget v0, Ls/i;->a:I

    .line 205
    .line 206
    new-instance v0, Ls/u;

    .line 207
    .line 208
    invoke-direct {v0}, Ls/u;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lr2/b0;->M:Ls/u;

    .line 212
    .line 213
    new-instance v0, Lo/e;

    .line 214
    .line 215
    const/4 v2, 0x2

    .line 216
    invoke-direct {v0, v2, p0}, Lo/e;-><init>(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 220
    .line 221
    .line 222
    new-instance p1, Landroidx/lifecycle/z;

    .line 223
    .line 224
    const/16 v0, 0x16

    .line 225
    .line 226
    invoke-direct {p1, v0, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Lr2/b0;->N:Landroidx/lifecycle/z;

    .line 230
    .line 231
    new-instance p1, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object p1, p0, Lr2/b0;->O:Ljava/util/ArrayList;

    .line 237
    .line 238
    new-instance p1, Lr2/a0;

    .line 239
    .line 240
    invoke-direct {p1, p0, v1}, Lr2/a0;-><init>(Lr2/b0;I)V

    .line 241
    .line 242
    .line 243
    iput-object p1, p0, Lr2/b0;->P:Lr2/a0;

    .line 244
    .line 245
    return-void
.end method

.method public static G(Ly1/h0;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    instance-of v0, p0, Ly1/c0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ly1/d0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ly1/h0;->o()Lx1/c;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v1, p0, Lx1/c;->a:F

    .line 19
    .line 20
    float-to-int v1, v1

    .line 21
    iget v2, p0, Lx1/c;->b:F

    .line 22
    .line 23
    float-to-int v2, v2

    .line 24
    iget v3, p0, Lx1/c;->c:F

    .line 25
    .line 26
    float-to-int v3, v3

    .line 27
    iget p0, p0, Lx1/c;->d:F

    .line 28
    .line 29
    float-to-int p0, p0

    .line 30
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static H(Ly1/h0;)[F
    .locals 13

    .line 1
    instance-of v0, p0, Ly1/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ly1/d0;

    .line 6
    .line 7
    iget-object p0, p0, Ly1/d0;->e:Lx1/d;

    .line 8
    .line 9
    iget-wide v0, p0, Lx1/d;->h:J

    .line 10
    .line 11
    iget-wide v2, p0, Lx1/d;->g:J

    .line 12
    .line 13
    iget-wide v4, p0, Lx1/d;->f:J

    .line 14
    .line 15
    iget-wide v6, p0, Lx1/d;->e:J

    .line 16
    .line 17
    const/16 p0, 0x20

    .line 18
    .line 19
    shr-long v8, v6, p0

    .line 20
    .line 21
    long-to-int v9, v8

    .line 22
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const-wide v9, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v6, v9

    .line 32
    long-to-int v7, v6

    .line 33
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    shr-long v11, v4, p0

    .line 38
    .line 39
    long-to-int v7, v11

    .line 40
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    and-long/2addr v4, v9

    .line 45
    long-to-int v5, v4

    .line 46
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    shr-long v11, v2, p0

    .line 51
    .line 52
    long-to-int v5, v11

    .line 53
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    and-long/2addr v2, v9

    .line 58
    long-to-int v3, v2

    .line 59
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    shr-long v11, v0, p0

    .line 64
    .line 65
    long-to-int p0, v11

    .line 66
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    and-long/2addr v0, v9

    .line 71
    long-to-int v1, v0

    .line 72
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    new-array v1, v1, [F

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    aput v8, v1, v3

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    aput v6, v1, v3

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    aput v7, v1, v3

    .line 88
    .line 89
    const/4 v3, 0x3

    .line 90
    aput v4, v1, v3

    .line 91
    .line 92
    const/4 v3, 0x4

    .line 93
    aput v5, v1, v3

    .line 94
    .line 95
    const/4 v3, 0x5

    .line 96
    aput v2, v1, v3

    .line 97
    .line 98
    const/4 v2, 0x6

    .line 99
    aput p0, v1, v2

    .line 100
    .line 101
    const/4 p0, 0x7

    .line 102
    aput v0, v1, p0

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_0
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method

.method public static I(Ly1/h0;)Landroid/graphics/Region;
    .locals 6

    .line 1
    instance-of v0, p0, Ly1/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Region;

    .line 6
    .line 7
    check-cast p0, Ly1/b0;

    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/b0;->o()Lx1/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v3, v1, Lx1/c;->a:F

    .line 16
    .line 17
    float-to-int v3, v3

    .line 18
    iget v4, v1, Lx1/c;->b:F

    .line 19
    .line 20
    float-to-int v4, v4

    .line 21
    iget v5, v1, Lx1/c;->c:F

    .line 22
    .line 23
    float-to-int v5, v5

    .line 24
    iget v1, v1, Lx1/c;->d:F

    .line 25
    .line 26
    float-to-int v1, v1

    .line 27
    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroid/graphics/Region;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Ly1/b0;->e:Ly1/e0;

    .line 39
    .line 40
    instance-of v2, p0, Ly1/h;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    check-cast p0, Ly1/h;

    .line 45
    .line 46
    iget-object p0, p0, Ly1/h;->a:Landroid/graphics/Path;

    .line 47
    .line 48
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 53
    .line 54
    const-string v0, "Unable to obtain android.graphics.Path"

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public static J(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x186a0

    .line 13
    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-object p0

    .line 18
    :cond_1
    const v0, 0x1869f

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const v1, 0x1869f

    .line 42
    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "null cannot be cast to non-null type T of androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.trimToSize"

    .line 50
    .line 51
    invoke-static {p0, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method public static p(Ly2/m;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Ly2/m;->d:Ly2/j;

    .line 6
    .line 7
    iget-object v1, p0, Ly2/j;->a:Ls/h0;

    .line 8
    .line 9
    sget-object v2, Ly2/r;->a:Ly2/u;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/util/List;

    .line 22
    .line 23
    const-string v1, ","

    .line 24
    .line 25
    const/16 v2, 0x3e

    .line 26
    .line 27
    invoke-static {p0, v1, v0, v2}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object p0, Ly2/r;->E:Ly2/u;

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    move-object p0, v0

    .line 47
    :cond_2
    check-cast p0, Lb3/g;

    .line 48
    .line 49
    if-eqz p0, :cond_5

    .line 50
    .line 51
    iget-object p0, p0, Lb3/g;->b:Ljava/lang/String;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    sget-object p0, Ly2/r;->A:Ly2/u;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_4

    .line 61
    .line 62
    move-object p0, v0

    .line 63
    :cond_4
    check-cast p0, Ljava/util/List;

    .line 64
    .line 65
    if-eqz p0, :cond_5

    .line 66
    .line 67
    invoke-static {p0}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lb3/g;

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    iget-object p0, p0, Lb3/g;->b:Ljava/lang/String;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_5
    :goto_0
    return-object v0
.end method

.method public static final s(Ly2/h;F)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/h;->a:Lf9/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v2, p1, v1

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    cmpl-float v2, v2, v1

    .line 19
    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    :cond_0
    cmpl-float p1, p1, v1

    .line 23
    .line 24
    if-lez p1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object p0, p0, Ly2/h;->b:Lf9/a;

    .line 37
    .line 38
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    cmpg-float p0, p1, p0

    .line 49
    .line 50
    if-gez p0, :cond_2

    .line 51
    .line 52
    :cond_1
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public static final t(Ly2/h;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/h;->a:Lf9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Ly2/h;->b:Lf9/a;

    .line 30
    .line 31
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static final u(Ly2/h;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/h;->a:Lf9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Ly2/h;->b:Lf9/a;

    .line 14
    .line 15
    invoke-interface {p0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    cmpg-float p0, v1, p0

    .line 26
    .line 27
    if-gez p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static synthetic z(Lr2/b0;IILjava/lang/Integer;I)V
    .locals 1

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lr2/b0;->y(IILjava/lang/Integer;Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lr2/b0;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p2}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final B(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr2/b0;->B:Lr2/y;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lr2/y;->a:Ly2/m;

    .line 6
    .line 7
    iget v2, v1, Ly2/m;->g:I

    .line 8
    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, v0, Lr2/y;->f:J

    .line 17
    .line 18
    sub-long/2addr v2, v4

    .line 19
    const-wide/16 v4, 0x3e8

    .line 20
    .line 21
    cmp-long p1, v2, v4

    .line 22
    .line 23
    if-gtz p1, :cond_1

    .line 24
    .line 25
    iget p1, v1, Ly2/m;->g:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lr2/b0;->v(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/high16 v2, 0x20000

    .line 32
    .line 33
    invoke-virtual {p0, p1, v2}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget v2, v0, Lr2/y;->d:I

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 40
    .line 41
    .line 42
    iget v2, v0, Lr2/y;->e:I

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 45
    .line 46
    .line 47
    iget v2, v0, Lr2/y;->b:I

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 50
    .line 51
    .line 52
    iget v0, v0, Lr2/y;->c:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1}, Lr2/b0;->p(Ly2/m;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lr2/b0;->B:Lr2/y;

    .line 73
    .line 74
    return-void
.end method

.method public final C(Ls/k;)V
    .locals 58

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    const/16 v1, 0x40

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v9, v0, Lr2/b0;->O:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v10, v6, Ls/k;->b:[I

    .line 22
    .line 23
    iget-object v11, v6, Ls/k;->a:[J

    .line 24
    .line 25
    array-length v1, v11

    .line 26
    const/4 v12, 0x2

    .line 27
    add-int/lit8 v13, v1, -0x2

    .line 28
    .line 29
    const/4 v14, 0x0

    .line 30
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-ltz v13, :cond_57

    .line 35
    .line 36
    const/4 v15, 0x0

    .line 37
    :goto_0
    aget-wide v3, v11, v15

    .line 38
    .line 39
    move/from16 v17, v13

    .line 40
    .line 41
    const/16 v16, 0x2

    .line 42
    .line 43
    not-long v12, v3

    .line 44
    const/16 v18, 0x7

    .line 45
    .line 46
    shl-long v12, v12, v18

    .line 47
    .line 48
    and-long/2addr v12, v3

    .line 49
    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    and-long v12, v12, v19

    .line 55
    .line 56
    cmp-long v1, v12, v19

    .line 57
    .line 58
    if-eqz v1, :cond_56

    .line 59
    .line 60
    sub-int v1, v15, v17

    .line 61
    .line 62
    not-int v1, v1

    .line 63
    ushr-int/lit8 v1, v1, 0x1f

    .line 64
    .line 65
    const/16 v12, 0x8

    .line 66
    .line 67
    rsub-int/lit8 v13, v1, 0x8

    .line 68
    .line 69
    move-wide/from16 v21, v3

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_1
    if-ge v1, v13, :cond_55

    .line 73
    .line 74
    const-wide/16 v23, 0xff

    .line 75
    .line 76
    and-long v3, v21, v23

    .line 77
    .line 78
    const-wide/16 v25, 0x80

    .line 79
    .line 80
    cmp-long v5, v3, v25

    .line 81
    .line 82
    if-gez v5, :cond_54

    .line 83
    .line 84
    shl-int/lit8 v3, v15, 0x3

    .line 85
    .line 86
    add-int/2addr v3, v1

    .line 87
    aget v3, v10, v3

    .line 88
    .line 89
    iget-object v4, v0, Lr2/b0;->J:Ls/w;

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ls/k;->b(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lr2/l2;

    .line 96
    .line 97
    if-nez v4, :cond_0

    .line 98
    .line 99
    goto/16 :goto_2f

    .line 100
    .line 101
    :cond_0
    iget-object v4, v4, Lr2/l2;->a:Ly2/j;

    .line 102
    .line 103
    iget-object v5, v4, Ly2/j;->a:Ls/h0;

    .line 104
    .line 105
    invoke-virtual {v6, v3}, Ls/k;->b(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v27

    .line 109
    move-object/from16 v14, v27

    .line 110
    .line 111
    check-cast v14, Ly2/n;

    .line 112
    .line 113
    const/16 v27, 0x8

    .line 114
    .line 115
    if-eqz v14, :cond_1

    .line 116
    .line 117
    iget-object v14, v14, Ly2/n;->a:Ly2/m;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    const/4 v14, 0x0

    .line 121
    :goto_2
    if-eqz v14, :cond_53

    .line 122
    .line 123
    iget-object v12, v14, Ly2/m;->c:Lq2/h0;

    .line 124
    .line 125
    iget-object v6, v14, Ly2/m;->d:Ly2/j;

    .line 126
    .line 127
    move-object/from16 v29, v10

    .line 128
    .line 129
    iget v10, v14, Ly2/m;->g:I

    .line 130
    .line 131
    move-object/from16 v30, v11

    .line 132
    .line 133
    iget-object v11, v6, Ly2/j;->a:Ls/h0;

    .line 134
    .line 135
    move/from16 v31, v15

    .line 136
    .line 137
    iget-object v15, v11, Ls/h0;->b:[Ljava/lang/Object;

    .line 138
    .line 139
    move-object/from16 v32, v15

    .line 140
    .line 141
    iget-object v15, v11, Ls/h0;->c:[Ljava/lang/Object;

    .line 142
    .line 143
    move-object/from16 v33, v15

    .line 144
    .line 145
    iget-object v15, v11, Ls/h0;->a:[J

    .line 146
    .line 147
    move/from16 v34, v1

    .line 148
    .line 149
    array-length v1, v15

    .line 150
    add-int/lit8 v1, v1, -0x2

    .line 151
    .line 152
    move-object/from16 v35, v15

    .line 153
    .line 154
    if-ltz v1, :cond_4d

    .line 155
    .line 156
    move-object/from16 v40, v12

    .line 157
    .line 158
    move/from16 v39, v13

    .line 159
    .line 160
    const/4 v15, 0x0

    .line 161
    const/16 v38, 0x0

    .line 162
    .line 163
    :goto_3
    aget-wide v12, v35, v15

    .line 164
    .line 165
    move-object/from16 v41, v14

    .line 166
    .line 167
    move/from16 v42, v15

    .line 168
    .line 169
    not-long v14, v12

    .line 170
    shl-long v14, v14, v18

    .line 171
    .line 172
    and-long/2addr v14, v12

    .line 173
    and-long v14, v14, v19

    .line 174
    .line 175
    cmp-long v43, v14, v19

    .line 176
    .line 177
    if-eqz v43, :cond_4c

    .line 178
    .line 179
    sub-int v15, v42, v1

    .line 180
    .line 181
    not-int v14, v15

    .line 182
    ushr-int/lit8 v14, v14, 0x1f

    .line 183
    .line 184
    rsub-int/lit8 v14, v14, 0x8

    .line 185
    .line 186
    const/4 v15, 0x0

    .line 187
    :goto_4
    if-ge v15, v14, :cond_4b

    .line 188
    .line 189
    and-long v43, v12, v23

    .line 190
    .line 191
    cmp-long v45, v43, v25

    .line 192
    .line 193
    if-gez v45, :cond_4a

    .line 194
    .line 195
    shl-int/lit8 v43, v42, 0x3

    .line 196
    .line 197
    add-int v43, v43, v15

    .line 198
    .line 199
    aget-object v44, v32, v43

    .line 200
    .line 201
    move/from16 v45, v1

    .line 202
    .line 203
    aget-object v1, v33, v43

    .line 204
    .line 205
    move-object/from16 v43, v4

    .line 206
    .line 207
    move-object/from16 v4, v44

    .line 208
    .line 209
    check-cast v4, Ly2/u;

    .line 210
    .line 211
    move-wide/from16 v46, v12

    .line 212
    .line 213
    sget-object v12, Ly2/r;->t:Ly2/u;

    .line 214
    .line 215
    invoke-static {v4, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    if-nez v13, :cond_3

    .line 220
    .line 221
    sget-object v13, Ly2/r;->u:Ly2/u;

    .line 222
    .line 223
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-eqz v13, :cond_2

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_2
    move/from16 v44, v15

    .line 231
    .line 232
    const/4 v15, 0x0

    .line 233
    goto :goto_9

    .line 234
    :cond_3
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    move/from16 v44, v15

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    :goto_6
    if-ge v15, v13, :cond_5

    .line 242
    .line 243
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v48

    .line 247
    move/from16 v49, v13

    .line 248
    .line 249
    move-object/from16 v13, v48

    .line 250
    .line 251
    check-cast v13, Lr2/k2;

    .line 252
    .line 253
    iget v13, v13, Lr2/k2;->a:I

    .line 254
    .line 255
    if-ne v13, v3, :cond_4

    .line 256
    .line 257
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    check-cast v13, Lr2/k2;

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 265
    .line 266
    move/from16 v13, v49

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_5
    const/4 v13, 0x0

    .line 270
    :goto_7
    if-eqz v13, :cond_6

    .line 271
    .line 272
    const/4 v15, 0x0

    .line 273
    goto :goto_8

    .line 274
    :cond_6
    new-instance v13, Lr2/k2;

    .line 275
    .line 276
    invoke-direct {v13, v3, v9}, Lr2/k2;-><init>(ILjava/util/ArrayList;)V

    .line 277
    .line 278
    .line 279
    const/4 v15, 0x1

    .line 280
    :goto_8
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :goto_9
    if-nez v15, :cond_8

    .line 284
    .line 285
    invoke-virtual {v5, v4}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    if-nez v13, :cond_7

    .line 290
    .line 291
    const/4 v13, 0x0

    .line 292
    :cond_7
    invoke-static {v1, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    if-eqz v13, :cond_8

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_8
    sget-object v13, Ly2/r;->d:Ly2/u;

    .line 300
    .line 301
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    if-eqz v15, :cond_a

    .line 306
    .line 307
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 308
    .line 309
    invoke-static {v1, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    check-cast v1, Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v5, v13}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_9

    .line 319
    .line 320
    const/16 v4, 0x8

    .line 321
    .line 322
    invoke-virtual {v0, v1, v3, v4}, Lr2/b0;->A(Ljava/lang/String;II)V

    .line 323
    .line 324
    .line 325
    :cond_9
    :goto_a
    move v13, v3

    .line 326
    move-object/from16 v48, v8

    .line 327
    .line 328
    move/from16 v28, v14

    .line 329
    .line 330
    move-object/from16 v15, v40

    .line 331
    .line 332
    const/16 v12, 0x8

    .line 333
    .line 334
    :goto_b
    const/16 v37, 0x1

    .line 335
    .line 336
    move-object v8, v2

    .line 337
    move-object v14, v5

    .line 338
    move/from16 v2, v45

    .line 339
    .line 340
    :goto_c
    const/4 v5, 0x0

    .line 341
    goto/16 :goto_2b

    .line 342
    .line 343
    :cond_a
    sget-object v13, Ly2/r;->b:Ly2/u;

    .line 344
    .line 345
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    if-nez v13, :cond_b

    .line 350
    .line 351
    sget-object v13, Ly2/r;->I:Ly2/u;

    .line 352
    .line 353
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    if-eqz v13, :cond_c

    .line 358
    .line 359
    :cond_b
    move v13, v3

    .line 360
    move-object/from16 v48, v8

    .line 361
    .line 362
    move/from16 v28, v14

    .line 363
    .line 364
    move-object/from16 v15, v40

    .line 365
    .line 366
    const/16 v37, 0x1

    .line 367
    .line 368
    move-object v8, v2

    .line 369
    move-object v14, v5

    .line 370
    move/from16 v2, v45

    .line 371
    .line 372
    const/4 v5, 0x0

    .line 373
    goto/16 :goto_2a

    .line 374
    .line 375
    :cond_c
    sget-object v13, Ly2/r;->c:Ly2/u;

    .line 376
    .line 377
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-eqz v13, :cond_d

    .line 382
    .line 383
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    const/16 v4, 0x800

    .line 388
    .line 389
    const/16 v12, 0x8

    .line 390
    .line 391
    invoke-static {v0, v1, v4, v7, v12}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    invoke-static {v0, v1, v4, v2, v12}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 399
    .line 400
    .line 401
    move v13, v3

    .line 402
    move-object/from16 v48, v8

    .line 403
    .line 404
    move/from16 v28, v14

    .line 405
    .line 406
    move-object/from16 v15, v40

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_d
    sget-object v13, Ly2/r;->H:Ly2/u;

    .line 410
    .line 411
    invoke-static {v4, v13}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    move-object/from16 v48, v8

    .line 416
    .line 417
    const/4 v8, 0x4

    .line 418
    if-eqz v15, :cond_1a

    .line 419
    .line 420
    sget-object v1, Ly2/r;->x:Ly2/u;

    .line 421
    .line 422
    invoke-virtual {v11, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    if-nez v1, :cond_e

    .line 427
    .line 428
    const/4 v1, 0x0

    .line 429
    :cond_e
    check-cast v1, Ly2/g;

    .line 430
    .line 431
    if-nez v1, :cond_10

    .line 432
    .line 433
    :cond_f
    const/4 v1, 0x0

    .line 434
    goto :goto_d

    .line 435
    :cond_10
    iget v1, v1, Ly2/g;->a:I

    .line 436
    .line 437
    if-ne v1, v8, :cond_f

    .line 438
    .line 439
    const/4 v1, 0x1

    .line 440
    :goto_d
    if-eqz v1, :cond_19

    .line 441
    .line 442
    invoke-virtual {v11, v13}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    if-nez v1, :cond_11

    .line 447
    .line 448
    const/4 v1, 0x0

    .line 449
    :cond_11
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 450
    .line 451
    invoke-static {v1, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_18

    .line 456
    .line 457
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    invoke-virtual {v0, v1, v8}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    new-instance v4, Ly2/m;

    .line 466
    .line 467
    move-object/from16 v13, v41

    .line 468
    .line 469
    iget-object v8, v13, Ly2/m;->a:Lr1/o;

    .line 470
    .line 471
    move-object/from16 v15, v40

    .line 472
    .line 473
    const/4 v12, 0x1

    .line 474
    invoke-direct {v4, v8, v12, v15, v6}, Ly2/m;-><init>(Lr1/o;ZLq2/h0;Ly2/j;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4}, Ly2/m;->k()Ly2/j;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    sget-object v12, Ly2/r;->a:Ly2/u;

    .line 482
    .line 483
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 484
    .line 485
    invoke-virtual {v8, v12}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    if-nez v8, :cond_12

    .line 490
    .line 491
    const/4 v8, 0x0

    .line 492
    :cond_12
    check-cast v8, Ljava/util/List;

    .line 493
    .line 494
    const/16 v12, 0x3e

    .line 495
    .line 496
    move-object/from16 v40, v4

    .line 497
    .line 498
    const-string v4, ","

    .line 499
    .line 500
    move-object/from16 v41, v13

    .line 501
    .line 502
    const/4 v13, 0x0

    .line 503
    if-eqz v8, :cond_13

    .line 504
    .line 505
    invoke-static {v8, v4, v13, v12}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    move-object v13, v8

    .line 510
    :cond_13
    invoke-virtual/range {v40 .. v40}, Ly2/m;->k()Ly2/j;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    sget-object v12, Ly2/r;->A:Ly2/u;

    .line 515
    .line 516
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 517
    .line 518
    invoke-virtual {v8, v12}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    if-nez v8, :cond_14

    .line 523
    .line 524
    const/4 v8, 0x0

    .line 525
    :cond_14
    check-cast v8, Ljava/util/List;

    .line 526
    .line 527
    move/from16 v28, v14

    .line 528
    .line 529
    const/4 v12, 0x0

    .line 530
    if-eqz v8, :cond_15

    .line 531
    .line 532
    const/16 v14, 0x3e

    .line 533
    .line 534
    invoke-static {v8, v4, v12, v14}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    goto :goto_e

    .line 539
    :cond_15
    move-object v4, v12

    .line 540
    :goto_e
    if-eqz v13, :cond_16

    .line 541
    .line 542
    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 543
    .line 544
    .line 545
    :cond_16
    if-eqz v4, :cond_17

    .line 546
    .line 547
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    :cond_17
    invoke-virtual {v0, v1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 555
    .line 556
    .line 557
    const/16 v13, 0x800

    .line 558
    .line 559
    goto :goto_f

    .line 560
    :cond_18
    move/from16 v28, v14

    .line 561
    .line 562
    move-object/from16 v15, v40

    .line 563
    .line 564
    const/4 v12, 0x0

    .line 565
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    const/16 v4, 0x8

    .line 570
    .line 571
    const/16 v13, 0x800

    .line 572
    .line 573
    invoke-static {v0, v1, v13, v2, v4}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 574
    .line 575
    .line 576
    goto :goto_f

    .line 577
    :cond_19
    move/from16 v28, v14

    .line 578
    .line 579
    move-object/from16 v15, v40

    .line 580
    .line 581
    const/16 v4, 0x8

    .line 582
    .line 583
    const/4 v12, 0x0

    .line 584
    const/16 v13, 0x800

    .line 585
    .line 586
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    invoke-static {v0, v1, v13, v7, v4}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    invoke-static {v0, v1, v13, v2, v4}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 598
    .line 599
    .line 600
    :goto_f
    move-object v8, v2

    .line 601
    move v13, v3

    .line 602
    move-object v14, v5

    .line 603
    move/from16 v2, v45

    .line 604
    .line 605
    const/4 v5, 0x0

    .line 606
    const/16 v12, 0x8

    .line 607
    .line 608
    const/16 v37, 0x1

    .line 609
    .line 610
    goto/16 :goto_2b

    .line 611
    .line 612
    :cond_1a
    move/from16 v28, v14

    .line 613
    .line 614
    move-object/from16 v15, v40

    .line 615
    .line 616
    const/16 v13, 0x800

    .line 617
    .line 618
    const/4 v14, 0x0

    .line 619
    const/16 v36, 0x4

    .line 620
    .line 621
    const/16 v37, 0x1

    .line 622
    .line 623
    sget-object v8, Ly2/r;->a:Ly2/u;

    .line 624
    .line 625
    invoke-static {v4, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v8

    .line 629
    if-eqz v8, :cond_1c

    .line 630
    .line 631
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v8

    .line 639
    const-string v12, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    .line 640
    .line 641
    invoke-static {v1, v12}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    check-cast v1, Ljava/util/List;

    .line 645
    .line 646
    invoke-virtual {v0, v4, v13, v8, v1}, Lr2/b0;->y(IILjava/lang/Integer;Ljava/util/List;)Z

    .line 647
    .line 648
    .line 649
    move-object v8, v2

    .line 650
    move v13, v3

    .line 651
    move-object v14, v5

    .line 652
    :goto_10
    move/from16 v2, v45

    .line 653
    .line 654
    :goto_11
    const/4 v5, 0x0

    .line 655
    :cond_1b
    :goto_12
    const/16 v12, 0x8

    .line 656
    .line 657
    goto/16 :goto_2b

    .line 658
    .line 659
    :cond_1c
    sget-object v8, Ly2/r;->E:Ly2/u;

    .line 660
    .line 661
    invoke-static {v4, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v13

    .line 665
    const-wide v49, 0xffffffffL

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    const/16 v40, 0x20

    .line 671
    .line 672
    const-string v51, ""

    .line 673
    .line 674
    if-eqz v13, :cond_2d

    .line 675
    .line 676
    sget-object v1, Ly2/i;->j:Ly2/u;

    .line 677
    .line 678
    invoke-virtual {v11, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-eqz v1, :cond_2c

    .line 683
    .line 684
    invoke-virtual {v5, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v13

    .line 688
    if-nez v13, :cond_1d

    .line 689
    .line 690
    move-object v13, v14

    .line 691
    :cond_1d
    check-cast v13, Lb3/g;

    .line 692
    .line 693
    if-eqz v13, :cond_1e

    .line 694
    .line 695
    goto :goto_13

    .line 696
    :cond_1e
    move-object/from16 v13, v51

    .line 697
    .line 698
    :goto_13
    invoke-virtual {v11, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    if-nez v1, :cond_1f

    .line 703
    .line 704
    move-object v1, v14

    .line 705
    :cond_1f
    check-cast v1, Lb3/g;

    .line 706
    .line 707
    if-eqz v1, :cond_20

    .line 708
    .line 709
    goto :goto_14

    .line 710
    :cond_20
    move-object/from16 v1, v51

    .line 711
    .line 712
    :goto_14
    invoke-static {v1}, Lr2/b0;->J(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 717
    .line 718
    .line 719
    move-result v8

    .line 720
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 721
    .line 722
    .line 723
    move-result v12

    .line 724
    if-le v8, v12, :cond_21

    .line 725
    .line 726
    move v14, v12

    .line 727
    goto :goto_15

    .line 728
    :cond_21
    move v14, v8

    .line 729
    :goto_15
    move-object/from16 v52, v2

    .line 730
    .line 731
    const/4 v2, 0x0

    .line 732
    :goto_16
    move/from16 v51, v8

    .line 733
    .line 734
    if-ge v2, v14, :cond_23

    .line 735
    .line 736
    invoke-interface {v13, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 737
    .line 738
    .line 739
    move-result v8

    .line 740
    move/from16 v53, v12

    .line 741
    .line 742
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 743
    .line 744
    .line 745
    move-result v12

    .line 746
    if-eq v8, v12, :cond_22

    .line 747
    .line 748
    goto :goto_17

    .line 749
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 750
    .line 751
    move/from16 v8, v51

    .line 752
    .line 753
    move/from16 v12, v53

    .line 754
    .line 755
    goto :goto_16

    .line 756
    :cond_23
    move/from16 v53, v12

    .line 757
    .line 758
    :goto_17
    const/4 v8, 0x0

    .line 759
    :goto_18
    sub-int v12, v14, v2

    .line 760
    .line 761
    if-ge v8, v12, :cond_25

    .line 762
    .line 763
    add-int/lit8 v12, v51, -0x1

    .line 764
    .line 765
    sub-int/2addr v12, v8

    .line 766
    invoke-interface {v13, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 767
    .line 768
    .line 769
    move-result v12

    .line 770
    add-int/lit8 v54, v53, -0x1

    .line 771
    .line 772
    move/from16 v55, v8

    .line 773
    .line 774
    sub-int v8, v54, v55

    .line 775
    .line 776
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 777
    .line 778
    .line 779
    move-result v8

    .line 780
    if-eq v12, v8, :cond_24

    .line 781
    .line 782
    goto :goto_19

    .line 783
    :cond_24
    add-int/lit8 v8, v55, 0x1

    .line 784
    .line 785
    goto :goto_18

    .line 786
    :cond_25
    move/from16 v55, v8

    .line 787
    .line 788
    :goto_19
    sub-int v8, v51, v55

    .line 789
    .line 790
    sub-int/2addr v8, v2

    .line 791
    sub-int v12, v53, v55

    .line 792
    .line 793
    sub-int/2addr v12, v2

    .line 794
    sget-object v1, Ly2/r;->J:Ly2/u;

    .line 795
    .line 796
    invoke-virtual {v5, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v14

    .line 800
    invoke-virtual {v11, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    move/from16 v51, v1

    .line 805
    .line 806
    sget-object v1, Ly2/r;->E:Ly2/u;

    .line 807
    .line 808
    invoke-virtual {v5, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-eqz v1, :cond_26

    .line 813
    .line 814
    if-nez v14, :cond_26

    .line 815
    .line 816
    if-eqz v51, :cond_26

    .line 817
    .line 818
    const/16 v54, 0x1

    .line 819
    .line 820
    goto :goto_1a

    .line 821
    :cond_26
    const/16 v54, 0x0

    .line 822
    .line 823
    :goto_1a
    if-eqz v1, :cond_27

    .line 824
    .line 825
    if-eqz v14, :cond_27

    .line 826
    .line 827
    if-nez v51, :cond_27

    .line 828
    .line 829
    const/4 v14, 0x1

    .line 830
    goto :goto_1b

    .line 831
    :cond_27
    const/4 v14, 0x0

    .line 832
    :goto_1b
    if-nez v54, :cond_28

    .line 833
    .line 834
    if-eqz v14, :cond_29

    .line 835
    .line 836
    :cond_28
    move-object/from16 v55, v5

    .line 837
    .line 838
    goto :goto_1c

    .line 839
    :cond_29
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    move-object/from16 v55, v5

    .line 844
    .line 845
    const/16 v5, 0x10

    .line 846
    .line 847
    invoke-virtual {v0, v1, v5}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v13}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move v13, v3

    .line 871
    move-object/from16 v2, v52

    .line 872
    .line 873
    goto :goto_1d

    .line 874
    :goto_1c
    invoke-virtual {v0, v3}, Lr2/b0;->v(I)I

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    move v5, v3

    .line 883
    move-object/from16 v3, v52

    .line 884
    .line 885
    move v13, v5

    .line 886
    move-object v5, v4

    .line 887
    move-object v4, v2

    .line 888
    move-object/from16 v2, v52

    .line 889
    .line 890
    invoke-virtual/range {v0 .. v5}, Lr2/b0;->l(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    :goto_1d
    const-string v3, "android.widget.EditText"

    .line 895
    .line 896
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0, v1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 900
    .line 901
    .line 902
    if-nez v54, :cond_2b

    .line 903
    .line 904
    if-eqz v14, :cond_2a

    .line 905
    .line 906
    goto :goto_1e

    .line 907
    :cond_2a
    move-object/from16 v52, v2

    .line 908
    .line 909
    goto :goto_1f

    .line 910
    :cond_2b
    :goto_1e
    sget-object v3, Ly2/r;->F:Ly2/u;

    .line 911
    .line 912
    invoke-virtual {v6, v3}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    check-cast v3, Lb3/n0;

    .line 917
    .line 918
    iget-wide v3, v3, Lb3/n0;->a:J

    .line 919
    .line 920
    move-object/from16 v52, v2

    .line 921
    .line 922
    move-wide/from16 v53, v3

    .line 923
    .line 924
    shr-long v2, v53, v40

    .line 925
    .line 926
    long-to-int v3, v2

    .line 927
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 928
    .line 929
    .line 930
    and-long v2, v53, v49

    .line 931
    .line 932
    long-to-int v3, v2

    .line 933
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 937
    .line 938
    .line 939
    :goto_1f
    move/from16 v2, v45

    .line 940
    .line 941
    move-object/from16 v8, v52

    .line 942
    .line 943
    move-object/from16 v14, v55

    .line 944
    .line 945
    goto/16 :goto_11

    .line 946
    .line 947
    :cond_2c
    move-object/from16 v52, v2

    .line 948
    .line 949
    move v13, v3

    .line 950
    move-object/from16 v55, v5

    .line 951
    .line 952
    invoke-virtual {v0, v13}, Lr2/b0;->v(I)I

    .line 953
    .line 954
    .line 955
    move-result v1

    .line 956
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    const/16 v4, 0x800

    .line 961
    .line 962
    const/16 v12, 0x8

    .line 963
    .line 964
    invoke-static {v0, v1, v4, v2, v12}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 965
    .line 966
    .line 967
    move/from16 v2, v45

    .line 968
    .line 969
    move-object/from16 v8, v52

    .line 970
    .line 971
    move-object/from16 v14, v55

    .line 972
    .line 973
    goto/16 :goto_c

    .line 974
    .line 975
    :cond_2d
    move-object/from16 v52, v2

    .line 976
    .line 977
    move v13, v3

    .line 978
    move-object v14, v5

    .line 979
    sget-object v2, Ly2/r;->F:Ly2/u;

    .line 980
    .line 981
    invoke-static {v4, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    move-result v3

    .line 985
    if-eqz v3, :cond_31

    .line 986
    .line 987
    invoke-virtual {v11, v8}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    if-nez v1, :cond_2e

    .line 992
    .line 993
    const/4 v1, 0x0

    .line 994
    :cond_2e
    check-cast v1, Lb3/g;

    .line 995
    .line 996
    if-eqz v1, :cond_30

    .line 997
    .line 998
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 999
    .line 1000
    if-nez v1, :cond_2f

    .line 1001
    .line 1002
    goto :goto_20

    .line 1003
    :cond_2f
    move-object/from16 v51, v1

    .line 1004
    .line 1005
    :cond_30
    :goto_20
    invoke-virtual {v6, v2}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    check-cast v1, Lb3/n0;

    .line 1010
    .line 1011
    iget-wide v1, v1, Lb3/n0;->a:J

    .line 1012
    .line 1013
    move-wide v2, v1

    .line 1014
    invoke-virtual {v0, v13}, Lr2/b0;->v(I)I

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    shr-long v4, v2, v40

    .line 1019
    .line 1020
    long-to-int v5, v4

    .line 1021
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    and-long v2, v2, v49

    .line 1026
    .line 1027
    long-to-int v3, v2

    .line 1028
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v3

    .line 1032
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    .line 1033
    .line 1034
    .line 1035
    move-result v2

    .line 1036
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    invoke-static/range {v51 .. v51}, Lr2/b0;->J(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v5

    .line 1044
    move-object v8, v4

    .line 1045
    move-object v4, v2

    .line 1046
    move-object v2, v8

    .line 1047
    move-object/from16 v8, v52

    .line 1048
    .line 1049
    invoke-virtual/range {v0 .. v5}, Lr2/b0;->l(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    invoke-virtual {v0, v1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v0, v10}, Lr2/b0;->B(I)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_10

    .line 1060
    .line 1061
    :cond_31
    move/from16 v2, v45

    .line 1062
    .line 1063
    move-object/from16 v8, v52

    .line 1064
    .line 1065
    invoke-static {v4, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v3

    .line 1069
    if-nez v3, :cond_32

    .line 1070
    .line 1071
    sget-object v3, Ly2/r;->u:Ly2/u;

    .line 1072
    .line 1073
    invoke-static {v4, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v3

    .line 1077
    if-eqz v3, :cond_33

    .line 1078
    .line 1079
    :cond_32
    const/4 v5, 0x0

    .line 1080
    goto/16 :goto_27

    .line 1081
    .line 1082
    :cond_33
    sget-object v3, Ly2/r;->k:Ly2/u;

    .line 1083
    .line 1084
    invoke-static {v4, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v3

    .line 1088
    if-eqz v3, :cond_35

    .line 1089
    .line 1090
    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    .line 1091
    .line 1092
    invoke-static {v1, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    check-cast v1, Ljava/lang/Boolean;

    .line 1096
    .line 1097
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    if-eqz v1, :cond_34

    .line 1102
    .line 1103
    invoke-virtual {v0, v10}, Lr2/b0;->v(I)I

    .line 1104
    .line 1105
    .line 1106
    move-result v1

    .line 1107
    const/16 v4, 0x8

    .line 1108
    .line 1109
    invoke-virtual {v0, v1, v4}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    invoke-virtual {v0, v1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1114
    .line 1115
    .line 1116
    goto :goto_21

    .line 1117
    :cond_34
    const/16 v4, 0x8

    .line 1118
    .line 1119
    :goto_21
    invoke-virtual {v0, v10}, Lr2/b0;->v(I)I

    .line 1120
    .line 1121
    .line 1122
    move-result v1

    .line 1123
    const/16 v3, 0x800

    .line 1124
    .line 1125
    invoke-static {v0, v1, v3, v8, v4}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_11

    .line 1129
    .line 1130
    :cond_35
    sget-object v3, Ly2/i;->w:Ly2/u;

    .line 1131
    .line 1132
    invoke-static {v4, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v5

    .line 1136
    if-eqz v5, :cond_3d

    .line 1137
    .line 1138
    invoke-virtual {v6, v3}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    check-cast v1, Ljava/util/List;

    .line 1143
    .line 1144
    invoke-virtual {v14, v3}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v3

    .line 1148
    if-nez v3, :cond_36

    .line 1149
    .line 1150
    const/4 v3, 0x0

    .line 1151
    :cond_36
    check-cast v3, Ljava/util/List;

    .line 1152
    .line 1153
    if-eqz v3, :cond_3b

    .line 1154
    .line 1155
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1156
    .line 1157
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1158
    .line 1159
    .line 1160
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1161
    .line 1162
    .line 1163
    move-result v5

    .line 1164
    if-gtz v5, :cond_3a

    .line 1165
    .line 1166
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 1167
    .line 1168
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1169
    .line 1170
    .line 1171
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1172
    .line 1173
    .line 1174
    move-result v5

    .line 1175
    if-gtz v5, :cond_39

    .line 1176
    .line 1177
    invoke-interface {v4, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v3

    .line 1181
    if-eqz v3, :cond_38

    .line 1182
    .line 1183
    invoke-interface {v1, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v1

    .line 1187
    if-nez v1, :cond_37

    .line 1188
    .line 1189
    goto :goto_22

    .line 1190
    :cond_37
    const/16 v38, 0x0

    .line 1191
    .line 1192
    goto/16 :goto_11

    .line 1193
    .line 1194
    :cond_38
    :goto_22
    const/16 v38, 0x1

    .line 1195
    .line 1196
    goto/16 :goto_11

    .line 1197
    .line 1198
    :cond_39
    const/4 v5, 0x0

    .line 1199
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    .line 1205
    .line 1206
    new-instance v1, Ljava/lang/ClassCastException;

    .line 1207
    .line 1208
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    throw v1

    .line 1212
    :cond_3a
    const/4 v5, 0x0

    .line 1213
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    new-instance v1, Ljava/lang/ClassCastException;

    .line 1221
    .line 1222
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    throw v1

    .line 1226
    :cond_3b
    const/4 v5, 0x0

    .line 1227
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1228
    .line 1229
    .line 1230
    move-result v1

    .line 1231
    if-nez v1, :cond_1b

    .line 1232
    .line 1233
    :cond_3c
    :goto_23
    const/16 v38, 0x1

    .line 1234
    .line 1235
    goto/16 :goto_12

    .line 1236
    .line 1237
    :cond_3d
    const/4 v5, 0x0

    .line 1238
    instance-of v3, v1, Ly2/a;

    .line 1239
    .line 1240
    if-eqz v3, :cond_3c

    .line 1241
    .line 1242
    check-cast v1, Ly2/a;

    .line 1243
    .line 1244
    invoke-virtual {v14, v4}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    if-nez v3, :cond_3e

    .line 1249
    .line 1250
    const/4 v3, 0x0

    .line 1251
    :cond_3e
    if-ne v1, v3, :cond_3f

    .line 1252
    .line 1253
    goto :goto_25

    .line 1254
    :cond_3f
    instance-of v4, v3, Ly2/a;

    .line 1255
    .line 1256
    if-nez v4, :cond_40

    .line 1257
    .line 1258
    goto :goto_24

    .line 1259
    :cond_40
    iget-object v4, v1, Ly2/a;->a:Ljava/lang/String;

    .line 1260
    .line 1261
    check-cast v3, Ly2/a;

    .line 1262
    .line 1263
    iget-object v12, v3, Ly2/a;->b:Lr8/e;

    .line 1264
    .line 1265
    iget-object v3, v3, Ly2/a;->a:Ljava/lang/String;

    .line 1266
    .line 1267
    invoke-static {v4, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v3

    .line 1271
    if-nez v3, :cond_41

    .line 1272
    .line 1273
    goto :goto_24

    .line 1274
    :cond_41
    iget-object v1, v1, Ly2/a;->b:Lr8/e;

    .line 1275
    .line 1276
    if-nez v1, :cond_42

    .line 1277
    .line 1278
    if-eqz v12, :cond_42

    .line 1279
    .line 1280
    goto :goto_24

    .line 1281
    :cond_42
    if-eqz v1, :cond_43

    .line 1282
    .line 1283
    if-nez v12, :cond_43

    .line 1284
    .line 1285
    :goto_24
    const/4 v12, 0x0

    .line 1286
    goto :goto_26

    .line 1287
    :cond_43
    :goto_25
    const/4 v12, 0x1

    .line 1288
    :goto_26
    if-nez v12, :cond_44

    .line 1289
    .line 1290
    goto :goto_23

    .line 1291
    :cond_44
    const/16 v38, 0x0

    .line 1292
    .line 1293
    goto/16 :goto_12

    .line 1294
    .line 1295
    :goto_27
    invoke-virtual {v0, v15}, Lr2/b0;->r(Lq2/h0;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1299
    .line 1300
    .line 1301
    move-result v1

    .line 1302
    const/4 v3, 0x0

    .line 1303
    :goto_28
    if-ge v3, v1, :cond_46

    .line 1304
    .line 1305
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v4

    .line 1309
    check-cast v4, Lr2/k2;

    .line 1310
    .line 1311
    iget v4, v4, Lr2/k2;->a:I

    .line 1312
    .line 1313
    if-ne v4, v13, :cond_45

    .line 1314
    .line 1315
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    check-cast v1, Lr2/k2;

    .line 1320
    .line 1321
    goto :goto_29

    .line 1322
    :cond_45
    add-int/lit8 v3, v3, 0x1

    .line 1323
    .line 1324
    goto :goto_28

    .line 1325
    :cond_46
    const/4 v1, 0x0

    .line 1326
    :goto_29
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v11, v12}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v3

    .line 1333
    if-nez v3, :cond_47

    .line 1334
    .line 1335
    const/4 v3, 0x0

    .line 1336
    :cond_47
    check-cast v3, Ly2/h;

    .line 1337
    .line 1338
    iput-object v3, v1, Lr2/k2;->e:Ly2/h;

    .line 1339
    .line 1340
    sget-object v3, Ly2/r;->u:Ly2/u;

    .line 1341
    .line 1342
    invoke-virtual {v11, v3}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v3

    .line 1346
    if-nez v3, :cond_48

    .line 1347
    .line 1348
    const/4 v3, 0x0

    .line 1349
    :cond_48
    check-cast v3, Ly2/h;

    .line 1350
    .line 1351
    iput-object v3, v1, Lr2/k2;->f:Ly2/h;

    .line 1352
    .line 1353
    iget-object v3, v1, Lr2/k2;->b:Ljava/util/List;

    .line 1354
    .line 1355
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v3

    .line 1359
    if-nez v3, :cond_49

    .line 1360
    .line 1361
    goto/16 :goto_12

    .line 1362
    .line 1363
    :cond_49
    iget-object v3, v0, Lr2/b0;->d:Lr2/u;

    .line 1364
    .line 1365
    invoke-virtual {v3}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v3

    .line 1369
    new-instance v4, Lk2/d;

    .line 1370
    .line 1371
    const/4 v12, 0x5

    .line 1372
    invoke-direct {v4, v12, v1, v0}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1373
    .line 1374
    .line 1375
    iget-object v12, v0, Lr2/b0;->P:Lr2/a0;

    .line 1376
    .line 1377
    invoke-virtual {v3, v1, v12, v4}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 1378
    .line 1379
    .line 1380
    goto/16 :goto_12

    .line 1381
    .line 1382
    :goto_2a
    invoke-virtual {v0, v13}, Lr2/b0;->v(I)I

    .line 1383
    .line 1384
    .line 1385
    move-result v1

    .line 1386
    const/16 v4, 0x800

    .line 1387
    .line 1388
    const/16 v12, 0x8

    .line 1389
    .line 1390
    invoke-static {v0, v1, v4, v7, v12}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v0, v13}, Lr2/b0;->v(I)I

    .line 1394
    .line 1395
    .line 1396
    move-result v1

    .line 1397
    invoke-static {v0, v1, v4, v8, v12}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_2b

    .line 1401
    :cond_4a
    move-object/from16 v43, v4

    .line 1402
    .line 1403
    move-object/from16 v48, v8

    .line 1404
    .line 1405
    move-wide/from16 v46, v12

    .line 1406
    .line 1407
    move/from16 v28, v14

    .line 1408
    .line 1409
    move/from16 v44, v15

    .line 1410
    .line 1411
    move-object/from16 v15, v40

    .line 1412
    .line 1413
    const/16 v12, 0x8

    .line 1414
    .line 1415
    const/16 v37, 0x1

    .line 1416
    .line 1417
    move-object v8, v2

    .line 1418
    move v13, v3

    .line 1419
    move-object v14, v5

    .line 1420
    const/4 v5, 0x0

    .line 1421
    move v2, v1

    .line 1422
    :goto_2b
    shr-long v3, v46, v12

    .line 1423
    .line 1424
    add-int/lit8 v1, v44, 0x1

    .line 1425
    .line 1426
    move-wide/from16 v56, v3

    .line 1427
    .line 1428
    move v3, v13

    .line 1429
    move-wide/from16 v12, v56

    .line 1430
    .line 1431
    move-object v5, v14

    .line 1432
    move-object/from16 v40, v15

    .line 1433
    .line 1434
    move/from16 v14, v28

    .line 1435
    .line 1436
    move-object/from16 v4, v43

    .line 1437
    .line 1438
    const/16 v27, 0x8

    .line 1439
    .line 1440
    move v15, v1

    .line 1441
    move v1, v2

    .line 1442
    move-object v2, v8

    .line 1443
    move-object/from16 v8, v48

    .line 1444
    .line 1445
    goto/16 :goto_4

    .line 1446
    .line 1447
    :cond_4b
    move v13, v3

    .line 1448
    move-object/from16 v43, v4

    .line 1449
    .line 1450
    move-object/from16 v48, v8

    .line 1451
    .line 1452
    move-object/from16 v15, v40

    .line 1453
    .line 1454
    const/16 v12, 0x8

    .line 1455
    .line 1456
    const/16 v37, 0x1

    .line 1457
    .line 1458
    move-object v8, v2

    .line 1459
    move v2, v1

    .line 1460
    move v1, v14

    .line 1461
    move-object v14, v5

    .line 1462
    const/4 v5, 0x0

    .line 1463
    if-ne v1, v12, :cond_4e

    .line 1464
    .line 1465
    :goto_2c
    move/from16 v1, v42

    .line 1466
    .line 1467
    goto :goto_2d

    .line 1468
    :cond_4c
    move v13, v3

    .line 1469
    move-object/from16 v43, v4

    .line 1470
    .line 1471
    move-object v14, v5

    .line 1472
    move-object/from16 v48, v8

    .line 1473
    .line 1474
    move-object/from16 v15, v40

    .line 1475
    .line 1476
    const/4 v5, 0x0

    .line 1477
    const/16 v37, 0x1

    .line 1478
    .line 1479
    move-object v8, v2

    .line 1480
    move v2, v1

    .line 1481
    goto :goto_2c

    .line 1482
    :goto_2d
    if-eq v1, v2, :cond_4e

    .line 1483
    .line 1484
    add-int/lit8 v1, v1, 0x1

    .line 1485
    .line 1486
    move v3, v13

    .line 1487
    move-object v5, v14

    .line 1488
    move-object/from16 v40, v15

    .line 1489
    .line 1490
    move-object/from16 v14, v41

    .line 1491
    .line 1492
    move-object/from16 v4, v43

    .line 1493
    .line 1494
    const/16 v27, 0x8

    .line 1495
    .line 1496
    move v15, v1

    .line 1497
    move v1, v2

    .line 1498
    move-object v2, v8

    .line 1499
    move-object/from16 v8, v48

    .line 1500
    .line 1501
    goto/16 :goto_3

    .line 1502
    .line 1503
    :cond_4d
    move-object/from16 v43, v4

    .line 1504
    .line 1505
    move-object/from16 v48, v8

    .line 1506
    .line 1507
    move/from16 v39, v13

    .line 1508
    .line 1509
    move-object/from16 v41, v14

    .line 1510
    .line 1511
    const/4 v5, 0x0

    .line 1512
    const/16 v37, 0x1

    .line 1513
    .line 1514
    move-object v8, v2

    .line 1515
    move v13, v3

    .line 1516
    const/16 v38, 0x0

    .line 1517
    .line 1518
    :cond_4e
    if-nez v38, :cond_51

    .line 1519
    .line 1520
    invoke-virtual/range {v43 .. v43}, Ly2/j;->iterator()Ljava/util/Iterator;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1525
    .line 1526
    .line 1527
    move-result v2

    .line 1528
    if-eqz v2, :cond_50

    .line 1529
    .line 1530
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v2

    .line 1534
    check-cast v2, Ljava/util/Map$Entry;

    .line 1535
    .line 1536
    invoke-virtual/range {v41 .. v41}, Ly2/m;->k()Ly2/j;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v3

    .line 1540
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v2

    .line 1544
    check-cast v2, Ly2/u;

    .line 1545
    .line 1546
    iget-object v3, v3, Ly2/j;->a:Ls/h0;

    .line 1547
    .line 1548
    invoke-virtual {v3, v2}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 1549
    .line 1550
    .line 1551
    move-result v2

    .line 1552
    if-nez v2, :cond_4f

    .line 1553
    .line 1554
    const/4 v15, 0x1

    .line 1555
    goto :goto_2e

    .line 1556
    :cond_50
    const/4 v15, 0x0

    .line 1557
    :goto_2e
    move/from16 v38, v15

    .line 1558
    .line 1559
    :cond_51
    if-eqz v38, :cond_52

    .line 1560
    .line 1561
    invoke-virtual {v0, v13}, Lr2/b0;->v(I)I

    .line 1562
    .line 1563
    .line 1564
    move-result v1

    .line 1565
    const/16 v4, 0x800

    .line 1566
    .line 1567
    const/16 v12, 0x8

    .line 1568
    .line 1569
    invoke-static {v0, v1, v4, v8, v12}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 1570
    .line 1571
    .line 1572
    goto :goto_30

    .line 1573
    :cond_52
    const/16 v12, 0x8

    .line 1574
    .line 1575
    goto :goto_30

    .line 1576
    :cond_53
    const-string v1, "no value for specified key"

    .line 1577
    .line 1578
    invoke-static {v1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v1

    .line 1582
    throw v1

    .line 1583
    :cond_54
    :goto_2f
    move/from16 v34, v1

    .line 1584
    .line 1585
    move-object/from16 v48, v8

    .line 1586
    .line 1587
    move-object/from16 v29, v10

    .line 1588
    .line 1589
    move-object/from16 v30, v11

    .line 1590
    .line 1591
    move/from16 v39, v13

    .line 1592
    .line 1593
    move/from16 v31, v15

    .line 1594
    .line 1595
    const/4 v5, 0x0

    .line 1596
    move-object v8, v2

    .line 1597
    :goto_30
    shr-long v21, v21, v12

    .line 1598
    .line 1599
    add-int/lit8 v1, v34, 0x1

    .line 1600
    .line 1601
    move-object/from16 v6, p1

    .line 1602
    .line 1603
    move-object v2, v8

    .line 1604
    move-object/from16 v10, v29

    .line 1605
    .line 1606
    move-object/from16 v11, v30

    .line 1607
    .line 1608
    move/from16 v15, v31

    .line 1609
    .line 1610
    move/from16 v13, v39

    .line 1611
    .line 1612
    move-object/from16 v8, v48

    .line 1613
    .line 1614
    const/4 v14, 0x0

    .line 1615
    goto/16 :goto_1

    .line 1616
    .line 1617
    :cond_55
    move-object/from16 v48, v8

    .line 1618
    .line 1619
    move-object/from16 v29, v10

    .line 1620
    .line 1621
    move-object/from16 v30, v11

    .line 1622
    .line 1623
    move v1, v13

    .line 1624
    move/from16 v31, v15

    .line 1625
    .line 1626
    const/4 v5, 0x0

    .line 1627
    move-object v8, v2

    .line 1628
    if-ne v1, v12, :cond_57

    .line 1629
    .line 1630
    move/from16 v14, v31

    .line 1631
    .line 1632
    :goto_31
    move/from16 v1, v17

    .line 1633
    .line 1634
    goto :goto_32

    .line 1635
    :cond_56
    move-object/from16 v48, v8

    .line 1636
    .line 1637
    move-object/from16 v29, v10

    .line 1638
    .line 1639
    move-object/from16 v30, v11

    .line 1640
    .line 1641
    const/4 v5, 0x0

    .line 1642
    move-object v8, v2

    .line 1643
    move v14, v15

    .line 1644
    goto :goto_31

    .line 1645
    :goto_32
    if-eq v14, v1, :cond_57

    .line 1646
    .line 1647
    add-int/lit8 v15, v14, 0x1

    .line 1648
    .line 1649
    move-object/from16 v6, p1

    .line 1650
    .line 1651
    move v13, v1

    .line 1652
    move-object v2, v8

    .line 1653
    move-object/from16 v10, v29

    .line 1654
    .line 1655
    move-object/from16 v11, v30

    .line 1656
    .line 1657
    move-object/from16 v8, v48

    .line 1658
    .line 1659
    const/4 v12, 0x2

    .line 1660
    const/4 v14, 0x0

    .line 1661
    goto/16 :goto_0

    .line 1662
    .line 1663
    :cond_57
    return-void
.end method

.method public final D(Lq2/h0;Ls/x;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lq2/h0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lr2/b0;->d:Lr2/u;

    .line 10
    .line 11
    invoke-virtual {v0}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lr2/w0;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget-object v0, p1, Lq2/h0;->E:Lq2/d1;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lq2/d1;->d(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object v0, p1, Lq2/h0;->E:Lq2/d1;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lq2/d1;->d(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    move-object p1, v2

    .line 60
    :goto_1
    if-eqz p1, :cond_a

    .line 61
    .line 62
    invoke-virtual {p1}, Lq2/h0;->x()Ly2/j;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    iget-boolean v0, v0, Ly2/j;->c:Z

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    if-nez v0, :cond_8

    .line 73
    .line 74
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_2
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0}, Lq2/h0;->x()Ly2/j;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    iget-boolean v4, v4, Ly2/j;->c:Z

    .line 87
    .line 88
    if-ne v4, v3, :cond_6

    .line 89
    .line 90
    move-object v2, v0

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 98
    .line 99
    move-object p1, v2

    .line 100
    :cond_8
    iget p1, p1, Lq2/h0;->b:I

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ls/x;->a(I)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_9

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_9
    invoke-virtual {p0, p1}, Lr2/b0;->v(I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const/16 p2, 0x800

    .line 114
    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p0, p1, p2, v0, v1}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 120
    .line 121
    .line 122
    :cond_a
    :goto_4
    return-void
.end method

.method public final E(Lq2/h0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lq2/h0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lr2/b0;->d:Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lr2/w0;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget p1, p1, Lq2/h0;->b:I

    .line 26
    .line 27
    iget-object v0, p0, Lr2/b0;->s:Ls/w;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ls/k;->b(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ly2/h;

    .line 34
    .line 35
    iget-object v1, p0, Lr2/b0;->t:Ls/w;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ls/k;->b(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ly2/h;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_2
    const/16 v2, 0x1000

    .line 49
    .line 50
    invoke-virtual {p0, p1, v2}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v2, v0, Ly2/h;->a:Lf9/a;

    .line 57
    .line 58
    invoke-interface {v2}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    float-to-int v2, v2

    .line 69
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Ly2/h;->b:Lf9/a;

    .line 73
    .line 74
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    float-to-int v0, v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    if-eqz v1, :cond_4

    .line 89
    .line 90
    iget-object v0, v1, Ly2/h;->a:Lf9/a;

    .line 91
    .line 92
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    float-to-int v0, v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v1, Ly2/h;->b:Lf9/a;

    .line 107
    .line 108
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    float-to-int v0, v0

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {p0, p1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final F(Ly2/m;IIZ)Z
    .locals 10

    .line 1
    iget-object v0, p1, Ly2/m;->d:Ly2/j;

    .line 2
    .line 3
    iget v1, p1, Ly2/m;->g:I

    .line 4
    .line 5
    sget-object v2, Ly2/i;->i:Ly2/u;

    .line 6
    .line 7
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lr2/j0;->a(Ly2/m;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Ly2/m;->d:Ly2/j;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ly2/a;

    .line 29
    .line 30
    iget-object p1, p1, Ly2/a;->b:Lr8/e;

    .line 31
    .line 32
    check-cast p1, Lf9/o;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    invoke-interface {p1, p2, p3, p4}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_0
    if-ne p2, p3, :cond_1

    .line 60
    .line 61
    iget p4, p0, Lr2/b0;->w:I

    .line 62
    .line 63
    if-ne p3, p4, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Lr2/b0;->p(Ly2/m;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-nez v9, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_0
    return v3

    .line 73
    :cond_3
    if-ltz p2, :cond_4

    .line 74
    .line 75
    if-ne p2, p3, :cond_4

    .line 76
    .line 77
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-gt p3, p1, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 p2, -0x1

    .line 85
    :goto_1
    iput p2, p0, Lr2/b0;->w:I

    .line 86
    .line 87
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 p2, 0x1

    .line 92
    if-lez p1, :cond_5

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    :cond_5
    invoke-virtual {p0, v1}, Lr2/b0;->v(I)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 p1, 0x0

    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    iget p3, p0, Lr2/b0;->w:I

    .line 103
    .line 104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    move-object v6, p3

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    move-object v6, p1

    .line 111
    :goto_2
    if-eqz v3, :cond_7

    .line 112
    .line 113
    iget p3, p0, Lr2/b0;->w:I

    .line 114
    .line 115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    move-object v7, p3

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    move-object v7, p1

    .line 122
    :goto_3
    if-eqz v3, :cond_8

    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :cond_8
    move-object v4, p0

    .line 133
    move-object v8, p1

    .line 134
    invoke-virtual/range {v4 .. v9}, Lr2/b0;->l(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v1}, Lr2/b0;->B(I)V

    .line 142
    .line 143
    .line 144
    return p2
.end method

.method public final K()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ls/x;

    .line 4
    .line 5
    invoke-direct {v1}, Ls/x;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lr2/b0;->D:Ls/x;

    .line 9
    .line 10
    iget-object v3, v2, Ls/x;->b:[I

    .line 11
    .line 12
    iget-object v4, v2, Ls/x;->a:[J

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    add-int/lit8 v5, v5, -0x2

    .line 16
    .line 17
    iget-object v6, v0, Lr2/b0;->J:Ls/w;

    .line 18
    .line 19
    const/16 v14, 0x8

    .line 20
    .line 21
    if-ltz v5, :cond_8

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const-wide/16 v16, 0x80

    .line 25
    .line 26
    const-wide/16 v18, 0xff

    .line 27
    .line 28
    :goto_0
    aget-wide v9, v4, v7

    .line 29
    .line 30
    const/4 v8, 0x7

    .line 31
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    not-long v11, v9

    .line 37
    shl-long/2addr v11, v8

    .line 38
    and-long/2addr v11, v9

    .line 39
    and-long v11, v11, v20

    .line 40
    .line 41
    cmp-long v13, v11, v20

    .line 42
    .line 43
    if-eqz v13, :cond_7

    .line 44
    .line 45
    sub-int v11, v7, v5

    .line 46
    .line 47
    not-int v11, v11

    .line 48
    ushr-int/lit8 v11, v11, 0x1f

    .line 49
    .line 50
    rsub-int/lit8 v11, v11, 0x8

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    :goto_1
    if-ge v12, v11, :cond_6

    .line 54
    .line 55
    and-long v22, v9, v18

    .line 56
    .line 57
    cmp-long v13, v22, v16

    .line 58
    .line 59
    if-gez v13, :cond_4

    .line 60
    .line 61
    shl-int/lit8 v13, v7, 0x3

    .line 62
    .line 63
    add-int/2addr v13, v12

    .line 64
    aget v13, v3, v13

    .line 65
    .line 66
    const/16 v22, 0x7

    .line 67
    .line 68
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8, v13}, Ls/k;->b(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Ly2/n;

    .line 77
    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    iget-object v8, v8, Ly2/n;->a:Ly2/m;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_0
    move-object/from16 v8, v23

    .line 86
    .line 87
    :goto_2
    if-eqz v8, :cond_1

    .line 88
    .line 89
    iget-object v8, v8, Ly2/m;->d:Ly2/j;

    .line 90
    .line 91
    sget-object v15, Ly2/r;->d:Ly2/u;

    .line 92
    .line 93
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 94
    .line 95
    invoke-virtual {v8, v15}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-nez v8, :cond_5

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v1, v13}, Ls/x;->a(I)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v13}, Ls/k;->b(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Lr2/l2;

    .line 109
    .line 110
    if-eqz v8, :cond_3

    .line 111
    .line 112
    iget-object v8, v8, Lr2/l2;->a:Ly2/j;

    .line 113
    .line 114
    sget-object v15, Ly2/r;->d:Ly2/u;

    .line 115
    .line 116
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 117
    .line 118
    invoke-virtual {v8, v15}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    if-nez v8, :cond_2

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_2
    move-object/from16 v23, v8

    .line 126
    .line 127
    :goto_3
    check-cast v23, Ljava/lang/String;

    .line 128
    .line 129
    :cond_3
    move-object/from16 v8, v23

    .line 130
    .line 131
    const/16 v15, 0x20

    .line 132
    .line 133
    invoke-virtual {v0, v8, v13, v15}, Lr2/b0;->A(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    const/16 v22, 0x7

    .line 138
    .line 139
    :cond_5
    :goto_4
    shr-long/2addr v9, v14

    .line 140
    add-int/lit8 v12, v12, 0x1

    .line 141
    .line 142
    const/4 v8, 0x7

    .line 143
    goto :goto_1

    .line 144
    :cond_6
    const/16 v22, 0x7

    .line 145
    .line 146
    if-ne v11, v14, :cond_9

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    const/16 v22, 0x7

    .line 150
    .line 151
    :goto_5
    if-eq v7, v5, :cond_9

    .line 152
    .line 153
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_8
    const-wide/16 v16, 0x80

    .line 157
    .line 158
    const-wide/16 v18, 0xff

    .line 159
    .line 160
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    const/16 v22, 0x7

    .line 166
    .line 167
    :cond_9
    iget-object v3, v1, Ls/x;->b:[I

    .line 168
    .line 169
    iget-object v1, v1, Ls/x;->a:[J

    .line 170
    .line 171
    array-length v4, v1

    .line 172
    add-int/lit8 v4, v4, -0x2

    .line 173
    .line 174
    if-ltz v4, :cond_11

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    :goto_6
    aget-wide v7, v1, v5

    .line 178
    .line 179
    not-long v9, v7

    .line 180
    shl-long v9, v9, v22

    .line 181
    .line 182
    and-long/2addr v9, v7

    .line 183
    and-long v9, v9, v20

    .line 184
    .line 185
    cmp-long v11, v9, v20

    .line 186
    .line 187
    if-eqz v11, :cond_10

    .line 188
    .line 189
    sub-int v9, v5, v4

    .line 190
    .line 191
    not-int v9, v9

    .line 192
    ushr-int/lit8 v9, v9, 0x1f

    .line 193
    .line 194
    rsub-int/lit8 v9, v9, 0x8

    .line 195
    .line 196
    const/4 v10, 0x0

    .line 197
    :goto_7
    if-ge v10, v9, :cond_f

    .line 198
    .line 199
    and-long v11, v7, v18

    .line 200
    .line 201
    cmp-long v13, v11, v16

    .line 202
    .line 203
    if-gez v13, :cond_d

    .line 204
    .line 205
    shl-int/lit8 v11, v5, 0x3

    .line 206
    .line 207
    add-int/2addr v11, v10

    .line 208
    aget v11, v3, v11

    .line 209
    .line 210
    const v12, -0x3361d2af    # -8.2930312E7f

    .line 211
    .line 212
    .line 213
    mul-int v12, v12, v11

    .line 214
    .line 215
    shl-int/lit8 v13, v12, 0x10

    .line 216
    .line 217
    xor-int/2addr v12, v13

    .line 218
    and-int/lit8 v13, v12, 0x7f

    .line 219
    .line 220
    iget v15, v2, Ls/x;->c:I

    .line 221
    .line 222
    ushr-int/lit8 v12, v12, 0x7

    .line 223
    .line 224
    and-int/2addr v12, v15

    .line 225
    const/16 v23, 0x0

    .line 226
    .line 227
    const/16 v24, 0x8

    .line 228
    .line 229
    :goto_8
    iget-object v14, v2, Ls/x;->a:[J

    .line 230
    .line 231
    shr-int/lit8 v25, v12, 0x3

    .line 232
    .line 233
    and-int/lit8 v26, v12, 0x7

    .line 234
    .line 235
    move-object/from16 v27, v1

    .line 236
    .line 237
    shl-int/lit8 v1, v26, 0x3

    .line 238
    .line 239
    aget-wide v28, v14, v25

    .line 240
    .line 241
    ushr-long v28, v28, v1

    .line 242
    .line 243
    add-int/lit8 v25, v25, 0x1

    .line 244
    .line 245
    aget-wide v25, v14, v25

    .line 246
    .line 247
    rsub-int/lit8 v14, v1, 0x40

    .line 248
    .line 249
    shl-long v25, v25, v14

    .line 250
    .line 251
    move-wide/from16 v30, v7

    .line 252
    .line 253
    int-to-long v7, v1

    .line 254
    neg-long v7, v7

    .line 255
    const/16 v1, 0x3f

    .line 256
    .line 257
    shr-long/2addr v7, v1

    .line 258
    and-long v7, v25, v7

    .line 259
    .line 260
    or-long v7, v28, v7

    .line 261
    .line 262
    move v1, v15

    .line 263
    int-to-long v14, v13

    .line 264
    const-wide v25, 0x101010101010101L

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    mul-long v14, v14, v25

    .line 270
    .line 271
    xor-long/2addr v14, v7

    .line 272
    sub-long v25, v14, v25

    .line 273
    .line 274
    not-long v14, v14

    .line 275
    and-long v14, v25, v14

    .line 276
    .line 277
    and-long v14, v14, v20

    .line 278
    .line 279
    :goto_9
    const-wide/16 v25, 0x0

    .line 280
    .line 281
    cmp-long v28, v14, v25

    .line 282
    .line 283
    if-eqz v28, :cond_b

    .line 284
    .line 285
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 286
    .line 287
    .line 288
    move-result v25

    .line 289
    shr-int/lit8 v25, v25, 0x3

    .line 290
    .line 291
    add-int v25, v12, v25

    .line 292
    .line 293
    and-int v25, v25, v1

    .line 294
    .line 295
    move/from16 v28, v1

    .line 296
    .line 297
    iget-object v1, v2, Ls/x;->b:[I

    .line 298
    .line 299
    aget v1, v1, v25

    .line 300
    .line 301
    if-ne v1, v11, :cond_a

    .line 302
    .line 303
    move/from16 v1, v25

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_a
    const-wide/16 v25, 0x1

    .line 307
    .line 308
    sub-long v25, v14, v25

    .line 309
    .line 310
    and-long v14, v14, v25

    .line 311
    .line 312
    move/from16 v1, v28

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_b
    move/from16 v28, v1

    .line 316
    .line 317
    not-long v14, v7

    .line 318
    const/4 v1, 0x6

    .line 319
    shl-long/2addr v14, v1

    .line 320
    and-long/2addr v7, v14

    .line 321
    and-long v7, v7, v20

    .line 322
    .line 323
    cmp-long v1, v7, v25

    .line 324
    .line 325
    if-eqz v1, :cond_c

    .line 326
    .line 327
    const/16 v25, -0x1

    .line 328
    .line 329
    const/4 v1, -0x1

    .line 330
    :goto_a
    if-ltz v1, :cond_e

    .line 331
    .line 332
    invoke-virtual {v2, v1}, Ls/x;->f(I)V

    .line 333
    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_c
    add-int/lit8 v23, v23, 0x8

    .line 337
    .line 338
    add-int v12, v12, v23

    .line 339
    .line 340
    and-int v12, v12, v28

    .line 341
    .line 342
    move-object/from16 v1, v27

    .line 343
    .line 344
    move/from16 v15, v28

    .line 345
    .line 346
    move-wide/from16 v7, v30

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_d
    move-object/from16 v27, v1

    .line 350
    .line 351
    move-wide/from16 v30, v7

    .line 352
    .line 353
    const/16 v24, 0x8

    .line 354
    .line 355
    :cond_e
    :goto_b
    shr-long v7, v30, v24

    .line 356
    .line 357
    add-int/lit8 v10, v10, 0x1

    .line 358
    .line 359
    move-object/from16 v1, v27

    .line 360
    .line 361
    const/16 v14, 0x8

    .line 362
    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :cond_f
    move-object/from16 v27, v1

    .line 366
    .line 367
    const/16 v1, 0x8

    .line 368
    .line 369
    if-ne v9, v1, :cond_11

    .line 370
    .line 371
    goto :goto_c

    .line 372
    :cond_10
    move-object/from16 v27, v1

    .line 373
    .line 374
    :goto_c
    if-eq v5, v4, :cond_11

    .line 375
    .line 376
    add-int/lit8 v5, v5, 0x1

    .line 377
    .line 378
    move-object/from16 v1, v27

    .line 379
    .line 380
    const/16 v14, 0x8

    .line 381
    .line 382
    goto/16 :goto_6

    .line 383
    .line 384
    :cond_11
    invoke-virtual {v6}, Ls/w;->c()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iget-object v3, v1, Ls/k;->b:[I

    .line 392
    .line 393
    iget-object v4, v1, Ls/k;->c:[Ljava/lang/Object;

    .line 394
    .line 395
    iget-object v1, v1, Ls/k;->a:[J

    .line 396
    .line 397
    array-length v5, v1

    .line 398
    add-int/lit8 v5, v5, -0x2

    .line 399
    .line 400
    if-ltz v5, :cond_16

    .line 401
    .line 402
    const/4 v7, 0x0

    .line 403
    :goto_d
    aget-wide v8, v1, v7

    .line 404
    .line 405
    not-long v10, v8

    .line 406
    shl-long v10, v10, v22

    .line 407
    .line 408
    and-long/2addr v10, v8

    .line 409
    and-long v10, v10, v20

    .line 410
    .line 411
    cmp-long v12, v10, v20

    .line 412
    .line 413
    if-eqz v12, :cond_15

    .line 414
    .line 415
    sub-int v10, v7, v5

    .line 416
    .line 417
    not-int v10, v10

    .line 418
    ushr-int/lit8 v10, v10, 0x1f

    .line 419
    .line 420
    const/16 v24, 0x8

    .line 421
    .line 422
    rsub-int/lit8 v14, v10, 0x8

    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    :goto_e
    if-ge v10, v14, :cond_14

    .line 426
    .line 427
    and-long v11, v8, v18

    .line 428
    .line 429
    cmp-long v13, v11, v16

    .line 430
    .line 431
    if-gez v13, :cond_13

    .line 432
    .line 433
    shl-int/lit8 v11, v7, 0x3

    .line 434
    .line 435
    add-int/2addr v11, v10

    .line 436
    aget v12, v3, v11

    .line 437
    .line 438
    aget-object v11, v4, v11

    .line 439
    .line 440
    check-cast v11, Ly2/n;

    .line 441
    .line 442
    iget-object v11, v11, Ly2/n;->a:Ly2/m;

    .line 443
    .line 444
    iget-object v13, v11, Ly2/m;->d:Ly2/j;

    .line 445
    .line 446
    sget-object v15, Ly2/r;->d:Ly2/u;

    .line 447
    .line 448
    iget-object v13, v13, Ly2/j;->a:Ls/h0;

    .line 449
    .line 450
    invoke-virtual {v13, v15}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v13

    .line 454
    if-eqz v13, :cond_12

    .line 455
    .line 456
    invoke-virtual {v2, v12}, Ls/x;->a(I)Z

    .line 457
    .line 458
    .line 459
    move-result v13

    .line 460
    if-eqz v13, :cond_12

    .line 461
    .line 462
    iget-object v13, v11, Ly2/m;->d:Ly2/j;

    .line 463
    .line 464
    invoke-virtual {v13, v15}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    check-cast v13, Ljava/lang/String;

    .line 469
    .line 470
    const/16 v15, 0x10

    .line 471
    .line 472
    invoke-virtual {v0, v13, v12, v15}, Lr2/b0;->A(Ljava/lang/String;II)V

    .line 473
    .line 474
    .line 475
    :cond_12
    new-instance v13, Lr2/l2;

    .line 476
    .line 477
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 478
    .line 479
    .line 480
    move-result-object v15

    .line 481
    invoke-direct {v13, v11, v15}, Lr2/l2;-><init>(Ly2/m;Ls/k;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v6, v12, v13}, Ls/w;->h(ILjava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    :cond_13
    const/16 v11, 0x8

    .line 488
    .line 489
    shr-long/2addr v8, v11

    .line 490
    add-int/lit8 v10, v10, 0x1

    .line 491
    .line 492
    goto :goto_e

    .line 493
    :cond_14
    const/16 v11, 0x8

    .line 494
    .line 495
    if-ne v14, v11, :cond_16

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_15
    const/16 v11, 0x8

    .line 499
    .line 500
    :goto_f
    if-eq v7, v5, :cond_16

    .line 501
    .line 502
    add-int/lit8 v7, v7, 0x1

    .line 503
    .line 504
    goto :goto_d

    .line 505
    :cond_16
    new-instance v1, Lr2/l2;

    .line 506
    .line 507
    iget-object v2, v0, Lr2/b0;->d:Lr2/u;

    .line 508
    .line 509
    invoke-virtual {v2}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-virtual {v2}, Ly2/o;->a()Ly2/m;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-direct {v1, v2, v3}, Lr2/l2;-><init>(Ly2/m;Ls/k;)V

    .line 522
    .line 523
    .line 524
    iput-object v1, v0, Lr2/b0;->K:Lr2/l2;

    .line 525
    .line 526
    return-void
.end method

.method public final a(Landroid/view/View;)La2/d;
    .locals 0

    .line 1
    iget-object p1, p0, Lr2/b0;->m:Lr2/x;

    .line 2
    .line 3
    return-object p1
.end method

.method public final e(ILf4/e;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v3, v3, Lf4/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5, v1}, Ls/k;->b(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Ly2/n;

    .line 22
    .line 23
    if-eqz v5, :cond_1b

    .line 24
    .line 25
    iget-object v5, v5, Ly2/n;->a:Ly2/m;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_c

    .line 30
    .line 31
    :cond_0
    iget-object v6, v5, Ly2/m;->d:Ly2/j;

    .line 32
    .line 33
    iget-object v7, v6, Ly2/j;->a:Ls/h0;

    .line 34
    .line 35
    invoke-static {v5}, Lr2/b0;->p(Ly2/m;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-object v9, v0, Lr2/b0;->G:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    const/4 v10, -0x1

    .line 46
    if-eqz v9, :cond_1

    .line 47
    .line 48
    iget-object v4, v0, Lr2/b0;->E:Ls/u;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ls/u;->d(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eq v1, v10, :cond_1b

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v9, v0, Lr2/b0;->H:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    iget-object v4, v0, Lr2/b0;->F:Ls/u;

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ls/u;->d(I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq v1, v10, :cond_1b

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    sget-object v1, Ly2/i;->a:Ly2/u;

    .line 89
    .line 90
    invoke-virtual {v7, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v9, 0x0

    .line 95
    if-eqz v1, :cond_d

    .line 96
    .line 97
    if-eqz v4, :cond_d

    .line 98
    .line 99
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 100
    .line 101
    invoke-static {v2, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_d

    .line 106
    .line 107
    const-string v1, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    .line 108
    .line 109
    invoke-virtual {v4, v1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    const-string v7, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    .line 114
    .line 115
    invoke-virtual {v4, v7, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-lez v4, :cond_c

    .line 120
    .line 121
    if-ltz v1, :cond_c

    .line 122
    .line 123
    if-eqz v8, :cond_3

    .line 124
    .line 125
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    const v7, 0x7fffffff

    .line 131
    .line 132
    .line 133
    :goto_0
    if-lt v1, v7, :cond_4

    .line 134
    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :cond_4
    invoke-static {v6}, Lr2/j0;->o(Ly2/j;)Lb3/l0;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-nez v6, :cond_5

    .line 142
    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    :goto_1
    if-ge v8, v4, :cond_b

    .line 152
    .line 153
    add-int v10, v1, v8

    .line 154
    .line 155
    iget-object v12, v6, Lb3/l0;->a:Lb3/k0;

    .line 156
    .line 157
    iget-object v12, v12, Lb3/k0;->a:Lb3/g;

    .line 158
    .line 159
    iget-object v12, v12, Lb3/g;->b:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-lt v10, v12, :cond_6

    .line 166
    .line 167
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-object v14, v3

    .line 171
    move/from16 p4, v4

    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_6
    invoke-virtual {v6, v10}, Lb3/l0;->b(I)Lx1/c;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v5}, Ly2/m;->d()Lq2/h1;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    const-wide/16 v13, 0x0

    .line 184
    .line 185
    if-eqz v12, :cond_8

    .line 186
    .line 187
    invoke-virtual {v12}, Lq2/h1;->G0()Lr1/o;

    .line 188
    .line 189
    .line 190
    move-result-object v15

    .line 191
    iget-boolean v15, v15, Lr1/o;->n:Z

    .line 192
    .line 193
    if-eqz v15, :cond_7

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_7
    move-object v12, v9

    .line 197
    :goto_2
    if-eqz v12, :cond_8

    .line 198
    .line 199
    invoke-virtual {v12, v13, v14}, Lq2/h1;->F(J)J

    .line 200
    .line 201
    .line 202
    move-result-wide v13

    .line 203
    :cond_8
    invoke-virtual {v10, v13, v14}, Lx1/c;->i(J)Lx1/c;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v5}, Ly2/m;->g()Lx1/c;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v10, v12}, Lx1/c;->g(Lx1/c;)Z

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    if-eqz v13, :cond_9

    .line 216
    .line 217
    invoke-virtual {v10, v12}, Lx1/c;->e(Lx1/c;)Lx1/c;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    goto :goto_3

    .line 222
    :cond_9
    move-object v10, v9

    .line 223
    :goto_3
    if-eqz v10, :cond_a

    .line 224
    .line 225
    iget v12, v10, Lx1/c;->a:F

    .line 226
    .line 227
    iget v13, v10, Lx1/c;->b:F

    .line 228
    .line 229
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    int-to-long v14, v12

    .line 234
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    int-to-long v12, v12

    .line 239
    const/16 v16, 0x20

    .line 240
    .line 241
    shl-long v14, v14, v16

    .line 242
    .line 243
    const-wide v17, 0xffffffffL

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    and-long v12, v12, v17

    .line 249
    .line 250
    or-long/2addr v12, v14

    .line 251
    iget-object v14, v0, Lr2/b0;->d:Lr2/u;

    .line 252
    .line 253
    invoke-virtual {v14, v12, v13}, Lr2/u;->x(J)J

    .line 254
    .line 255
    .line 256
    move-result-wide v12

    .line 257
    iget v15, v10, Lx1/c;->c:F

    .line 258
    .line 259
    iget v10, v10, Lx1/c;->d:F

    .line 260
    .line 261
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 262
    .line 263
    .line 264
    move-result v15

    .line 265
    move/from16 p2, v10

    .line 266
    .line 267
    int-to-long v9, v15

    .line 268
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    move-wide/from16 v19, v12

    .line 273
    .line 274
    int-to-long v11, v15

    .line 275
    shl-long v9, v9, v16

    .line 276
    .line 277
    and-long v11, v11, v17

    .line 278
    .line 279
    or-long/2addr v9, v11

    .line 280
    invoke-virtual {v14, v9, v10}, Lr2/u;->x(J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v9

    .line 284
    new-instance v11, Landroid/graphics/RectF;

    .line 285
    .line 286
    shr-long v12, v19, v16

    .line 287
    .line 288
    long-to-int v13, v12

    .line 289
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    shr-long v14, v9, v16

    .line 294
    .line 295
    long-to-int v15, v14

    .line 296
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    move-object v14, v3

    .line 305
    move/from16 p4, v4

    .line 306
    .line 307
    and-long v3, v19, v17

    .line 308
    .line 309
    long-to-int v4, v3

    .line 310
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    and-long v9, v9, v17

    .line 315
    .line 316
    long-to-int v10, v9

    .line 317
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 330
    .line 331
    .line 332
    move-result v13

    .line 333
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-direct {v11, v12, v3, v9, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_a
    move-object v14, v3

    .line 354
    move/from16 p4, v4

    .line 355
    .line 356
    const/4 v11, 0x0

    .line 357
    :goto_4
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 361
    .line 362
    move/from16 v4, p4

    .line 363
    .line 364
    move-object v3, v14

    .line 365
    const/4 v9, 0x0

    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :cond_b
    move-object v14, v3

    .line 369
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    const/4 v3, 0x0

    .line 374
    new-array v3, v3, [Landroid/graphics/RectF;

    .line 375
    .line 376
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    check-cast v3, [Landroid/os/Parcelable;

    .line 381
    .line 382
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_c
    :goto_6
    const-string v1, "AccessibilityDelegate"

    .line 387
    .line 388
    const-string v2, "Invalid arguments for accessibility character locations"

    .line 389
    .line 390
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_d
    move-object v14, v3

    .line 395
    sget-object v1, Ly2/r;->y:Ly2/u;

    .line 396
    .line 397
    invoke-virtual {v7, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_f

    .line 402
    .line 403
    if-eqz v4, :cond_f

    .line 404
    .line 405
    const-string v3, "androidx.compose.ui.semantics.testTag"

    .line 406
    .line 407
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_f

    .line 412
    .line 413
    invoke-virtual {v7, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    if-nez v1, :cond_e

    .line 418
    .line 419
    const/4 v9, 0x0

    .line 420
    goto :goto_7

    .line 421
    :cond_e
    move-object v9, v1

    .line 422
    :goto_7
    check-cast v9, Ljava/lang/String;

    .line 423
    .line 424
    if-eqz v9, :cond_1b

    .line 425
    .line 426
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_f
    const-string v1, "androidx.compose.ui.semantics.id"

    .line 435
    .line 436
    invoke-static {v2, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_10

    .line 441
    .line 442
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    iget v3, v5, Ly2/m;->g:I

    .line 447
    .line 448
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :cond_10
    const-string v1, "androidx.compose.ui.semantics.shapeType"

    .line 453
    .line 454
    invoke-static {v2, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    const-string v4, "androidx.compose.ui.semantics.shapeRegion"

    .line 459
    .line 460
    const-string v6, "androidx.compose.ui.semantics.shapeCorners"

    .line 461
    .line 462
    const-string v8, "androidx.compose.ui.semantics.shapeRect"

    .line 463
    .line 464
    if-eqz v3, :cond_15

    .line 465
    .line 466
    sget-object v2, Ly2/r;->O:Ly2/u;

    .line 467
    .line 468
    invoke-virtual {v7, v2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    if-nez v2, :cond_11

    .line 473
    .line 474
    const/4 v9, 0x0

    .line 475
    goto :goto_8

    .line 476
    :cond_11
    move-object v9, v2

    .line 477
    :goto_8
    check-cast v9, Ly1/l0;

    .line 478
    .line 479
    if-eqz v9, :cond_1b

    .line 480
    .line 481
    invoke-virtual {v0, v9, v5}, Lr2/b0;->k(Ly1/l0;Ly2/m;)Ly1/h0;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    instance-of v3, v2, Ly1/c0;

    .line 486
    .line 487
    if-eqz v3, :cond_12

    .line 488
    .line 489
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    const/4 v4, 0x0

    .line 494
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-static {v2}, Lr2/b0;->G(Ly1/h0;)Landroid/graphics/Rect;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :cond_12
    instance-of v3, v2, Ly1/d0;

    .line 510
    .line 511
    if-eqz v3, :cond_13

    .line 512
    .line 513
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    const/4 v4, 0x1

    .line 518
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    invoke-static {v2}, Lr2/b0;->G(Ly1/h0;)Landroid/graphics/Rect;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-static {v2}, Lr2/b0;->H(Ly1/h0;)[F

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 541
    .line 542
    .line 543
    return-void

    .line 544
    :cond_13
    instance-of v3, v2, Ly1/b0;

    .line 545
    .line 546
    if-eqz v3, :cond_14

    .line 547
    .line 548
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    const/4 v5, 0x2

    .line 553
    invoke-virtual {v3, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-static {v2}, Lr2/b0;->I(Ly1/h0;)Landroid/graphics/Region;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 565
    .line 566
    .line 567
    return-void

    .line 568
    :cond_14
    new-instance v1, Lac/p;

    .line 569
    .line 570
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 571
    .line 572
    .line 573
    throw v1

    .line 574
    :cond_15
    invoke-static {v2, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-eqz v1, :cond_17

    .line 579
    .line 580
    sget-object v1, Ly2/r;->O:Ly2/u;

    .line 581
    .line 582
    invoke-virtual {v7, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    if-nez v1, :cond_16

    .line 587
    .line 588
    const/4 v9, 0x0

    .line 589
    goto :goto_9

    .line 590
    :cond_16
    move-object v9, v1

    .line 591
    :goto_9
    check-cast v9, Ly1/l0;

    .line 592
    .line 593
    if-eqz v9, :cond_1b

    .line 594
    .line 595
    invoke-virtual {v0, v9, v5}, Lr2/b0;->k(Ly1/l0;Ly2/m;)Ly1/h0;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-static {v1}, Lr2/b0;->G(Ly1/h0;)Landroid/graphics/Rect;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    if-eqz v1, :cond_1b

    .line 604
    .line 605
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :cond_17
    invoke-static {v2, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_19

    .line 618
    .line 619
    sget-object v1, Ly2/r;->O:Ly2/u;

    .line 620
    .line 621
    invoke-virtual {v7, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    if-nez v1, :cond_18

    .line 626
    .line 627
    const/4 v9, 0x0

    .line 628
    goto :goto_a

    .line 629
    :cond_18
    move-object v9, v1

    .line 630
    :goto_a
    check-cast v9, Ly1/l0;

    .line 631
    .line 632
    if-eqz v9, :cond_1b

    .line 633
    .line 634
    invoke-virtual {v0, v9, v5}, Lr2/b0;->k(Ly1/l0;Ly2/m;)Ly1/h0;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-static {v1}, Lr2/b0;->H(Ly1/h0;)[F

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    if-eqz v1, :cond_1b

    .line 643
    .line 644
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 649
    .line 650
    .line 651
    return-void

    .line 652
    :cond_19
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eqz v1, :cond_1b

    .line 657
    .line 658
    sget-object v1, Ly2/r;->O:Ly2/u;

    .line 659
    .line 660
    invoke-virtual {v7, v1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    if-nez v1, :cond_1a

    .line 665
    .line 666
    const/4 v9, 0x0

    .line 667
    goto :goto_b

    .line 668
    :cond_1a
    move-object v9, v1

    .line 669
    :goto_b
    check-cast v9, Ly1/l0;

    .line 670
    .line 671
    if-eqz v9, :cond_1b

    .line 672
    .line 673
    invoke-virtual {v0, v9, v5}, Lr2/b0;->k(Ly1/l0;Ly2/m;)Ly1/h0;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-static {v1}, Lr2/b0;->I(Ly1/h0;)Landroid/graphics/Region;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    if-eqz v1, :cond_1b

    .line 682
    .line 683
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 688
    .line 689
    .line 690
    :cond_1b
    :goto_c
    return-void
.end method

.method public final f(Ly2/n;)Landroid/graphics/Rect;
    .locals 11

    .line 1
    iget-object p1, p1, Ly2/n;->b:Ln3/k;

    .line 2
    .line 3
    iget v0, p1, Ln3/k;->a:I

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    iget v1, p1, Ln3/k;->b:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-long v2, v0

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-long v0, v0

    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    shl-long/2addr v2, v4

    .line 22
    const-wide v5, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v0, v5

    .line 28
    or-long/2addr v0, v2

    .line 29
    iget-object v2, p0, Lr2/b0;->d:Lr2/u;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Lr2/u;->x(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget v3, p1, Ln3/k;->c:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    iget p1, p1, Ln3/k;->d:I

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-long v7, v3

    .line 46
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-long v9, p1

    .line 51
    shl-long/2addr v7, v4

    .line 52
    and-long/2addr v9, v5

    .line 53
    or-long/2addr v7, v9

    .line 54
    invoke-virtual {v2, v7, v8}, Lr2/u;->x(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    .line 59
    .line 60
    shr-long v7, v0, v4

    .line 61
    .line 62
    long-to-int v8, v7

    .line 63
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    shr-long v9, v2, v4

    .line 68
    .line 69
    long-to-int v4, v9

    .line 70
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    float-to-double v9, v7

    .line 79
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    double-to-float v7, v9

    .line 84
    float-to-int v7, v7

    .line 85
    and-long/2addr v0, v5

    .line 86
    long-to-int v1, v0

    .line 87
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    and-long/2addr v2, v5

    .line 92
    long-to-int v3, v2

    .line 93
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    float-to-double v5, v0

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    double-to-float v0, v5

    .line 107
    float-to-int v0, v0

    .line 108
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    float-to-double v4, v2

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    double-to-float v2, v4

    .line 126
    float-to-int v2, v2

    .line 127
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    float-to-double v3, v1

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    double-to-float v1, v3

    .line 145
    float-to-int v1, v1

    .line 146
    invoke-direct {p1, v7, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    .line 148
    .line 149
    return-object p1
.end method

.method public final g(Ly8/c;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lr2/z;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lr2/z;

    .line 11
    .line 12
    iget v3, v2, Lr2/z;->h:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lr2/z;->h:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lr2/z;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lr2/z;-><init>(Lr2/b0;Ly8/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lr2/z;->f:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lr2/z;->h:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    iget-object v5, v1, Lr2/b0;->y:Ls/g;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    sget-object v7, Lx8/a;->a:Lx8/a;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v6, :cond_2

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    iget-object v3, v2, Lr2/z;->e:Lcc/c;

    .line 46
    .line 47
    iget-object v8, v2, Lr2/z;->d:Ls/x;

    .line 48
    .line 49
    :try_start_0
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    move-object v9, v5

    .line 53
    const/4 v0, 0x2

    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move-object v9, v5

    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    iget-object v3, v2, Lr2/z;->e:Lcc/c;

    .line 69
    .line 70
    iget-object v8, v2, Lr2/z;->d:Ls/x;

    .line 71
    .line 72
    :try_start_1
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :try_start_2
    new-instance v0, Ls/x;

    .line 80
    .line 81
    invoke-direct {v0}, Ls/x;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v3, v1, Lr2/b0;->z:Lcc/h;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v8, Lcc/c;

    .line 90
    .line 91
    invoke-direct {v8, v3}, Lcc/c;-><init>(Lcc/h;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iput-object v0, v2, Lr2/z;->d:Ls/x;

    .line 95
    .line 96
    iput-object v8, v2, Lr2/z;->e:Lcc/c;

    .line 97
    .line 98
    iput v6, v2, Lr2/z;->h:I

    .line 99
    .line 100
    invoke-virtual {v8, v2}, Lcc/c;->b(Ly8/c;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-ne v3, v7, :cond_4

    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_4
    move-object v15, v8

    .line 109
    move-object v8, v0

    .line 110
    move-object v0, v3

    .line 111
    move-object v3, v15

    .line 112
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_a

    .line 119
    .line 120
    invoke-virtual {v3}, Lcc/c;->c()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lr2/b0;->q()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    iget v0, v5, Ls/g;->c:I

    .line 130
    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    :goto_3
    if-ge v10, v0, :cond_5

    .line 134
    .line 135
    iget-object v11, v5, Ls/g;->b:[Ljava/lang/Object;

    .line 136
    .line 137
    aget-object v11, v11, v10

    .line 138
    .line 139
    check-cast v11, Lq2/h0;

    .line 140
    .line 141
    invoke-virtual {v1, v11, v8}, Lr2/b0;->D(Lq2/h0;Ls/x;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v11}, Lr2/b0;->E(Lq2/h0;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v10, v10, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    iput v9, v8, Ls/x;->d:I

    .line 151
    .line 152
    iget-object v0, v8, Ls/x;->a:[J

    .line 153
    .line 154
    sget-object v9, Ls/o0;->a:[J

    .line 155
    .line 156
    if-eq v0, v9, :cond_6

    .line 157
    .line 158
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-static {v0, v9, v10}, Ls8/l;->U([JJ)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v8, Ls/x;->a:[J

    .line 167
    .line 168
    iget v9, v8, Ls/x;->c:I

    .line 169
    .line 170
    shr-int/lit8 v10, v9, 0x3

    .line 171
    .line 172
    and-int/lit8 v9, v9, 0x7

    .line 173
    .line 174
    shl-int/lit8 v9, v9, 0x3

    .line 175
    .line 176
    aget-wide v11, v0, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .line 178
    const-wide/16 v13, 0xff

    .line 179
    .line 180
    shl-long/2addr v13, v9

    .line 181
    move-object v9, v5

    .line 182
    not-long v4, v13

    .line 183
    and-long/2addr v4, v11

    .line 184
    or-long/2addr v4, v13

    .line 185
    :try_start_3
    aput-wide v4, v0, v10

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    move-object v9, v5

    .line 189
    :goto_4
    iget v0, v8, Ls/x;->c:I

    .line 190
    .line 191
    invoke-static {v0}, Ls/o0;->a(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iget v4, v8, Ls/x;->d:I

    .line 196
    .line 197
    sub-int/2addr v0, v4

    .line 198
    iput v0, v8, Ls/x;->e:I

    .line 199
    .line 200
    iget-boolean v0, v1, Lr2/b0;->L:Z

    .line 201
    .line 202
    if-nez v0, :cond_8

    .line 203
    .line 204
    iput-boolean v6, v1, Lr2/b0;->L:Z

    .line 205
    .line 206
    iget-object v0, v1, Lr2/b0;->l:Landroid/os/Handler;

    .line 207
    .line 208
    iget-object v4, v1, Lr2/b0;->N:Landroidx/lifecycle/z;

    .line 209
    .line 210
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    goto :goto_8

    .line 216
    :cond_7
    move-object v9, v5

    .line 217
    :cond_8
    :goto_5
    invoke-virtual {v9}, Ls/g;->clear()V

    .line 218
    .line 219
    .line 220
    iget-object v0, v1, Lr2/b0;->s:Ls/w;

    .line 221
    .line 222
    invoke-virtual {v0}, Ls/w;->c()V

    .line 223
    .line 224
    .line 225
    iget-object v0, v1, Lr2/b0;->t:Ls/w;

    .line 226
    .line 227
    invoke-virtual {v0}, Ls/w;->c()V

    .line 228
    .line 229
    .line 230
    iget-wide v4, v1, Lr2/b0;->h:J

    .line 231
    .line 232
    iput-object v8, v2, Lr2/z;->d:Ls/x;

    .line 233
    .line 234
    iput-object v3, v2, Lr2/z;->e:Lcc/c;

    .line 235
    .line 236
    const/4 v0, 0x2

    .line 237
    iput v0, v2, Lr2/z;->h:I

    .line 238
    .line 239
    invoke-static {v4, v5, v2}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    if-ne v4, v7, :cond_9

    .line 244
    .line 245
    :goto_6
    return-object v7

    .line 246
    :cond_9
    :goto_7
    move-object v0, v8

    .line 247
    move-object v5, v9

    .line 248
    const/4 v4, 0x2

    .line 249
    move-object v8, v3

    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_a
    move-object v9, v5

    .line 253
    invoke-virtual {v9}, Ls/g;->clear()V

    .line 254
    .line 255
    .line 256
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 257
    .line 258
    return-object v0

    .line 259
    :goto_8
    invoke-virtual {v9}, Ls/g;->clear()V

    .line 260
    .line 261
    .line 262
    throw v0
.end method

.method public final h(JIZ)Z
    .locals 22

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move/from16 v2, p4

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    :cond_0
    const/16 v16, 0x0

    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lr2/b0;->o()Ls/k;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v5, v6}, Lx1/b;->b(JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    const-wide v5, 0x7fffffff7fffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v5, v0

    .line 48
    const-wide v7, 0x7fffff007fffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    add-long/2addr v5, v7

    .line 54
    const-wide v7, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v5, v7

    .line 60
    const-wide/16 v7, 0x0

    .line 61
    .line 62
    cmp-long v9, v5, v7

    .line 63
    .line 64
    if-nez v9, :cond_0

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    if-ne v2, v5, :cond_2

    .line 68
    .line 69
    sget-object v2, Ly2/r;->u:Ly2/u;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-nez v2, :cond_11

    .line 73
    .line 74
    sget-object v2, Ly2/r;->t:Ly2/u;

    .line 75
    .line 76
    :goto_0
    iget-object v6, v3, Ls/k;->c:[Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v3, v3, Ls/k;->a:[J

    .line 79
    .line 80
    array-length v7, v3

    .line 81
    add-int/lit8 v7, v7, -0x2

    .line 82
    .line 83
    if-ltz v7, :cond_0

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    :goto_1
    aget-wide v10, v3, v8

    .line 88
    .line 89
    not-long v12, v10

    .line 90
    const/4 v14, 0x7

    .line 91
    shl-long/2addr v12, v14

    .line 92
    and-long/2addr v12, v10

    .line 93
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    and-long/2addr v12, v14

    .line 99
    cmp-long v16, v12, v14

    .line 100
    .line 101
    if-eqz v16, :cond_f

    .line 102
    .line 103
    sub-int v12, v8, v7

    .line 104
    .line 105
    not-int v12, v12

    .line 106
    ushr-int/lit8 v12, v12, 0x1f

    .line 107
    .line 108
    const/16 v13, 0x8

    .line 109
    .line 110
    rsub-int/lit8 v12, v12, 0x8

    .line 111
    .line 112
    const/4 v14, 0x0

    .line 113
    :goto_2
    if-ge v14, v12, :cond_d

    .line 114
    .line 115
    const-wide/16 v15, 0xff

    .line 116
    .line 117
    and-long/2addr v15, v10

    .line 118
    const-wide/16 v17, 0x80

    .line 119
    .line 120
    cmp-long v19, v15, v17

    .line 121
    .line 122
    if-gez v19, :cond_b

    .line 123
    .line 124
    shl-int/lit8 v15, v8, 0x3

    .line 125
    .line 126
    add-int/2addr v15, v14

    .line 127
    aget-object v15, v6, v15

    .line 128
    .line 129
    check-cast v15, Ly2/n;

    .line 130
    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    iget-object v4, v15, Ly2/n;->b:Ln3/k;

    .line 134
    .line 135
    iget v5, v4, Ln3/k;->a:I

    .line 136
    .line 137
    int-to-float v5, v5

    .line 138
    const/16 p4, 0x8

    .line 139
    .line 140
    iget v13, v4, Ln3/k;->b:I

    .line 141
    .line 142
    int-to-float v13, v13

    .line 143
    iget v0, v4, Ln3/k;->c:I

    .line 144
    .line 145
    int-to-float v0, v0

    .line 146
    iget v1, v4, Ln3/k;->d:I

    .line 147
    .line 148
    int-to-float v1, v1

    .line 149
    const/16 v4, 0x20

    .line 150
    .line 151
    move/from16 v18, v0

    .line 152
    .line 153
    move/from16 v19, v1

    .line 154
    .line 155
    shr-long v0, p1, v4

    .line 156
    .line 157
    long-to-int v1, v0

    .line 158
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const-wide v20, 0xffffffffL

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    move v4, v0

    .line 168
    and-long v0, p1, v20

    .line 169
    .line 170
    long-to-int v1, v0

    .line 171
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    cmpl-float v1, v4, v5

    .line 176
    .line 177
    if-ltz v1, :cond_3

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    goto :goto_3

    .line 181
    :cond_3
    const/4 v1, 0x0

    .line 182
    :goto_3
    cmpg-float v4, v4, v18

    .line 183
    .line 184
    if-gez v4, :cond_4

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    goto :goto_4

    .line 188
    :cond_4
    const/4 v4, 0x0

    .line 189
    :goto_4
    and-int/2addr v1, v4

    .line 190
    cmpl-float v4, v0, v13

    .line 191
    .line 192
    if-ltz v4, :cond_5

    .line 193
    .line 194
    const/4 v4, 0x1

    .line 195
    goto :goto_5

    .line 196
    :cond_5
    const/4 v4, 0x0

    .line 197
    :goto_5
    and-int/2addr v1, v4

    .line 198
    cmpg-float v0, v0, v19

    .line 199
    .line 200
    if-gez v0, :cond_6

    .line 201
    .line 202
    const/4 v0, 0x1

    .line 203
    goto :goto_6

    .line 204
    :cond_6
    const/4 v0, 0x0

    .line 205
    :goto_6
    and-int/2addr v0, v1

    .line 206
    if-nez v0, :cond_7

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_7
    iget-object v0, v15, Ly2/n;->a:Ly2/m;

    .line 210
    .line 211
    iget-object v0, v0, Ly2/m;->d:Ly2/j;

    .line 212
    .line 213
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_8

    .line 220
    .line 221
    const/4 v0, 0x0

    .line 222
    :cond_8
    check-cast v0, Ly2/h;

    .line 223
    .line 224
    if-nez v0, :cond_9

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_9
    iget-object v1, v0, Ly2/h;->a:Lf9/a;

    .line 228
    .line 229
    if-gez p3, :cond_a

    .line 230
    .line 231
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Ljava/lang/Number;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    const/4 v1, 0x0

    .line 242
    cmpl-float v0, v0, v1

    .line 243
    .line 244
    if-lez v0, :cond_c

    .line 245
    .line 246
    :goto_7
    const/4 v9, 0x1

    .line 247
    goto :goto_8

    .line 248
    :cond_a
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Ljava/lang/Number;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iget-object v0, v0, Ly2/h;->b:Lf9/a;

    .line 259
    .line 260
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Number;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    cmpg-float v0, v1, v0

    .line 271
    .line 272
    if-gez v0, :cond_c

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_b
    const/16 p4, 0x8

    .line 276
    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    :cond_c
    :goto_8
    shr-long v10, v10, p4

    .line 280
    .line 281
    add-int/lit8 v14, v14, 0x1

    .line 282
    .line 283
    move-wide/from16 v0, p1

    .line 284
    .line 285
    const/4 v5, 0x1

    .line 286
    const/16 v13, 0x8

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_d
    const/16 v0, 0x8

    .line 291
    .line 292
    const/16 v16, 0x0

    .line 293
    .line 294
    if-ne v12, v0, :cond_e

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_e
    return v9

    .line 298
    :cond_f
    const/16 v16, 0x0

    .line 299
    .line 300
    :goto_9
    if-eq v8, v7, :cond_10

    .line 301
    .line 302
    add-int/lit8 v8, v8, 0x1

    .line 303
    .line 304
    move-wide/from16 v0, p1

    .line 305
    .line 306
    const/4 v5, 0x1

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_10
    return v9

    .line 310
    :cond_11
    new-instance v0, Lac/p;

    .line 311
    .line 312
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 313
    .line 314
    .line 315
    throw v0

    .line 316
    :goto_a
    return v16
.end method

.method public final i()V
    .locals 2

    .line 1
    const-string v0, "sendAccessibilitySemanticsStructureChangeEvents"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lr2/b0;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lr2/b0;->d:Lr2/u;

    .line 13
    .line 14
    invoke-virtual {v0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ly2/o;->a()Ly2/m;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lr2/b0;->K:Lr2/l2;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lr2/b0;->w(Ly2/m;Lr2/l2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 31
    .line 32
    .line 33
    const-string v0, "sendSemanticsPropertyChangeEvents"

    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p0}, Lr2/b0;->o()Ls/k;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lr2/b0;->C(Ls/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    .line 47
    .line 48
    const-string v0, "updateSemanticsNodesCopyAndPanes"

    .line 49
    .line 50
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :try_start_2
    invoke-virtual {p0}, Lr2/b0;->K()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :catchall_2
    move-exception v0

    .line 66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public final j(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "android.view.View"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lr2/b0;->d:Lr2/u;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lr2/b0;->q()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lr2/b0;->o()Ls/k;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Ls/k;->b(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ly2/n;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p1, Ly2/n;->a:Ly2/m;

    .line 49
    .line 50
    iget-object v0, p1, Ly2/m;->d:Ly2/j;

    .line 51
    .line 52
    sget-object v1, Ly2/r;->J:Ly2/u;

    .line 53
    .line 54
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Ly2/m;->d:Ly2/j;

    .line 64
    .line 65
    sget-object v0, Ly2/r;->n:Ly2/u;

    .line 66
    .line 67
    iget-object p1, p1, Ly2/j;->a:Ls/h0;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v1, 0x22

    .line 85
    .line 86
    if-lt v0, v1, :cond_1

    .line 87
    .line 88
    invoke-static {p2, p1}, Lc/a;->j(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-object p2
.end method

.method public final k(Ly1/l0;Ly2/m;)Ly1/h0;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ly2/m;->d()Lq2/h1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, v0, Lo2/v0;->c:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    invoke-static {v0, v1}, La/a;->S(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object p2, p2, Ly2/m;->c:Lq2/h0;

    .line 17
    .line 18
    iget-object p2, p2, Lq2/h0;->y:Ln3/m;

    .line 19
    .line 20
    iget-object v2, p0, Lr2/b0;->d:Lr2/u;

    .line 21
    .line 22
    invoke-virtual {v2}, Lr2/u;->getDensity()Ln3/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {p1, v0, v1, p2, v2}, Ly1/l0;->a(JLn3/m;Ln3/c;)Ly1/h0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final l(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-eqz p4, :cond_2

    .line 26
    .line 27
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    if-eqz p5, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    return-object p1
.end method

.method public final m(Ly2/m;)I
    .locals 4

    .line 1
    iget-object v0, p1, Ly2/m;->d:Ly2/j;

    .line 2
    .line 3
    iget-object p1, p1, Ly2/m;->d:Ly2/j;

    .line 4
    .line 5
    sget-object v1, Ly2/r;->a:Ly2/u;

    .line 6
    .line 7
    sget-object v1, Ly2/r;->a:Ly2/u;

    .line 8
    .line 9
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Ly2/r;->F:Ly2/u;

    .line 18
    .line 19
    iget-object v1, p1, Ly2/j;->a:Ls/h0;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lb3/n0;

    .line 32
    .line 33
    iget-wide v0, p1, Lb3/n0;->a:J

    .line 34
    .line 35
    const-wide v2, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v0, v2

    .line 41
    long-to-int p1, v0

    .line 42
    return p1

    .line 43
    :cond_0
    iget p1, p0, Lr2/b0;->w:I

    .line 44
    .line 45
    return p1
.end method

.method public final n(Ly2/m;)I
    .locals 2

    .line 1
    iget-object v0, p1, Ly2/m;->d:Ly2/j;

    .line 2
    .line 3
    iget-object p1, p1, Ly2/m;->d:Ly2/j;

    .line 4
    .line 5
    sget-object v1, Ly2/r;->a:Ly2/u;

    .line 6
    .line 7
    sget-object v1, Ly2/r;->a:Ly2/u;

    .line 8
    .line 9
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Ly2/r;->F:Ly2/u;

    .line 18
    .line 19
    iget-object v1, p1, Ly2/j;->a:Ls/h0;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ly2/j;->j(Ly2/u;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lb3/n0;

    .line 32
    .line 33
    iget-wide v0, p1, Lb3/n0;->a:J

    .line 34
    .line 35
    const/16 p1, 0x20

    .line 36
    .line 37
    shr-long/2addr v0, p1

    .line 38
    long-to-int p1, v0

    .line 39
    return p1

    .line 40
    :cond_0
    iget p1, p0, Lr2/b0;->w:I

    .line 41
    .line 42
    return p1
.end method

.method public final o()Ls/k;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lr2/b0;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lr2/b0;->A:Z

    .line 7
    .line 8
    iget-object v0, p0, Lr2/b0;->d:Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ly2/p;->b(Ly2/o;)Ls/w;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lr2/b0;->C:Ls/w;

    .line 19
    .line 20
    invoke-virtual {p0}, Lr2/b0;->q()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lr2/b0;->C:Ls/w;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lr2/b0;->E:Ls/u;

    .line 37
    .line 38
    invoke-virtual {v2}, Ls/u;->a()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lr2/b0;->F:Ls/u;

    .line 42
    .line 43
    invoke-virtual {v3}, Ls/u;->a()V

    .line 44
    .line 45
    .line 46
    const/4 v4, -0x1

    .line 47
    invoke-virtual {v1, v4}, Ls/k;->b(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ly2/n;

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    iget-object v4, v4, Ly2/n;->a:Ly2/m;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    :goto_0
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Lb2/a;

    .line 63
    .line 64
    const/4 v6, 0x6

    .line 65
    invoke-direct {v5, v6, v1}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lb2/a;

    .line 69
    .line 70
    const/4 v6, 0x7

    .line 71
    invoke-direct {v1, v6, v0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v4, v5, v1, v0}, Ly2/v;->b(Ly2/m;Lb2/a;Lb2/a;Ljava/util/List;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Lp9/x1;->u(Ljava/util/List;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v4, 0x1

    .line 87
    if-gt v4, v1, :cond_1

    .line 88
    .line 89
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ly2/m;

    .line 96
    .line 97
    iget v5, v5, Ly2/m;->g:I

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Ly2/m;

    .line 104
    .line 105
    iget v6, v6, Ly2/m;->g:I

    .line 106
    .line 107
    invoke-virtual {v2, v5, v6}, Ls/u;->f(II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v6, v5}, Ls/u;->f(II)V

    .line 111
    .line 112
    .line 113
    if-eq v4, v1, :cond_1

    .line 114
    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Lr2/b0;->C:Ls/w;

    .line 119
    .line 120
    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lr2/b0;->k:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final r(Lq2/h0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/b0;->y:Ls/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/g;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lr2/b0;->z:Lcc/h;

    .line 10
    .line 11
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final v(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/b0;->d:Lr2/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ly2/o;->a()Ly2/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Ly2/m;->g:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    :cond_0
    return p1
.end method

.method public final w(Ly2/m;Lr2/l2;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Ls/m;->a:[I

    .line 8
    .line 9
    new-instance v3, Ls/x;

    .line 10
    .line 11
    invoke-direct {v3}, Ls/x;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    invoke-static {v4, v1}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget-object v6, v1, Ly2/m;->c:Lq2/h0;

    .line 20
    .line 21
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    :goto_0
    if-ge v9, v7, :cond_2

    .line 28
    .line 29
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    check-cast v10, Ly2/m;

    .line 34
    .line 35
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    iget v10, v10, Ly2/m;->g:I

    .line 40
    .line 41
    invoke-virtual {v11, v10}, Ls/k;->a(I)Z

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-eqz v11, :cond_1

    .line 46
    .line 47
    iget-object v11, v2, Lr2/l2;->b:Ls/x;

    .line 48
    .line 49
    invoke-virtual {v11, v10}, Ls/x;->b(I)Z

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-nez v11, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Lr2/b0;->r(Lq2/h0;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {v3, v10}, Ls/x;->a(I)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, v2, Lr2/l2;->b:Ls/x;

    .line 66
    .line 67
    iget-object v5, v2, Ls/x;->b:[I

    .line 68
    .line 69
    iget-object v2, v2, Ls/x;->a:[J

    .line 70
    .line 71
    array-length v7, v2

    .line 72
    add-int/lit8 v7, v7, -0x2

    .line 73
    .line 74
    if-ltz v7, :cond_6

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    :goto_1
    aget-wide v10, v2, v9

    .line 78
    .line 79
    not-long v12, v10

    .line 80
    const/4 v14, 0x7

    .line 81
    shl-long/2addr v12, v14

    .line 82
    and-long/2addr v12, v10

    .line 83
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    and-long/2addr v12, v14

    .line 89
    cmp-long v16, v12, v14

    .line 90
    .line 91
    if-eqz v16, :cond_5

    .line 92
    .line 93
    sub-int v12, v9, v7

    .line 94
    .line 95
    not-int v12, v12

    .line 96
    ushr-int/lit8 v12, v12, 0x1f

    .line 97
    .line 98
    const/16 v13, 0x8

    .line 99
    .line 100
    rsub-int/lit8 v12, v12, 0x8

    .line 101
    .line 102
    const/4 v14, 0x0

    .line 103
    :goto_2
    if-ge v14, v12, :cond_4

    .line 104
    .line 105
    const-wide/16 v15, 0xff

    .line 106
    .line 107
    and-long/2addr v15, v10

    .line 108
    const-wide/16 v17, 0x80

    .line 109
    .line 110
    cmp-long v19, v15, v17

    .line 111
    .line 112
    if-gez v19, :cond_3

    .line 113
    .line 114
    shl-int/lit8 v15, v9, 0x3

    .line 115
    .line 116
    add-int/2addr v15, v14

    .line 117
    aget v15, v5, v15

    .line 118
    .line 119
    invoke-virtual {v3, v15}, Ls/x;->b(I)Z

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    if-nez v15, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0, v6}, Lr2/b0;->r(Lq2/h0;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    shr-long/2addr v10, v13

    .line 130
    add-int/lit8 v14, v14, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    if-ne v12, v13, :cond_6

    .line 134
    .line 135
    :cond_5
    if-eq v9, v7, :cond_6

    .line 136
    .line 137
    add-int/lit8 v9, v9, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    invoke-static {v4, v1}, Ly2/m;->j(ILy2/m;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :goto_3
    if-ge v8, v2, :cond_8

    .line 149
    .line 150
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ly2/m;

    .line 155
    .line 156
    iget-object v4, v0, Lr2/b0;->J:Ls/w;

    .line 157
    .line 158
    iget v5, v3, Ly2/m;->g:I

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ls/k;->b(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Lr2/l2;

    .line 165
    .line 166
    if-eqz v4, :cond_7

    .line 167
    .line 168
    invoke-virtual {v0}, Lr2/b0;->o()Ls/k;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    iget v6, v3, Ly2/m;->g:I

    .line 173
    .line 174
    invoke-virtual {v5, v6}, Ls/k;->a(I)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0, v3, v4}, Lr2/b0;->w(Ly2/m;Lr2/l2;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    return-void
.end method

.method public final x(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr2/b0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x800

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v2, 0x8000

    .line 22
    .line 23
    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lr2/b0;->r:Z

    .line 28
    .line 29
    :cond_2
    :try_start_0
    iget-object v0, p0, Lr2/b0;->f:Lr2/a0;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lr2/a0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iput-boolean v1, p0, Lr2/b0;->r:Z

    .line 42
    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    iput-boolean v1, p0, Lr2/b0;->r:Z

    .line 46
    .line 47
    throw p1
.end method

.method public final y(IILjava/lang/Integer;Ljava/util/List;)Z
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lr2/b0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lr2/b0;->j(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-eqz p4, :cond_2

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    const/16 p3, 0x3e

    .line 29
    .line 30
    const-string v0, ","

    .line 31
    .line 32
    invoke-static {p4, v0, p2, p3}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Lr2/b0;->x(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 45
    return p1
.end method
