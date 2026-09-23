.class public final Lc1/k2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ly1/l0;

.field public final synthetic c:J

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Ln1/c;


# direct methods
.method public constructor <init>(Lr1/p;Ly1/l0;JFFLn1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/k2;->a:Lr1/p;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/k2;->b:Ly1/l0;

    .line 4
    .line 5
    iput-wide p3, p0, Lc1/k2;->c:J

    .line 6
    .line 7
    iput p5, p0, Lc1/k2;->d:F

    .line 8
    .line 9
    iput p6, p0, Lc1/k2;->e:F

    .line 10
    .line 11
    iput-object p7, p0, Lc1/k2;->f:Ln1/c;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne p2, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    :goto_0
    iget-wide v2, p0, Lc1/k2;->c:J

    .line 28
    .line 29
    iget p2, p0, Lc1/k2;->d:F

    .line 30
    .line 31
    invoke-static {v2, v3, p2, p1}, Lc1/m2;->b(JFLf1/s;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    sget-object p2, Lr2/i1;->h:Lf1/w2;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget v4, p0, Lc1/k2;->e:F

    .line 42
    .line 43
    check-cast p2, Ln3/c;

    .line 44
    .line 45
    invoke-interface {p2, v4}, Ln3/c;->S(F)F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iget-object v4, p0, Lc1/k2;->a:Lr1/p;

    .line 50
    .line 51
    iget-object v5, p0, Lc1/k2;->b:Ly1/l0;

    .line 52
    .line 53
    invoke-static {v4, v5, v2, v3, p2}, Lc1/m2;->a(Lr1/p;Ly1/l0;JF)Lr1/p;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget-object v2, Lc1/g;->d:Lc1/g;

    .line 58
    .line 59
    sget-object v3, Ly2/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    .line 61
    new-instance v3, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v3, v2, v4}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance v2, Lc1/j2;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-direct {v2, v1, v3, v4}, Lc1/j2;-><init>(ILw8/c;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {p2, v2}, Lk2/i0;->b(Lr1/p;Lf9/n;)Lr1/p;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    sget-object v1, Lr1/c;->a:Lr1/h;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-static {v1, v2}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {p1}, Lf1/b;->p(Lf1/s;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {p1, p2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 106
    .line 107
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 108
    .line 109
    .line 110
    iget-boolean v7, p1, Lf1/s;->S:Z

    .line 111
    .line 112
    if-eqz v7, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1, v6}, Lf1/s;->k(Lf9/a;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 119
    .line 120
    .line 121
    :goto_1
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 122
    .line 123
    invoke-static {p1, v6, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 127
    .line 128
    invoke-static {p1, v1, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v1, Lq2/i;->f:Lq2/h;

    .line 132
    .line 133
    iget-boolean v5, p1, Lf1/s;->S:Z

    .line 134
    .line 135
    if-nez v5, :cond_3

    .line 136
    .line 137
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_4

    .line 150
    .line 151
    :cond_3
    invoke-static {v3, p1, v3, v1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 155
    .line 156
    invoke-static {p1, v1, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    iget-object v1, p0, Lc1/k2;->f:Ln1/c;

    .line 164
    .line 165
    invoke-virtual {v1, p1, p2}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 169
    .line 170
    .line 171
    return-object v0
.end method
