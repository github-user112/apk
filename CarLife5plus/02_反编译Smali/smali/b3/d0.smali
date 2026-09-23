.class public abstract Lb3/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lu0/j;

.field public static final b:Lu0/j;

.field public static final c:Lu0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lac/q;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lac/q;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, La8/v0;

    .line 9
    .line 10
    const/16 v2, 0x1b

    .line 11
    .line 12
    invoke-direct {v1, v2}, La8/v0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lu0/j;

    .line 16
    .line 17
    const/16 v3, 0x13

    .line 18
    .line 19
    invoke-direct {v2, v3, v0, v1}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lb3/d0;->a:Lu0/j;

    .line 23
    .line 24
    new-instance v0, Lac/q;

    .line 25
    .line 26
    const/16 v1, 0x1a

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lac/q;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, La8/v0;

    .line 32
    .line 33
    const/16 v2, 0x1c

    .line 34
    .line 35
    invoke-direct {v1, v2}, La8/v0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lu0/j;

    .line 39
    .line 40
    invoke-direct {v2, v3, v0, v1}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lb3/d0;->b:Lu0/j;

    .line 44
    .line 45
    new-instance v0, Lac/q;

    .line 46
    .line 47
    const/16 v1, 0x1b

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lac/q;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, La8/v0;

    .line 53
    .line 54
    const/16 v2, 0x1d

    .line 55
    .line 56
    invoke-direct {v1, v2}, La8/v0;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lu0/j;

    .line 60
    .line 61
    invoke-direct {v2, v3, v0, v1}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sput-object v2, Lb3/d0;->c:Lu0/j;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;Lb3/o0;JLn3/c;Lf3/d;II)Lb3/a;
    .locals 7

    .line 1
    move-object v1, p0

    .line 2
    new-instance p0, Lb3/a;

    .line 3
    .line 4
    new-instance v0, Lj3/d;

    .line 5
    .line 6
    sget-object v3, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    move-object v4, v3

    .line 9
    move-object v2, p1

    .line 10
    move-object v6, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lj3/d;-><init>(Ljava/lang/String;Lb3/o0;Ljava/util/List;Ljava/util/List;Lf3/d;Ln3/c;)V

    .line 13
    .line 14
    .line 15
    move-wide p4, p2

    .line 16
    move-object p1, v0

    .line 17
    const/4 p3, 0x1

    .line 18
    move p2, p6

    .line 19
    invoke-direct/range {p0 .. p5}, Lb3/a;-><init>(Lj3/d;IIJ)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public static final b(II)J
    .locals 4

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "start and end cannot be negative. [start: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", end: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x5d

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    int-to-long v0, p0

    .line 37
    const/16 p0, 0x20

    .line 38
    .line 39
    shl-long/2addr v0, p0

    .line 40
    int-to-long p0, p1

    .line 41
    const-wide v2, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr p0, v2

    .line 47
    or-long/2addr p0, v0

    .line 48
    sget v0, Lb3/n0;->c:I

    .line 49
    .line 50
    return-wide p0
.end method

.method public static final c(IJ)J
    .locals 5

    .line 1
    sget v0, Lb3/n0;->c:I

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    shr-long v0, p1, v0

    .line 6
    .line 7
    long-to-int v1, v0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    if-le v2, p0, :cond_1

    .line 15
    .line 16
    move v2, p0

    .line 17
    :cond_1
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v3, p1

    .line 23
    long-to-int v4, v3

    .line 24
    if-gez v4, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v0, v4

    .line 28
    :goto_1
    if-le v0, p0, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move p0, v0

    .line 32
    :goto_2
    if-ne v2, v1, :cond_5

    .line 33
    .line 34
    if-eq p0, v4, :cond_4

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_4
    return-wide p1

    .line 38
    :cond_5
    :goto_3
    invoke-static {v2, p0}, Lb3/d0;->b(II)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    return-wide p0
.end method

