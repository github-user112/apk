.class public abstract Lq2/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lq2/n1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq2/n1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lq2/n1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq2/f;->a:Lq2/n1;

    .line 8
    .line 9
    return-void
.end method

.method public static final A(Lq2/d2;Lf9/k;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "visitSubtreeIf called on an unattached node"

    .line 11
    .line 12
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Lh1/e;

    .line 16
    .line 17
    const/16 v2, 0x10

    .line 18
    .line 19
    new-array v3, v2, [Lr1/o;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 25
    .line 26
    iget-object v3, v0, Lr1/o;->f:Lr1/o;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-static {v1, v0}, Lq2/f;->b(Lh1/e;Lr1/o;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1, v3}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    iget v0, v1, Lh1/e;->c:I

    .line 38
    .line 39
    if-eqz v0, :cond_e

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lr1/o;

    .line 48
    .line 49
    iget v3, v0, Lr1/o;->d:I

    .line 50
    .line 51
    const/high16 v4, 0x40000

    .line 52
    .line 53
    and-int/2addr v3, v4

    .line 54
    if-eqz v3, :cond_d

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    :goto_1
    if-eqz v3, :cond_d

    .line 58
    .line 59
    iget v5, v3, Lr1/o;->c:I

    .line 60
    .line 61
    and-int/2addr v5, v4

    .line 62
    if-eqz v5, :cond_c

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v6, v3

    .line 66
    move-object v7, v5

    .line 67
    :goto_2
    if-eqz v6, :cond_c

    .line 68
    .line 69
    instance-of v8, v6, Lq2/d2;

    .line 70
    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    check-cast v6, Lq2/d2;

    .line 74
    .line 75
    invoke-interface {p0}, Lq2/d2;->j()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-interface {v6}, Lq2/d2;->j()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-static {v8, v9}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    if-ne v8, v9, :cond_3

    .line 98
    .line 99
    invoke-interface {p1, v6}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lq2/c2;

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    sget-object v6, Lq2/c2;->a:Lq2/c2;

    .line 107
    .line 108
    :goto_3
    sget-object v8, Lq2/c2;->c:Lq2/c2;

    .line 109
    .line 110
    if-ne v6, v8, :cond_4

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_4
    sget-object v8, Lq2/c2;->b:Lq2/c2;

    .line 114
    .line 115
    if-eq v6, v8, :cond_2

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_5
    iget v8, v6, Lr1/o;->c:I

    .line 119
    .line 120
    and-int/2addr v8, v4

    .line 121
    if-eqz v8, :cond_b

    .line 122
    .line 123
    instance-of v8, v6, Lq2/m;

    .line 124
    .line 125
    if-eqz v8, :cond_b

    .line 126
    .line 127
    move-object v8, v6

    .line 128
    check-cast v8, Lq2/m;

    .line 129
    .line 130
    iget-object v8, v8, Lq2/m;->p:Lr1/o;

    .line 131
    .line 132
    const/4 v9, 0x0

    .line 133
    :goto_4
    const/4 v10, 0x1

    .line 134
    if-eqz v8, :cond_a

    .line 135
    .line 136
    iget v11, v8, Lr1/o;->c:I

    .line 137
    .line 138
    and-int/2addr v11, v4

    .line 139
    if-eqz v11, :cond_9

    .line 140
    .line 141
    add-int/lit8 v9, v9, 0x1

    .line 142
    .line 143
    if-ne v9, v10, :cond_6

    .line 144
    .line 145
    move-object v6, v8

    .line 146
    goto :goto_5

    .line 147
    :cond_6
    if-nez v7, :cond_7

    .line 148
    .line 149
    new-instance v7, Lh1/e;

    .line 150
    .line 151
    new-array v10, v2, [Lr1/o;

    .line 152
    .line 153
    invoke-direct {v7, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    if-eqz v6, :cond_8

    .line 157
    .line 158
    invoke-virtual {v7, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object v6, v5

    .line 162
    :cond_8
    invoke-virtual {v7, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    :goto_5
    iget-object v8, v8, Lr1/o;->f:Lr1/o;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_a
    if-ne v9, v10, :cond_b

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_b
    :goto_6
    invoke-static {v7}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    goto :goto_2

    .line 176
    :cond_c
    iget-object v3, v3, Lr1/o;->f:Lr1/o;

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_d
    invoke-static {v1, v0}, Lq2/f;->b(Lh1/e;Lr1/o;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_e
    :goto_7
    return-void
.end method

.method public static final a(FZZ)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-wide/16 p0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide p0, v2

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-wide/16 v2, 0x2

    .line 17
    .line 18
    :cond_1
    or-long/2addr p0, v2

    .line 19
    const/16 p2, 0x20

    .line 20
    .line 21
    shl-long/2addr v0, p2

    .line 22
    const-wide v2, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr p0, v2

    .line 28
    or-long/2addr p0, v0

    .line 29
    return-wide p0
.end method

.method public static final b(Lh1/e;Lr1/o;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lq2/h0;->z()Lh1/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v0, p1, Lh1/e;->c:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iget-object p1, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_0

    .line 19
    .line 20
    aget-object v1, p1, v0

    .line 21
    .line 22
    check-cast v1, Lq2/h0;

    .line 23
    .line 24
    iget-object v1, v1, Lq2/h0;->E:Lq2/d1;

    .line 25
    .line 26
    iget-object v1, v1, Lq2/d1;->f:Lr1/o;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static final c(Lq2/p0;Lo2/m;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lq2/p0;->k0()Lq2/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Child of "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " cannot be null when calculating alignment line"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lq2/p0;->o0()Lo2/n0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lo2/n0;->b()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/high16 v2, -0x80000000

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lq2/p0;->o0()Lo2/n0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Lo2/n0;->b()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_1
    invoke-virtual {v0, p1}, Lq2/p0;->j0(Lo2/m;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v1, v2, :cond_3

    .line 72
    .line 73
    :cond_2
    return v2

    .line 74
    :cond_3
    const/4 v2, 0x1

    .line 75
    iput-boolean v2, v0, Lq2/p0;->j:Z

    .line 76
    .line 77
    iput-boolean v2, p0, Lq2/p0;->k:Z

    .line 78
    .line 79
    invoke-virtual {p0}, Lq2/p0;->u0()V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    iput-boolean v2, v0, Lq2/p0;->j:Z

    .line 84
    .line 85
    iput-boolean v2, p0, Lq2/p0;->k:Z

    .line 86
    .line 87
    instance-of p0, p1, Lo2/m;

    .line 88
    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Lq2/p0;->q0()J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    const-wide v2, 0xffffffffL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    and-long/2addr p0, v2

    .line 101
    :goto_1
    long-to-int p1, p0

    .line 102
    add-int/2addr v1, p1

    .line 103
    return v1

    .line 104
    :cond_4
    invoke-virtual {v0}, Lq2/p0;->q0()J

    .line 105
    .line 106
    .line 107
    move-result-wide p0

    .line 108
    const/16 v0, 0x20

    .line 109
    .line 110
    shr-long/2addr p0, v0

    .line 111
    goto :goto_1
.end method

.method public static final d(Lq2/c;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lq2/h0;->E:Lq2/d1;

    .line 6
    .line 7
    iget-object p0, p0, Lq2/d1;->e:Lq2/a2;

    .line 8
    .line 9
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lq2/a2;->o:Z

    .line 15
    .line 16
    return p0
.end method

.method public static final e(Lq2/l;I)Lr1/o;
    .locals 2

    .line 1
    check-cast p0, Lr1/o;

    .line 2
    .line 3
    iget-object p0, p0, Lr1/o;->a:Lr1/o;

    .line 4
    .line 5
    iget-object p0, p0, Lr1/o;->f:Lr1/o;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v0, p0, Lr1/o;->d:I

    .line 11
    .line 12
    and-int/2addr v0, p1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    .line 17
    .line 18
    iget v0, p0, Lr1/o;->c:I

    .line 19
    .line 20
    and-int/lit8 v1, v0, 0x2

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    and-int/2addr v0, p1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    iget-object p0, p0, Lr1/o;->f:Lr1/o;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static final f(Lh1/e;)Lr1/o;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lh1/e;->c:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lr1/o;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static final g(Lr1/o;)Lq2/x;
    .locals 2

    .line 1
    iget v0, p0, Lr1/o;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    instance-of v0, p0, Lq2/x;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Lq2/x;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Lq2/m;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    check-cast p0, Lq2/m;

    .line 20
    .line 21
    iget-object p0, p0, Lq2/m;->p:Lr1/o;

    .line 22
    .line 23
    :goto_0
    if-eqz p0, :cond_3

    .line 24
    .line 25
    instance-of v0, p0, Lq2/x;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast p0, Lq2/x;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    instance-of v0, p0, Lq2/m;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget v0, p0, Lr1/o;->c:I

    .line 37
    .line 38
    and-int/lit8 v0, v0, 0x2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    check-cast p0, Lq2/m;

    .line 43
    .line 44
    iget-object p0, p0, Lq2/m;->p:Lr1/o;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p0, p0, Lr1/o;->f:Lr1/o;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-object v1
.end method

.method public static final h(JJ)I
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lq2/f;->p(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2, p3}, Lq2/f;->p(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    invoke-static {p0, p1}, Lq2/f;->k(J)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p2, p3}, Lq2/f;->k(J)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-float/2addr v0, v1

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    float-to-int v0, v0

    .line 31
    invoke-static {p0, p1}, Lq2/f;->k(J)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {p2, p3}, Lq2/f;->k(J)F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v4, 0x0

    .line 44
    cmpg-float v1, v1, v4

    .line 45
    .line 46
    if-gez v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-static {p0, p1}, Lq2/f;->o(J)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {p2, p3}, Lq2/f;->o(J)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eq v1, p2, :cond_4

    .line 58
    .line 59
    invoke-static {p0, p1}, Lq2/f;->o(J)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    return v3

    .line 66
    :cond_3
    return v2

    .line 67
    :cond_4
    :goto_0
    return v0
.end method

.method public static final i(Lq2/k;Lf1/t1;)Ljava/lang/Object;
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Cannot read CompositionLocal because the Modifier node is not currently attached."

    .line 11
    .line 12
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Lq2/h0;->A:Lf1/a0;

    .line 20
    .line 21
    check-cast p0, Ln1/g;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final j(Lq2/d2;)Lq2/d2;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 16
    .line 17
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 18
    .line 19
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_b

    .line 25
    .line 26
    iget-object v3, v1, Lq2/h0;->E:Lq2/d1;

    .line 27
    .line 28
    iget-object v3, v3, Lq2/d1;->f:Lr1/o;

    .line 29
    .line 30
    iget v3, v3, Lr1/o;->d:I

    .line 31
    .line 32
    const/high16 v4, 0x40000

    .line 33
    .line 34
    and-int/2addr v3, v4

    .line 35
    if-eqz v3, :cond_9

    .line 36
    .line 37
    :goto_1
    if-eqz v0, :cond_9

    .line 38
    .line 39
    iget v3, v0, Lr1/o;->c:I

    .line 40
    .line 41
    and-int/2addr v3, v4

    .line 42
    if-eqz v3, :cond_8

    .line 43
    .line 44
    move-object v3, v0

    .line 45
    move-object v5, v2

    .line 46
    :goto_2
    if-eqz v3, :cond_8

    .line 47
    .line 48
    instance-of v6, v3, Lq2/d2;

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    check-cast v3, Lq2/d2;

    .line 53
    .line 54
    invoke-interface {p0}, Lq2/d2;->j()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-interface {v3}, Lq2/d2;->j()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v6, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_7

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-ne v6, v7, :cond_7

    .line 77
    .line 78
    return-object v3

    .line 79
    :cond_1
    iget v6, v3, Lr1/o;->c:I

    .line 80
    .line 81
    and-int/2addr v6, v4

    .line 82
    if-eqz v6, :cond_7

    .line 83
    .line 84
    instance-of v6, v3, Lq2/m;

    .line 85
    .line 86
    if-eqz v6, :cond_7

    .line 87
    .line 88
    move-object v6, v3

    .line 89
    check-cast v6, Lq2/m;

    .line 90
    .line 91
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    :goto_3
    const/4 v8, 0x1

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    iget v9, v6, Lr1/o;->c:I

    .line 98
    .line 99
    and-int/2addr v9, v4

    .line 100
    if-eqz v9, :cond_5

    .line 101
    .line 102
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    if-ne v7, v8, :cond_2

    .line 105
    .line 106
    move-object v3, v6

    .line 107
    goto :goto_4

    .line 108
    :cond_2
    if-nez v5, :cond_3

    .line 109
    .line 110
    new-instance v5, Lh1/e;

    .line 111
    .line 112
    const/16 v8, 0x10

    .line 113
    .line 114
    new-array v8, v8, [Lr1/o;

    .line 115
    .line 116
    invoke-direct {v5, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-virtual {v5, v3}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v3, v2

    .line 125
    :cond_4
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_4
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    if-ne v7, v8, :cond_7

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_2

    .line 139
    :cond_8
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_9
    invoke-virtual {v1}, Lq2/h0;->v()Lq2/h0;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_a

    .line 147
    .line 148
    iget-object v0, v1, Lq2/h0;->E:Lq2/d1;

    .line 149
    .line 150
    if-eqz v0, :cond_a

    .line 151
    .line 152
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_a
    move-object v0, v2

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_b
    return-object v2
.end method

.method public static final k(J)F
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long/2addr p0, v0

    .line 4
    long-to-int p1, p0

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final l(Lq2/o;)V
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p0, v0}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lq2/h1;->N0()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static final m(Lq2/x;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lq2/h0;->E()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final n(Lq2/y1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lq2/h0;->G()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final o(J)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    and-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static final p(J)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    and-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static final q(Lq2/h0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->g:Lq2/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lq2/h0;->g:Lq2/h0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lq2/h0;->F:Lq2/l0;

    .line 18
    .line 19
    iget-boolean p0, p0, Lq2/l0;->b:Z

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_2
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static final r(Lr1/o;Lf9/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr1/o;->g:Lq2/m1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq2/m1;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    check-cast v1, Lq2/l1;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lq2/m1;-><init>(Lq2/l1;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lr1/o;->g:Lq2/m1;

    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lr2/u;

    .line 20
    .line 21
    invoke-virtual {p0}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v1, Lq2/e;->f:Lq2/e;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1, p1}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final s(Lq2/l;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lq2/h0;->s:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lr2/u;

    .line 15
    .line 16
    invoke-static {}, Lr2/u;->l()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lr2/u;->F:Ls1/c;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Ls1/c;->d:Lz2/a;

    .line 27
    .line 28
    iget-object v1, v1, Lz2/a;->a:Le7/l;

    .line 29
    .line 30
    iget v2, p0, Lq2/h0;->b:I

    .line 31
    .line 32
    new-instance v3, Ls1/b;

    .line 33
    .line 34
    invoke-direct {v3, v0, p0}, Ls1/b;-><init>(Ls1/c;Lq2/h0;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Le7/l;->i(ILf9/p;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public static final t(Lq2/l;I)Lq2/h1;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-object v0, v0, Lr1/o;->h:Lq2/h1;

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lq2/h1;->G0()Lr1/o;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v1, p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lq2/i1;->g(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget-object p0, v0, Lq2/h1;->p:Lq2/h1;

    .line 25
    .line 26
    invoke-static {p0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final u(Lq2/l;)Lq2/h1;
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Cannot get LayoutCoordinates, Modifier.Node is not attached."

    .line 11
    .line 12
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    invoke-static {p0, v0}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "LayoutCoordinates is not attached."

    .line 29
    .line 30
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object p0
.end method

.method public static final v(Lq2/l;)Lq2/h0;
    .locals 0

    .line 1
    check-cast p0, Lr1/o;

    .line 2
    .line 3
    iget-object p0, p0, Lr1/o;->a:Lr1/o;

    .line 4
    .line 5
    iget-object p0, p0, Lr1/o;->h:Lq2/h1;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lq2/h1;->o:Lq2/h0;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Cannot obtain node coordinator. Is the Modifier.Node attached?"

    .line 13
    .line 14
    invoke-static {p0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    throw p0
.end method

.method public static final w(Lq2/l;)Lq2/q1;
    .locals 0

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lq2/h0;->m:Lq2/q1;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "This node does not have an owner."

    .line 11
    .line 12
    invoke-static {p0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
.end method

.method public static final x(Lq2/l;)Landroid/view/View;
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Cannot get View because the Modifier node is not currently attached."

    .line 11
    .line 12
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/View;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final y(Lq2/l;Ljava/lang/Object;Lf9/k;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 16
    .line 17
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 18
    .line 19
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    if-eqz p0, :cond_e

    .line 24
    .line 25
    iget-object v1, p0, Lq2/h0;->E:Lq2/d1;

    .line 26
    .line 27
    iget-object v1, v1, Lq2/d1;->f:Lr1/o;

    .line 28
    .line 29
    iget v1, v1, Lr1/o;->d:I

    .line 30
    .line 31
    const/high16 v2, 0x40000

    .line 32
    .line 33
    and-int/2addr v1, v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v1, :cond_c

    .line 36
    .line 37
    :goto_1
    if-eqz v0, :cond_c

    .line 38
    .line 39
    iget v1, v0, Lr1/o;->c:I

    .line 40
    .line 41
    and-int/2addr v1, v2

    .line 42
    if-eqz v1, :cond_b

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    move-object v4, v3

    .line 46
    :goto_2
    if-eqz v1, :cond_b

    .line 47
    .line 48
    instance-of v5, v1, Lq2/d2;

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    check-cast v1, Lq2/d2;

    .line 54
    .line 55
    invoke-interface {v1}, Lq2/d2;->j()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-interface {p2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    :cond_1
    if-nez v6, :cond_a

    .line 76
    .line 77
    goto :goto_7

    .line 78
    :cond_2
    iget v5, v1, Lr1/o;->c:I

    .line 79
    .line 80
    and-int/2addr v5, v2

    .line 81
    const/4 v7, 0x0

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const/4 v5, 0x0

    .line 87
    :goto_3
    if-eqz v5, :cond_a

    .line 88
    .line 89
    instance-of v5, v1, Lq2/m;

    .line 90
    .line 91
    if-eqz v5, :cond_a

    .line 92
    .line 93
    move-object v5, v1

    .line 94
    check-cast v5, Lq2/m;

    .line 95
    .line 96
    iget-object v5, v5, Lq2/m;->p:Lr1/o;

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    :goto_4
    if-eqz v5, :cond_9

    .line 100
    .line 101
    iget v9, v5, Lr1/o;->c:I

    .line 102
    .line 103
    and-int/2addr v9, v2

    .line 104
    if-eqz v9, :cond_4

    .line 105
    .line 106
    const/4 v9, 0x1

    .line 107
    goto :goto_5

    .line 108
    :cond_4
    const/4 v9, 0x0

    .line 109
    :goto_5
    if-eqz v9, :cond_8

    .line 110
    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    if-ne v8, v6, :cond_5

    .line 114
    .line 115
    move-object v1, v5

    .line 116
    goto :goto_6

    .line 117
    :cond_5
    if-nez v4, :cond_6

    .line 118
    .line 119
    new-instance v4, Lh1/e;

    .line 120
    .line 121
    const/16 v9, 0x10

    .line 122
    .line 123
    new-array v9, v9, [Lr1/o;

    .line 124
    .line 125
    invoke-direct {v4, v9}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    if-eqz v1, :cond_7

    .line 129
    .line 130
    invoke-virtual {v4, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    move-object v1, v3

    .line 134
    :cond_7
    invoke-virtual {v4, v5}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    :goto_6
    iget-object v5, v5, Lr1/o;->f:Lr1/o;

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_9
    if-ne v8, v6, :cond_a

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_a
    invoke-static {v4}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    goto :goto_2

    .line 148
    :cond_b
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_c
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-eqz p0, :cond_d

    .line 156
    .line 157
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 158
    .line 159
    if-eqz v0, :cond_d

    .line 160
    .line 161
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_d
    move-object v0, v3

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_e
    :goto_7
    return-void
.end method

.method public static final z(Lq2/d2;Lf9/k;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lr1/o;

    .line 3
    .line 4
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 16
    .line 17
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 18
    .line 19
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    if-eqz v1, :cond_e

    .line 24
    .line 25
    iget-object v2, v1, Lq2/h0;->E:Lq2/d1;

    .line 26
    .line 27
    iget-object v2, v2, Lq2/d1;->f:Lr1/o;

    .line 28
    .line 29
    iget v2, v2, Lr1/o;->d:I

    .line 30
    .line 31
    const/high16 v3, 0x40000

    .line 32
    .line 33
    and-int/2addr v2, v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_c

    .line 36
    .line 37
    :goto_1
    if-eqz v0, :cond_c

    .line 38
    .line 39
    iget v2, v0, Lr1/o;->c:I

    .line 40
    .line 41
    and-int/2addr v2, v3

    .line 42
    if-eqz v2, :cond_b

    .line 43
    .line 44
    move-object v2, v0

    .line 45
    move-object v5, v4

    .line 46
    :goto_2
    if-eqz v2, :cond_b

    .line 47
    .line 48
    instance-of v6, v2, Lq2/d2;

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    check-cast v2, Lq2/d2;

    .line 54
    .line 55
    invoke-interface {p0}, Lq2/d2;->j()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-interface {v2}, Lq2/d2;->j()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    if-ne v6, v8, :cond_1

    .line 78
    .line 79
    invoke-interface {p1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    :cond_1
    if-nez v7, :cond_a

    .line 90
    .line 91
    goto :goto_7

    .line 92
    :cond_2
    iget v6, v2, Lr1/o;->c:I

    .line 93
    .line 94
    and-int/2addr v6, v3

    .line 95
    const/4 v8, 0x0

    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const/4 v6, 0x0

    .line 101
    :goto_3
    if-eqz v6, :cond_a

    .line 102
    .line 103
    instance-of v6, v2, Lq2/m;

    .line 104
    .line 105
    if-eqz v6, :cond_a

    .line 106
    .line 107
    move-object v6, v2

    .line 108
    check-cast v6, Lq2/m;

    .line 109
    .line 110
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    :goto_4
    if-eqz v6, :cond_9

    .line 114
    .line 115
    iget v10, v6, Lr1/o;->c:I

    .line 116
    .line 117
    and-int/2addr v10, v3

    .line 118
    if-eqz v10, :cond_4

    .line 119
    .line 120
    const/4 v10, 0x1

    .line 121
    goto :goto_5

    .line 122
    :cond_4
    const/4 v10, 0x0

    .line 123
    :goto_5
    if-eqz v10, :cond_8

    .line 124
    .line 125
    add-int/lit8 v9, v9, 0x1

    .line 126
    .line 127
    if-ne v9, v7, :cond_5

    .line 128
    .line 129
    move-object v2, v6

    .line 130
    goto :goto_6

    .line 131
    :cond_5
    if-nez v5, :cond_6

    .line 132
    .line 133
    new-instance v5, Lh1/e;

    .line 134
    .line 135
    const/16 v10, 0x10

    .line 136
    .line 137
    new-array v10, v10, [Lr1/o;

    .line 138
    .line 139
    invoke-direct {v5, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    if-eqz v2, :cond_7

    .line 143
    .line 144
    invoke-virtual {v5, v2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    move-object v2, v4

    .line 148
    :cond_7
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_6
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    if-ne v9, v7, :cond_a

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_a
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    goto :goto_2

    .line 162
    :cond_b
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_c
    invoke-virtual {v1}, Lq2/h0;->v()Lq2/h0;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_d

    .line 170
    .line 171
    iget-object v0, v1, Lq2/h0;->E:Lq2/d1;

    .line 172
    .line 173
    if-eqz v0, :cond_d

    .line 174
    .line 175
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_d
    move-object v0, v4

    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_e
    :goto_7
    return-void
.end method
