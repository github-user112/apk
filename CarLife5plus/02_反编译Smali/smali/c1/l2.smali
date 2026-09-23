.class public final Lc1/l2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ly1/l0;

.field public final synthetic c:J

.field public final synthetic d:F

.field public final synthetic e:Lb0/k;

.field public final synthetic f:Z

.field public final synthetic g:Lf9/a;

.field public final synthetic h:F

.field public final synthetic i:Ln1/c;


# direct methods
.method public constructor <init>(Lr1/p;Ly1/l0;JFLb0/k;ZLf9/a;FLn1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/l2;->a:Lr1/p;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/l2;->b:Ly1/l0;

    .line 4
    .line 5
    iput-wide p3, p0, Lc1/l2;->c:J

    .line 6
    .line 7
    iput p5, p0, Lc1/l2;->d:F

    .line 8
    .line 9
    iput-object p6, p0, Lc1/l2;->e:Lb0/k;

    .line 10
    .line 11
    iput-boolean p7, p0, Lc1/l2;->f:Z

    .line 12
    .line 13
    iput-object p8, p0, Lc1/l2;->g:Lf9/a;

    .line 14
    .line 15
    iput p9, p0, Lc1/l2;->h:F

    .line 16
    .line 17
    iput-object p10, p0, Lc1/l2;->i:Ln1/c;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    const/4 v0, 0x2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    :goto_0
    sget-object p2, Lc1/l0;->a:Lf1/w2;

    .line 27
    .line 28
    sget-object p2, Landroidx/compose/material3/MinimumInteractiveModifier;->a:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 29
    .line 30
    iget-object v0, p0, Lc1/l2;->a:Lr1/p;

    .line 31
    .line 32
    invoke-interface {v0, p2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-wide v0, p0, Lc1/l2;->c:J

    .line 37
    .line 38
    iget v2, p0, Lc1/l2;->d:F

    .line 39
    .line 40
    invoke-static {v0, v1, v2, p1}, Lc1/m2;->b(JFLf1/s;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    sget-object v2, Lr2/i1;->h:Lf1/w2;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v3, p0, Lc1/l2;->h:F

    .line 51
    .line 52
    check-cast v2, Ln3/c;

    .line 53
    .line 54
    invoke-interface {v2, v3}, Ln3/c;->S(F)F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v3, p0, Lc1/l2;->b:Ly1/l0;

    .line 59
    .line 60
    invoke-static {p2, v3, v0, v1, v2}, Lc1/m2;->a(Lr1/p;Ly1/l0;JF)Lr1/p;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 p2, 0x0

    .line 65
    const/4 v0, 0x7

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {p2, p1, v1, v0}, Lc1/h1;->a(FLf1/s;II)Lx/n0;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v8, p0, Lc1/l2;->g:Lf9/a;

    .line 72
    .line 73
    const/16 v9, 0x18

    .line 74
    .line 75
    iget-object v5, p0, Lc1/l2;->e:Lb0/k;

    .line 76
    .line 77
    iget-boolean v7, p0, Lc1/l2;->f:Z

    .line 78
    .line 79
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget-object v0, Lr1/c;->a:Lr1/h;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-static {v0, v2}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1}, Lf1/b;->p(Lf1/s;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {p1, p2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v5, Lq2/j;->d0:Lq2/i;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v5, Lq2/i;->b:Lq2/a0;

    .line 108
    .line 109
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 110
    .line 111
    .line 112
    iget-boolean v6, p1, Lf1/s;->S:Z

    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1, v5}, Lf1/s;->k(Lf9/a;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 121
    .line 122
    .line 123
    :goto_1
    sget-object v5, Lq2/i;->e:Lq2/h;

    .line 124
    .line 125
    invoke-static {p1, v5, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 129
    .line 130
    invoke-static {p1, v0, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 134
    .line 135
    iget-boolean v4, p1, Lf1/s;->S:Z

    .line 136
    .line 137
    if-nez v4, :cond_3

    .line 138
    .line 139
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_4

    .line 152
    .line 153
    :cond_3
    invoke-static {v3, p1, v3, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 157
    .line 158
    invoke-static {p1, v0, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iget-object v0, p0, Lc1/l2;->i:Ln1/c;

    .line 166
    .line 167
    invoke-virtual {v0, p1, p2}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 171
    .line 172
    .line 173
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 174
    .line 175
    return-object p1
.end method