.method public static final d(ILjava/util/List;)I
    .locals 7

    .line 1
    invoke-static {p1}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lb3/r;

    .line 6
    .line 7
    iget v0, v0, Lb3/r;->c:I

    .line 8
    .line 9
    invoke-static {p1}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lb3/r;

    .line 14
    .line 15
    iget v1, v1, Lb3/r;->c:I

    .line 16
    .line 17
    if-gt p0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Index "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " should be less or equal than last line\'s end "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    sub-int/2addr v0, v1

    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_1
    if-gt v3, v0, :cond_4

    .line 54
    .line 55
    add-int v4, v3, v0

    .line 56
    .line 57
    ushr-int/2addr v4, v1

    .line 58
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lb3/r;

    .line 63
    .line 64
    iget v6, v5, Lb3/r;->b:I

    .line 65
    .line 66
    if-le v6, p0, :cond_1

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    iget v5, v5, Lb3/r;->c:I

    .line 71
    .line 72
    if-gt v5, p0, :cond_2

    .line 73
    .line 74
    const/4 v5, -0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/4 v5, 0x0

    .line 77
    :goto_2
    if-gez v5, :cond_3

    .line 78
    .line 79
    add-int/lit8 v3, v4, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-lez v5, :cond_5

    .line 83
    .line 84
    add-int/lit8 v0, v4, -0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    add-int/2addr v3, v1

    .line 88
    neg-int v4, v3

    .line 89
    :cond_5
    if-ltz v4, :cond_6

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ge v4, v0, :cond_6

    .line 96
    .line 97
    return v4

    .line 98
    :cond_6
    const-string v0, "Found paragraph index "

    .line 99
    .line 100
    const-string v1, " should be in range [0, "

    .line 101
    .line 102
    invoke-static {v0, v1, v4}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ").\nDebug info: index="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p0, ", paragraphs=["

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    new-instance p0, La8/v0;

    .line 127
    .line 128
    const/4 v1, 0x4

    .line 129
    invoke-direct {p0, v1}, La8/v0;-><init>(I)V

    .line 130
    .line 131
    .line 132
    const/16 v1, 0x1f

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-static {p1, v2, p0, v1}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 p0, 0x5d

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return v4
.end method

.method public static final e(ILjava/util/List;)I
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-gt v3, v0, :cond_4

    .line 10
    .line 11
    add-int v4, v3, v0

    .line 12
    .line 13
    ushr-int/2addr v4, v1

    .line 14
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lb3/r;

    .line 19
    .line 20
    iget v6, v5, Lb3/r;->d:I

    .line 21
    .line 22
    if-le v6, p0, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v5, v5, Lb3/r;->e:I

    .line 27
    .line 28
    if-gt v5, p0, :cond_1

    .line 29
    .line 30
    const/4 v5, -0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v5, 0x0

    .line 33
    :goto_1
    if-gez v5, :cond_2

    .line 34
    .line 35
    add-int/lit8 v3, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-lez v5, :cond_3

    .line 39
    .line 40
    add-int/lit8 v0, v4, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return v4

    .line 44
    :cond_4
    add-int/2addr v3, v1

    .line 45
    neg-int p0, v3

    .line 46
    return p0
.end method

