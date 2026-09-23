.class public final Lx/c0;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/y1;
.implements Lq2/p;
.implements Lq2/k;
.implements Lq2/l1;
.implements Lq2/d2;


# static fields
.field public static final w:Lx/a1;


# instance fields
.field public q:Lb0/k;

.field public final r:Lf9/k;

.field public s:Lb0/d;

.field public t:Lh0/c0;

.field public u:Lq2/h1;

.field public final v:Lw1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx/a1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx/c0;->w:Lx/a1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lb0/k;ILac/y0;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx/c0;->q:Lb0/k;

    .line 5
    .line 6
    iput-object p3, p0, Lx/c0;->r:Lf9/k;

    .line 7
    .line 8
    new-instance v0, Lmb/s;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x3

    .line 12
    const/4 v1, 0x2

    .line 13
    const-class v3, Lx/c0;

    .line 14
    .line 15
    const-string v4, "onFocusStateChange"

    .line 16
    .line 17
    const-string v5, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v2, p0

    .line 21
    invoke-direct/range {v0 .. v8}, Lmb/s;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lw1/s;

    .line 25
    .line 26
    const/4 p3, 0x4

    .line 27
    invoke-direct {p1, p2, v0, p3}, Lw1/s;-><init>(ILf9/n;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 31
    .line 32
    .line 33
    iput-object p1, v2, Lx/c0;->v:Lw1/s;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final D0(Lb0/k;Lb0/j;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lfc/c;

    .line 10
    .line 11
    iget-object v0, v0, Lfc/c;->a:Lw8/h;

    .line 12
    .line 13
    sget-object v1, Lac/t;->b:Lac/t;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lac/v0;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v1, La8/v;

    .line 25
    .line 26
    const/16 v2, 0x19

    .line 27
    .line 28
    invoke-direct {v1, v2, p1, p2}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lac/v0;->y(Lf9/k;)Lac/h0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v4, v5

    .line 38
    :goto_0
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lb1/f;

    .line 43
    .line 44
    const/16 v6, 0xe

    .line 45
    .line 46
    move-object v2, p1

    .line 47
    move-object v3, p2

    .line 48
    invoke-direct/range {v1 .. v6}, Lb1/f;-><init>(Lb0/k;Lb0/j;Ljava/lang/Object;Lw8/c;I)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x3

    .line 52
    invoke-static {v0, v5, v1, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    move-object v2, p1

    .line 57
    move-object v3, p2

    .line 58
    invoke-virtual {v2, v3}, Lb0/k;->b(Lb0/j;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final E0()Lx/d0;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 7
    .line 8
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "visitAncestors called on an unattached node"

    .line 13
    .line 14
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 18
    .line 19
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 20
    .line 21
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    if-eqz v2, :cond_b

    .line 26
    .line 27
    iget-object v3, v2, Lq2/h0;->E:Lq2/d1;

    .line 28
    .line 29
    iget-object v3, v3, Lq2/d1;->f:Lr1/o;

    .line 30
    .line 31
    iget v3, v3, Lr1/o;->d:I

    .line 32
    .line 33
    const/high16 v4, 0x40000

    .line 34
    .line 35
    and-int/2addr v3, v4

    .line 36
    if-eqz v3, :cond_9

    .line 37
    .line 38
    :goto_1
    if-eqz v0, :cond_9

    .line 39
    .line 40
    iget v3, v0, Lr1/o;->c:I

    .line 41
    .line 42
    and-int/2addr v3, v4

    .line 43
    if-eqz v3, :cond_8

    .line 44
    .line 45
    move-object v3, v0

    .line 46
    move-object v5, v1

    .line 47
    :goto_2
    if-eqz v3, :cond_8

    .line 48
    .line 49
    instance-of v6, v3, Lq2/d2;

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    check-cast v3, Lq2/d2;

    .line 54
    .line 55
    invoke-interface {v3}, Lq2/d2;->j()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    sget-object v7, Lx/d0;->p:Lx/a1;

    .line 60
    .line 61
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_7

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_1
    iget v6, v3, Lr1/o;->c:I

    .line 69
    .line 70
    and-int/2addr v6, v4

    .line 71
    if-eqz v6, :cond_7

    .line 72
    .line 73
    instance-of v6, v3, Lq2/m;

    .line 74
    .line 75
    if-eqz v6, :cond_7

    .line 76
    .line 77
    move-object v6, v3

    .line 78
    check-cast v6, Lq2/m;

    .line 79
    .line 80
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    :goto_3
    const/4 v8, 0x1

    .line 84
    if-eqz v6, :cond_6

    .line 85
    .line 86
    iget v9, v6, Lr1/o;->c:I

    .line 87
    .line 88
    and-int/2addr v9, v4

    .line 89
    if-eqz v9, :cond_5

    .line 90
    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    if-ne v7, v8, :cond_2

    .line 94
    .line 95
    move-object v3, v6

    .line 96
    goto :goto_4

    .line 97
    :cond_2
    if-nez v5, :cond_3

    .line 98
    .line 99
    new-instance v5, Lh1/e;

    .line 100
    .line 101
    const/16 v8, 0x10

    .line 102
    .line 103
    new-array v8, v8, [Lr1/o;

    .line 104
    .line 105
    invoke-direct {v5, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {v5, v3}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v3, v1

    .line 114
    :cond_4
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_4
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    if-ne v7, v8, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_2

    .line 128
    :cond_8
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    iget-object v0, v2, Lq2/h0;->E:Lq2/d1;

    .line 138
    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_a
    move-object v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_b
    move-object v3, v1

    .line 147
    :goto_5
    instance-of v0, v3, Lx/d0;

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    check-cast v3, Lx/d0;

    .line 152
    .line 153
    return-object v3

    .line 154
    :cond_c
    return-object v1
.end method

.method public final F0(Lb0/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx/c0;->q:Lb0/k;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lx/c0;->q:Lb0/k;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lx/c0;->s:Lb0/d;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v2, Lb0/e;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lb0/e;-><init>(Lb0/d;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lb0/k;->b(Lb0/j;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lx/c0;->s:Lb0/d;

    .line 27
    .line 28
    iput-object p1, p0, Lx/c0;->q:Lb0/k;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final V(Lq2/h1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lx/c0;->u:Lq2/h1;

    .line 2
    .line 3
    iget-object v0, p0, Lx/c0;->v:Lw1/s;

    .line 4
    .line 5
    invoke-virtual {v0}, Lw1/s;->C0()Lw1/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lw1/r;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lq2/h1;->G0()Lr1/o;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean p1, p1, Lr1/o;->n:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lx/c0;->u:Lq2/h1;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lq2/h1;->G0()Lr1/o;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-boolean p1, p1, Lr1/o;->n:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lx/c0;->E0()Lx/d0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lx/c0;->u:Lq2/h1;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lx/d0;->A0(Lo2/w;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lx/c0;->E0()Lx/d0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lx/d0;->A0(Lo2/w;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method public final Y()V
    .locals 3

    .line 1
    new-instance v0, Lg9/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, La8/n0;

    .line 7
    .line 8
    const/16 v2, 0x17

    .line 9
    .line 10
    invoke-direct {v1, v2, v0, p0}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Lq2/f;->r(Lr1/o;Lf9/a;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lh0/c0;

    .line 19
    .line 20
    iget-object v1, p0, Lx/c0;->v:Lw1/s;

    .line 21
    .line 22
    invoke-virtual {v1}, Lw1/s;->C0()Lw1/r;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lw1/r;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lx/c0;->t:Lh0/c0;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lh0/c0;->b()V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lh0/c0;->a()Lh0/c0;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    iput-object v0, p0, Lx/c0;->t:Lh0/c0;

    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final Z(Ly2/j;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lx/c0;->v:Lw1/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw1/s;->C0()Lw1/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lw1/r;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 12
    .line 13
    sget-object v1, Ly2/r;->k:Ly2/u;

    .line 14
    .line 15
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    aget-object v2, v2, v3

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lc/l0;

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x5

    .line 31
    const/4 v3, 0x0

    .line 32
    const-class v5, Lx/c0;

    .line 33
    .line 34
    const-string v6, "requestFocus"

    .line 35
    .line 36
    const-string v7, "requestFocus()Z"

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v4, p0

    .line 40
    invoke-direct/range {v2 .. v10}, Lc/l0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Ly2/i;->v:Ly2/u;

    .line 44
    .line 45
    new-instance v1, Ly2/a;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v1, v3, v2}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lx/c0;->w:Lx/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final synthetic j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final u0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx/c0;->t:Lh0/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lh0/c0;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lx/c0;->t:Lh0/c0;

    .line 10
    .line 11
    return-void
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
