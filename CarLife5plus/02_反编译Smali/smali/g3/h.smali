.class public final Lg3/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ld3/e;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lb3/g;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld3/e;

    .line 5
    .line 6
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0}, Ld3/e;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v0, Ld3/e;->d:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, v0, Ld3/e;->b:I

    .line 15
    .line 16
    iput v1, v0, Ld3/e;->c:I

    .line 17
    .line 18
    iput-object v0, p0, Lg3/h;->a:Ld3/e;

    .line 19
    .line 20
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lg3/h;->b:I

    .line 25
    .line 26
    invoke-static {p2, p3}, Lb3/n0;->e(J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lg3/h;->c:I

    .line 31
    .line 32
    iput v1, p0, Lg3/h;->d:I

    .line 33
    .line 34
    iput v1, p0, Lg3/h;->e:I

    .line 35
    .line 36
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p2, p3}, Lb3/n0;->e(J)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const-string p3, ") offset is outside of text region "

    .line 45
    .line 46
    if-ltz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-gt v0, v1, :cond_2

    .line 53
    .line 54
    if-ltz p2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-gt p2, v1, :cond_1

    .line 61
    .line 62
    if-gt v0, p2, :cond_0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p3, "Do not set reversed range: "

    .line 68
    .line 69
    const-string v1, " > "

    .line 70
    .line 71
    invoke-static {v0, p2, p3, v1}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 80
    .line 81
    const-string v1, "end ("

    .line 82
    .line 83
    invoke-static {v1, p3, p2}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 103
    .line 104
    const-string v1, "start ("

    .line 105
    .line 106
    invoke-static {v1, p3, v0}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lb3/d0;->b(II)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lg3/h;->a:Ld3/e;

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-virtual {v2, v3, p1, p2}, Ld3/e;->y(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lg3/h;->b:I

    .line 13
    .line 14
    iget p2, p0, Lg3/h;->c:I

    .line 15
    .line 16
    invoke-static {p1, p2}, Lb3/d0;->b(II)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    invoke-static {p1, p2, v0, v1}, Li9/a;->b0(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-static {p1, p2}, Lb3/n0;->f(J)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Lg3/h;->h(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lb3/n0;->e(J)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lg3/h;->g(I)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lg3/h;->d:I

    .line 39
    .line 40
    const/4 p2, -0x1

    .line 41
    if-eq p1, p2, :cond_1

    .line 42
    .line 43
    iget v2, p0, Lg3/h;->e:I

    .line 44
    .line 45
    invoke-static {p1, v2}, Lb3/d0;->b(II)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3, v0, v1}, Li9/a;->b0(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iput p2, p0, Lg3/h;->d:I

    .line 60
    .line 61
    iput p2, p0, Lg3/h;->e:I

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-static {v0, v1}, Lb3/n0;->f(J)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lg3/h;->d:I

    .line 69
    .line 70
    invoke-static {v0, v1}, Lb3/n0;->e(J)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lg3/h;->e:I

    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public final b(I)C
    .locals 5

    .line 1
    iget-object v0, p0, Lg3/h;->a:Ld3/e;

    .line 2
    .line 3
    iget-object v1, v0, Ld3/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lg1/l0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Ld3/e;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    iget v2, v0, Ld3/e;->b:I

    .line 19
    .line 20
    if-ge p1, v2, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Ld3/e;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    iget v2, v1, Lg1/l0;->b:I

    .line 32
    .line 33
    invoke-virtual {v1}, Lg1/l0;->a()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sub-int/2addr v2, v3

    .line 38
    iget v3, v0, Ld3/e;->b:I

    .line 39
    .line 40
    add-int v4, v2, v3

    .line 41
    .line 42
    if-ge p1, v4, :cond_3

    .line 43
    .line 44
    sub-int/2addr p1, v3

    .line 45
    iget v0, v1, Lg1/l0;->c:I

    .line 46
    .line 47
    if-ge p1, v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v1, Lg1/l0;->e:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, [C

    .line 52
    .line 53
    aget-char p1, v0, p1

    .line 54
    .line 55
    return p1

    .line 56
    :cond_2
    iget-object v2, v1, Lg1/l0;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, [C

    .line 59
    .line 60
    sub-int/2addr p1, v0

    .line 61
    iget v0, v1, Lg1/l0;->d:I

    .line 62
    .line 63
    add-int/2addr p1, v0

    .line 64
    aget-char p1, v2, p1

    .line 65
    .line 66
    return p1

    .line 67
    :cond_3
    iget-object v1, v0, Ld3/e;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    iget v0, v0, Ld3/e;->c:I

    .line 72
    .line 73
    sub-int/2addr v2, v0

    .line 74
    add-int/2addr v2, v3

    .line 75
    sub-int/2addr p1, v2

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1
.end method

.method public final c()Lb3/n0;
    .locals 3

    .line 1
    iget v0, p0, Lg3/h;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lg3/h;->e:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Lb3/d0;->b(II)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    new-instance v2, Lb3/n0;

    .line 13
    .line 14
    invoke-direct {v2, v0, v1}, Lb3/n0;-><init>(J)V

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public final d(Ljava/lang/String;II)V
    .locals 3

    .line 1
    const-string v0, ") offset is outside of text region "

    .line 2
    .line 3
    iget-object v1, p0, Lg3/h;->a:Ld3/e;

    .line 4
    .line 5
    if-ltz p2, :cond_2

    .line 6
    .line 7
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt p2, v2, :cond_2

    .line 12
    .line 13
    if-ltz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-gt p3, v2, :cond_1

    .line 20
    .line 21
    if-gt p2, p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2, p3}, Ld3/e;->y(Ljava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    add-int/2addr p3, p2

    .line 31
    invoke-virtual {p0, p3}, Lg3/h;->h(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    add-int/2addr p1, p2

    .line 39
    invoke-virtual {p0, p1}, Lg3/h;->g(I)V

    .line 40
    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lg3/h;->d:I

    .line 44
    .line 45
    iput p1, p0, Lg3/h;->e:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "Do not set reversed range: "

    .line 51
    .line 52
    const-string v1, " > "

    .line 53
    .line 54
    invoke-static {p2, p3, v0, v1}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 63
    .line 64
    const-string p2, "end ("

    .line 65
    .line 66
    invoke-static {p2, v0, p3}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 86
    .line 87
    const-string p3, "start ("

    .line 88
    .line 89
    invoke-static {p3, v0, p2}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final e(II)V
    .locals 3

    .line 1
    const-string v0, ") offset is outside of text region "

    .line 2
    .line 3
    iget-object v1, p0, Lg3/h;->a:Ld3/e;

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt p1, v2, :cond_2

    .line 12
    .line 13
    if-ltz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-gt p2, v2, :cond_1

    .line 20
    .line 21
    if-ge p1, p2, :cond_0

    .line 22
    .line 23
    iput p1, p0, Lg3/h;->d:I

    .line 24
    .line 25
    iput p2, p0, Lg3/h;->e:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v1, "Do not set reversed or empty range: "

    .line 31
    .line 32
    const-string v2, " > "

    .line 33
    .line 34
    invoke-static {p1, p2, v1, v2}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 43
    .line 44
    const-string v2, "end ("

    .line 45
    .line 46
    invoke-static {v2, v0, p2}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 66
    .line 67
    const-string v2, "start ("

    .line 68
    .line 69
    invoke-static {v2, v0, p1}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2
.end method

.method public final f(II)V
    .locals 3

    .line 1
    const-string v0, ") offset is outside of text region "

    .line 2
    .line 3
    iget-object v1, p0, Lg3/h;->a:Ld3/e;

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt p1, v2, :cond_2

    .line 12
    .line 13
    if-ltz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-gt p2, v2, :cond_1

    .line 20
    .line 21
    if-gt p1, p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lg3/h;->h(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lg3/h;->g(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "Do not set reversed range: "

    .line 33
    .line 34
    const-string v2, " > "

    .line 35
    .line 36
    invoke-static {p1, p2, v1, v2}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 45
    .line 46
    const-string v2, "end ("

    .line 47
    .line 48
    invoke-static {v2, v0, p2}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 68
    .line 69
    const-string v2, "start ("

    .line 70
    .line 71
    invoke-static {v2, v0, p1}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1}, Ld3/e;->l()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2
.end method

.method public final g(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Cannot set selectionEnd to a negative value: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput p1, p0, Lg3/h;->c:I

    .line 26
    .line 27
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Cannot set selectionStart to a negative value: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput p1, p0, Lg3/h;->b:I

    .line 26
    .line 27
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/h;->a:Ld3/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld3/e;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
