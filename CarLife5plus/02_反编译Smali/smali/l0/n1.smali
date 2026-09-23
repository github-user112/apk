.class public final Ll0/n1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Ll0/o1;

.field public final synthetic b:Z

.field public final synthetic c:Lb0/k;


# direct methods
.method public constructor <init>(Ll0/o1;ZLb0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/n1;->a:Ll0/o1;

    .line 5
    .line 6
    iput-boolean p2, p0, Ll0/n1;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Ll0/n1;->c:Lb0/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lr1/p;

    .line 2
    .line 3
    check-cast p2, Lf1/s;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ll0/n1;->a:Ll0/o1;

    .line 11
    .line 12
    iget-object p3, p1, Ll0/o1;->f:Lf1/k1;

    .line 13
    .line 14
    const v0, 0x3001dc2a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lr2/i1;->n:Lf1/w2;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Ln3/m;->b:Ln3/m;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lz/w0;

    .line 40
    .line 41
    sget-object v4, Lz/w0;->a:Lz/w0;

    .line 42
    .line 43
    if-eq v1, v4, :cond_2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 51
    :goto_2
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    if-ne v4, v5, :cond_4

    .line 64
    .line 65
    :cond_3
    new-instance v4, La8/q;

    .line 66
    .line 67
    const/16 v1, 0x13

    .line 68
    .line 69
    invoke-direct {v4, v1, p1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    check-cast v4, Lf9/k;

    .line 76
    .line 77
    invoke-static {v4, p2}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-ne v4, v5, :cond_5

    .line 86
    .line 87
    new-instance v4, Ly7/y;

    .line 88
    .line 89
    const/4 v6, 0x4

    .line 90
    invoke-direct {v4, v1, v6}, Ly7/y;-><init>(Lf1/b1;I)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lz/j;

    .line 94
    .line 95
    invoke-direct {v1, v4}, Lz/j;-><init>(Lf9/k;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    move-object v4, v1

    .line 102
    :cond_5
    check-cast v4, Lz/m1;

    .line 103
    .line 104
    invoke-virtual {p2, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    or-int/2addr v1, v6

    .line 113
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    if-ne v6, v5, :cond_7

    .line 120
    .line 121
    :cond_6
    new-instance v6, Ll0/m1;

    .line 122
    .line 123
    invoke-direct {v6, v4, p1}, Ll0/m1;-><init>(Lz/m1;Ll0/o1;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_7
    check-cast v6, Ll0/m1;

    .line 130
    .line 131
    invoke-virtual {p3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    check-cast p3, Lz/w0;

    .line 136
    .line 137
    iget-boolean v1, p0, Ll0/n1;->b:Z

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    iget-object p1, p1, Ll0/o1;->b:Lf1/g1;

    .line 142
    .line 143
    invoke-virtual {p1}, Lf1/g1;->f()F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    const/4 v1, 0x0

    .line 148
    cmpg-float p1, p1, v1

    .line 149
    .line 150
    if-nez p1, :cond_9

    .line 151
    .line 152
    :cond_8
    const/4 v2, 0x0

    .line 153
    :cond_9
    iget-object p1, p0, Ll0/n1;->c:Lb0/k;

    .line 154
    .line 155
    invoke-static {v6, p3, v2, v0, p1}, Landroidx/compose/foundation/gestures/a;->b(Ll0/m1;Lz/w0;ZZLb0/k;)Lr1/p;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p2, v3}, Lf1/s;->p(Z)V

    .line 160
    .line 161
    .line 162
    return-object p1
.end method
