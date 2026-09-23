.class public final Ll0/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lr1/p;


# direct methods
.method public constructor <init>(JLr1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ll0/b;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Ll0/b;->b:Lr1/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    and-int/2addr p2, v2

    .line 20
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_5

    .line 25
    .line 26
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iget-wide v4, p0, Ll0/b;->a:J

    .line 32
    .line 33
    cmp-long p2, v4, v0

    .line 34
    .line 35
    if-eqz p2, :cond_4

    .line 36
    .line 37
    const p2, -0x4a262578

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5}, Ln3/h;->b(J)F

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {v4, v5}, Ln3/h;->a(J)F

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v10, 0x0

    .line 52
    const/16 v11, 0xc

    .line 53
    .line 54
    iget-object v6, p0, Ll0/b;->b:Lr1/p;

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/c;->g(Lr1/p;FFFFI)Lr1/p;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget-object v0, Lr1/c;->b:Lr1/h;

    .line 62
    .line 63
    invoke-static {v0, v3}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-wide v4, p1, Lf1/s;->T:J

    .line 68
    .line 69
    const/16 v1, 0x20

    .line 70
    .line 71
    ushr-long v6, v4, v1

    .line 72
    .line 73
    xor-long/2addr v4, v6

    .line 74
    long-to-int v1, v4

    .line 75
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {p1, p2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget-object v5, Lq2/j;->d0:Lq2/i;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    sget-object v5, Lq2/i;->b:Lq2/a0;

    .line 89
    .line 90
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 91
    .line 92
    .line 93
    iget-boolean v6, p1, Lf1/s;->S:Z

    .line 94
    .line 95
    if-eqz v6, :cond_1

    .line 96
    .line 97
    invoke-virtual {p1, v5}, Lf1/s;->k(Lf9/a;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 102
    .line 103
    .line 104
    :goto_1
    sget-object v5, Lq2/i;->e:Lq2/h;

    .line 105
    .line 106
    invoke-static {p1, v5, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 110
    .line 111
    invoke-static {p1, v0, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 115
    .line 116
    iget-boolean v4, p1, Lf1/s;->S:Z

    .line 117
    .line 118
    if-nez v4, :cond_2

    .line 119
    .line 120
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_3

    .line 133
    .line 134
    :cond_2
    invoke-static {v1, p1, v1, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 138
    .line 139
    invoke-static {p1, v0, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const/4 p2, 0x0

    .line 143
    invoke-static {p2, p1, v3, v2}, Ll0/e;->b(Lr1/p;Lf1/s;II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v3}, Lf1/s;->p(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const p2, -0x4a2083ba

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Ll0/b;->b:Lr1/p;

    .line 160
    .line 161
    invoke-static {p2, p1, v3, v3}, Ll0/e;->b(Lr1/p;Lf1/s;II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v3}, Lf1/s;->p(Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 169
    .line 170
    .line 171
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 172
    .line 173
    return-object p1
.end method
