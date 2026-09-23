.class public final Ln7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lt7/e;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Ln7/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->f(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->e(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()Lt7/h;
    .locals 1

    .line 1
    sget-object v0, Lt7/h;->c:Lt7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    const/16 v0, 0x3e7

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lt7/f;
    .locals 1

    .line 1
    sget-object v0, Lt7/f;->e:Lt7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ILf1/s;)V
    .locals 11

    .line 1
    const v0, -0x5f9450f1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    :goto_0
    const v0, 0x6e3c21fe

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 34
    .line 35
    if-ne v0, v7, :cond_2

    .line 36
    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    move-object v8, v0

    .line 47
    check-cast v8, Lf1/b1;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-virtual {p2, v9}, Lf1/s;->p(Z)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Ln7/b;->a:Ln1/c;

    .line 54
    .line 55
    sget-object v1, Ln7/b;->b:Ln1/c;

    .line 56
    .line 57
    const v10, 0x4c5de2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v10}, Lf1/s;->W(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-ne v2, v7, :cond_3

    .line 68
    .line 69
    new-instance v2, Lj8/h;

    .line 70
    .line 71
    const/16 v4, 0x16

    .line 72
    .line 73
    invoke-direct {v2, v8, v4}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    check-cast v2, Lf9/a;

    .line 80
    .line 81
    invoke-virtual {p2, v9}, Lf1/s;->p(Z)V

    .line 82
    .line 83
    .line 84
    const/16 v5, 0xdb6

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    move-object v3, v2

    .line 88
    const/4 v2, 0x0

    .line 89
    move-object v4, p2

    .line 90
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p2, v10}, Lf1/s;->W(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-ne v0, v7, :cond_4

    .line 113
    .line 114
    new-instance v0, Lj8/h;

    .line 115
    .line 116
    const/16 v1, 0x17

    .line 117
    .line 118
    invoke-direct {v0, v8, v1}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    check-cast v0, Lf9/a;

    .line 125
    .line 126
    invoke-virtual {p2, v9}, Lf1/s;->p(Z)V

    .line 127
    .line 128
    .line 129
    sget-object v2, Ln7/b;->c:Ln1/c;

    .line 130
    .line 131
    const/16 v4, 0x186

    .line 132
    .line 133
    const/4 v5, 0x2

    .line 134
    const/4 v1, 0x0

    .line 135
    move-object v3, p2

    .line 136
    invoke-static/range {v0 .. v5}, Lp9/q;->a(Lf9/a;Lr3/s;Ln1/c;Lf1/s;II)V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    new-instance v1, La8/d;

    .line 146
    .line 147
    const/16 v2, 0x12

    .line 148
    .line 149
    invoke-direct {v1, p1, v2, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 153
    .line 154
    :cond_6
    return-void
.end method
