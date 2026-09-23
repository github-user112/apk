.class public final La8/j0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lf9/k;

.field public final synthetic f:Lf1/b1;


# direct methods
.method public constructor <init>(FIFLjava/util/List;Lf9/k;Lf1/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, La8/j0;->a:F

    .line 5
    .line 6
    iput p2, p0, La8/j0;->b:I

    .line 7
    .line 8
    iput p3, p0, La8/j0;->c:F

    .line 9
    .line 10
    iput-object p4, p0, La8/j0;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, La8/j0;->e:Lf9/k;

    .line 13
    .line 14
    iput-object p6, p0, La8/j0;->f:Lf1/b1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_1
    :goto_0
    sget-object p1, Lr1/m;->a:Lr1/m;

    .line 28
    .line 29
    iget p2, p0, La8/j0;->a:F

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v12, 0x1

    .line 33
    invoke-static {p1, v0, p2, v12}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object p2, Ld0/h;->c:Ld0/b;

    .line 38
    .line 39
    sget-object v0, Lr1/c;->m:Lr1/f;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {p2, v0, v10, v1}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-wide v2, v10, Lf1/s;->T:J

    .line 47
    .line 48
    const/16 v0, 0x20

    .line 49
    .line 50
    ushr-long v4, v2, v0

    .line 51
    .line 52
    xor-long/2addr v2, v4

    .line 53
    long-to-int v0, v2

    .line 54
    invoke-virtual {v10}, Lf1/s;->l()Lf1/q1;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v10, p1}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v3, Lq2/j;->d0:Lq2/i;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object v3, Lq2/i;->b:Lq2/a0;

    .line 68
    .line 69
    invoke-virtual {v10}, Lf1/s;->a0()V

    .line 70
    .line 71
    .line 72
    iget-boolean v4, v10, Lf1/s;->S:Z

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    invoke-virtual {v10, v3}, Lf1/s;->k(Lf9/a;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v10}, Lf1/s;->k0()V

    .line 81
    .line 82
    .line 83
    :goto_1
    sget-object v3, Lq2/i;->e:Lq2/h;

    .line 84
    .line 85
    invoke-static {v10, v3, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p2, Lq2/i;->d:Lq2/h;

    .line 89
    .line 90
    invoke-static {v10, p2, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget-object p2, Lq2/i;->f:Lq2/h;

    .line 94
    .line 95
    iget-boolean v2, v10, Lf1/s;->S:Z

    .line 96
    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    :cond_3
    invoke-static {v0, v10, v0, p2}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    sget-object p2, Lq2/i;->c:Lq2/h;

    .line 117
    .line 118
    invoke-static {v10, p2, p1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    sget-object v1, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 123
    .line 124
    new-instance v0, Lg0/a;

    .line 125
    .line 126
    iget p2, p0, La8/j0;->b:I

    .line 127
    .line 128
    invoke-direct {v0, p2}, Lg0/a;-><init>(I)V

    .line 129
    .line 130
    .line 131
    iget p2, p0, La8/j0;->c:F

    .line 132
    .line 133
    invoke-static {p2}, Ld0/h;->g(F)Ld0/f;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {p2}, Ld0/h;->g(F)Ld0/f;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    const p2, -0x6815fd56

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, p2}, Lf1/s;->W(I)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, La8/j0;->d:Ljava/util/List;

    .line 148
    .line 149
    invoke-virtual {v10, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iget-object v3, p0, La8/j0;->e:Lf9/k;

    .line 154
    .line 155
    invoke-virtual {v10, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    or-int/2addr v2, v6

    .line 160
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-nez v2, :cond_5

    .line 165
    .line 166
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 167
    .line 168
    if-ne v6, v2, :cond_6

    .line 169
    .line 170
    :cond_5
    new-instance v6, La8/z;

    .line 171
    .line 172
    iget-object v2, p0, La8/j0;->f:Lf1/b1;

    .line 173
    .line 174
    invoke-direct {v6, p2, v2, v3}, La8/z;-><init>(Ljava/util/List;Lf1/b1;Lf9/k;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    move-object v9, v6

    .line 181
    check-cast v9, Lf9/k;

    .line 182
    .line 183
    invoke-virtual {v10, p1}, Lf1/s;->p(Z)V

    .line 184
    .line 185
    .line 186
    const/16 v11, 0x30

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v3, 0x0

    .line 190
    const/4 v6, 0x0

    .line 191
    const/4 v7, 0x0

    .line 192
    const/4 v8, 0x0

    .line 193
    invoke-static/range {v0 .. v11}, Li2/c;->f(Lg0/a;Lr1/p;Lg0/u;Ld0/h0;Ld0/g;Ld0/e;Lz/h;ZLx/h;Lf9/k;Lf1/s;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v12}, Lf1/s;->p(Z)V

    .line 197
    .line 198
    .line 199
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 200
    .line 201
    return-object p1
.end method
