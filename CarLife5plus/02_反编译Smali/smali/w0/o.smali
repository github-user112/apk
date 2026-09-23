.class public final Lw0/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw0/p0;


# instance fields
.field public final a:Ls/y;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Lw0/z;


# direct methods
.method public constructor <init>(Ls/y;Ljava/util/List;IIZLw0/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/o;->a:Ls/y;

    .line 5
    .line 6
    iput-object p2, p0, Lw0/o;->b:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lw0/o;->c:I

    .line 9
    .line 10
    iput p4, p0, Lw0/o;->d:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lw0/o;->e:Z

    .line 13
    .line 14
    iput-object p6, p0, Lw0/o;->f:Lw0/z;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p3, 0x1

    .line 21
    if-le p1, p3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p3, 0x0

    .line 25
    :goto_0
    if-nez p3, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p3, "MultiSelectionLayout requires an infoList size greater than 1, was "

    .line 30
    .line 31
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 p2, 0x2e

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lc0/b;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public static n(Ls/a0;Lw0/z;Lw0/w;II)V
    .locals 4

    .line 1
    iget-boolean p1, p1, Lw0/z;->c:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Lw0/z;

    .line 8
    .line 9
    invoke-virtual {p2, p4}, Lw0/w;->a(I)Lw0/y;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p2, p3}, Lw0/w;->a(I)Lw0/y;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-le p4, p3, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_0
    invoke-direct {p1, v2, v3, v0}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Lw0/z;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Lw0/w;->a(I)Lw0/y;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p2, p4}, Lw0/w;->a(I)Lw0/y;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-le p3, p4, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_2
    invoke-direct {p1, v2, v3, v0}, Lw0/z;-><init>(Lw0/y;Lw0/y;Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-gt p3, p4, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p4, "minOffset should be less than or equal to maxOffset: "

    .line 46
    .line 47
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p3}, Lc0/b;->c(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-wide p2, p2, Lw0/w;->a:J

    .line 61
    .line 62
    invoke-virtual {p0, p2, p3}, Ls/a0;->c(J)I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    iget-object v0, p0, Ls/a0;->c:[Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v1, v0, p4

    .line 69
    .line 70
    iget-object p0, p0, Ls/a0;->b:[J

    .line 71
    .line 72
    aput-wide p2, p0, p4

    .line 73
    .line 74
    aput-object p1, v0, p4

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw0/o;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lw0/w;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw0/o;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw0/o;->j()Lw0/w;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lw0/o;->h()Lw0/w;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final c()Lw0/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/o;->f:Lw0/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lw0/w;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw0/o;->i()Lw0/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lw0/k;->a:Lw0/k;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lw0/o;->h()Lw0/w;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lw0/o;->j()Lw0/w;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final e(Lf9/k;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw0/o;->d()Lw0/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v0, v0, Lw0/w;->a:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lw0/o;->o(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lw0/o;->i()Lw0/k;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lw0/k;->a:Lw0/k;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lw0/o;->j()Lw0/w;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lw0/o;->h()Lw0/w;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    iget-wide v1, v1, Lw0/w;->a:J

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Lw0/o;->o(J)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    if-lt v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    if-ge v0, v1, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lw0/o;->b:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {p1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    return-void
.end method

.method public final f(Lw0/z;)Ls/a0;
    .locals 10

    .line 1
    iget-object v0, p1, Lw0/z;->a:Lw0/y;

    .line 2
    .line 3
    iget-boolean v1, p1, Lw0/z;->c:Z

    .line 4
    .line 5
    iget-wide v2, v0, Lw0/y;->c:J

    .line 6
    .line 7
    iget v4, v0, Lw0/y;->b:I

    .line 8
    .line 9
    iget-object v5, p1, Lw0/z;->b:Lw0/y;

    .line 10
    .line 11
    iget-wide v6, v5, Lw0/y;->c:J

    .line 12
    .line 13
    iget v8, v5, Lw0/y;->b:I

    .line 14
    .line 15
    cmp-long v9, v2, v6

    .line 16
    .line 17
    if-nez v9, :cond_3

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-ge v4, v8, :cond_2

    .line 22
    .line 23
    :cond_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-gt v4, v8, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "unexpectedly miss-crossed selection: "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lc0/b;->c(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-wide v0, v0, Lw0/y;->c:J

    .line 46
    .line 47
    sget-object v2, Ls/o;->a:Ls/a0;

    .line 48
    .line 49
    new-instance v2, Ls/a0;

    .line 50
    .line 51
    invoke-direct {v2}, Ls/a0;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0, v1, p1}, Ls/a0;->h(JLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_3
    sget-object v2, Ls/o;->a:Ls/a0;

    .line 59
    .line 60
    new-instance v2, Ls/a0;

    .line 61
    .line 62
    invoke-direct {v2}, Ls/a0;-><init>()V

    .line 63
    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    move-object v3, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move-object v3, v0

    .line 70
    :goto_1
    invoke-virtual {p0}, Lw0/o;->d()Lw0/w;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget v3, v3, Lw0/y;->b:I

    .line 75
    .line 76
    invoke-virtual {p0}, Lw0/o;->d()Lw0/w;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget-object v6, v6, Lw0/w;->f:Lb3/l0;

    .line 81
    .line 82
    iget-object v6, v6, Lb3/l0;->a:Lb3/k0;

    .line 83
    .line 84
    iget-object v6, v6, Lb3/k0;->a:Lb3/g;

    .line 85
    .line 86
    iget-object v6, v6, Lb3/g;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-static {v2, p1, v4, v3, v6}, Lw0/o;->n(Ls/a0;Lw0/z;Lw0/w;II)V

    .line 93
    .line 94
    .line 95
    new-instance v3, La8/v;

    .line 96
    .line 97
    invoke-direct {v3, p0, v2, p1}, La8/v;-><init>(Lw0/o;Ls/a0;Lw0/z;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3}, Lw0/o;->e(Lf9/k;)V

    .line 101
    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-object v0, v5

    .line 107
    :goto_2
    invoke-virtual {p0}, Lw0/o;->i()Lw0/k;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    sget-object v3, Lw0/k;->a:Lw0/k;

    .line 112
    .line 113
    if-ne v1, v3, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0}, Lw0/o;->j()Lw0/w;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    invoke-virtual {p0}, Lw0/o;->h()Lw0/w;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_3
    const/4 v3, 0x0

    .line 125
    iget v0, v0, Lw0/y;->b:I

    .line 126
    .line 127
    invoke-static {v2, p1, v1, v3, v0}, Lw0/o;->n(Ls/a0;Lw0/z;Lw0/w;II)V

    .line 128
    .line 129
    .line 130
    return-object v2
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lw0/o;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()Lw0/w;
    .locals 2

    .line 1
    iget v0, p0, Lw0/o;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lw0/o;->p(IZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lw0/o;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lw0/w;

    .line 15
    .line 16
    return-object v0
.end method

.method public final i()Lw0/k;
    .locals 2

    .line 1
    iget v0, p0, Lw0/o;->c:I

    .line 2
    .line 3
    iget v1, p0, Lw0/o;->d:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lw0/k;->b:Lw0/k;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lw0/k;->a:Lw0/k;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    iget-object v1, p0, Lw0/o;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lw0/w;

    .line 24
    .line 25
    invoke-virtual {v0}, Lw0/w;->b()Lw0/k;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final j()Lw0/w;
    .locals 2

    .line 1
    iget v0, p0, Lw0/o;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lw0/o;->p(IZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lw0/o;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lw0/w;

    .line 15
    .line 16
    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lw0/o;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/o;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m(Lw0/p0;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lw0/o;->f:Lw0/z;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    instance-of v0, p1, Lw0/o;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    check-cast p1, Lw0/o;

    .line 13
    .line 14
    iget-object v0, p1, Lw0/o;->b:Ljava/util/List;

    .line 15
    .line 16
    iget-boolean v2, p1, Lw0/o;->e:Z

    .line 17
    .line 18
    iget-boolean v3, p0, Lw0/o;->e:Z

    .line 19
    .line 20
    if-ne v3, v2, :cond_4

    .line 21
    .line 22
    iget v2, p0, Lw0/o;->c:I

    .line 23
    .line 24
    iget v3, p1, Lw0/o;->c:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_4

    .line 27
    .line 28
    iget v2, p0, Lw0/o;->d:I

    .line 29
    .line 30
    iget p1, p1, Lw0/o;->d:I

    .line 31
    .line 32
    if-ne v2, p1, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Lw0/o;->b:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eq v2, v3, :cond_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    :goto_0
    if-ge v4, v2, :cond_3

    .line 54
    .line 55
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lw0/w;

    .line 60
    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lw0/w;

    .line 66
    .line 67
    iget-wide v7, v5, Lw0/w;->a:J

    .line 68
    .line 69
    iget-wide v9, v6, Lw0/w;->a:J

    .line 70
    .line 71
    cmp-long v11, v7, v9

    .line 72
    .line 73
    if-nez v11, :cond_2

    .line 74
    .line 75
    iget v7, v5, Lw0/w;->c:I

    .line 76
    .line 77
    iget v8, v6, Lw0/w;->c:I

    .line 78
    .line 79
    if-ne v7, v8, :cond_2

    .line 80
    .line 81
    iget v5, v5, Lw0/w;->d:I

    .line 82
    .line 83
    iget v6, v6, Lw0/w;->d:I

    .line 84
    .line 85
    if-eq v5, v6, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    return v1

    .line 92
    :cond_3
    return v3

    .line 93
    :cond_4
    :goto_2
    return v1
.end method

.method public final o(J)I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lw0/o;->a:Ls/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ls/y;->c(J)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Invalid selectableId: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v1
.end method

.method public final p(IZ)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw0/o;->i()Lw0/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eq v0, v2, :cond_3

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    :goto_0
    const/4 p2, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Lac/p;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    if-nez p2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p2, 0x0

    .line 29
    :cond_3
    :goto_1
    xor-int/2addr p2, v2

    .line 30
    sub-int/2addr p1, p2

    .line 31
    div-int/2addr p1, v1

    .line 32
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MultiSelectionLayout(isStartHandle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lw0/o;->e:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", startPosition="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lw0/o;->c:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    add-int/2addr v1, v2

    .line 22
    int-to-float v1, v1

    .line 23
    const/4 v3, 0x2

    .line 24
    int-to-float v3, v3

    .line 25
    div-float/2addr v1, v3

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", endPosition="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lw0/o;->d:I

    .line 35
    .line 36
    add-int/2addr v1, v2

    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v1, v3

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", crossed="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lw0/o;->i()Lw0/k;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", infos="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "[\n\t"

    .line 62
    .line 63
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lw0/o;->b:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    :goto_0
    if-ge v6, v4, :cond_1

    .line 75
    .line 76
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Lw0/w;

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    const-string v8, ",\n\t"

    .line 87
    .line 88
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v9, " -> "

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const-string v2, "\n]"

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "toString(...)"

    .line 127
    .line 128
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const/16 v1, 0x29

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method
