.class public final Ll0/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final A:Lf1/k1;

.field public final B:Lf1/k1;

.field public a:Ll0/y0;

.field public final b:Lf1/w1;

.field public final c:Lr2/m2;

.field public final d:Landroid/support/v4/media/session/t;

.field public e:Lg3/c0;

.field public final f:Lf1/k1;

.field public final g:Lf1/k1;

.field public h:Lo2/w;

.field public final i:Lf1/k1;

.field public j:Lb3/g;

.field public final k:Lf1/k1;

.field public final l:Lf1/k1;

.field public final m:Lf1/k1;

.field public final n:Lf1/k1;

.field public final o:Lf1/k1;

.field public p:Z

.field public final q:Lf1/k1;

.field public final r:La2/b;

.field public final s:Lf1/k1;

.field public final t:Lf1/k1;

.field public u:Lf9/k;

.field public final v:Ll0/s;

.field public final w:Ll0/s;

.field public final x:Ll0/s;

.field public final y:Ld7/q;

.field public z:J


# direct methods
.method public constructor <init>(Ll0/y0;Lf1/w1;Lr2/m2;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/s0;->a:Ll0/y0;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/s0;->b:Lf1/w1;

    .line 7
    .line 8
    iput-object p3, p0, Ll0/s0;->c:Lr2/m2;

    .line 9
    .line 10
    new-instance p1, Landroid/support/v4/media/session/t;

    .line 11
    .line 12
    const/16 p2, 0xa

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/support/v4/media/session/t;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lg3/w;

    .line 18
    .line 19
    sget-object v0, Lb3/h;->a:Lb3/g;

    .line 20
    .line 21
    sget-wide v1, Lb3/n0;->b:J

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {p2, v0, v1, v2, v3}, Lg3/w;-><init>(Lb3/g;JLb3/n0;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v4, Lg3/h;

    .line 30
    .line 31
    iget-wide v5, p2, Lg3/w;->b:J

    .line 32
    .line 33
    invoke-direct {v4, v0, v5, v6}, Lg3/h;-><init>(Lb3/g;J)V

    .line 34
    .line 35
    .line 36
    iput-object v4, p1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p1, p0, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 39
    .line 40
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Ll0/s0;->f:Lf1/k1;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    int-to-float p2, p2

    .line 50
    new-instance v0, Ln3/f;

    .line 51
    .line 52
    invoke-direct {v0, p2}, Ln3/f;-><init>(F)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Ll0/s0;->g:Lf1/k1;

    .line 60
    .line 61
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Ll0/s0;->i:Lf1/k1;

    .line 66
    .line 67
    sget-object p2, Ll0/i0;->a:Ll0/i0;

    .line 68
    .line 69
    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p0, Ll0/s0;->k:Lf1/k1;

    .line 74
    .line 75
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Ll0/s0;->l:Lf1/k1;

    .line 80
    .line 81
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iput-object p2, p0, Ll0/s0;->m:Lf1/k1;

    .line 86
    .line 87
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iput-object p2, p0, Ll0/s0;->n:Lf1/k1;

    .line 92
    .line 93
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p0, Ll0/s0;->o:Lf1/k1;

    .line 98
    .line 99
    const/4 p2, 0x1

    .line 100
    iput-boolean p2, p0, Ll0/s0;->p:Z

    .line 101
    .line 102
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iput-object p2, p0, Ll0/s0;->q:Lf1/k1;

    .line 109
    .line 110
    new-instance p2, La2/b;

    .line 111
    .line 112
    invoke-direct {p2, p3}, La2/b;-><init>(Lr2/m2;)V

    .line 113
    .line 114
    .line 115
    iput-object p2, p0, Ll0/s0;->r:La2/b;

    .line 116
    .line 117
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iput-object p2, p0, Ll0/s0;->s:Lf1/k1;

    .line 122
    .line 123
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Ll0/s0;->t:Lf1/k1;

    .line 128
    .line 129
    new-instance p1, Lc8/y0;

    .line 130
    .line 131
    const/16 p2, 0x10

    .line 132
    .line 133
    invoke-direct {p1, p2}, Lc8/y0;-><init>(I)V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Ll0/s0;->u:Lf9/k;

    .line 137
    .line 138
    new-instance p1, Ll0/s;

    .line 139
    .line 140
    const/4 p2, 0x1

    .line 141
    invoke-direct {p1, p0, p2}, Ll0/s;-><init>(Ll0/s0;I)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Ll0/s0;->v:Ll0/s;

    .line 145
    .line 146
    new-instance p1, Ll0/s;

    .line 147
    .line 148
    const/4 p2, 0x2

    .line 149
    invoke-direct {p1, p0, p2}, Ll0/s;-><init>(Ll0/s0;I)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Ll0/s0;->w:Ll0/s;

    .line 153
    .line 154
    new-instance p1, Ll0/s;

    .line 155
    .line 156
    const/4 p2, 0x3

    .line 157
    invoke-direct {p1, p0, p2}, Ll0/s;-><init>(Ll0/s0;I)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Ll0/s0;->x:Ll0/s;

    .line 161
    .line 162
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Ll0/s0;->y:Ld7/q;

    .line 167
    .line 168
    sget-wide p1, Ly1/q;->m:J

    .line 169
    .line 170
    iput-wide p1, p0, Ll0/s0;->z:J

    .line 171
    .line 172
    new-instance p1, Lb3/n0;

    .line 173
    .line 174
    invoke-direct {p1, v1, v2}, Lb3/n0;-><init>(J)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Ll0/s0;->A:Lf1/k1;

    .line 182
    .line 183
    new-instance p1, Lb3/n0;

    .line 184
    .line 185
    invoke-direct {p1, v1, v2}, Lb3/n0;-><init>(J)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iput-object p1, p0, Ll0/s0;->B:Lf1/k1;

    .line 193
    .line 194
    return-void
.end method


# virtual methods
.method public final a()Ll0/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/s0;->k:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ll0/i0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/s0;->f:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

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

.method public final c()Lo2/w;
    .locals 2

    .line 1
    iget-object v0, p0, Ll0/s0;->h:Lo2/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lo2/w;->isAttached()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final d()Ll0/q1;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/s0;->i:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ll0/q1;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e(J)V
    .locals 1

    .line 1
    new-instance v0, Lb3/n0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lb3/n0;-><init>(J)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ll0/s0;->B:Lf1/k1;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(J)V
    .locals 1

    .line 1
    new-instance v0, Lb3/n0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lb3/n0;-><init>(J)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ll0/s0;->A:Lf1/k1;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
