.class public final Ld3/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ld3/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ld3/e;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Ld3/e;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Ld3/e;->c:I

    .line 17
    array-length p1, p2

    iput p1, p0, Ld3/e;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/util/Locale;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ld3/e;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "input start index is outside the CharSequence"

    .line 5
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    :goto_0
    if-ltz p2, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    const-string v0, "input end index is outside the CharSequence"

    .line 8
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 9
    :goto_1
    invoke-static {p3}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p3

    iput-object p3, p0, Ld3/e;->e:Ljava/lang/Object;

    const/16 v0, -0x32

    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ld3/e;->b:I

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ld3/e;->c:I

    .line 12
    new-instance v0, Lc3/d;

    invoke-direct {v0, p1, p2}, Lc3/d;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p3, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public constructor <init>(Lp/x0;IILjava/lang/ref/WeakReference;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld3/e;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ld3/e;->e:Ljava/lang/Object;

    iput p2, p0, Ld3/e;->b:I

    iput p3, p0, Ld3/e;->c:I

    iput-object p4, p0, Ld3/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public static c(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Ld3/e;->j(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Ld3/e;->e(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p1, p0

    .line 10
    return p1
.end method

.method public static d(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Ld3/e;->j(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Ld3/e;->e(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p1, p0

    .line 10
    return p1
.end method

.method public static e(I)I
    .locals 0

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Ld3/e;->h(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/16 p0, 0xa

    .line 9
    .line 10
    return p0
.end method

.method public static f(ILva/a;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ld3/e;->j(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Ld3/e;->g(Lva/a;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p1, p0

    .line 10
    return p1
.end method

.method public static g(Lva/a;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lva/a;->a()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ld3/e;->h(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public static h(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    const/high16 v0, -0x200000

    .line 14
    .line 15
    and-int/2addr v0, p0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const/4 p0, 0x3

    .line 19
    return p0

    .line 20
    :cond_2
    const/high16 v0, -0x10000000

    .line 21
    .line 22
    and-int/2addr p0, v0

    .line 23
    if-nez p0, :cond_3

    .line 24
    .line 25
    const/4 p0, 0x4

    .line 26
    return p0

    .line 27
    :cond_3
    const/4 p0, 0x5

    .line 28
    return p0
.end method

.method public static i(J)I
    .locals 5

    .line 1
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const-wide/16 v0, -0x4000

    .line 13
    .line 14
    and-long/2addr v0, p0

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_1
    const-wide/32 v0, -0x200000

    .line 22
    .line 23
    .line 24
    and-long/2addr v0, p0

    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    const/4 p0, 0x3

    .line 30
    return p0

    .line 31
    :cond_2
    const-wide/32 v0, -0x10000000

    .line 32
    .line 33
    .line 34
    and-long/2addr v0, p0

    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    const/4 p0, 0x4

    .line 40
    return p0

    .line 41
    :cond_3
    const-wide v0, -0x800000000L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v0, p0

    .line 47
    cmp-long v4, v0, v2

    .line 48
    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    const/4 p0, 0x5

    .line 52
    return p0

    .line 53
    :cond_4
    const-wide v0, -0x40000000000L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    and-long/2addr v0, p0

    .line 59
    cmp-long v4, v0, v2

    .line 60
    .line 61
    if-nez v4, :cond_5

    .line 62
    .line 63
    const/4 p0, 0x6

    .line 64
    return p0

    .line 65
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    .line 66
    .line 67
    and-long/2addr v0, p0

    .line 68
    cmp-long v4, v0, v2

    .line 69
    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    const/4 p0, 0x7

    .line 73
    return p0

    .line 74
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    .line 75
    .line 76
    and-long/2addr v0, p0

    .line 77
    cmp-long v4, v0, v2

    .line 78
    .line 79
    if-nez v4, :cond_7

    .line 80
    .line 81
    const/16 p0, 0x8

    .line 82
    .line 83
    return p0

    .line 84
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    .line 85
    .line 86
    and-long/2addr p0, v0

    .line 87
    cmp-long v0, p0, v2

    .line 88
    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    const/16 p0, 0x9

    .line 92
    .line 93
    return p0

    .line 94
    :cond_8
    const/16 p0, 0xa

    .line 95
    .line 96
    return p0
.end method

.method public static j(I)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Ld3/e;->h(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static s(Ljava/io/OutputStream;I)Ld3/e;
    .locals 1

    .line 1
    new-instance v0, Ld3/e;

    .line 2
    .line 3
    new-array p1, p1, [B

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Ld3/e;-><init>(Ljava/io/OutputStream;[B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public A(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ld3/e;->L(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ld3/e;->B(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public B(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld3/e;->J(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Ld3/e;->K(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public C(ILva/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Ld3/e;->L(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ld3/e;->D(Lva/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public D(Lva/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lva/a;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Ld3/e;->J(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lva/a;->d(Ld3/e;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public E(I)V
    .locals 3

    .line 1
    int-to-byte p1, p1

    .line 2
    iget v0, p0, Ld3/e;->c:I

    .line 3
    .line 4
    iget v1, p0, Ld3/e;->b:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ld3/e;->x()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    iget v1, p0, Ld3/e;->c:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Ld3/e;->c:I

    .line 20
    .line 21
    aput-byte p1, v0, v1

    .line 22
    .line 23
    return-void
.end method

.method public F(Lva/d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lva/d;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    iget v2, p0, Ld3/e;->b:I

    .line 10
    .line 11
    iget v3, p0, Ld3/e;->c:I

    .line 12
    .line 13
    sub-int v4, v2, v3

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-lt v4, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v5, v1, v3, v0}, Lva/d;->j(I[BII)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Ld3/e;->c:I

    .line 22
    .line 23
    add-int/2addr p1, v0

    .line 24
    iput p1, p0, Ld3/e;->c:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1, v5, v1, v3, v4}, Lva/d;->j(I[BII)V

    .line 28
    .line 29
    .line 30
    sub-int/2addr v0, v4

    .line 31
    iput v2, p0, Ld3/e;->c:I

    .line 32
    .line 33
    invoke-virtual {p0}, Ld3/e;->x()V

    .line 34
    .line 35
    .line 36
    if-gt v0, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v4, v1, v5, v0}, Lva/d;->j(I[BII)V

    .line 39
    .line 40
    .line 41
    iput v0, p0, Ld3/e;->c:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/io/OutputStream;

    .line 47
    .line 48
    if-ltz v4, :cond_5

    .line 49
    .line 50
    if-ltz v0, :cond_4

    .line 51
    .line 52
    add-int v2, v4, v0

    .line 53
    .line 54
    invoke-virtual {p1}, Lva/d;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-gt v2, v3, :cond_3

    .line 59
    .line 60
    if-lez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, v1, v4, v0}, Lva/d;->u(Ljava/io/OutputStream;II)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const/16 v1, 0x27

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .line 74
    .line 75
    const-string v1, "Source end offset exceeded: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 v2, 0x17

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const-string v2, "Length < 0: "

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const/16 v1, 0x1e

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const-string v1, "Source offset < 0: "

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public G([B)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, [B

    .line 5
    .line 6
    iget v2, p0, Ld3/e;->b:I

    .line 7
    .line 8
    iget v3, p0, Ld3/e;->c:I

    .line 9
    .line 10
    sub-int v4, v2, v3

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-lt v4, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1, v5, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Ld3/e;->c:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Ld3/e;->c:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p1, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    sub-int/2addr v0, v4

    .line 28
    iput v2, p0, Ld3/e;->c:I

    .line 29
    .line 30
    invoke-virtual {p0}, Ld3/e;->x()V

    .line 31
    .line 32
    .line 33
    if-gt v0, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iput v0, p0, Ld3/e;->c:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/io/OutputStream;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public H(I)V
    .locals 1

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 v0, p1, 0x8

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 11
    .line 12
    .line 13
    shr-int/lit8 v0, p1, 0x10

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 18
    .line 19
    .line 20
    shr-int/lit8 p1, p1, 0x18

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ld3/e;->E(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public I(J)V
    .locals 2

    .line 1
    long-to-int v0, p1

    .line 2
    and-int/lit16 v0, v0, 0xff

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    shr-long v0, p1, v0

    .line 10
    .line 11
    long-to-int v1, v0

    .line 12
    and-int/lit16 v0, v1, 0xff

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    shr-long v0, p1, v0

    .line 20
    .line 21
    long-to-int v1, v0

    .line 22
    and-int/lit16 v0, v1, 0xff

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x18

    .line 28
    .line 29
    shr-long v0, p1, v0

    .line 30
    .line 31
    long-to-int v1, v0

    .line 32
    and-int/lit16 v0, v1, 0xff

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x20

    .line 38
    .line 39
    shr-long v0, p1, v0

    .line 40
    .line 41
    long-to-int v1, v0

    .line 42
    and-int/lit16 v0, v1, 0xff

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x28

    .line 48
    .line 49
    shr-long v0, p1, v0

    .line 50
    .line 51
    long-to-int v1, v0

    .line 52
    and-int/lit16 v0, v1, 0xff

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x30

    .line 58
    .line 59
    shr-long v0, p1, v0

    .line 60
    .line 61
    long-to-int v1, v0

    .line 62
    and-int/lit16 v0, v1, 0xff

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x38

    .line 68
    .line 69
    shr-long/2addr p1, v0

    .line 70
    long-to-int p2, p1

    .line 71
    and-int/lit16 p1, p2, 0xff

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ld3/e;->E(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public J(I)V
    .locals 1

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ld3/e;->E(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 14
    .line 15
    .line 16
    ushr-int/lit8 p1, p1, 0x7

    .line 17
    .line 18
    goto :goto_0
.end method

.method public K(J)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    long-to-int p2, p1

    .line 11
    invoke-virtual {p0, p2}, Ld3/e;->E(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    long-to-int v0, p1

    .line 16
    and-int/lit8 v0, v0, 0x7f

    .line 17
    .line 18
    or-int/lit16 v0, v0, 0x80

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ld3/e;->E(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x7

    .line 24
    ushr-long/2addr p1, v0

    .line 25
    goto :goto_0
.end method

.method public L(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Ld3/e;->J(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll8/j;

    .line 11
    .line 12
    invoke-direct {v1, p1, p0}, Ll8/j;-><init>(ILd3/e;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget v0, p0, Ld3/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Ld3/e;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    :cond_0
    if-nez v2, :cond_1

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Invalid offset: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ". Valid range is ["

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " , "

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x5d

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lh3/a;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/OutputStream;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ld3/e;->x()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public l()I
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg1/l0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, p0, Ld3/e;->c:I

    .line 25
    .line 26
    iget v3, p0, Ld3/e;->b:I

    .line 27
    .line 28
    sub-int/2addr v2, v3

    .line 29
    sub-int/2addr v1, v2

    .line 30
    iget v2, v0, Lg1/l0;->b:I

    .line 31
    .line 32
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v2, v0

    .line 37
    add-int/2addr v2, v1

    .line 38
    return v2
.end method

.method public m(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v1, p0, Ld3/e;->b:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget v3, p0, Ld3/e;->c:I

    .line 10
    .line 11
    if-gt p1, v3, :cond_2

    .line 12
    .line 13
    if-gt v1, p1, :cond_2

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sub-int/2addr p1, v2

    .line 27
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Ll4/j;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-static {}, Ll4/j;->a()Ll4/j;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ll4/j;->c()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ne v3, v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1, v0, p1}, Ll4/j;->b(Ljava/lang/CharSequence;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v0, -0x1

    .line 59
    if-eq p1, v0, :cond_2

    .line 60
    .line 61
    :goto_0
    return v2

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    return p1
.end method

.method public n(I)Z
    .locals 2

    .line 1
    iget v0, p0, Ld3/e;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Ld3/e;->c:I

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    if-gt v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, La/a;->I(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public o(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld3/e;->b(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/text/BreakIterator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ld3/e;->q(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    add-int/lit8 v0, p1, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ld3/e;->q(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, p1, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ld3/e;->q(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr v1, v0

    .line 48
    if-ge p1, v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ld3/e;->p(I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    add-int/2addr p1, v0

    .line 57
    invoke-virtual {p0, p1}, Ld3/e;->p(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    :cond_1
    return v0

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method public p(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    .line 16
    .line 17
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    .line 32
    .line 33
    invoke-static {v2, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    :cond_0
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    :cond_1
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method public q(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v1, p0, Ld3/e;->b:I

    .line 6
    .line 7
    iget v2, p0, Ld3/e;->c:I

    .line 8
    .line 9
    if-ge p1, v2, :cond_2

    .line 10
    .line 11
    if-gt v1, p1, :cond_2

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Ll4/j;->d()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-static {}, Ll4/j;->a()Ll4/j;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ll4/j;->c()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ne v3, v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1, v0, p1}, Ll4/j;->b(Ljava/lang/CharSequence;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, -0x1

    .line 57
    if-eq p1, v0, :cond_2

    .line 58
    .line 59
    :goto_0
    return v2

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    return p1
.end method

.method public r(I)Z
    .locals 2

    .line 1
    iget v0, p0, Ld3/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Ld3/e;->c:I

    .line 4
    .line 5
    if-ge p1, v1, :cond_0

    .line 6
    .line 7
    if-gt v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, La/a;->I(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public t(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ld3/e;->b(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/text/BreakIterator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/lit8 v0, p1, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ld3/e;->q(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ld3/e;->q(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ld3/e;->p(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ld3/e;->t(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Ld3/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lg1/l0;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iget v3, p0, Ld3/e;->b:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, [C

    .line 40
    .line 41
    iget v3, v0, Lg1/l0;->c:I

    .line 42
    .line 43
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, [C

    .line 49
    .line 50
    iget v3, v0, Lg1/l0;->d:I

    .line 51
    .line 52
    iget v0, v0, Lg1/l0;->b:I

    .line 53
    .line 54
    sub-int/2addr v0, v3

    .line 55
    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Ljava/lang/String;

    .line 61
    .line 62
    iget v2, p0, Ld3/e;->c:I

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public v(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Ld3/e;->b:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Ld3/e;->c:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-static {p1, v0, v1}, Lp/w0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lp/x0;

    .line 28
    .line 29
    iget-object v1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    iget-boolean v2, v0, Lp/x0;->m:Z

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iput-object p1, v0, Lp/x0;->l:Landroid/graphics/Typeface;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget v0, v0, Lp/x0;->j:I

    .line 54
    .line 55
    new-instance v2, Lp/s0;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-direct {v2, v0, v3, v1, p1}, Lp/s0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget v0, v0, Lp/x0;->j:I

    .line 66
    .line 67
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public w(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ld3/e;->b(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/text/BreakIterator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Ld3/e;->q(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ld3/e;->m(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ld3/e;->p(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ld3/e;->w(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :cond_0
    return p1
.end method

.method public x()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/OutputStream;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, [B

    .line 10
    .line 11
    iget v2, p0, Ld3/e;->c:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    .line 16
    .line 17
    iput v3, p0, Ld3/e;->c:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ld9/b;

    .line 21
    .line 22
    const-string v1, "CodedOutputStream was writing to a flat byte array and ran out of space."

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public y(Ljava/lang/String;II)V
    .locals 8

    .line 1
    if-gt p2, p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "start index must be less than or equal to end index: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " > "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    if-ltz p2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "start must be non-negative, but was "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lh3/a;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lg1/l0;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/lit16 v0, v0, 0x80

    .line 61
    .line 62
    const/16 v2, 0xff

    .line 63
    .line 64
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-array v2, v0, [C

    .line 69
    .line 70
    const/16 v3, 0x40

    .line 71
    .line 72
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v5, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sub-int/2addr v5, p3

    .line 85
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget-object v5, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Ljava/lang/String;

    .line 92
    .line 93
    sub-int v6, p2, v4

    .line 94
    .line 95
    const-string v7, "null cannot be cast to non-null type java.lang.String"

    .line 96
    .line 97
    invoke-static {v5, v7}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p2, Ljava/lang/String;

    .line 106
    .line 107
    sub-int v5, v0, v3

    .line 108
    .line 109
    add-int/2addr v3, p3

    .line 110
    invoke-static {p2, v7}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3, v3, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p1, v1, p2, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Lg1/l0;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    add-int/2addr p1, v4

    .line 130
    invoke-direct {p2}, Lg1/l0;-><init>()V

    .line 131
    .line 132
    .line 133
    iput v0, p2, Lg1/l0;->b:I

    .line 134
    .line 135
    iput-object v2, p2, Lg1/l0;->e:Ljava/lang/Object;

    .line 136
    .line 137
    iput p1, p2, Lg1/l0;->c:I

    .line 138
    .line 139
    iput v5, p2, Lg1/l0;->d:I

    .line 140
    .line 141
    iput-object p2, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 142
    .line 143
    iput v6, p0, Ld3/e;->b:I

    .line 144
    .line 145
    iput v3, p0, Ld3/e;->c:I

    .line 146
    .line 147
    return-void

    .line 148
    :cond_2
    iget v2, p0, Ld3/e;->b:I

    .line 149
    .line 150
    sub-int v3, p2, v2

    .line 151
    .line 152
    sub-int v2, p3, v2

    .line 153
    .line 154
    if-ltz v3, :cond_8

    .line 155
    .line 156
    iget v4, v0, Lg1/l0;->b:I

    .line 157
    .line 158
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    sub-int/2addr v4, v5

    .line 163
    if-le v2, v4, :cond_3

    .line 164
    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    sub-int p3, v2, v3

    .line 172
    .line 173
    sub-int/2addr p2, p3

    .line 174
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    if-gt p2, p3, :cond_4

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_4
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    sub-int/2addr p2, p3

    .line 186
    iget p3, v0, Lg1/l0;->b:I

    .line 187
    .line 188
    :goto_2
    mul-int/lit8 p3, p3, 0x2

    .line 189
    .line 190
    iget v4, v0, Lg1/l0;->b:I

    .line 191
    .line 192
    sub-int v4, p3, v4

    .line 193
    .line 194
    if-ge v4, p2, :cond_5

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    new-array p2, p3, [C

    .line 198
    .line 199
    iget-object v4, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v4, [C

    .line 202
    .line 203
    iget v5, v0, Lg1/l0;->c:I

    .line 204
    .line 205
    invoke-static {v4, p2, v1, v1, v5}, Ls8/l;->N([C[CIII)V

    .line 206
    .line 207
    .line 208
    iget v4, v0, Lg1/l0;->b:I

    .line 209
    .line 210
    iget v5, v0, Lg1/l0;->d:I

    .line 211
    .line 212
    sub-int/2addr v4, v5

    .line 213
    sub-int v6, p3, v4

    .line 214
    .line 215
    iget-object v7, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v7, [C

    .line 218
    .line 219
    add-int/2addr v4, v5

    .line 220
    invoke-static {v7, p2, v6, v5, v4}, Ls8/l;->N([C[CIII)V

    .line 221
    .line 222
    .line 223
    iput-object p2, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 224
    .line 225
    iput p3, v0, Lg1/l0;->b:I

    .line 226
    .line 227
    iput v6, v0, Lg1/l0;->d:I

    .line 228
    .line 229
    :goto_3
    iget p2, v0, Lg1/l0;->c:I

    .line 230
    .line 231
    if-ge v3, p2, :cond_6

    .line 232
    .line 233
    if-gt v2, p2, :cond_6

    .line 234
    .line 235
    sub-int p3, p2, v2

    .line 236
    .line 237
    iget-object v4, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v4, [C

    .line 240
    .line 241
    iget v5, v0, Lg1/l0;->d:I

    .line 242
    .line 243
    sub-int/2addr v5, p3

    .line 244
    invoke-static {v4, v4, v5, v2, p2}, Ls8/l;->N([C[CIII)V

    .line 245
    .line 246
    .line 247
    iput v3, v0, Lg1/l0;->c:I

    .line 248
    .line 249
    iget p2, v0, Lg1/l0;->d:I

    .line 250
    .line 251
    sub-int/2addr p2, p3

    .line 252
    iput p2, v0, Lg1/l0;->d:I

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_6
    if-ge v3, p2, :cond_7

    .line 256
    .line 257
    if-lt v2, p2, :cond_7

    .line 258
    .line 259
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    add-int/2addr p2, v2

    .line 264
    iput p2, v0, Lg1/l0;->d:I

    .line 265
    .line 266
    iput v3, v0, Lg1/l0;->c:I

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_7
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    add-int/2addr p2, v3

    .line 274
    invoke-virtual {v0}, Lg1/l0;->a()I

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    add-int/2addr p3, v2

    .line 279
    iget v2, v0, Lg1/l0;->d:I

    .line 280
    .line 281
    sub-int v3, p2, v2

    .line 282
    .line 283
    iget-object v4, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v4, [C

    .line 286
    .line 287
    iget v5, v0, Lg1/l0;->c:I

    .line 288
    .line 289
    invoke-static {v4, v4, v5, v2, p2}, Ls8/l;->N([C[CIII)V

    .line 290
    .line 291
    .line 292
    iget p2, v0, Lg1/l0;->c:I

    .line 293
    .line 294
    add-int/2addr p2, v3

    .line 295
    iput p2, v0, Lg1/l0;->c:I

    .line 296
    .line 297
    iput p3, v0, Lg1/l0;->d:I

    .line 298
    .line 299
    :goto_4
    iget-object p2, v0, Lg1/l0;->e:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast p2, [C

    .line 302
    .line 303
    iget p3, v0, Lg1/l0;->c:I

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    invoke-virtual {p1, v1, v2, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 310
    .line 311
    .line 312
    iget p2, v0, Lg1/l0;->c:I

    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    add-int/2addr p1, p2

    .line 319
    iput p1, v0, Lg1/l0;->c:I

    .line 320
    .line 321
    return-void

    .line 322
    :cond_8
    :goto_5
    invoke-virtual {p0}, Ld3/e;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iput-object v0, p0, Ld3/e;->d:Ljava/lang/Object;

    .line 327
    .line 328
    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Ld3/e;->e:Ljava/lang/Object;

    .line 330
    .line 331
    const/4 v0, -0x1

    .line 332
    iput v0, p0, Ld3/e;->b:I

    .line 333
    .line 334
    iput v0, p0, Ld3/e;->c:I

    .line 335
    .line 336
    invoke-virtual {p0, p1, p2, p3}, Ld3/e;->y(Ljava/lang/String;II)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method public z(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ld3/e;->L(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ld3/e;->B(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
