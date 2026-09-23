.class public final Lh0/n0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/y1;


# instance fields
.field public o:Lf9/a;

.field public p:Lh0/k0;

.field public q:Lz/w0;

.field public r:Z

.field public s:Ly2/h;

.field public final t:Lh0/l0;

.field public u:Lh0/l0;


# direct methods
.method public constructor <init>(Lf9/a;Lh0/k0;Lz/w0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/n0;->o:Lf9/a;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/n0;->p:Lh0/k0;

    .line 7
    .line 8
    iput-object p3, p0, Lh0/n0;->q:Lz/w0;

    .line 9
    .line 10
    iput-boolean p4, p0, Lh0/n0;->r:Z

    .line 11
    .line 12
    new-instance p1, Lh0/l0;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p0, p2}, Lh0/l0;-><init>(Lh0/n0;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lh0/n0;->t:Lh0/l0;

    .line 19
    .line 20
    invoke-virtual {p0}, Lh0/n0;->A0()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 4

    .line 1
    new-instance v0, Ly2/h;

    .line 2
    .line 3
    new-instance v1, Lh0/m0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lh0/m0;-><init>(Lh0/n0;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lh0/m0;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Lh0/m0;-><init>(Lh0/n0;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ly2/h;-><init>(Lf9/a;Lf9/a;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lh0/n0;->s:Ly2/h;

    .line 19
    .line 20
    iget-boolean v0, p0, Lh0/n0;->r:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lh0/l0;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, v1}, Lh0/l0;-><init>(Lh0/n0;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-object v0, p0, Lh0/n0;->u:Lh0/l0;

    .line 33
    .line 34
    return-void
.end method

.method public final Z(Ly2/j;)V
    .locals 7

    .line 1
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 2
    .line 3
    sget-object v0, Ly2/r;->m:Ly2/u;

    .line 4
    .line 5
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    aget-object v2, v1, v2

    .line 9
    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v2}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Ly2/r;->L:Ly2/u;

    .line 16
    .line 17
    iget-object v2, p0, Lh0/n0;->t:Lh0/l0;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lh0/n0;->q:Lz/w0;

    .line 23
    .line 24
    sget-object v2, Lz/w0;->a:Lz/w0;

    .line 25
    .line 26
    const-string v3, "scrollAxisRange"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lh0/n0;->s:Ly2/h;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v2, Ly2/r;->u:Ly2/u;

    .line 36
    .line 37
    const/16 v3, 0xc

    .line 38
    .line 39
    aget-object v3, v1, v3

    .line 40
    .line 41
    invoke-virtual {v2, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v3}, Lg9/l;->j(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v4

    .line 49
    :cond_1
    iget-object v0, p0, Lh0/n0;->s:Ly2/h;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    sget-object v2, Ly2/r;->t:Ly2/u;

    .line 54
    .line 55
    const/16 v3, 0xb

    .line 56
    .line 57
    aget-object v3, v1, v3

    .line 58
    .line 59
    invoke-virtual {v2, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v0, p0, Lh0/n0;->u:Lh0/l0;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    sget-object v2, Ly2/i;->f:Ly2/u;

    .line 67
    .line 68
    new-instance v3, Ly2/a;

    .line 69
    .line 70
    invoke-direct {v3, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    new-instance v0, Lh0/m0;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v0, p0, v2}, Lh0/m0;-><init>(Lh0/n0;I)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Ly2/i;->B:Ly2/u;

    .line 83
    .line 84
    new-instance v3, Ly2/a;

    .line 85
    .line 86
    new-instance v5, Lb2/a;

    .line 87
    .line 88
    const/16 v6, 0x18

    .line 89
    .line 90
    invoke-direct {v5, v6, v0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4, v5}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lh0/n0;->p:Lh0/k0;

    .line 100
    .line 101
    invoke-interface {v0}, Lh0/k0;->f()Ly2/b;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v2, Ly2/r;->f:Ly2/u;

    .line 106
    .line 107
    const/16 v3, 0x16

    .line 108
    .line 109
    aget-object v1, v1, v3

    .line 110
    .line 111
    invoke-virtual {v2, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    invoke-static {v3}, Lg9/l;->j(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v4
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
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

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
