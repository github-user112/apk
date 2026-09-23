.class public final Lb1/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lx/n0;


# instance fields
.field public final a:Z

.field public final b:F

.field public final c:Lf1/b1;


# direct methods
.method public constructor <init>(ZFLf1/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lb1/e;->a:Z

    .line 5
    .line 6
    iput p2, p0, Lb1/e;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Lb1/e;->c:Lf1/b1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lb0/k;Lf1/s;)Lx/o0;
    .locals 13

    .line 1
    const v0, 0x3aef0613

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lb1/o;->a:Lf1/w2;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lb1/m;

    .line 14
    .line 15
    iget-object v1, p0, Lb1/e;->c:Lf1/b1;

    .line 16
    .line 17
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ly1/q;

    .line 22
    .line 23
    iget-wide v2, v2, Ly1/q;->a:J

    .line 24
    .line 25
    const-wide/16 v4, 0x10

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    cmp-long v7, v2, v4

    .line 29
    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    const v2, -0x1217eb4e

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Lf1/s;->W(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v6}, Lf1/s;->p(Z)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ly1/q;

    .line 46
    .line 47
    iget-wide v1, v1, Ly1/q;->a:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const v1, -0x12170996

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v1}, Lf1/s;->W(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p2}, Lb1/m;->b(Lf1/s;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {p2, v6}, Lf1/s;->p(Z)V

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance v3, Ly1/q;

    .line 64
    .line 65
    invoke-direct {v3, v1, v2}, Ly1/q;-><init>(J)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3, p2}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-interface {v0, p2}, Lb1/m;->a(Lf1/s;)Lb1/g;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, p2}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    const v0, 0x13be9e37

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lr2/n0;->f:Lf1/w2;

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/view/View;

    .line 93
    .line 94
    invoke-static {v0}, Lg5/a;->x(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    or-int/2addr v0, v1

    .line 107
    invoke-virtual {p2, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    or-int/2addr v0, v1

    .line 112
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 117
    .line 118
    if-nez v0, :cond_1

    .line 119
    .line 120
    if-ne v1, v2, :cond_2

    .line 121
    .line 122
    :cond_1
    new-instance v7, Lb1/b;

    .line 123
    .line 124
    iget-boolean v8, p0, Lb1/e;->a:Z

    .line 125
    .line 126
    iget v9, p0, Lb1/e;->b:F

    .line 127
    .line 128
    invoke-direct/range {v7 .. v12}, Lb1/b;-><init>(ZFLf1/b1;Lf1/b1;Landroid/view/ViewGroup;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    move-object v1, v7

    .line 135
    :cond_2
    check-cast v1, Lb1/b;

    .line 136
    .line 137
    invoke-virtual {p2, v6}, Lf1/s;->p(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p2, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    or-int/2addr v0, v3

    .line 149
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-nez v0, :cond_3

    .line 154
    .line 155
    if-ne v3, v2, :cond_4

    .line 156
    .line 157
    :cond_3
    new-instance v3, Lb1/f;

    .line 158
    .line 159
    const/4 v0, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-direct {v3, p1, v1, v0, v2}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    check-cast v3, Lf9/n;

    .line 168
    .line 169
    invoke-static {v1, p1, v3, p2}, Lf1/b;->g(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lf1/s;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v6}, Lf1/s;->p(Z)V

    .line 173
    .line 174
    .line 175
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lb1/e;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lb1/e;

    .line 10
    .line 11
    iget-boolean v0, p1, Lb1/e;->a:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Lb1/e;->a:Z

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lb1/e;->b:F

    .line 19
    .line 20
    iget v1, p1, Lb1/e;->b:F

    .line 21
    .line 22
    invoke-static {v0, v1}, Ln3/f;->a(FF)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lb1/e;->c:Lf1/b1;

    .line 30
    .line 31
    iget-object p1, p1, Lb1/e;->c:Lf1/b1;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb1/e;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x1f

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v2, p0, Lb1/e;->b:F

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lb1/e;->c:Lf1/b1;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    return v1
.end method
