.class public final Lq2/y0;
.super Lo2/v0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/l0;
.implements Lq2/a;
.implements Lq2/a1;


# instance fields
.field public A:J

.field public final B:Lq2/x0;

.field public final C:Lq2/x0;

.field public D:F

.field public E:Z

.field public F:Lf9/k;

.field public G:J

.field public H:F

.field public final I:Lq2/x0;

.field public J:Z

.field public final f:Lq2/l0;

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Lq2/f0;

.field public m:J

.field public n:Lf9/k;

.field public o:F

.field public p:Z

.field public q:Ljava/lang/Object;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Lq2/i0;

.field public final x:Lh1/e;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lq2/l0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lo2/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/y0;->f:Lq2/l0;

    .line 5
    .line 6
    const p1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lq2/y0;->h:I

    .line 10
    .line 11
    iput p1, p0, Lq2/y0;->i:I

    .line 12
    .line 13
    sget-object p1, Lq2/f0;->c:Lq2/f0;

    .line 14
    .line 15
    iput-object p1, p0, Lq2/y0;->l:Lq2/f0;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Lq2/y0;->m:J

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lq2/y0;->p:Z

    .line 23
    .line 24
    new-instance v2, Lq2/i0;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, p0, v3}, Lq2/i0;-><init>(Lq2/a;I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lq2/y0;->w:Lq2/i0;

    .line 31
    .line 32
    new-instance v2, Lh1/e;

    .line 33
    .line 34
    const/16 v3, 0x10

    .line 35
    .line 36
    new-array v3, v3, [Lq2/y0;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lq2/y0;->x:Lh1/e;

    .line 42
    .line 43
    iput-boolean p1, p0, Lq2/y0;->y:Z

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    const/16 v2, 0xf

    .line 47
    .line 48
    invoke-static {p1, p1, v2}, Ln3/b;->b(III)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iput-wide v2, p0, Lq2/y0;->A:J

    .line 53
    .line 54
    new-instance p1, Lq2/x0;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {p1, p0, v2}, Lq2/x0;-><init>(Lq2/y0;I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lq2/y0;->B:Lq2/x0;

    .line 61
    .line 62
    new-instance p1, Lq2/x0;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {p1, p0, v2}, Lq2/x0;-><init>(Lq2/y0;I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lq2/y0;->C:Lq2/x0;

    .line 69
    .line 70
    iput-wide v0, p0, Lq2/y0;->G:J

    .line 71
    .line 72
    new-instance p1, Lq2/x0;

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    invoke-direct {p1, p0, v0}, Lq2/x0;-><init>(Lq2/y0;I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lq2/y0;->I:Lq2/x0;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq2/y0;->z:Z

    .line 3
    .line 4
    iget-object v0, p0, Lq2/y0;->w:Lq2/i0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lq2/i0;->h()V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lq2/y0;->u:Z

    .line 10
    .line 11
    iget-object v2, p0, Lq2/y0;->f:Lq2/l0;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    iget-object v1, v2, Lq2/l0;->a:Lq2/h0;

    .line 17
    .line 18
    invoke-virtual {v1}, Lq2/h0;->z()Lh1/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v4, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v1, v1, Lh1/e;->c:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v5, v1, :cond_4

    .line 28
    .line 29
    aget-object v6, v4, v5

    .line 30
    .line 31
    check-cast v6, Lq2/h0;

    .line 32
    .line 33
    invoke-virtual {v6}, Lq2/h0;->r()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iget-object v8, v6, Lq2/h0;->F:Lq2/l0;

    .line 38
    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    invoke-virtual {v6}, Lq2/h0;->s()Lq2/f0;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    sget-object v9, Lq2/f0;->a:Lq2/f0;

    .line 46
    .line 47
    if-ne v7, v9, :cond_3

    .line 48
    .line 49
    iget-object v7, v8, Lq2/l0;->p:Lq2/y0;

    .line 50
    .line 51
    iget-boolean v9, v7, Lq2/y0;->j:Z

    .line 52
    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    iget-wide v9, v7, Lo2/v0;->d:J

    .line 56
    .line 57
    new-instance v7, Ln3/a;

    .line 58
    .line 59
    invoke-direct {v7, v9, v10}, Ln3/a;-><init>(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v7, 0x0

    .line 64
    :goto_1
    if-eqz v7, :cond_2

    .line 65
    .line 66
    iget-object v9, v6, Lq2/h0;->B:Lq2/f0;

    .line 67
    .line 68
    sget-object v10, Lq2/f0;->c:Lq2/f0;

    .line 69
    .line 70
    if-ne v9, v10, :cond_1

    .line 71
    .line 72
    invoke-virtual {v6}, Lq2/h0;->e()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v6, v8, Lq2/l0;->p:Lq2/y0;

    .line 76
    .line 77
    iget-wide v7, v7, Ln3/a;->a:J

    .line 78
    .line 79
    invoke-virtual {v6, v7, v8}, Lq2/y0;->n0(J)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v6, 0x0

    .line 85
    :goto_2
    if-eqz v6, :cond_3

    .line 86
    .line 87
    iget-object v6, v2, Lq2/l0;->a:Lq2/h0;

    .line 88
    .line 89
    const/4 v7, 0x7

    .line 90
    invoke-static {v6, v3, v7}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 91
    .line 92
    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-boolean v1, p0, Lq2/y0;->v:Z

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Lq2/y0;->f()Lq2/t;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-boolean v1, v1, Lq2/p0;->k:Z

    .line 105
    .line 106
    if-nez v1, :cond_7

    .line 107
    .line 108
    iget-boolean v1, p0, Lq2/y0;->u:Z

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    :cond_5
    iput-boolean v3, p0, Lq2/y0;->u:Z

    .line 113
    .line 114
    iget-object v1, v2, Lq2/l0;->d:Lq2/d0;

    .line 115
    .line 116
    sget-object v4, Lq2/d0;->c:Lq2/d0;

    .line 117
    .line 118
    iput-object v4, v2, Lq2/l0;->d:Lq2/d0;

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lq2/l0;->g(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v4, v2, Lq2/l0;->a:Lq2/h0;

    .line 124
    .line 125
    invoke-static {v4}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lr2/u;

    .line 130
    .line 131
    invoke-virtual {v5}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iget-object v6, p0, Lq2/y0;->C:Lq2/x0;

    .line 136
    .line 137
    iget-object v7, v5, Lq2/s1;->e:Lq2/e;

    .line 138
    .line 139
    invoke-virtual {v5, v4, v7, v6}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 140
    .line 141
    .line 142
    iput-object v1, v2, Lq2/l0;->d:Lq2/d0;

    .line 143
    .line 144
    invoke-virtual {p0}, Lq2/y0;->f()Lq2/t;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-boolean v1, v1, Lq2/p0;->k:Z

    .line 149
    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    iget-boolean v1, v2, Lq2/l0;->j:Z

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    invoke-virtual {p0}, Lq2/y0;->requestLayout()V

    .line 157
    .line 158
    .line 159
    :cond_6
    iput-boolean v3, p0, Lq2/y0;->v:Z

    .line 160
    .line 161
    :cond_7
    iget-boolean v1, v0, Lq2/i0;->b:Z

    .line 162
    .line 163
    if-eqz v1, :cond_8

    .line 164
    .line 165
    invoke-virtual {v0}, Lq2/i0;->e()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    invoke-virtual {v0}, Lq2/i0;->g()V

    .line 172
    .line 173
    .line 174
    :cond_8
    iput-boolean v3, p0, Lq2/y0;->z:Z

    .line 175
    .line 176
    return-void
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq2/y0;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public final E(Lb2/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/h0;->z()Lh1/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    iget v0, v0, Lh1/e;->c:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    aget-object v3, v1, v2

    .line 17
    .line 18
    check-cast v3, Lq2/h0;

    .line 19
    .line 20
    iget-object v3, v3, Lq2/h0;->F:Lq2/l0;

    .line 21
    .line 22
    iget-object v3, v3, Lq2/l0;->p:Lq2/y0;

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x7

    .line 7
    invoke-static {v0, v1, v2}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final I(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-static {v1}, Lq2/f;->q(Lq2/h0;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 12
    .line 13
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lq2/u0;->I(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lq2/y0;->j0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lo2/l0;->I(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo2/v0;->L()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final N()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo2/v0;->N()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final U(JFLf9/k;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    iget-object v2, v0, Lq2/l0;->a:Lq2/h0;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    iput-boolean v3, p0, Lq2/y0;->s:Z

    .line 9
    .line 10
    iget-wide v4, p0, Lq2/y0;->m:J

    .line 11
    .line 12
    invoke-static {p1, p2, v4, v5}, Ln3/j;->a(JJ)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-boolean v4, p0, Lq2/y0;->J:Z

    .line 20
    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    :goto_0
    iget-boolean v4, v0, Lq2/l0;->k:Z

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    iget-boolean v4, v0, Lq2/l0;->j:Z

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    iget-boolean v4, p0, Lq2/y0;->J:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    :cond_1
    iput-boolean v3, p0, Lq2/y0;->u:Z

    .line 40
    .line 41
    iput-boolean v5, p0, Lq2/y0;->J:Z

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lq2/y0;->g0()V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v4, v0, Lq2/l0;->q:Lq2/u0;

    .line 47
    .line 48
    if-eqz v4, :cond_9

    .line 49
    .line 50
    iget-object v6, v4, Lq2/u0;->f:Lq2/l0;

    .line 51
    .line 52
    iget-object v7, v6, Lq2/l0;->a:Lq2/h0;

    .line 53
    .line 54
    invoke-static {v7}, Lq2/f;->q(Lq2/h0;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object v4, v4, Lq2/u0;->p:Lq2/r0;

    .line 63
    .line 64
    sget-object v7, Lq2/r0;->c:Lq2/r0;

    .line 65
    .line 66
    if-ne v4, v7, :cond_5

    .line 67
    .line 68
    iget-boolean v4, v6, Lq2/l0;->b:Z

    .line 69
    .line 70
    if-nez v4, :cond_5

    .line 71
    .line 72
    iput-boolean v3, v6, Lq2/l0;->c:Z

    .line 73
    .line 74
    :cond_5
    iget-boolean v4, v6, Lq2/l0;->c:Z

    .line 75
    .line 76
    :goto_1
    if-ne v4, v3, :cond_9

    .line 77
    .line 78
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget-object v4, v4, Lq2/h1;->q:Lq2/h1;

    .line 83
    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    iget-object v4, v4, Lq2/p0;->l:Lo2/j0;

    .line 87
    .line 88
    if-nez v4, :cond_7

    .line 89
    .line 90
    :cond_6
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lr2/u;

    .line 95
    .line 96
    invoke-virtual {v4}, Lr2/u;->getPlacementScope()Lo2/u0;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    :cond_7
    iget-object v6, v0, Lq2/l0;->q:Lq2/u0;

    .line 101
    .line 102
    invoke-static {v6}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_8

    .line 110
    .line 111
    iget-object v2, v2, Lq2/h0;->F:Lq2/l0;

    .line 112
    .line 113
    iput v5, v2, Lq2/l0;->h:I

    .line 114
    .line 115
    :cond_8
    const v2, 0x7fffffff

    .line 116
    .line 117
    .line 118
    iput v2, v6, Lq2/u0;->i:I

    .line 119
    .line 120
    const/16 v2, 0x20

    .line 121
    .line 122
    shr-long v7, p1, v2

    .line 123
    .line 124
    long-to-int v2, v7

    .line 125
    const-wide v7, 0xffffffffL

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    and-long/2addr v7, p1

    .line 131
    long-to-int v8, v7

    .line 132
    invoke-static {v4, v6, v2, v8}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 133
    .line 134
    .line 135
    :cond_9
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    iget-boolean v0, v0, Lq2/u0;->k:Z

    .line 140
    .line 141
    if-nez v0, :cond_a

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_a
    const/4 v3, 0x0

    .line 145
    :goto_2
    if-eqz v3, :cond_b

    .line 146
    .line 147
    const-string v0, "Error: Placement happened before lookahead."

    .line 148
    .line 149
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lq2/y0;->m0(JFLf9/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :goto_3
    invoke-virtual {v1, p1}, Lq2/h0;->Y(Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    const/4 p1, 0x0

    .line 160
    throw p1
.end method

.method public final Z()Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lq2/h0;->f0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lq2/y0;->y:Z

    .line 9
    .line 10
    iget-object v2, p0, Lq2/y0;->x:Lh1/e;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lh1/e;->g()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lq2/h0;->z()Lh1/e;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v1, Lh1/e;->c:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    :goto_0
    if-ge v5, v1, :cond_2

    .line 32
    .line 33
    aget-object v6, v3, v5

    .line 34
    .line 35
    check-cast v6, Lq2/h0;

    .line 36
    .line 37
    iget v7, v2, Lh1/e;->c:I

    .line 38
    .line 39
    if-gt v7, v5, :cond_1

    .line 40
    .line 41
    iget-object v6, v6, Lq2/h0;->F:Lq2/l0;

    .line 42
    .line 43
    iget-object v6, v6, Lq2/l0;->p:Lq2/y0;

    .line 44
    .line 45
    invoke-virtual {v2, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v6, v6, Lq2/h0;->F:Lq2/l0;

    .line 50
    .line 51
    iget-object v6, v6, Lq2/l0;->p:Lq2/y0;

    .line 52
    .line 53
    iget-object v7, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 54
    .line 55
    aget-object v8, v7, v5

    .line 56
    .line 57
    aput-object v6, v7, v5

    .line 58
    .line 59
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lq2/h0;->o()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lh1/b;

    .line 67
    .line 68
    iget-object v0, v0, Lh1/b;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lh1/e;

    .line 71
    .line 72
    iget v0, v0, Lh1/e;->c:I

    .line 73
    .line 74
    iget v1, v2, Lh1/e;->c:I

    .line 75
    .line 76
    invoke-virtual {v2, v0, v1}, Lh1/e;->m(II)V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, p0, Lq2/y0;->y:Z

    .line 80
    .line 81
    invoke-virtual {v2}, Lh1/e;->g()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final b()Lq2/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/y0;->w:Lq2/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-static {v1}, Lq2/f;->q(Lq2/h0;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 12
    .line 13
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lq2/u0;->c(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lq2/y0;->j0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lo2/l0;->c(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final d0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lq2/y0;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lq2/y0;->r:Z

    .line 5
    .line 6
    iget-object v2, p0, Lq2/y0;->f:Lq2/l0;

    .line 7
    .line 8
    iget-object v2, v2, Lq2/l0;->a:Lq2/h0;

    .line 9
    .line 10
    iget-object v3, v2, Lq2/h0;->E:Lq2/d1;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v3, Lq2/d1;->c:Lq2/t;

    .line 15
    .line 16
    invoke-virtual {v0}, Lq2/h1;->S0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lq2/h0;->r()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v4, 0x6

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v2, v1, v4}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, v2, Lq2/h0;->F:Lq2/l0;

    .line 31
    .line 32
    iget-boolean v0, v0, Lq2/l0;->e:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {v2, v1, v4}, Lq2/h0;->T(Lq2/h0;ZI)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object v0, v3, Lq2/d1;->d:Lq2/h1;

    .line 40
    .line 41
    iget-object v1, v3, Lq2/d1;->c:Lq2/t;

    .line 42
    .line 43
    iget-object v1, v1, Lq2/h1;->p:Lq2/h1;

    .line 44
    .line 45
    :goto_1
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-boolean v3, v0, Lq2/h1;->H:Z

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Lq2/h1;->N0()V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, v0, Lq2/h1;->p:Lq2/h1;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v2}, Lq2/h0;->z()Lh1/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 68
    .line 69
    iget v0, v0, Lh1/e;->c:I

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_2
    if-ge v2, v0, :cond_5

    .line 73
    .line 74
    aget-object v3, v1, v2

    .line 75
    .line 76
    check-cast v3, Lq2/h0;

    .line 77
    .line 78
    invoke-virtual {v3}, Lq2/h0;->w()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const v5, 0x7fffffff

    .line 83
    .line 84
    .line 85
    if-eq v4, v5, :cond_4

    .line 86
    .line 87
    iget-object v4, v3, Lq2/h0;->F:Lq2/l0;

    .line 88
    .line 89
    iget-object v4, v4, Lq2/l0;->p:Lq2/y0;

    .line 90
    .line 91
    invoke-virtual {v4}, Lq2/y0;->d0()V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Lq2/h0;->W(Lq2/h0;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    return-void
.end method

.method public final f()Lq2/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 6
    .line 7
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f0()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lq2/y0;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lq2/y0;->r:Z

    .line 7
    .line 8
    iget-object v1, p0, Lq2/y0;->f:Lq2/l0;

    .line 9
    .line 10
    iget-object v2, v1, Lq2/l0;->a:Lq2/h0;

    .line 11
    .line 12
    iget-object v2, v2, Lq2/h0;->E:Lq2/d1;

    .line 13
    .line 14
    iget-object v3, v2, Lq2/d1;->d:Lq2/h1;

    .line 15
    .line 16
    iget-object v2, v2, Lq2/d1;->c:Lq2/t;

    .line 17
    .line 18
    iget-object v2, v2, Lq2/h1;->p:Lq2/h1;

    .line 19
    .line 20
    :goto_0
    invoke-static {v3, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_a

    .line 25
    .line 26
    if-eqz v3, :cond_a

    .line 27
    .line 28
    const/high16 v4, 0x100000

    .line 29
    .line 30
    invoke-static {v4}, Lq2/i1;->g(I)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v3, v5}, Lq2/h1;->I0(Z)Lr1/o;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_9

    .line 39
    .line 40
    iget-object v5, v5, Lr1/o;->a:Lr1/o;

    .line 41
    .line 42
    iget v5, v5, Lr1/o;->d:I

    .line 43
    .line 44
    and-int/2addr v5, v4

    .line 45
    if-eqz v5, :cond_9

    .line 46
    .line 47
    invoke-static {v4}, Lq2/i1;->g(I)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v3}, Lq2/h1;->G0()Lr1/o;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-object v6, v6, Lr1/o;->e:Lr1/o;

    .line 59
    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_1
    :goto_1
    invoke-virtual {v3, v5}, Lq2/h1;->I0(Z)Lr1/o;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :goto_2
    if-eqz v5, :cond_9

    .line 68
    .line 69
    iget v7, v5, Lr1/o;->d:I

    .line 70
    .line 71
    and-int/2addr v7, v4

    .line 72
    if-eqz v7, :cond_9

    .line 73
    .line 74
    iget v7, v5, Lr1/o;->c:I

    .line 75
    .line 76
    and-int/2addr v7, v4

    .line 77
    if-eqz v7, :cond_8

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v8, v5

    .line 81
    move-object v9, v7

    .line 82
    :goto_3
    if-eqz v8, :cond_8

    .line 83
    .line 84
    iget v10, v8, Lr1/o;->c:I

    .line 85
    .line 86
    and-int/2addr v10, v4

    .line 87
    if-eqz v10, :cond_7

    .line 88
    .line 89
    instance-of v10, v8, Lq2/m;

    .line 90
    .line 91
    if-eqz v10, :cond_7

    .line 92
    .line 93
    move-object v10, v8

    .line 94
    check-cast v10, Lq2/m;

    .line 95
    .line 96
    iget-object v10, v10, Lq2/m;->p:Lr1/o;

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    :goto_4
    const/4 v12, 0x1

    .line 100
    if-eqz v10, :cond_6

    .line 101
    .line 102
    iget v13, v10, Lr1/o;->c:I

    .line 103
    .line 104
    and-int/2addr v13, v4

    .line 105
    if-eqz v13, :cond_5

    .line 106
    .line 107
    add-int/lit8 v11, v11, 0x1

    .line 108
    .line 109
    if-ne v11, v12, :cond_2

    .line 110
    .line 111
    move-object v8, v10

    .line 112
    goto :goto_5

    .line 113
    :cond_2
    if-nez v9, :cond_3

    .line 114
    .line 115
    new-instance v9, Lh1/e;

    .line 116
    .line 117
    const/16 v12, 0x10

    .line 118
    .line 119
    new-array v12, v12, [Lr1/o;

    .line 120
    .line 121
    invoke-direct {v9, v12}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    if-eqz v8, :cond_4

    .line 125
    .line 126
    invoke-virtual {v9, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    move-object v8, v7

    .line 130
    :cond_4
    invoke-virtual {v9, v10}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_5
    iget-object v10, v10, Lr1/o;->f:Lr1/o;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    if-ne v11, v12, :cond_7

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    invoke-static {v9}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    goto :goto_3

    .line 144
    :cond_8
    if-eq v5, v6, :cond_9

    .line 145
    .line 146
    iget-object v5, v5, Lr1/o;->f:Lr1/o;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_9
    :goto_6
    invoke-virtual {v3}, Lq2/h1;->X0()V

    .line 150
    .line 151
    .line 152
    iget-object v3, v3, Lq2/h1;->p:Lq2/h1;

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_a
    iget-object v1, v1, Lq2/l0;->a:Lq2/h0;

    .line 157
    .line 158
    invoke-virtual {v1}, Lq2/h0;->z()Lh1/e;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v2, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 163
    .line 164
    iget v1, v1, Lh1/e;->c:I

    .line 165
    .line 166
    :goto_7
    if-ge v0, v1, :cond_b

    .line 167
    .line 168
    aget-object v3, v2, v0

    .line 169
    .line 170
    check-cast v3, Lq2/h0;

    .line 171
    .line 172
    iget-object v3, v3, Lq2/h0;->F:Lq2/l0;

    .line 173
    .line 174
    iget-object v3, v3, Lq2/l0;->p:Lq2/y0;

    .line 175
    .line 176
    invoke-virtual {v3}, Lq2/y0;->f0()V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_b
    return-void
.end method

.method public final g0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget v1, v0, Lq2/l0;->l:I

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lq2/h0;->z()Lh1/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v0, v0, Lh1/e;->c:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v0, :cond_2

    .line 20
    .line 21
    aget-object v4, v1, v3

    .line 22
    .line 23
    check-cast v4, Lq2/h0;

    .line 24
    .line 25
    iget-object v5, v4, Lq2/h0;->F:Lq2/l0;

    .line 26
    .line 27
    iget-boolean v6, v5, Lq2/l0;->j:Z

    .line 28
    .line 29
    iget-object v7, v5, Lq2/l0;->p:Lq2/y0;

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    iget-boolean v5, v5, Lq2/l0;->k:Z

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-boolean v5, v7, Lq2/y0;->u:Z

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Lq2/h0;->U(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v7}, Lq2/y0;->g0()V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method public final i()Lq2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lq2/h0;->F:Lq2/l0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public final j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x7

    .line 7
    invoke-static {v1, v2, v3}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 11
    .line 12
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v2, v0, Lq2/h0;->B:Lq2/f0;

    .line 19
    .line 20
    sget-object v3, Lq2/f0;->c:Lq2/f0;

    .line 21
    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    iget-object v2, v1, Lq2/h0;->F:Lq2/l0;

    .line 25
    .line 26
    iget-object v2, v2, Lq2/l0;->d:Lq2/d0;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lq2/h0;->B:Lq2/f0;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lq2/f0;->b:Lq2/f0;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v1, Lq2/f0;->a:Lq2/f0;

    .line 44
    .line 45
    :goto_0
    iput-object v1, v0, Lq2/h0;->B:Lq2/f0;

    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final k0()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq2/y0;->E:Z

    .line 3
    .line 4
    iget-object v1, p0, Lq2/y0;->f:Lq2/l0;

    .line 5
    .line 6
    iget-object v2, v1, Lq2/l0;->a:Lq2/h0;

    .line 7
    .line 8
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lq2/y0;->f()Lq2/t;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v3, v3, Lq2/h1;->A:F

    .line 17
    .line 18
    iget-object v1, v1, Lq2/l0;->a:Lq2/h0;

    .line 19
    .line 20
    iget-object v4, v1, Lq2/h0;->E:Lq2/d1;

    .line 21
    .line 22
    iget-object v5, v4, Lq2/d1;->d:Lq2/h1;

    .line 23
    .line 24
    iget-object v4, v4, Lq2/d1;->c:Lq2/t;

    .line 25
    .line 26
    :goto_0
    if-eq v5, v4, :cond_0

    .line 27
    .line 28
    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    .line 29
    .line 30
    invoke-static {v5, v6}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v5, Lq2/z;

    .line 34
    .line 35
    iget v6, v5, Lq2/h1;->A:F

    .line 36
    .line 37
    add-float/2addr v3, v6

    .line 38
    iget-object v5, v5, Lq2/h1;->p:Lq2/h1;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v4, p0, Lq2/y0;->D:F

    .line 42
    .line 43
    cmpg-float v4, v3, v4

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iput v3, p0, Lq2/y0;->D:F

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Lq2/h0;->O()V

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Lq2/h0;->C()V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lq2/y0;->r:Z

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    if-nez v3, :cond_5

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Lq2/h0;->C()V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {p0}, Lq2/y0;->d0()V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Lq2/y0;->g:Z

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Lq2/h0;->U(Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    iget-object v1, v1, Lq2/h0;->E:Lq2/d1;

    .line 84
    .line 85
    iget-object v1, v1, Lq2/d1;->c:Lq2/t;

    .line 86
    .line 87
    invoke-virtual {v1}, Lq2/h1;->S0()V

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    .line 91
    .line 92
    iget-object v1, v2, Lq2/h0;->F:Lq2/l0;

    .line 93
    .line 94
    iget-boolean v2, p0, Lq2/y0;->g:Z

    .line 95
    .line 96
    if-nez v2, :cond_9

    .line 97
    .line 98
    iget-object v2, v1, Lq2/l0;->d:Lq2/d0;

    .line 99
    .line 100
    sget-object v3, Lq2/d0;->c:Lq2/d0;

    .line 101
    .line 102
    if-ne v2, v3, :cond_9

    .line 103
    .line 104
    iget v2, p0, Lq2/y0;->i:I

    .line 105
    .line 106
    const v3, 0x7fffffff

    .line 107
    .line 108
    .line 109
    if-ne v2, v3, :cond_7

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    const-string v2, "Place was called on a node which was placed already"

    .line 113
    .line 114
    invoke-static {v2}, Ln2/a;->b(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    iget v2, v1, Lq2/l0;->i:I

    .line 118
    .line 119
    iput v2, p0, Lq2/y0;->i:I

    .line 120
    .line 121
    add-int/2addr v2, v0

    .line 122
    iput v2, v1, Lq2/l0;->i:I

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    iput v4, p0, Lq2/y0;->i:I

    .line 126
    .line 127
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lq2/y0;->A()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final l(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-static {v1}, Lq2/f;->q(Lq2/h0;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 12
    .line 13
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lq2/u0;->l(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lq2/y0;->j0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lo2/l0;->l(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final l0(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->d:Lq2/d0;

    .line 4
    .line 5
    iget-object v2, v0, Lq2/l0;->a:Lq2/h0;

    .line 6
    .line 7
    sget-object v3, Lq2/d0;->e:Lq2/d0;

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "layout state is not idle before measure starts"

    .line 13
    .line 14
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-wide p1, p0, Lq2/y0;->A:J

    .line 18
    .line 19
    sget-object p1, Lq2/d0;->a:Lq2/d0;

    .line 20
    .line 21
    iput-object p1, v0, Lq2/l0;->d:Lq2/d0;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lq2/y0;->t:Z

    .line 25
    .line 26
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lr2/u;

    .line 31
    .line 32
    invoke-virtual {p2}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object v1, p0, Lq2/y0;->B:Lq2/x0;

    .line 37
    .line 38
    iget-object v4, p2, Lq2/s1;->c:Lq2/e;

    .line 39
    .line 40
    invoke-virtual {p2, v2, v4, v1}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, v0, Lq2/l0;->d:Lq2/d0;

    .line 44
    .line 45
    if-ne p2, p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lq2/y0;->u:Z

    .line 49
    .line 50
    iput-boolean p1, p0, Lq2/y0;->v:Z

    .line 51
    .line 52
    iput-object v3, v0, Lq2/l0;->d:Lq2/d0;

    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final m0(JFLf9/k;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    iget-object v2, v0, Lq2/l0;->a:Lq2/h0;

    .line 6
    .line 7
    iget-boolean v1, v1, Lq2/h0;->P:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "place is called on a deactivated node"

    .line 12
    .line 13
    invoke-static {v1}, Ln2/a;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v1, Lq2/d0;->c:Lq2/d0;

    .line 17
    .line 18
    iput-object v1, v0, Lq2/l0;->d:Lq2/d0;

    .line 19
    .line 20
    iput-wide p1, p0, Lq2/y0;->m:J

    .line 21
    .line 22
    iput p3, p0, Lq2/y0;->o:F

    .line 23
    .line 24
    iput-object p4, p0, Lq2/y0;->n:Lf9/k;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lq2/y0;->E:Z

    .line 28
    .line 29
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-boolean v4, p0, Lq2/y0;->u:Z

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    iget-boolean v4, p0, Lq2/y0;->r:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, v1, Lo2/v0;->e:J

    .line 46
    .line 47
    invoke-static {p1, p2, v2, v3}, Ln3/j;->c(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-virtual {v1, p1, p2, p3, p4}, Lq2/h1;->V0(JFLf9/k;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lq2/y0;->k0()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v4, p0, Lq2/y0;->w:Lq2/i0;

    .line 59
    .line 60
    iput-boolean v1, v4, Lq2/i0;->e:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lq2/l0;->f(Z)V

    .line 63
    .line 64
    .line 65
    iput-object p4, p0, Lq2/y0;->F:Lf9/k;

    .line 66
    .line 67
    iput-wide p1, p0, Lq2/y0;->G:J

    .line 68
    .line 69
    iput p3, p0, Lq2/y0;->H:F

    .line 70
    .line 71
    check-cast v3, Lr2/u;

    .line 72
    .line 73
    invoke-virtual {v3}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p0, Lq2/y0;->I:Lq2/x0;

    .line 78
    .line 79
    iget-object p3, p1, Lq2/s1;->f:Lq2/e;

    .line 80
    .line 81
    invoke-virtual {p1, v2, p3, p2}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-object p1, Lq2/d0;->e:Lq2/d0;

    .line 85
    .line 86
    iput-object p1, v0, Lq2/l0;->d:Lq2/d0;

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lq2/y0;->k:Z

    .line 90
    .line 91
    return-void
.end method

.method public final n0(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    iget-object v2, v0, Lq2/l0;->a:Lq2/h0;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, v1, Lq2/h0;->P:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "measure is called on a deactivated node"

    .line 12
    .line 13
    invoke-static {v3}, Ln2/a;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-boolean v5, v2, Lq2/h0;->D:Z

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-boolean v4, v4, Lq2/h0;->D:Z

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 44
    :goto_2
    iput-boolean v4, v2, Lq2/h0;->D:Z

    .line 45
    .line 46
    invoke-virtual {v2}, Lq2/h0;->r()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    iget-wide v4, p0, Lo2/v0;->d:J

    .line 53
    .line 54
    invoke-static {v4, v5, p1, p2}, Ln3/a;->b(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    check-cast v3, Lr2/u;

    .line 62
    .line 63
    invoke-virtual {v3, v2, v7}, Lr2/u;->p(Lq2/h0;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lq2/h0;->X()V

    .line 67
    .line 68
    .line 69
    return v7

    .line 70
    :cond_4
    :goto_3
    iget-object v3, p0, Lq2/y0;->w:Lq2/i0;

    .line 71
    .line 72
    iput-boolean v7, v3, Lq2/i0;->d:Z

    .line 73
    .line 74
    invoke-virtual {v2}, Lq2/h0;->z()Lh1/e;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 79
    .line 80
    iget v2, v2, Lh1/e;->c:I

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    :goto_4
    if-ge v4, v2, :cond_5

    .line 84
    .line 85
    aget-object v5, v3, v4

    .line 86
    .line 87
    check-cast v5, Lq2/h0;

    .line 88
    .line 89
    iget-object v5, v5, Lq2/h0;->F:Lq2/l0;

    .line 90
    .line 91
    iget-object v5, v5, Lq2/l0;->p:Lq2/y0;

    .line 92
    .line 93
    iget-object v5, v5, Lq2/y0;->w:Lq2/i0;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    iput-boolean v6, p0, Lq2/y0;->j:Z

    .line 102
    .line 103
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-wide v2, v2, Lo2/v0;->c:J

    .line 108
    .line 109
    invoke-virtual {p0, p1, p2}, Lo2/v0;->Y(J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, p2}, Lq2/y0;->l0(J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-wide p1, p1, Lo2/v0;->c:J

    .line 120
    .line 121
    invoke-static {p1, p2, v2, v3}, Ln3/l;->a(JJ)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget p1, p1, Lo2/v0;->a:I

    .line 132
    .line 133
    iget p2, p0, Lo2/v0;->a:I

    .line 134
    .line 135
    if-ne p1, p2, :cond_7

    .line 136
    .line 137
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p1, p1, Lo2/v0;->b:I

    .line 142
    .line 143
    iget p2, p0, Lo2/v0;->b:I

    .line 144
    .line 145
    if-eq p1, p2, :cond_6

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_6
    const/4 v6, 0x0

    .line 149
    :cond_7
    :goto_5
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget p1, p1, Lo2/v0;->a:I

    .line 154
    .line 155
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    iget p2, p2, Lo2/v0;->b:I

    .line 160
    .line 161
    int-to-long v2, p1

    .line 162
    const/16 p1, 0x20

    .line 163
    .line 164
    shl-long/2addr v2, p1

    .line 165
    int-to-long p1, p2

    .line 166
    const-wide v4, 0xffffffffL

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long/2addr p1, v4

    .line 172
    or-long/2addr p1, v2

    .line 173
    invoke-virtual {p0, p1, p2}, Lo2/v0;->V(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    return v6

    .line 177
    :goto_6
    invoke-virtual {v1, p1}, Lq2/h0;->Y(Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    const/4 p1, 0x0

    .line 181
    throw p1
.end method

.method public final r(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    invoke-static {v1}, Lq2/f;->q(Lq2/h0;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 12
    .line 13
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lq2/u0;->r(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lq2/y0;->j0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lo2/l0;->r(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final requestLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lq2/h0;->U(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u(J)Lo2/v0;
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 4
    .line 5
    iget-object v2, v1, Lq2/h0;->B:Lq2/f0;

    .line 6
    .line 7
    sget-object v3, Lq2/f0;->c:Lq2/f0;

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lq2/h0;->e()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lq2/l0;->a:Lq2/h0;

    .line 15
    .line 16
    invoke-static {v1}, Lq2/f;->q(Lq2/h0;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lq2/l0;->q:Lq2/u0;

    .line 23
    .line 24
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, v1, Lq2/u0;->j:Lq2/f0;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Lq2/u0;->u(J)Lo2/v0;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, v0, Lq2/l0;->a:Lq2/h0;

    .line 33
    .line 34
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_6

    .line 39
    .line 40
    iget-object v1, v1, Lq2/h0;->F:Lq2/l0;

    .line 41
    .line 42
    iget-object v2, p0, Lq2/y0;->l:Lq2/f0;

    .line 43
    .line 44
    if-eq v2, v3, :cond_3

    .line 45
    .line 46
    iget-boolean v0, v0, Lq2/h0;->D:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    .line 52
    .line 53
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    iget-object v0, v1, Lq2/l0;->d:Lq2/d0;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    if-ne v0, v2, :cond_4

    .line 66
    .line 67
    sget-object v0, Lq2/f0;->b:Lq2/f0;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    .line 75
    .line 76
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v1, Lq2/l0;->d:Lq2/d0;

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_5
    sget-object v0, Lq2/f0;->a:Lq2/f0;

    .line 93
    .line 94
    :goto_1
    iput-object v0, p0, Lq2/y0;->l:Lq2/f0;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iput-object v3, p0, Lq2/y0;->l:Lq2/f0;

    .line 98
    .line 99
    :goto_2
    invoke-virtual {p0, p1, p2}, Lq2/y0;->n0(J)Z

    .line 100
    .line 101
    .line 102
    return-object p0
.end method

.method public final x()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/y0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/y0;->f:Lq2/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lq2/p0;->i:Z

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-boolean p1, v0, Lq2/p0;->i:Z

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lq2/y0;->J:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method
