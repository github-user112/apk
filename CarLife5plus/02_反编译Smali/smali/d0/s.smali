.class public final Ld0/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/m0;
.implements Ld0/j0;


# instance fields
.field public final a:Ld0/g;

.field public final b:Lr1/f;


# direct methods
.method public constructor <init>(Ld0/g;Lr1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/s;->a:Ld0/g;

    .line 5
    .line 6
    iput-object p2, p0, Ld0/s;->b:Lr1/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lo2/r;Ljava/util/List;I)I
    .locals 10

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 2
    .line 3
    invoke-interface {v0}, Ld0/g;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Ln3/c;->b0(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    mul-int v0, v0, p1

    .line 26
    .line 27
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    const v6, 0x7fffffff

    .line 40
    .line 41
    .line 42
    if-ge v3, v0, :cond_4

    .line 43
    .line 44
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lo2/l0;

    .line 49
    .line 50
    invoke-static {v7}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-static {v8}, Ld0/c;->c(Ld0/k0;)F

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    cmpg-float v9, v8, v2

    .line 59
    .line 60
    if-nez v9, :cond_2

    .line 61
    .line 62
    if-ne p3, v6, :cond_1

    .line 63
    .line 64
    const v8, 0x7fffffff

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sub-int v8, p3, p1

    .line 69
    .line 70
    :goto_1
    invoke-interface {v7, v6}, Lo2/l0;->c(I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    add-int/2addr p1, v6

    .line 79
    invoke-interface {v7, v6}, Lo2/l0;->l(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    cmpl-float v6, v8, v2

    .line 89
    .line 90
    if-lez v6, :cond_3

    .line 91
    .line 92
    add-float/2addr v4, v8

    .line 93
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    cmpg-float v0, v4, v2

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    if-ne p3, v6, :cond_6

    .line 103
    .line 104
    const p1, 0x7fffffff

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    sub-int/2addr p3, p1

    .line 109
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    int-to-float p1, p1

    .line 114
    div-float/2addr p1, v4

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    :goto_4
    if-ge v1, p3, :cond_9

    .line 124
    .line 125
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lo2/l0;

    .line 130
    .line 131
    invoke-static {v0}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Ld0/c;->c(Ld0/k0;)F

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    cmpl-float v4, v3, v2

    .line 140
    .line 141
    if-lez v4, :cond_8

    .line 142
    .line 143
    if-eq p1, v6, :cond_7

    .line 144
    .line 145
    int-to-float v4, p1

    .line 146
    mul-float v4, v4, v3

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    goto :goto_5

    .line 153
    :cond_7
    const v3, 0x7fffffff

    .line 154
    .line 155
    .line 156
    :goto_5
    invoke-interface {v0, v3}, Lo2/l0;->l(I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    move v5, v0

    .line 165
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    return v5
.end method

.method public final b(Lo2/v0;)I
    .locals 0

    .line 1
    iget p1, p1, Lo2/v0;->a:I

    .line 2
    .line 3
    return p1
.end method

.method public final c(Lo2/o0;Ljava/util/List;J)Lo2/n0;
    .locals 10

    .line 1
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object p3, p0, Ld0/s;->a:Ld0/g;

    .line 18
    .line 19
    invoke-interface {p3}, Ld0/g;->a()F

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-interface {p1, p3}, Ln3/c;->b0(F)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    new-array v8, p3, [Lo2/v0;

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    move-object v0, p0

    .line 38
    move-object v6, p1

    .line 39
    move-object v7, p2

    .line 40
    invoke-static/range {v0 .. v9}, Ld0/c;->d(Ld0/j0;IIIIILo2/o0;Ljava/util/List;[Lo2/v0;I)Lo2/n0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public final d(IIIZ)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    invoke-static {v0, p3, p1, p2}, Ln3/b;->a(IIII)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    return-wide p1

    .line 9
    :cond_0
    invoke-static {v0, p3, p1, p2}, Lc7/a;->p(IIII)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public final e([Lo2/v0;Lo2/o0;[III)Lo2/n0;
    .locals 6

    .line 1
    new-instance v0, Ld0/r;

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    move v3, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Ld0/r;-><init>([Lo2/v0;Ld0/s;ILo2/o0;[I)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ls8/x;->a:Ls8/x;

    .line 12
    .line 13
    invoke-interface {v4, v3, p4, p1, v0}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
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
    instance-of v0, p1, Ld0/s;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Ld0/s;

    .line 10
    .line 11
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 12
    .line 13
    iget-object v1, p1, Ld0/s;->a:Ld0/g;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Ld0/s;->b:Lr1/f;

    .line 23
    .line 24
    iget-object p1, p1, Ld0/s;->b:Lr1/f;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lr1/f;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public final f(Lo2/r;Ljava/util/List;I)I
    .locals 10

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 2
    .line 3
    invoke-interface {v0}, Ld0/g;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Ln3/c;->b0(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    mul-int v0, v0, p1

    .line 26
    .line 27
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    const v6, 0x7fffffff

    .line 40
    .line 41
    .line 42
    if-ge v3, v0, :cond_4

    .line 43
    .line 44
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lo2/l0;

    .line 49
    .line 50
    invoke-static {v7}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-static {v8}, Ld0/c;->c(Ld0/k0;)F

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    cmpg-float v9, v8, v2

    .line 59
    .line 60
    if-nez v9, :cond_2

    .line 61
    .line 62
    if-ne p3, v6, :cond_1

    .line 63
    .line 64
    const v8, 0x7fffffff

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sub-int v8, p3, p1

    .line 69
    .line 70
    :goto_1
    invoke-interface {v7, v6}, Lo2/l0;->c(I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    add-int/2addr p1, v6

    .line 79
    invoke-interface {v7, v6}, Lo2/l0;->r(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    cmpl-float v6, v8, v2

    .line 89
    .line 90
    if-lez v6, :cond_3

    .line 91
    .line 92
    add-float/2addr v4, v8

    .line 93
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    cmpg-float v0, v4, v2

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    if-ne p3, v6, :cond_6

    .line 103
    .line 104
    const p1, 0x7fffffff

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    sub-int/2addr p3, p1

    .line 109
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    int-to-float p1, p1

    .line 114
    div-float/2addr p1, v4

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    :goto_4
    if-ge v1, p3, :cond_9

    .line 124
    .line 125
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lo2/l0;

    .line 130
    .line 131
    invoke-static {v0}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Ld0/c;->c(Ld0/k0;)F

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    cmpl-float v4, v3, v2

    .line 140
    .line 141
    if-lez v4, :cond_8

    .line 142
    .line 143
    if-eq p1, v6, :cond_7

    .line 144
    .line 145
    int-to-float v4, p1

    .line 146
    mul-float v4, v4, v3

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    goto :goto_5

    .line 153
    :cond_7
    const v3, 0x7fffffff

    .line 154
    .line 155
    .line 156
    :goto_5
    invoke-interface {v0, v3}, Lo2/l0;->r(I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    move v5, v0

    .line 165
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    return v5
.end method

.method public final g(Lo2/v0;)I
    .locals 0

    .line 1
    iget p1, p1, Lo2/v0;->b:I

    .line 2
    .line 3
    return p1
.end method

.method public final h(Lo2/r;Ljava/util/List;I)I
    .locals 9

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 2
    .line 3
    invoke-interface {v0}, Ld0/g;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Ln3/c;->b0(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_3

    .line 28
    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lo2/l0;

    .line 34
    .line 35
    invoke-static {v6}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7}, Ld0/c;->c(Ld0/k0;)F

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-interface {v6, p3}, Lo2/l0;->c(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    cmpg-float v8, v7, v2

    .line 48
    .line 49
    if-nez v8, :cond_1

    .line 50
    .line 51
    add-int/2addr v4, v6

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    cmpl-float v8, v7, v2

    .line 54
    .line 55
    if-lez v8, :cond_2

    .line 56
    .line 57
    add-float/2addr v5, v7

    .line 58
    int-to-float v6, v6

    .line 59
    div-float/2addr v6, v7

    .line 60
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    int-to-float p3, v3

    .line 72
    mul-float p3, p3, v5

    .line 73
    .line 74
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    add-int/2addr p3, v4

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    add-int/lit8 p2, p2, -0x1

    .line 84
    .line 85
    mul-int p2, p2, p1

    .line 86
    .line 87
    add-int/2addr p2, p3

    .line 88
    return p2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Ld0/s;->b:Lr1/f;

    .line 10
    .line 11
    iget v1, v1, Lr1/f;->a:F

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1
.end method

.method public final i(ILo2/o0;[I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Ld0/g;->b(ILo2/o0;[I[I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lo2/r;Ljava/util/List;I)I
    .locals 9

    .line 1
    iget-object v0, p0, Ld0/s;->a:Ld0/g;

    .line 2
    .line 3
    invoke-interface {v0}, Ld0/g;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Ln3/c;->b0(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_3

    .line 28
    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lo2/l0;

    .line 34
    .line 35
    invoke-static {v6}, Ld0/c;->b(Lo2/l0;)Ld0/k0;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7}, Ld0/c;->c(Ld0/k0;)F

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-interface {v6, p3}, Lo2/l0;->I(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    cmpg-float v8, v7, v2

    .line 48
    .line 49
    if-nez v8, :cond_1

    .line 50
    .line 51
    add-int/2addr v4, v6

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    cmpl-float v8, v7, v2

    .line 54
    .line 55
    if-lez v8, :cond_2

    .line 56
    .line 57
    add-float/2addr v5, v7

    .line 58
    int-to-float v6, v6

    .line 59
    div-float/2addr v6, v7

    .line 60
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    int-to-float p3, v3

    .line 72
    mul-float p3, p3, v5

    .line 73
    .line 74
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    add-int/2addr p3, v4

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    add-int/lit8 p2, p2, -0x1

    .line 84
    .line 85
    mul-int p2, p2, p1

    .line 86
    .line 87
    add-int/2addr p2, p3

    .line 88
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ColumnMeasurePolicy(verticalArrangement="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ld0/s;->a:Ld0/g;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", horizontalAlignment="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ld0/s;->b:Lr1/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
