.class public final Lz/f;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/k;
.implements Lq2/w;


# instance fields
.field public o:Lz/w0;

.field public final p:Lz/s1;

.field public q:Z

.field public final r:Lh0/k;

.field public s:Lo2/w;

.field public t:Z

.field public u:Z

.field public v:J

.field public w:Z


# direct methods
.method public constructor <init>(Lz/w0;Lz/s1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/f;->o:Lz/w0;

    .line 5
    .line 6
    iput-object p2, p0, Lz/f;->p:Lz/s1;

    .line 7
    .line 8
    iput-boolean p3, p0, Lz/f;->q:Z

    .line 9
    .line 10
    new-instance p1, Lh0/k;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-direct {p1, p2}, Lh0/k;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lz/f;->r:Lh0/k;

    .line 17
    .line 18
    const-wide/16 p1, 0x0

    .line 19
    .line 20
    iput-wide p1, p0, Lz/f;->v:J

    .line 21
    .line 22
    return-void
.end method

.method public static final A0(Lz/f;Lz/c;)F
    .locals 14

    .line 1
    iget-wide v0, p0, Lz/f;->v:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Ln3/l;->a(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lz/f;->r:Lh0/k;

    .line 14
    .line 15
    iget-object v0, v0, Lh0/k;->a:Lh1/e;

    .line 16
    .line 17
    iget v1, v0, Lh1/e;->c:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    sub-int/2addr v1, v2

    .line 21
    iget-object v0, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    array-length v3, v0

    .line 24
    const/16 v4, 0x20

    .line 25
    .line 26
    const-wide v5, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    if-ge v1, v3, :cond_5

    .line 33
    .line 34
    move-object v3, v7

    .line 35
    :goto_0
    if-ltz v1, :cond_6

    .line 36
    .line 37
    aget-object v8, v0, v1

    .line 38
    .line 39
    check-cast v8, Lz/e;

    .line 40
    .line 41
    iget-object v8, v8, Lz/e;->a:Li0/d;

    .line 42
    .line 43
    invoke-virtual {v8}, Li0/d;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Lx1/c;

    .line 48
    .line 49
    if-eqz v8, :cond_4

    .line 50
    .line 51
    invoke-virtual {v8}, Lx1/c;->c()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    iget-wide v11, p0, Lz/f;->v:J

    .line 56
    .line 57
    invoke-static {v11, v12}, La/a;->S(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v11

    .line 61
    iget-object v13, p0, Lz/f;->o:Lz/w0;

    .line 62
    .line 63
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    if-eqz v13, :cond_2

    .line 68
    .line 69
    if-ne v13, v2, :cond_1

    .line 70
    .line 71
    shr-long/2addr v9, v4

    .line 72
    long-to-int v10, v9

    .line 73
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    shr-long v10, v11, v4

    .line 78
    .line 79
    long-to-int v11, v10

    .line 80
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    new-instance p0, Lac/p;

    .line 90
    .line 91
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    and-long/2addr v9, v5

    .line 96
    long-to-int v10, v9

    .line 97
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    and-long/2addr v11, v5

    .line 102
    long-to-int v10, v11

    .line 103
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    :goto_1
    if-gtz v9, :cond_3

    .line 112
    .line 113
    move-object v3, v8

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    if-nez v3, :cond_6

    .line 116
    .line 117
    move-object v3, v8

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    move-object v3, v7

    .line 123
    :cond_6
    :goto_3
    if-nez v3, :cond_9

    .line 124
    .line 125
    iget-boolean v0, p0, Lz/f;->t:Z

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    invoke-virtual {p0}, Lz/f;->B0()Lx1/c;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    :cond_7
    if-nez v7, :cond_8

    .line 134
    .line 135
    :goto_4
    const/4 p0, 0x0

    .line 136
    return p0

    .line 137
    :cond_8
    move-object v3, v7

    .line 138
    :cond_9
    iget-wide v0, p0, Lz/f;->v:J

    .line 139
    .line 140
    invoke-static {v0, v1}, La/a;->S(J)J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    iget-object p0, p0, Lz/f;->o:Lz/w0;

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_b

    .line 151
    .line 152
    if-ne p0, v2, :cond_a

    .line 153
    .line 154
    iget p0, v3, Lx1/c;->a:F

    .line 155
    .line 156
    iget v2, v3, Lx1/c;->c:F

    .line 157
    .line 158
    sub-float/2addr v2, p0

    .line 159
    shr-long/2addr v0, v4

    .line 160
    long-to-int v1, v0

    .line 161
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-interface {p1, p0, v2, v0}, Lz/c;->a(FFF)F

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    return p0

    .line 170
    :cond_a
    new-instance p0, Lac/p;

    .line 171
    .line 172
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_b
    iget p0, v3, Lx1/c;->b:F

    .line 177
    .line 178
    iget v2, v3, Lx1/c;->d:F

    .line 179
    .line 180
    sub-float/2addr v2, p0

    .line 181
    and-long/2addr v0, v5

    .line 182
    long-to-int v1, v0

    .line 183
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-interface {p1, p0, v2, v0}, Lz/c;->a(FFF)F

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    return p0
.end method


# virtual methods
.method public final B0()Lx1/c;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p0}, Lq2/f;->u(Lq2/l;)Lq2/h1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lz/f;->s:Lo2/w;

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-interface {v2}, Lo2/w;->isAttached()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v2, v1

    .line 23
    :goto_0
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v2, v1}, Lq2/h1;->h(Lo2/w;Z)Lx1/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final C0(Lx1/c;J)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lz/f;->E0(Lx1/c;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const/16 p3, 0x20

    .line 6
    .line 7
    shr-long v0, p1, p3

    .line 8
    .line 9
    long-to-int p3, v0

    .line 10
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/high16 v0, 0x3f000000    # 0.5f

    .line 19
    .line 20
    cmpg-float p3, p3, v0

    .line 21
    .line 22
    if-gtz p3, :cond_0

    .line 23
    .line 24
    const-wide v1, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr p1, v1

    .line 30
    long-to-int p2, p1

    .line 31
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    cmpg-float p1, p1, v0

    .line 40
    .line 41
    if-gtz p1, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public final D0()V
    .locals 8

    .line 1
    sget-object v0, Lz/d;->a:Lf1/c0;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v5, v1

    .line 8
    check-cast v5, Lz/c;

    .line 9
    .line 10
    iget-boolean v1, p0, Lz/f;->w:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "launchAnimation called when previous animation was running"

    .line 15
    .line 16
    invoke-static {v1}, Lc0/b;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v4, Lz/f2;

    .line 20
    .line 21
    invoke-static {p0, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lz/c;

    .line 26
    .line 27
    invoke-interface {v0}, Lz/c;->b()Lv/g0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v4, v0}, Lz/f2;-><init>(Lv/j;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Ldc/i;

    .line 39
    .line 40
    const/16 v7, 0x9

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v3, p0

    .line 44
    invoke-direct/range {v2 .. v7}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-static {v0, v6, v2, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final E0(Lx1/c;J)J
    .locals 6

    .line 1
    invoke-static {p2, p3}, La/a;->S(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Lz/f;->o:Lz/w0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide v2, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/16 v4, 0x20

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v0, v5, :cond_0

    .line 23
    .line 24
    sget-object v0, Lz/d;->a:Lf1/c0;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lz/c;

    .line 31
    .line 32
    iget v5, p1, Lx1/c;->a:F

    .line 33
    .line 34
    iget p1, p1, Lx1/c;->c:F

    .line 35
    .line 36
    sub-float/2addr p1, v5

    .line 37
    shr-long/2addr p2, v4

    .line 38
    long-to-int p3, p2

    .line 39
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-interface {v0, v5, p1, p2}, Lz/c;->a(FFF)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    int-to-long p1, p1

    .line 52
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    int-to-long v0, p3

    .line 57
    shl-long/2addr p1, v4

    .line 58
    :goto_0
    and-long/2addr v0, v2

    .line 59
    or-long/2addr p1, v0

    .line 60
    return-wide p1

    .line 61
    :cond_0
    new-instance p1, Lac/p;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    sget-object v0, Lz/d;->a:Lf1/c0;

    .line 68
    .line 69
    invoke-static {p0, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lz/c;

    .line 74
    .line 75
    iget v5, p1, Lx1/c;->b:F

    .line 76
    .line 77
    iget p1, p1, Lx1/c;->d:F

    .line 78
    .line 79
    sub-float/2addr p1, v5

    .line 80
    and-long/2addr p2, v2

    .line 81
    long-to-int p3, p2

    .line 82
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-interface {v0, v5, p1, p2}, Lz/c;->a(FFF)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    int-to-long p2, p2

    .line 95
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    int-to-long v0, p1

    .line 100
    shl-long p1, p2, v4

    .line 101
    .line 102
    goto :goto_0
.end method

.method public final synthetic U(Lo2/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lz/f;->v:J

    .line 2
    .line 3
    iput-wide p1, p0, Lz/f;->v:J

    .line 4
    .line 5
    iget-object v2, p0, Lz/f;->o:Lz/w0;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    shr-long/2addr p1, v2

    .line 19
    long-to-int p2, p1

    .line 20
    shr-long v4, v0, v2

    .line 21
    .line 22
    long-to-int p1, v4

    .line 23
    invoke-static {p2, p1}, Lg9/l;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lac/p;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    const-wide v4, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr p1, v4

    .line 40
    long-to-int p2, p1

    .line 41
    and-long/2addr v4, v0

    .line 42
    long-to-int p1, v4

    .line 43
    invoke-static {p2, p1}, Lg9/l;->f(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :goto_0
    if-ltz p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-boolean p1, p0, Lz/f;->w:Z

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    iget-boolean p1, p0, Lz/f;->t:Z

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lz/f;->B0()Lx1/c;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0, p1, v0, v1}, Lz/f;->C0(Lx1/c;J)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iput-boolean v3, p0, Lz/f;->u:Z

    .line 73
    .line 74
    :cond_5
    :goto_1
    return-void
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
