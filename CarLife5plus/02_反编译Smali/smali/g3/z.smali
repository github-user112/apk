.class public final Lg3/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lg3/r;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:La2/b;

.field public final c:Lg3/a0;

.field public d:Z

.field public e:Lf9/k;

.field public f:Lf9/k;

.field public g:Lg3/w;

.field public h:Lg3/k;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/lang/Object;

.field public k:Landroid/graphics/Rect;

.field public final l:Lg3/c;

.field public final m:Lh1/e;

.field public n:Landroidx/lifecycle/z;


# direct methods
.method public constructor <init>(Landroid/view/View;Lr2/u;)V
    .locals 5

    .line 1
    new-instance v0, La2/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, La2/b;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lg3/a0;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Lg3/a0;-><init>(Landroid/view/Choreographer;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lg3/z;->a:Landroid/view/View;

    .line 19
    .line 20
    iput-object v0, p0, Lg3/z;->b:La2/b;

    .line 21
    .line 22
    iput-object v2, p0, Lg3/z;->c:Lg3/a0;

    .line 23
    .line 24
    sget-object p1, Lg3/b;->d:Lg3/b;

    .line 25
    .line 26
    iput-object p1, p0, Lg3/z;->e:Lf9/k;

    .line 27
    .line 28
    sget-object p1, Lg3/b;->e:Lg3/b;

    .line 29
    .line 30
    iput-object p1, p0, Lg3/z;->f:Lf9/k;

    .line 31
    .line 32
    new-instance p1, Lg3/w;

    .line 33
    .line 34
    sget-wide v1, Lb3/n0;->b:J

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    const-string v4, ""

    .line 38
    .line 39
    invoke-direct {p1, v4, v1, v2, v3}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lg3/z;->g:Lg3/w;

    .line 43
    .line 44
    sget-object p1, Lg3/k;->g:Lg3/k;

    .line 45
    .line 46
    iput-object p1, p0, Lg3/z;->h:Lg3/k;

    .line 47
    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance p1, Lb1/a;

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    invoke-direct {p1, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lr8/i;->b:Lr8/i;

    .line 62
    .line 63
    invoke-static {v1, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lg3/z;->j:Ljava/lang/Object;

    .line 68
    .line 69
    new-instance p1, Lg3/c;

    .line 70
    .line 71
    invoke-direct {p1, p2, v0}, Lg3/c;-><init>(Lr2/u;La2/b;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lg3/z;->l:Lg3/c;

    .line 75
    .line 76
    new-instance p1, Lh1/e;

    .line 77
    .line 78
    const/16 p2, 0x10

    .line 79
    .line 80
    new-array p2, p2, [Lg3/y;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lg3/z;->m:Lh1/e;

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final a(Lg3/w;Lg3/q;Lb3/l0;Lba/j;Lx1/c;Lx1/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg3/z;->l:Lg3/c;

    .line 2
    .line 3
    iget-object v1, v0, Lg3/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iput-object p1, v0, Lg3/c;->j:Lg3/w;

    .line 7
    .line 8
    iput-object p2, v0, Lg3/c;->l:Lg3/q;

    .line 9
    .line 10
    iput-object p3, v0, Lg3/c;->k:Lb3/l0;

    .line 11
    .line 12
    iput-object p4, v0, Lg3/c;->m:Lf9/k;

    .line 13
    .line 14
    iput-object p5, v0, Lg3/c;->n:Lx1/c;

    .line 15
    .line 16
    iput-object p6, v0, Lg3/c;->o:Lx1/c;

    .line 17
    .line 18
    iget-boolean p1, v0, Lg3/c;->e:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-boolean p1, v0, Lg3/c;->d:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lg3/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v1

    .line 35
    throw p1
.end method

.method public final b()V
    .locals 1

    .line 1
    sget-object v0, Lg3/y;->a:Lg3/y;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lg3/z;->i(Lg3/y;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Lg3/y;->c:Lg3/y;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lg3/z;->i(Lg3/y;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg3/z;->d:Z

    .line 3
    .line 4
    sget-object v0, Lg3/b;->f:Lg3/b;

    .line 5
    .line 6
    iput-object v0, p0, Lg3/z;->e:Lf9/k;

    .line 7
    .line 8
    sget-object v0, Lg3/b;->g:Lg3/b;

    .line 9
    .line 10
    iput-object v0, p0, Lg3/z;->f:Lf9/k;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lg3/z;->k:Landroid/graphics/Rect;

    .line 14
    .line 15
    sget-object v0, Lg3/y;->b:Lg3/y;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lg3/z;->i(Lg3/y;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final e(Lg3/w;Lg3/k;Ll0/u;Ll0/s;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg3/z;->d:Z

    .line 3
    .line 4
    iput-object p1, p0, Lg3/z;->g:Lg3/w;

    .line 5
    .line 6
    iput-object p2, p0, Lg3/z;->h:Lg3/k;

    .line 7
    .line 8
    iput-object p3, p0, Lg3/z;->e:Lf9/k;

    .line 9
    .line 10
    iput-object p4, p0, Lg3/z;->f:Lf9/k;

    .line 11
    .line 12
    sget-object p1, Lg3/y;->a:Lg3/y;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lg3/z;->i(Lg3/y;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f(Lx1/c;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p1, Lx1/c;->a:F

    .line 4
    .line 5
    invoke-static {v1}, Li9/a;->N(F)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p1, Lx1/c;->b:F

    .line 10
    .line 11
    invoke-static {v2}, Li9/a;->N(F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p1, Lx1/c;->c:F

    .line 16
    .line 17
    invoke-static {v3}, Li9/a;->N(F)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget p1, p1, Lx1/c;->d:F

    .line 22
    .line 23
    invoke-static {p1}, Li9/a;->N(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lg3/z;->k:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget-object p1, p0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lg3/z;->k:Landroid/graphics/Rect;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lg3/z;->a:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    sget-object v0, Lg3/y;->d:Lg3/y;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lg3/z;->i(Lg3/y;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Lg3/w;Lg3/w;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lg3/z;->g:Lg3/w;

    .line 2
    .line 3
    iget-wide v0, v0, Lg3/w;->b:J

    .line 4
    .line 5
    iget-wide v2, p2, Lg3/w;->b:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lb3/n0;->b(JJ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lg3/z;->g:Lg3/w;

    .line 15
    .line 16
    iget-object v0, v0, Lg3/w;->c:Lb3/n0;

    .line 17
    .line 18
    iget-object v2, p2, Lg3/w;->c:Lb3/n0;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    iput-object p2, p0, Lg3/z;->g:Lg3/w;

    .line 31
    .line 32
    iget-object v2, p0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_2
    if-ge v3, v2, :cond_3

    .line 40
    .line 41
    iget-object v4, p0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lg3/s;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    iput-object p2, v4, Lg3/s;->d:Lg3/w;

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iget-object v2, p0, Lg3/z;->l:Lg3/c;

    .line 63
    .line 64
    iget-object v3, v2, Lg3/c;->c:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v3

    .line 67
    const/4 v4, 0x0

    .line 68
    :try_start_0
    iput-object v4, v2, Lg3/c;->j:Lg3/w;

    .line 69
    .line 70
    iput-object v4, v2, Lg3/c;->l:Lg3/q;

    .line 71
    .line 72
    iput-object v4, v2, Lg3/c;->k:Lb3/l0;

    .line 73
    .line 74
    sget-object v5, Lg3/b;->b:Lg3/b;

    .line 75
    .line 76
    iput-object v5, v2, Lg3/c;->m:Lf9/k;

    .line 77
    .line 78
    iput-object v4, v2, Lg3/c;->n:Lx1/c;

    .line 79
    .line 80
    iput-object v4, v2, Lg3/c;->o:Lx1/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    monitor-exit v3

    .line 83
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, -0x1

    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    if-eqz v0, :cond_e

    .line 91
    .line 92
    iget-object p1, p0, Lg3/z;->b:La2/b;

    .line 93
    .line 94
    iget-wide v0, p2, Lg3/w;->b:J

    .line 95
    .line 96
    invoke-static {v0, v1}, Lb3/n0;->f(J)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    iget-wide v0, p2, Lg3/w;->b:J

    .line 101
    .line 102
    invoke-static {v0, v1}, Lb3/n0;->e(J)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iget-object p2, p0, Lg3/z;->g:Lg3/w;

    .line 107
    .line 108
    iget-object p2, p2, Lg3/w;->c:Lb3/n0;

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    iget-wide v0, p2, Lb3/n0;->a:J

    .line 113
    .line 114
    invoke-static {v0, v1}, Lb3/n0;->f(J)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    move v8, p2

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    const/4 v8, -0x1

    .line 121
    :goto_3
    iget-object p2, p0, Lg3/z;->g:Lg3/w;

    .line 122
    .line 123
    iget-object p2, p2, Lg3/w;->c:Lb3/n0;

    .line 124
    .line 125
    if-eqz p2, :cond_5

    .line 126
    .line 127
    iget-wide v0, p2, Lb3/n0;->a:J

    .line 128
    .line 129
    invoke-static {v0, v1}, Lb3/n0;->e(J)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    move v9, v3

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    const/4 v9, -0x1

    .line 136
    :goto_4
    iget-object p2, p1, La2/b;->c:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-interface {p2}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    move-object v4, p2

    .line 143
    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .line 145
    iget-object p1, p1, La2/b;->b:Ljava/lang/Object;

    .line 146
    .line 147
    move-object v5, p1

    .line 148
    check-cast v5, Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_6
    if-eqz p1, :cond_8

    .line 155
    .line 156
    iget-object v0, p1, Lg3/w;->a:Lb3/g;

    .line 157
    .line 158
    iget-object v0, v0, Lb3/g;->b:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v2, p2, Lg3/w;->a:Lb3/g;

    .line 161
    .line 162
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    iget-wide v4, p1, Lg3/w;->b:J

    .line 171
    .line 172
    iget-wide v6, p2, Lg3/w;->b:J

    .line 173
    .line 174
    invoke-static {v4, v5, v6, v7}, Lb3/n0;->b(JJ)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    iget-object p1, p1, Lg3/w;->c:Lb3/n0;

    .line 181
    .line 182
    iget-object p2, p2, Lg3/w;->c:Lb3/n0;

    .line 183
    .line 184
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_8

    .line 189
    .line 190
    :cond_7
    iget-object p1, p0, Lg3/z;->b:La2/b;

    .line 191
    .line 192
    iget-object p2, p1, La2/b;->c:Ljava/lang/Object;

    .line 193
    .line 194
    invoke-interface {p2}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    .line 200
    iget-object p1, p1, La2/b;->b:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p1, Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_8
    iget-object p1, p0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    :goto_5
    if-ge v1, p1, :cond_e

    .line 215
    .line 216
    iget-object p2, p0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    check-cast p2, Lg3/s;

    .line 229
    .line 230
    if-eqz p2, :cond_d

    .line 231
    .line 232
    iget-object v0, p0, Lg3/z;->g:Lg3/w;

    .line 233
    .line 234
    iget-object v2, p0, Lg3/z;->b:La2/b;

    .line 235
    .line 236
    iget-boolean v4, p2, Lg3/s;->h:Z

    .line 237
    .line 238
    if-nez v4, :cond_9

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_9
    iput-object v0, p2, Lg3/s;->d:Lg3/w;

    .line 242
    .line 243
    iget-boolean v4, p2, Lg3/s;->f:Z

    .line 244
    .line 245
    if-eqz v4, :cond_a

    .line 246
    .line 247
    iget p2, p2, Lg3/s;->e:I

    .line 248
    .line 249
    invoke-static {v0}, Lm9/e0;->I0(Lg3/w;)Landroid/view/inputmethod/ExtractedText;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    iget-object v5, v2, La2/b;->c:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-interface {v5}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 260
    .line 261
    iget-object v6, v2, La2/b;->b:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v6, Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {v5, v6, p2, v4}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    iget-object p2, v0, Lg3/w;->c:Lb3/n0;

    .line 269
    .line 270
    iget-wide v4, v0, Lg3/w;->b:J

    .line 271
    .line 272
    if-eqz p2, :cond_b

    .line 273
    .line 274
    iget-wide v6, p2, Lb3/n0;->a:J

    .line 275
    .line 276
    invoke-static {v6, v7}, Lb3/n0;->f(J)I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    move v10, p2

    .line 281
    goto :goto_6

    .line 282
    :cond_b
    const/4 v10, -0x1

    .line 283
    :goto_6
    iget-object p2, v0, Lg3/w;->c:Lb3/n0;

    .line 284
    .line 285
    if-eqz p2, :cond_c

    .line 286
    .line 287
    iget-wide v6, p2, Lb3/n0;->a:J

    .line 288
    .line 289
    invoke-static {v6, v7}, Lb3/n0;->e(J)I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    move v11, p2

    .line 294
    goto :goto_7

    .line 295
    :cond_c
    const/4 v11, -0x1

    .line 296
    :goto_7
    invoke-static {v4, v5}, Lb3/n0;->f(J)I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    invoke-static {v4, v5}, Lb3/n0;->e(J)I

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    iget-object p2, v2, La2/b;->c:Ljava/lang/Object;

    .line 305
    .line 306
    invoke-interface {p2}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    move-object v6, p2

    .line 311
    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 312
    .line 313
    iget-object p2, v2, La2/b;->b:Ljava/lang/Object;

    .line 314
    .line 315
    move-object v7, p2

    .line 316
    check-cast v7, Landroid/view/View;

    .line 317
    .line 318
    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 319
    .line 320
    .line 321
    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_e
    return-void

    .line 325
    :catchall_0
    move-exception v0

    .line 326
    move-object p1, v0

    .line 327
    monitor-exit v3

    .line 328
    throw p1
.end method

.method public final i(Lg3/y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/z;->m:Lh1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lg3/z;->n:Landroidx/lifecycle/z;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroidx/lifecycle/z;

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    invoke-direct {p1, v0, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lg3/z;->c:Lg3/a0;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lg3/a0;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lg3/z;->n:Landroidx/lifecycle/z;

    .line 23
    .line 24
    :cond_0
    return-void
.end method
