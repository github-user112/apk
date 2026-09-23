.class public final Lg0/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lh0/v;


# instance fields
.field public final a:Lg0/u;

.field public final b:Lg0/g;

.field public final c:Le7/l;


# direct methods
.method public constructor <init>(Lg0/u;Lg0/g;Le7/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/h;->a:Lg0/u;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/h;->b:Lg0/g;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/h;->c:Le7/l;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/h;->b:Lg0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/g;->k()Le7/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Le7/l;->b:I

    .line 8
    .line 9
    return v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lg0/h;->c:Le7/l;

    .line 2
    .line 3
    iget-object v1, v0, Le7/l;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, v0, Le7/l;->b:I

    .line 8
    .line 9
    sub-int v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    aget-object v0, v1, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lg0/h;->b:Lg0/g;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lh0/z;->l(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/h;->b:Lg0/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lh0/z;->j(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/h;->c:Le7/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le7/l;->d(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(ILjava/lang/Object;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x5905c824

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p1}, Lf1/s;->d(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p4

    .line 17
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    const/16 v4, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v4, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v4

    .line 29
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    const/16 v4, 0x100

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v4, 0x80

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v4

    .line 41
    and-int/lit16 v4, v0, 0x93

    .line 42
    .line 43
    const/16 v5, 0x92

    .line 44
    .line 45
    if-eq v4, v5, :cond_3

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const/4 v4, 0x0

    .line 50
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 51
    .line 52
    invoke-virtual {p3, v5, v4}, Lf1/s;->N(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    iget-object v4, p0, Lg0/h;->a:Lg0/u;

    .line 59
    .line 60
    iget-object v4, v4, Lg0/u;->q:Lh0/e0;

    .line 61
    .line 62
    new-instance v5, Lf0/h;

    .line 63
    .line 64
    const/4 v7, 0x1

    .line 65
    invoke-direct {v5, p0, p1, v7}, Lf0/h;-><init>(Lh0/v;II)V

    .line 66
    .line 67
    .line 68
    const v7, 0x2b48c518

    .line 69
    .line 70
    .line 71
    invoke-static {v7, v5, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    shr-int/lit8 v7, v0, 0x3

    .line 76
    .line 77
    and-int/lit8 v7, v7, 0xe

    .line 78
    .line 79
    or-int/lit16 v7, v7, 0xc00

    .line 80
    .line 81
    shl-int/lit8 v0, v0, 0x3

    .line 82
    .line 83
    and-int/lit8 v0, v0, 0x70

    .line 84
    .line 85
    or-int/2addr v7, v0

    .line 86
    move v3, p1

    .line 87
    move-object v2, p2

    .line 88
    move-object v6, p3

    .line 89
    invoke-static/range {v2 .. v7}, Lh0/z;->b(Ljava/lang/Object;ILh0/e0;Ln1/c;Lf1/s;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 94
    .line 95
    .line 96
    :goto_4
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_5

    .line 101
    .line 102
    new-instance v0, La8/g;

    .line 103
    .line 104
    const/4 v5, 0x4

    .line 105
    move-object v1, p0

    .line 106
    move v2, p1

    .line 107
    move-object v3, p2

    .line 108
    move v4, p4

    .line 109
    invoke-direct/range {v0 .. v5}, La8/g;-><init>(Lh0/v;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lg0/h;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lg0/h;

    .line 12
    .line 13
    iget-object p1, p1, Lg0/h;->b:Lg0/g;

    .line 14
    .line 15
    iget-object v0, p0, Lg0/h;->b:Lg0/g;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/h;->b:Lg0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