.method public static final f(Ljava/util/ArrayList;F)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-static {p0}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lb3/r;

    .line 13
    .line 14
    iget v0, v0, Lb3/r;->g:F

    .line 15
    .line 16
    cmpl-float v0, p1, v0

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Lp9/x1;->u(Ljava/util/List;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x1

    .line 30
    sub-int/2addr v0, v2

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-gt v3, v0, :cond_6

    .line 33
    .line 34
    add-int v4, v3, v0

    .line 35
    .line 36
    ushr-int/2addr v4, v2

    .line 37
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lb3/r;

    .line 42
    .line 43
    iget v6, v5, Lb3/r;->f:F

    .line 44
    .line 45
    cmpl-float v6, v6, p1

    .line 46
    .line 47
    if-lez v6, :cond_2

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget v5, v5, Lb3/r;->g:F

    .line 52
    .line 53
    cmpg-float v5, v5, p1

    .line 54
    .line 55
    if-gtz v5, :cond_3

    .line 56
    .line 57
    const/4 v5, -0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 v5, 0x0

    .line 60
    :goto_1
    if-gez v5, :cond_4

    .line 61
    .line 62
    add-int/lit8 v3, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    if-lez v5, :cond_5

    .line 66
    .line 67
    add-int/lit8 v0, v4, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    return v4

    .line 71
    :cond_6
    add-int/2addr v3, v2

    .line 72
    neg-int p0, v3

    .line 73
    return p0
.end method

.method public static final g(Ljava/util/ArrayList;JLf9/k;)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lb3/n0;->f(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p0}, Lb3/d0;->d(ILjava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lb3/r;

    .line 20
    .line 21
    iget v3, v2, Lb3/r;->b:I

    .line 22
    .line 23
    invoke-static {p1, p2}, Lb3/n0;->e(J)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_1

    .line 28
    .line 29
    iget v3, v2, Lb3/r;->b:I

    .line 30
    .line 31
    iget v4, v2, Lb3/r;->c:I

    .line 32
    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    invoke-interface {p3, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public static final h(Lb3/o0;Ln3/m;)Lb3/o0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lb3/o0;

    .line 4
    .line 5
    iget-object v2, v0, Lb3/o0;->a:Lb3/e0;

    .line 6
    .line 7
    sget-object v3, Lb3/g0;->d:Lm3/o;

    .line 8
    .line 9
    iget-object v3, v2, Lb3/e0;->a:Lm3/o;

    .line 10
    .line 11
    new-instance v4, Lb3/f0;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v4, v5}, Lb3/f0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v3, v4}, Lm3/o;->c(Lf9/a;)Lm3/o;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    iget-wide v3, v2, Lb3/e0;->b:J

    .line 22
    .line 23
    sget-object v6, Ln3/o;->b:[Ln3/p;

    .line 24
    .line 25
    const-wide v26, 0xff00000000L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long v8, v3, v26

    .line 31
    .line 32
    const-wide/16 v28, 0x0

    .line 33
    .line 34
    cmp-long v6, v8, v28

    .line 35
    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    sget-wide v3, Lb3/g0;->a:J

    .line 39
    .line 40
    :cond_0
    move-wide v8, v3

    .line 41
    iget-object v3, v2, Lb3/e0;->c:Lf3/k;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    sget-object v3, Lf3/k;->c:Lf3/k;

    .line 46
    .line 47
    :cond_1
    move-object v10, v3

    .line 48
    iget-object v3, v2, Lb3/e0;->d:Lf3/i;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    iget v5, v3, Lf3/i;->a:I

    .line 53
    .line 54
    :cond_2
    new-instance v11, Lf3/i;

    .line 55
    .line 56
    invoke-direct {v11, v5}, Lf3/i;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v2, Lb3/e0;->e:Lf3/j;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    iget v3, v3, Lf3/j;->a:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const v3, 0xffff

    .line 67
    .line 68
    .line 69
    :goto_0
    new-instance v12, Lf3/j;

    .line 70
    .line 71
    invoke-direct {v12, v3}, Lf3/j;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v2, Lb3/e0;->f:Lf3/n;

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    sget-object v3, Lf3/n;->a:Lf3/b;

    .line 79
    .line 80
    :cond_4
    move-object v13, v3

    .line 81
    iget-object v3, v2, Lb3/e0;->g:Ljava/lang/String;

    .line 82
    .line 83
    if-nez v3, :cond_5

    .line 84
    .line 85
    const-string v3, ""

    .line 86
    .line 87
    :cond_5
    move-object v14, v3

    .line 88
    iget-wide v3, v2, Lb3/e0;->h:J

    .line 89
    .line 90
    and-long v5, v3, v26

    .line 91
    .line 92
    cmp-long v15, v5, v28

    .line 93
    .line 94
    if-nez v15, :cond_6

    .line 95
    .line 96
    sget-wide v3, Lb3/g0;->b:J

    .line 97
    .line 98
    :cond_6
    move-wide v15, v3

    .line 99
    iget-object v3, v2, Lb3/e0;->i:Lm3/a;

    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    iget v3, v3, Lm3/a;->a:F

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    const/4 v3, 0x0

    .line 107
    :goto_1
    new-instance v4, Lm3/a;

    .line 108
    .line 109
    invoke-direct {v4, v3}, Lm3/a;-><init>(F)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v2, Lb3/e0;->j:Lm3/p;

    .line 113
    .line 114
    if-nez v3, :cond_8

    .line 115
    .line 116
    sget-object v3, Lm3/p;->c:Lm3/p;

    .line 117
    .line 118
    :cond_8
    move-object/from16 v18, v3

    .line 119
    .line 120
    iget-object v3, v2, Lb3/e0;->k:Li3/b;

    .line 121
    .line 122
    if-nez v3, :cond_9

    .line 123
    .line 124
    sget-object v3, Li3/b;->c:Li3/b;

    .line 125
    .line 126
    sget-object v3, Li3/d;->a:Li3/c;

    .line 127
    .line 128
    invoke-interface {v3}, Li3/c;->n()Li3/b;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_9
    move-object/from16 v19, v3

    .line 133
    .line 134
    iget-wide v5, v2, Lb3/e0;->l:J

    .line 135
    .line 136
    const-wide/16 v20, 0x10

    .line 137
    .line 138
    cmp-long v3, v5, v20

    .line 139
    .line 140
    if-eqz v3, :cond_a

    .line 141
    .line 142
    :goto_2
    move-wide/from16 v20, v5

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_a
    sget-wide v5, Lb3/g0;->c:J

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_3
    iget-object v3, v2, Lb3/e0;->m:Lm3/l;

    .line 149
    .line 150
    if-nez v3, :cond_b

    .line 151
    .line 152
    sget-object v3, Lm3/l;->b:Lm3/l;

    .line 153
    .line 154
    :cond_b
    move-object/from16 v22, v3

    .line 155
    .line 156
    iget-object v3, v2, Lb3/e0;->n:Ly1/k0;

    .line 157
    .line 158
    if-nez v3, :cond_c

    .line 159
    .line 160
    sget-object v3, Ly1/k0;->d:Ly1/k0;

    .line 161
    .line 162
    :cond_c
    move-object/from16 v23, v3

    .line 163
    .line 164
    iget-object v3, v2, Lb3/e0;->o:Lb3/x;

    .line 165
    .line 166
    iget-object v2, v2, Lb3/e0;->p:La2/h;

    .line 167
    .line 168
    if-nez v2, :cond_d

    .line 169
    .line 170
    sget-object v2, La2/j;->a:La2/j;

    .line 171
    .line 172
    :cond_d
    move-object/from16 v25, v2

    .line 173
    .line 174
    new-instance v6, Lb3/e0;

    .line 175
    .line 176
    move-object/from16 v24, v3

    .line 177
    .line 178
    move-object/from16 v17, v4

    .line 179
    .line 180
    invoke-direct/range {v6 .. v25}, Lb3/e0;-><init>(Lm3/o;JLf3/k;Lf3/i;Lf3/j;Lf3/n;Ljava/lang/String;JLm3/a;Lm3/p;Li3/b;JLm3/l;Ly1/k0;Lb3/x;La2/h;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, v0, Lb3/o0;->b:Lb3/u;

    .line 184
    .line 185
    sget v3, Lb3/v;->b:I

    .line 186
    .line 187
    new-instance v7, Lb3/u;

    .line 188
    .line 189
    iget v3, v2, Lb3/u;->a:I

    .line 190
    .line 191
    const/4 v4, 0x5

    .line 192
    const/high16 v5, -0x80000000

    .line 193
    .line 194
    if-ne v3, v5, :cond_e

    .line 195
    .line 196
    const/4 v8, 0x5

    .line 197
    goto :goto_4

    .line 198
    :cond_e
    move v8, v3

    .line 199
    :goto_4
    iget v3, v2, Lb3/u;->b:I

    .line 200
    .line 201
    const/4 v9, 0x3

    .line 202
    const/4 v10, 0x1

    .line 203
    if-ne v3, v9, :cond_11

    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_10

    .line 210
    .line 211
    if-ne v3, v10, :cond_f

    .line 212
    .line 213
    const/4 v9, 0x5

    .line 214
    goto :goto_5

    .line 215
    :cond_f
    new-instance v0, Lac/p;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_10
    const/4 v4, 0x4

    .line 222
    const/4 v9, 0x4

    .line 223
    goto :goto_5

    .line 224
    :cond_11
    if-ne v3, v5, :cond_14

    .line 225
    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_13

    .line 231
    .line 232
    if-ne v3, v10, :cond_12

    .line 233
    .line 234
    const/4 v4, 0x2

    .line 235
    const/4 v9, 0x2

    .line 236
    goto :goto_5

    .line 237
    :cond_12
    new-instance v0, Lac/p;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_13
    const/4 v9, 0x1

    .line 244
    goto :goto_5

    .line 245
    :cond_14
    move v9, v3

    .line 246
    :goto_5
    iget-wide v3, v2, Lb3/u;->c:J

    .line 247
    .line 248
    and-long v11, v3, v26

    .line 249
    .line 250
    cmp-long v13, v11, v28

    .line 251
    .line 252
    if-nez v13, :cond_15

    .line 253
    .line 254
    sget-wide v3, Lb3/v;->a:J

    .line 255
    .line 256
    :cond_15
    iget-object v11, v2, Lb3/u;->d:Lm3/q;

    .line 257
    .line 258
    if-nez v11, :cond_16

    .line 259
    .line 260
    sget-object v11, Lm3/q;->c:Lm3/q;

    .line 261
    .line 262
    :cond_16
    move-object v12, v11

    .line 263
    iget-object v13, v2, Lb3/u;->e:Lb3/w;

    .line 264
    .line 265
    iget-object v14, v2, Lb3/u;->f:Lm3/i;

    .line 266
    .line 267
    iget v11, v2, Lb3/u;->g:I

    .line 268
    .line 269
    if-nez v11, :cond_17

    .line 270
    .line 271
    sget v11, Lm3/e;->b:I

    .line 272
    .line 273
    :cond_17
    move v15, v11

    .line 274
    iget v11, v2, Lb3/u;->h:I

    .line 275
    .line 276
    if-ne v11, v5, :cond_18

    .line 277
    .line 278
    const/16 v16, 0x1

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_18
    move/from16 v16, v11

    .line 282
    .line 283
    :goto_6
    iget-object v2, v2, Lb3/u;->i:Lm3/s;

    .line 284
    .line 285
    if-nez v2, :cond_19

    .line 286
    .line 287
    sget-object v2, Lm3/s;->c:Lm3/s;

    .line 288
    .line 289
    :cond_19
    move-object/from16 v17, v2

    .line 290
    .line 291
    move-wide v10, v3

    .line 292
    invoke-direct/range {v7 .. v17}, Lb3/u;-><init>(IIJLm3/q;Lb3/w;Lm3/i;IILm3/s;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lb3/o0;->c:Lb3/y;

    .line 296
    .line 297
    invoke-direct {v1, v6, v7, v0}, Lb3/o0;-><init>(Lb3/e0;Lb3/u;Lb3/y;)V

    .line 298
    .line 299
    .line 300
    return-object v1
.end method
