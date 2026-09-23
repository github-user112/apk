.class public final Lp4/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/support/v4/media/session/t;

.field public final b:Lba/a;

.field public final c:Lp4/k;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/t;Lba/a;Ljava/lang/ClassLoader;Lp4/u;Lp4/b0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lp4/c0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lp4/c0;->e:I

    .line 10
    iput-object p1, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 11
    iput-object p2, p0, Lp4/c0;->b:Lba/a;

    .line 12
    iget-object p1, p5, Lp4/b0;->a:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lp4/u;->a(Ljava/lang/String;)Lp4/k;

    move-result-object p1

    .line 13
    iget-object p2, p5, Lp4/b0;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lp4/k;->setArguments(Landroid/os/Bundle;)V

    .line 16
    iget-object p2, p5, Lp4/b0;->b:Ljava/lang/String;

    iput-object p2, p1, Lp4/k;->e:Ljava/lang/String;

    .line 17
    iget-boolean p2, p5, Lp4/b0;->c:Z

    iput-boolean p2, p1, Lp4/k;->m:Z

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Lp4/k;->o:Z

    .line 19
    iget p2, p5, Lp4/b0;->d:I

    iput p2, p1, Lp4/k;->v:I

    .line 20
    iget p2, p5, Lp4/b0;->e:I

    iput p2, p1, Lp4/k;->w:I

    .line 21
    iget-object p2, p5, Lp4/b0;->f:Ljava/lang/String;

    iput-object p2, p1, Lp4/k;->x:Ljava/lang/String;

    .line 22
    iget-boolean p2, p5, Lp4/b0;->g:Z

    iput-boolean p2, p1, Lp4/k;->A:Z

    .line 23
    iget-boolean p2, p5, Lp4/b0;->h:Z

    iput-boolean p2, p1, Lp4/k;->l:Z

    .line 24
    iget-boolean p2, p5, Lp4/b0;->i:Z

    iput-boolean p2, p1, Lp4/k;->z:Z

    .line 25
    iget-boolean p2, p5, Lp4/b0;->k:Z

    iput-boolean p2, p1, Lp4/k;->y:Z

    .line 26
    invoke-static {}, Landroidx/lifecycle/o;->values()[Landroidx/lifecycle/o;

    move-result-object p2

    iget p3, p5, Lp4/b0;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lp4/k;->L:Landroidx/lifecycle/o;

    .line 27
    iget-object p2, p5, Lp4/b0;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 28
    iput-object p2, p1, Lp4/k;->b:Landroid/os/Bundle;

    goto :goto_0

    .line 29
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Lp4/k;->b:Landroid/os/Bundle;

    .line 30
    :goto_0
    iput-object p1, p0, Lp4/c0;->c:Lp4/k;

    const/4 p2, 0x2

    .line 31
    invoke-static {p2}, Lp4/x;->D(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/t;Lba/a;Lp4/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp4/c0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lp4/c0;->e:I

    .line 4
    iput-object p1, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 5
    iput-object p2, p0, Lp4/c0;->b:Lba/a;

    .line 6
    iput-object p3, p0, Lp4/c0;->c:Lp4/k;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/t;Lba/a;Lp4/k;Lp4/b0;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lp4/c0;->d:Z

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lp4/c0;->e:I

    .line 36
    iput-object p1, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 37
    iput-object p2, p0, Lp4/c0;->b:Lba/a;

    .line 38
    iput-object p3, p0, Lp4/c0;->c:Lp4/k;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p3, Lp4/k;->c:Landroid/util/SparseArray;

    .line 40
    iput-object p1, p3, Lp4/k;->d:Landroid/os/Bundle;

    .line 41
    iput v0, p3, Lp4/k;->q:I

    .line 42
    iput-boolean v0, p3, Lp4/k;->n:Z

    .line 43
    iput-boolean v0, p3, Lp4/k;->k:Z

    .line 44
    iget-object p2, p3, Lp4/k;->g:Lp4/k;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lp4/k;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Lp4/k;->h:Ljava/lang/String;

    .line 45
    iput-object p1, p3, Lp4/k;->g:Lp4/k;

    .line 46
    iget-object p1, p4, Lp4/b0;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 47
    iput-object p1, p3, Lp4/k;->b:Landroid/os/Bundle;

    return-void

    .line 48
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Lp4/k;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Lp4/c0;->c:Lp4/k;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "moveto ACTIVITY_CREATED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, v3, Lp4/k;->b:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v1, v3, Lp4/k;->t:Lp4/x;

    .line 32
    .line 33
    invoke-virtual {v1}, Lp4/x;->J()V

    .line 34
    .line 35
    .line 36
    iput v0, v3, Lp4/k;->a:I

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, v3, Lp4/k;->D:Z

    .line 40
    .line 41
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "moveto RESTORE_VIEW_STATE: "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    iput-object v0, v3, Lp4/k;->b:Landroid/os/Bundle;

    .line 66
    .line 67
    iget-object v0, v3, Lp4/k;->t:Lp4/x;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    iput-boolean v1, v0, Lp4/x;->E:Z

    .line 71
    .line 72
    iput-boolean v1, v0, Lp4/x;->F:Z

    .line 73
    .line 74
    iget-object v2, v0, Lp4/x;->L:Lp4/z;

    .line 75
    .line 76
    iput-boolean v1, v2, Lp4/z;->g:Z

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    invoke-virtual {v0, v2}, Lp4/x;->t(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->M0(Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ATTACHED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lp4/k;->g:Lp4/k;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, " that does not belong to this FragmentManager!"

    .line 33
    .line 34
    const-string v4, " declared target fragment "

    .line 35
    .line 36
    iget-object v5, p0, Lp4/c0;->b:Lba/a;

    .line 37
    .line 38
    const-string v6, "Fragment "

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lp4/k;->e:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, v5, Lba/a;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lp4/c0;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v3, v1, Lp4/k;->g:Lp4/k;

    .line 57
    .line 58
    iget-object v3, v3, Lp4/k;->e:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v3, v1, Lp4/k;->h:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, v1, Lp4/k;->g:Lp4/k;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Lp4/k;->g:Lp4/k;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    iget-object v0, v1, Lp4/k;->h:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object v2, v5, Lba/a;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v2, v0

    .line 108
    check-cast v2, Lp4/c0;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Lp4/k;->h:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v2, v1, v3}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 137
    .line 138
    invoke-virtual {v2}, Lp4/c0;->j()V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object v0, v1, Lp4/k;->r:Lp4/x;

    .line 142
    .line 143
    iget-object v2, v0, Lp4/x;->t:Lp4/m;

    .line 144
    .line 145
    iput-object v2, v1, Lp4/k;->s:Lp4/m;

    .line 146
    .line 147
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 148
    .line 149
    iput-object v0, v1, Lp4/k;->u:Lp4/k;

    .line 150
    .line 151
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/t;->S0(Z)V

    .line 155
    .line 156
    .line 157
    iget-object v3, v1, Lp4/k;->P:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_6

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Lp4/h;

    .line 174
    .line 175
    iget-object v5, v5, Lp4/h;->a:Ls6/a;

    .line 176
    .line 177
    iget-object v7, v5, Lp4/k;->O:La5/f;

    .line 178
    .line 179
    invoke-virtual {v7}, La5/f;->a()V

    .line 180
    .line 181
    .line 182
    invoke-static {v5}, Landroidx/lifecycle/i0;->d(La5/g;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 187
    .line 188
    .line 189
    iget-object v3, v1, Lp4/k;->t:Lp4/x;

    .line 190
    .line 191
    iget-object v4, v1, Lp4/k;->s:Lp4/m;

    .line 192
    .line 193
    new-instance v5, Lp4/i;

    .line 194
    .line 195
    invoke-direct {v5, v1}, Lp4/i;-><init>(Lp4/k;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v4, v5, v1}, Lp4/x;->b(Lp4/m;Lp4/o;Lp4/k;)V

    .line 199
    .line 200
    .line 201
    iput v2, v1, Lp4/k;->a:I

    .line 202
    .line 203
    iput-boolean v2, v1, Lp4/k;->D:Z

    .line 204
    .line 205
    iget-object v3, v1, Lp4/k;->s:Lp4/m;

    .line 206
    .line 207
    iget-object v4, v3, Lp4/m;->c:Lj/j;

    .line 208
    .line 209
    const/4 v4, 0x1

    .line 210
    iput-boolean v4, v1, Lp4/k;->D:Z

    .line 211
    .line 212
    iget-object v3, v3, Lp4/m;->b:Lj/j;

    .line 213
    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    iput-boolean v4, v1, Lp4/k;->D:Z

    .line 217
    .line 218
    :cond_7
    iget-boolean v3, v1, Lp4/k;->D:Z

    .line 219
    .line 220
    if-eqz v3, :cond_9

    .line 221
    .line 222
    iget-object v3, v1, Lp4/k;->r:Lp4/x;

    .line 223
    .line 224
    iget-object v3, v3, Lp4/x;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_8

    .line 235
    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Lp4/a0;

    .line 241
    .line 242
    invoke-interface {v4}, Lp4/a0;->a()V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_8
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 247
    .line 248
    iput-boolean v2, v1, Lp4/x;->E:Z

    .line 249
    .line 250
    iput-boolean v2, v1, Lp4/x;->F:Z

    .line 251
    .line 252
    iget-object v3, v1, Lp4/x;->L:Lp4/z;

    .line 253
    .line 254
    iput-boolean v2, v3, Lp4/z;->g:Z

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lp4/x;->t(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/t;->N0(Z)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_9
    new-instance v0, Lp4/h0;

    .line 264
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, " did not call through to super.onAttach()"

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v0
.end method

.method public final c()I
    .locals 11

    .line 1
    iget-object v0, p0, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    iget-object v1, v0, Lp4/k;->r:Lp4/x;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lp4/k;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Lp4/c0;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Lp4/k;->L:Landroidx/lifecycle/o;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x5

    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v2, v7, :cond_3

    .line 24
    .line 25
    if-eq v2, v6, :cond_2

    .line 26
    .line 27
    const/4 v8, 0x3

    .line 28
    if-eq v2, v8, :cond_1

    .line 29
    .line 30
    if-eq v2, v5, :cond_4

    .line 31
    .line 32
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Lp4/k;->m:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Lp4/k;->n:Z

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    iget v1, p0, Lp4/c0;->e:I

    .line 61
    .line 62
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    iget v2, p0, Lp4/c0;->e:I

    .line 68
    .line 69
    if-ge v2, v5, :cond_6

    .line 70
    .line 71
    iget v2, v0, Lp4/k;->a:I

    .line 72
    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :cond_7
    :goto_1
    iget-boolean v2, v0, Lp4/k;->k:Z

    .line 83
    .line 84
    if-nez v2, :cond_8

    .line 85
    .line 86
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :cond_8
    iget-object v2, v0, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 91
    .line 92
    if-eqz v2, :cond_b

    .line 93
    .line 94
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v8}, Lp4/x;->B()Ln6/a;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v2, v8}, Lp4/g;->d(Landroid/view/ViewGroup;Ln6/a;)Lp4/g;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v8, v2, Lp4/g;->b:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    const/4 v10, 0x0

    .line 117
    if-nez v9, :cond_a

    .line 118
    .line 119
    iget-object v2, v2, Lp4/g;->c:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-nez v8, :cond_9

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lp4/g0;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    throw v10

    .line 142
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lp4/g0;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    throw v10

    .line 152
    :cond_b
    :goto_2
    iget-boolean v2, v0, Lp4/k;->l:Z

    .line 153
    .line 154
    if-eqz v2, :cond_d

    .line 155
    .line 156
    invoke-virtual {v0}, Lp4/k;->n()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_c

    .line 161
    .line 162
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    goto :goto_3

    .line 167
    :cond_c
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    :cond_d
    :goto_3
    iget-boolean v2, v0, Lp4/k;->F:Z

    .line 172
    .line 173
    if-eqz v2, :cond_e

    .line 174
    .line 175
    iget v2, v0, Lp4/k;->a:I

    .line 176
    .line 177
    if-ge v2, v3, :cond_e

    .line 178
    .line 179
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    :cond_e
    invoke-static {v6}, Lp4/x;->D(I)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_f

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v3, "computeExpectedState() of "

    .line 192
    .line 193
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, " for "

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v2, "FragmentManager"

    .line 212
    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_f
    return v1
.end method

.method public final d()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Lp4/k;->J:Z

    .line 30
    .line 31
    const-string v2, "android:support:fragments"

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/support/v4/media/session/t;->T0(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v5, v1, Lp4/k;->b:Landroid/os/Bundle;

    .line 43
    .line 44
    iget-object v6, v1, Lp4/k;->t:Lp4/x;

    .line 45
    .line 46
    invoke-virtual {v6}, Lp4/x;->J()V

    .line 47
    .line 48
    .line 49
    iput v3, v1, Lp4/k;->a:I

    .line 50
    .line 51
    iput-boolean v4, v1, Lp4/k;->D:Z

    .line 52
    .line 53
    iget-object v6, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 54
    .line 55
    new-instance v7, La5/b;

    .line 56
    .line 57
    const/4 v8, 0x4

    .line 58
    invoke-direct {v7, v8, v1}, La5/b;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 62
    .line 63
    .line 64
    iget-object v6, v1, Lp4/k;->O:La5/f;

    .line 65
    .line 66
    invoke-virtual {v6, v5}, La5/f;->b(Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v3, v1, Lp4/k;->D:Z

    .line 70
    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    iget-object v5, v1, Lp4/k;->t:Lp4/x;

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Lp4/x;->N(Landroid/os/Parcelable;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lp4/k;->t:Lp4/x;

    .line 85
    .line 86
    iput-boolean v4, v2, Lp4/x;->E:Z

    .line 87
    .line 88
    iput-boolean v4, v2, Lp4/x;->F:Z

    .line 89
    .line 90
    iget-object v5, v2, Lp4/x;->L:Lp4/z;

    .line 91
    .line 92
    iput-boolean v4, v5, Lp4/z;->g:Z

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lp4/x;->t(I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v2, v1, Lp4/k;->t:Lp4/x;

    .line 98
    .line 99
    iget v5, v2, Lp4/x;->s:I

    .line 100
    .line 101
    if-lt v5, v3, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iput-boolean v4, v2, Lp4/x;->E:Z

    .line 105
    .line 106
    iput-boolean v4, v2, Lp4/x;->F:Z

    .line 107
    .line 108
    iget-object v5, v2, Lp4/x;->L:Lp4/z;

    .line 109
    .line 110
    iput-boolean v4, v5, Lp4/z;->g:Z

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Lp4/x;->t(I)V

    .line 113
    .line 114
    .line 115
    :goto_0
    iput-boolean v3, v1, Lp4/k;->J:Z

    .line 116
    .line 117
    iget-boolean v2, v1, Lp4/k;->D:Z

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    iget-object v1, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 122
    .line 123
    sget-object v2, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v4}, Landroid/support/v4/media/session/t;->O0(Z)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_3
    new-instance v0, Lp4/h0;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "Fragment "

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, " did not call through to super.onCreate()"

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_4
    iget-object v0, v1, Lp4/k;->b:Landroid/os/Bundle;

    .line 158
    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object v2, v1, Lp4/k;->t:Lp4/x;

    .line 168
    .line 169
    invoke-virtual {v2, v0}, Lp4/x;->N(Landroid/os/Parcelable;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 173
    .line 174
    iput-boolean v4, v0, Lp4/x;->E:Z

    .line 175
    .line 176
    iput-boolean v4, v0, Lp4/x;->F:Z

    .line 177
    .line 178
    iget-object v2, v0, Lp4/x;->L:Lp4/z;

    .line 179
    .line 180
    iput-boolean v4, v2, Lp4/z;->g:Z

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Lp4/x;->t(I)V

    .line 183
    .line 184
    .line 185
    :cond_5
    iput v3, v1, Lp4/k;->a:I

    .line 186
    .line 187
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    iget-boolean v1, v0, Lp4/k;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Lp4/x;->D(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "moveto CREATE_VIEW: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "FragmentManager"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Lp4/k;->p()Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    iget v1, v0, Lp4/k;->w:I

    .line 44
    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    if-eq v1, v2, :cond_5

    .line 49
    .line 50
    iget-object v2, v0, Lp4/k;->r:Lp4/x;

    .line 51
    .line 52
    iget-object v2, v2, Lp4/x;->u:Lp4/o;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lp4/o;->O(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/view/ViewGroup;

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    iget-boolean v2, v0, Lp4/k;->o:Z

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lp4/k;->q()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v2, v0, Lp4/k;->w:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const-string v1, "unknown"

    .line 84
    .line 85
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v4, "No view found for id 0x"

    .line 90
    .line 91
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v4, v0, Lp4/k;->w:I

    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " ("

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ") for fragment "

    .line 112
    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v2

    .line 127
    :cond_4
    instance-of v2, v1, Lp4/p;

    .line 128
    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    sget-object v2, Lq4/c;->a:Lq4/b;

    .line 132
    .line 133
    new-instance v2, Lq4/a;

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v4, "Attempting to add fragment "

    .line 138
    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, " to container "

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, " which is not a FragmentContainerView"

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-direct {v2, v0, v3}, Lq4/a;-><init>(Lp4/k;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v2}, Lq4/c;->b(Lq4/a;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lq4/c;->a(Lp4/k;)Lq4/b;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v3, "Cannot create fragment "

    .line 181
    .line 182
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, " for a container view with no id"

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v1

    .line 201
    :cond_6
    const/4 v1, 0x0

    .line 202
    :cond_7
    :goto_1
    iput-object v1, v0, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 203
    .line 204
    iget-object v1, v0, Lp4/k;->t:Lp4/x;

    .line 205
    .line 206
    invoke-virtual {v1}, Lp4/x;->J()V

    .line 207
    .line 208
    .line 209
    const/4 v1, 0x1

    .line 210
    iput-boolean v1, v0, Lp4/k;->p:Z

    .line 211
    .line 212
    invoke-virtual {v0}, Lp4/k;->b()Landroidx/lifecycle/r0;

    .line 213
    .line 214
    .line 215
    const/4 v1, 0x2

    .line 216
    iput v1, v0, Lp4/k;->a:I

    .line 217
    .line 218
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Lp4/k;->l:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Lp4/k;->n()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v4, p0, Lp4/c0;->b:Lba/a;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v5, v1, Lp4/k;->e:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v6, v4, Lba/a;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lp4/b0;

    .line 59
    .line 60
    :cond_2
    if-nez v0, :cond_7

    .line 61
    .line 62
    iget-object v5, v4, Lba/a;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Lp4/z;

    .line 65
    .line 66
    iget-object v6, v5, Lp4/z;->b:Ljava/util/HashMap;

    .line 67
    .line 68
    iget-object v7, v1, Lp4/k;->e:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-boolean v6, v5, Lp4/z;->e:Z

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    iget-boolean v5, v5, Lp4/z;->f:Z

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    const/4 v5, 0x1

    .line 85
    :goto_2
    if-eqz v5, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    iget-object v0, v1, Lp4/k;->h:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-boolean v3, v0, Lp4/k;->A:Z

    .line 99
    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    iput-object v0, v1, Lp4/k;->g:Lp4/k;

    .line 103
    .line 104
    :cond_6
    iput v2, v1, Lp4/k;->a:I

    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    :goto_3
    iget-object v5, v1, Lp4/k;->s:Lp4/m;

    .line 108
    .line 109
    if-eqz v5, :cond_8

    .line 110
    .line 111
    const/4 v6, 0x1

    .line 112
    goto :goto_4

    .line 113
    :cond_8
    const/4 v6, 0x0

    .line 114
    :goto_4
    if-eqz v6, :cond_9

    .line 115
    .line 116
    iget-object v5, v4, Lba/a;->e:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v5, Lp4/z;

    .line 119
    .line 120
    iget-boolean v5, v5, Lp4/z;->f:Z

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_9
    iget-object v5, v5, Lp4/m;->c:Lj/j;

    .line 124
    .line 125
    invoke-static {v5}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_a

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    xor-int/2addr v5, v3

    .line 136
    goto :goto_5

    .line 137
    :cond_a
    const/4 v5, 0x1

    .line 138
    :goto_5
    if-eqz v0, :cond_b

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_b
    if-eqz v5, :cond_c

    .line 142
    .line 143
    :goto_6
    iget-object v0, v4, Lba/a;->e:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lp4/z;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lp4/z;->d(Lp4/k;)V

    .line 148
    .line 149
    .line 150
    :cond_c
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 151
    .line 152
    invoke-virtual {v0}, Lp4/x;->k()V

    .line 153
    .line 154
    .line 155
    iget-object v0, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 156
    .line 157
    sget-object v5, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 158
    .line 159
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 160
    .line 161
    .line 162
    iput v2, v1, Lp4/k;->a:I

    .line 163
    .line 164
    iput-boolean v2, v1, Lp4/k;->D:Z

    .line 165
    .line 166
    iput-boolean v2, v1, Lp4/k;->J:Z

    .line 167
    .line 168
    move-object v0, v1

    .line 169
    check-cast v0, Ls6/a;

    .line 170
    .line 171
    iput-boolean v3, v0, Lp4/k;->D:Z

    .line 172
    .line 173
    invoke-interface {v0}, Lp6/a;->f()Lo6/a;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lo6/a;->d()V

    .line 178
    .line 179
    .line 180
    iget-boolean v0, v1, Lp4/k;->D:Z

    .line 181
    .line 182
    if-eqz v0, :cond_10

    .line 183
    .line 184
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/t;->P0(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Lba/a;->v()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_e

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lp4/c0;

    .line 208
    .line 209
    if-eqz v2, :cond_d

    .line 210
    .line 211
    iget-object v2, v2, Lp4/c0;->c:Lp4/k;

    .line 212
    .line 213
    iget-object v3, v1, Lp4/k;->e:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v5, v2, Lp4/k;->h:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_d

    .line 222
    .line 223
    iput-object v1, v2, Lp4/k;->g:Lp4/k;

    .line 224
    .line 225
    const/4 v3, 0x0

    .line 226
    iput-object v3, v2, Lp4/k;->h:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_e
    iget-object v0, v1, Lp4/k;->h:Ljava/lang/String;

    .line 230
    .line 231
    if-eqz v0, :cond_f

    .line 232
    .line 233
    invoke-virtual {v4, v0}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, v1, Lp4/k;->g:Lp4/k;

    .line 238
    .line 239
    :cond_f
    invoke-virtual {v4, p0}, Lba/a;->D(Lp4/c0;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_10
    new-instance v0, Lp4/h0;

    .line 244
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v3, "Fragment "

    .line 248
    .line 249
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, " did not call through to super.onDestroy()"

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Lp4/x;->D(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATE_VIEW: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, v0, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object v1, v0, Lp4/k;->t:Lp4/x;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Lp4/x;->t(I)V

    .line 35
    .line 36
    .line 37
    iput v2, v0, Lp4/k;->a:I

    .line 38
    .line 39
    iput-boolean v2, v0, Lp4/k;->D:Z

    .line 40
    .line 41
    invoke-interface {v0}, Landroidx/lifecycle/s0;->b()Landroidx/lifecycle/r0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v3, Lw4/a;->c:Ln6/a;

    .line 46
    .line 47
    const-string v4, "store"

    .line 48
    .line 49
    invoke-static {v1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lu4/a;->b:Lu4/a;

    .line 53
    .line 54
    const-string v5, "defaultCreationExtras"

    .line 55
    .line 56
    invoke-static {v4, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Lba/a;

    .line 60
    .line 61
    invoke-direct {v5, v1, v3, v4}, Lba/a;-><init>(Landroidx/lifecycle/r0;Landroidx/lifecycle/q0;Lu4/b;)V

    .line 62
    .line 63
    .line 64
    const-class v1, Lw4/a;

    .line 65
    .line 66
    invoke-static {v1}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Lm9/c;->j()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_6

    .line 75
    .line 76
    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v5, v3, v1}, Lba/a;->A(Ljava/lang/String;Lm9/c;)Landroidx/lifecycle/o0;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lw4/a;

    .line 87
    .line 88
    iget-object v1, v1, Lw4/a;->b:Ls/r0;

    .line 89
    .line 90
    iget v3, v1, Ls/r0;->c:I

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    if-gtz v3, :cond_5

    .line 94
    .line 95
    iput-boolean v4, v0, Lp4/k;->p:Z

    .line 96
    .line 97
    iget-object v1, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Landroid/support/v4/media/session/t;->Y0(Z)V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    iput-object v1, v0, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 104
    .line 105
    iget-object v3, v0, Lp4/k;->N:Landroidx/lifecycle/x;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lq/a;->v()Lq/a;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget-object v5, v5, Lq/a;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v5, Lq/a;

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-ne v5, v6, :cond_4

    .line 134
    .line 135
    iput-object v1, v3, Landroidx/lifecycle/x;->c:Ljava/lang/Object;

    .line 136
    .line 137
    iget-boolean v1, v3, Landroidx/lifecycle/x;->e:Z

    .line 138
    .line 139
    if-eqz v1, :cond_1

    .line 140
    .line 141
    iput-boolean v2, v3, Landroidx/lifecycle/x;->f:Z

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    iput-boolean v2, v3, Landroidx/lifecycle/x;->e:Z

    .line 145
    .line 146
    :cond_2
    iput-boolean v4, v3, Landroidx/lifecycle/x;->f:Z

    .line 147
    .line 148
    iget-object v1, v3, Landroidx/lifecycle/x;->b:Lr/f;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    new-instance v2, Lr/d;

    .line 154
    .line 155
    invoke-direct {v2, v1}, Lr/d;-><init>(Lr/f;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v1, Lr/f;->c:Ljava/util/WeakHashMap;

    .line 159
    .line 160
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v1, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lr/d;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_3

    .line 170
    .line 171
    iget-boolean v1, v3, Landroidx/lifecycle/x;->f:Z

    .line 172
    .line 173
    if-nez v1, :cond_2

    .line 174
    .line 175
    iput-boolean v4, v3, Landroidx/lifecycle/x;->e:Z

    .line 176
    .line 177
    :goto_0
    iput-boolean v4, v0, Lp4/k;->n:Z

    .line 178
    .line 179
    return-void

    .line 180
    :cond_3
    invoke-virtual {v2}, Lr/d;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance v0, Ljava/lang/ClassCastException;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    const-string v1, "Cannot invoke setValue on a background thread"

    .line 202
    .line 203
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_5
    invoke-virtual {v1, v4}, Ls/r0;->f(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    new-instance v0, Ljava/lang/ClassCastException;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    const-string v1, "Local and anonymous classes can not be ViewModels"

    .line 223
    .line 224
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method

.method public final h()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Lp4/c0;->c:Lp4/k;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, -0x1

    .line 30
    iput v1, v3, Lp4/k;->a:I

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    iput-boolean v4, v3, Lp4/k;->D:Z

    .line 34
    .line 35
    iget-object v5, v3, Lp4/k;->t:Lp4/x;

    .line 36
    .line 37
    iget-boolean v6, v5, Lp4/x;->G:Z

    .line 38
    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v5}, Lp4/x;->k()V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lp4/x;

    .line 45
    .line 46
    invoke-direct {v5}, Lp4/x;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v5, v3, Lp4/k;->t:Lp4/x;

    .line 50
    .line 51
    :cond_1
    iget-object v5, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-virtual {v5, v6}, Landroid/support/v4/media/session/t;->Q0(Z)V

    .line 55
    .line 56
    .line 57
    iput v1, v3, Lp4/k;->a:I

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-object v1, v3, Lp4/k;->s:Lp4/m;

    .line 61
    .line 62
    iput-object v1, v3, Lp4/k;->u:Lp4/k;

    .line 63
    .line 64
    iput-object v1, v3, Lp4/k;->r:Lp4/x;

    .line 65
    .line 66
    iget-boolean v1, v3, Lp4/k;->l:Z

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lp4/k;->n()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v1, p0, Lp4/c0;->b:Lba/a;

    .line 78
    .line 79
    iget-object v1, v1, Lba/a;->e:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lp4/z;

    .line 82
    .line 83
    iget-object v5, v1, Lp4/z;->b:Ljava/util/HashMap;

    .line 84
    .line 85
    iget-object v6, v3, Lp4/k;->e:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-boolean v5, v1, Lp4/z;->e:Z

    .line 95
    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    iget-boolean v4, v1, Lp4/z;->f:Z

    .line 99
    .line 100
    :cond_4
    :goto_0
    if-eqz v4, :cond_6

    .line 101
    .line 102
    :goto_1
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "initState called for fragment: "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v3}, Lp4/k;->l()V

    .line 126
    .line 127
    .line 128
    :cond_6
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    iget-boolean v1, v0, Lp4/k;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Lp4/k;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, v0, Lp4/k;->p:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Lp4/x;->D(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "moveto CREATE_VIEW: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FragmentManager"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lp4/k;->p()Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lp4/k;->t:Lp4/x;

    .line 45
    .line 46
    invoke-virtual {v1}, Lp4/x;->J()V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    iput-boolean v1, v0, Lp4/k;->p:Z

    .line 51
    .line 52
    invoke-virtual {v0}, Lp4/k;->b()Landroidx/lifecycle/r0;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lp4/c0;->b:Lba/a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lp4/c0;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "FragmentManager"

    .line 7
    .line 8
    iget-object v4, p0, Lp4/c0;->c:Lp4/k;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v2}, Lp4/x;->D(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    :try_start_0
    iput-boolean v5, p0, Lp4/c0;->d:Z

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, Lp4/c0;->c()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget v8, v4, Lp4/k;->a:I

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    if-eq v7, v8, :cond_4

    .line 49
    .line 50
    if-le v7, v8, :cond_2

    .line 51
    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    packed-switch v8, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lp4/c0;->m()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :pswitch_1
    const/4 v6, 0x6

    .line 68
    iput v6, v4, Lp4/k;->a:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_2
    invoke-virtual {p0}, Lp4/c0;->n()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_3
    const/4 v6, 0x4

    .line 76
    iput v6, v4, Lp4/k;->a:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_4
    invoke-virtual {p0}, Lp4/c0;->a()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_5
    invoke-virtual {p0}, Lp4/c0;->i()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lp4/c0;->e()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_6
    invoke-virtual {p0}, Lp4/c0;->d()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_7
    invoke-virtual {p0}, Lp4/c0;->b()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 v8, v8, -0x1

    .line 99
    .line 100
    packed-switch v8, :pswitch_data_1

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_8
    invoke-virtual {p0}, Lp4/c0;->k()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_9
    const/4 v6, 0x5

    .line 109
    iput v6, v4, Lp4/k;->a:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_a
    invoke-virtual {p0}, Lp4/c0;->o()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_b
    invoke-static {v9}, Lp4/x;->D(I)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v7, "movefrom ACTIVITY_CREATED: "

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_3
    iput v9, v4, Lp4/k;->a:I

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :pswitch_c
    iput-boolean v1, v4, Lp4/k;->n:Z

    .line 146
    .line 147
    iput v2, v4, Lp4/k;->a:I

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :pswitch_d
    invoke-virtual {p0}, Lp4/c0;->g()V

    .line 151
    .line 152
    .line 153
    iput v5, v4, Lp4/k;->a:I

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :pswitch_e
    invoke-virtual {p0}, Lp4/c0;->f()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_f
    invoke-virtual {p0}, Lp4/c0;->h()V

    .line 161
    .line 162
    .line 163
    :goto_1
    const/4 v6, 0x1

    .line 164
    goto :goto_0

    .line 165
    :cond_4
    if-nez v6, :cond_7

    .line 166
    .line 167
    const/4 v2, -0x1

    .line 168
    if-ne v8, v2, :cond_7

    .line 169
    .line 170
    iget-boolean v2, v4, Lp4/k;->l:Z

    .line 171
    .line 172
    if-eqz v2, :cond_7

    .line 173
    .line 174
    invoke-virtual {v4}, Lp4/k;->n()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_7

    .line 179
    .line 180
    invoke-static {v9}, Lp4/x;->D(I)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v6, "Cleaning up state of never attached fragment: "

    .line 192
    .line 193
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_5
    iget-object v2, v0, Lba/a;->e:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v2, Lp4/z;

    .line 209
    .line 210
    invoke-virtual {v2, v4}, Lp4/z;->d(Lp4/k;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p0}, Lba/a;->D(Lp4/c0;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v9}, Lp4/x;->D(I)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_6

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v2, "initState called for fragment: "

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    :cond_6
    invoke-virtual {v4}, Lp4/k;->l()V

    .line 243
    .line 244
    .line 245
    :cond_7
    iget-boolean v0, v4, Lp4/k;->I:Z

    .line 246
    .line 247
    if-eqz v0, :cond_9

    .line 248
    .line 249
    iget-object v0, v4, Lp4/k;->r:Lp4/x;

    .line 250
    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    iget-boolean v2, v4, Lp4/k;->k:Z

    .line 254
    .line 255
    if-eqz v2, :cond_8

    .line 256
    .line 257
    invoke-static {v4}, Lp4/x;->E(Lp4/k;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_8

    .line 262
    .line 263
    iput-boolean v5, v0, Lp4/x;->D:Z

    .line 264
    .line 265
    :cond_8
    iput-boolean v1, v4, Lp4/k;->I:Z

    .line 266
    .line 267
    iget-object v0, v4, Lp4/k;->t:Lp4/x;

    .line 268
    .line 269
    invoke-virtual {v0}, Lp4/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .line 271
    .line 272
    :cond_9
    iput-boolean v1, p0, Lp4/c0;->d:Z

    .line 273
    .line 274
    return-void

    .line 275
    :goto_2
    iput-boolean v1, p0, Lp4/c0;->d:Z

    .line 276
    .line 277
    throw v0

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final k()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v0, v2}, Lp4/x;->t(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 36
    .line 37
    sget-object v2, Landroidx/lifecycle/n;->ON_PAUSE:Landroidx/lifecycle/n;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x6

    .line 43
    iput v0, v1, Lp4/k;->a:I

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, v1, Lp4/k;->D:Z

    .line 47
    .line 48
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->R0(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final l(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    iget-object v1, v0, Lp4/k;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lp4/k;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "android:view_state"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Lp4/k;->c:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p1, v0, Lp4/k;->b:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "android:view_registry_state"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, Lp4/k;->d:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object p1, v0, Lp4/k;->b:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v1, "android:target_state"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Lp4/k;->h:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lp4/k;->b:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v1, "android:target_req_state"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, v0, Lp4/k;->i:I

    .line 53
    .line 54
    :cond_1
    iget-object p1, v0, Lp4/k;->b:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string v1, "android:user_visible_hint"

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, v0, Lp4/k;->G:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iput-boolean v2, v0, Lp4/k;->F:Z

    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lp4/k;->H:Lp4/j;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Lp4/j;->i:Landroid/view/View;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v1}, Lp4/k;->c()Lp4/j;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v2, v0, Lp4/j;->i:Landroid/view/View;

    .line 56
    .line 57
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 58
    .line 59
    invoke-virtual {v0}, Lp4/x;->J()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-virtual {v0, v3}, Lp4/x;->w(Z)Z

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x7

    .line 69
    iput v0, v1, Lp4/k;->a:I

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    iput-boolean v4, v1, Lp4/k;->D:Z

    .line 73
    .line 74
    move-object v5, v1

    .line 75
    check-cast v5, Ls6/a;

    .line 76
    .line 77
    iput-boolean v3, v5, Lp4/k;->D:Z

    .line 78
    .line 79
    invoke-interface {v5}, Lp6/a;->f()Lo6/a;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lo6/a;->f()V

    .line 84
    .line 85
    .line 86
    iget-boolean v3, v1, Lp4/k;->D:Z

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    iget-object v3, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 91
    .line 92
    sget-object v5, Landroidx/lifecycle/n;->ON_RESUME:Landroidx/lifecycle/n;

    .line 93
    .line 94
    invoke-virtual {v3, v5}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, v1, Lp4/k;->t:Lp4/x;

    .line 98
    .line 99
    iput-boolean v4, v3, Lp4/x;->E:Z

    .line 100
    .line 101
    iput-boolean v4, v3, Lp4/x;->F:Z

    .line 102
    .line 103
    iget-object v5, v3, Lp4/x;->L:Lp4/z;

    .line 104
    .line 105
    iput-boolean v4, v5, Lp4/z;->g:Z

    .line 106
    .line 107
    invoke-virtual {v3, v0}, Lp4/x;->t(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Landroid/support/v4/media/session/t;->U0(Z)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v1, Lp4/k;->b:Landroid/os/Bundle;

    .line 116
    .line 117
    iput-object v2, v1, Lp4/k;->c:Landroid/util/SparseArray;

    .line 118
    .line 119
    iput-object v2, v1, Lp4/k;->d:Landroid/os/Bundle;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-instance v0, Lp4/h0;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "Fragment "

    .line 127
    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, " did not call through to super.onResume()"

    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method public final n()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 30
    .line 31
    invoke-virtual {v0}, Lp4/x;->J()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v2}, Lp4/x;->w(Z)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    iput v0, v1, Lp4/k;->a:I

    .line 42
    .line 43
    iput-boolean v2, v1, Lp4/k;->D:Z

    .line 44
    .line 45
    iget-object v2, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 46
    .line 47
    sget-object v3, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    iput-boolean v2, v1, Lp4/x;->E:Z

    .line 56
    .line 57
    iput-boolean v2, v1, Lp4/x;->F:Z

    .line 58
    .line 59
    iget-object v3, v1, Lp4/x;->L:Lp4/z;

    .line 60
    .line 61
    iput-boolean v2, v3, Lp4/z;->g:Z

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lp4/x;->t(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/t;->W0(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lp4/c0;->c:Lp4/k;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lp4/k;->t:Lp4/x;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Lp4/x;->F:Z

    .line 33
    .line 34
    iget-object v3, v0, Lp4/x;->L:Lp4/z;

    .line 35
    .line 36
    iput-boolean v2, v3, Lp4/z;->g:Z

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-virtual {v0, v3}, Lp4/x;->t(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 43
    .line 44
    sget-object v4, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 47
    .line 48
    .line 49
    iput v3, v1, Lp4/k;->a:I

    .line 50
    .line 51
    iput-boolean v2, v1, Lp4/k;->D:Z

    .line 52
    .line 53
    iget-object v0, p0, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->X0(Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
