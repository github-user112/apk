.class public abstract Lc1/h1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/w2;

.field public static final b:Lf1/c0;

.field public static final c:Lc1/i1;

.field public static final d:Lc1/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lc1/x;->i:Lc1/x;

    .line 2
    .line 3
    new-instance v1, Lf1/w2;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lc1/h1;->a:Lf1/w2;

    .line 9
    .line 10
    sget-object v0, Lc1/x;->h:Lc1/x;

    .line 11
    .line 12
    new-instance v1, Lf1/c0;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lc1/h1;->b:Lf1/c0;

    .line 18
    .line 19
    new-instance v0, Lc1/i1;

    .line 20
    .line 21
    sget-wide v1, Ly1/q;->m:J

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 25
    .line 26
    invoke-direct {v0, v3, v4, v1, v2}, Lc1/i1;-><init>(ZFJ)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lc1/h1;->c:Lc1/i1;

    .line 30
    .line 31
    new-instance v0, Lc1/i1;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v0, v3, v4, v1, v2}, Lc1/i1;-><init>(ZFJ)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lc1/h1;->d:Lc1/i1;

    .line 38
    .line 39
    return-void
.end method

.method public static final a(FLf1/s;II)Lx/n0;
    .locals 6

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/lit8 p3, p3, 0x2

    .line 11
    .line 12
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 17
    .line 18
    :cond_1
    sget-wide v4, Ly1/q;->m:J

    .line 19
    .line 20
    const p3, -0x4c54e819

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lf1/s;->W(I)V

    .line 24
    .line 25
    .line 26
    sget-object p3, Lc1/h1;->a:Lf1/w2;

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_a

    .line 39
    .line 40
    sget-object p3, Lb1/l;->a:Lv/v0;

    .line 41
    .line 42
    new-instance p3, Ly1/q;

    .line 43
    .line 44
    invoke-direct {p3, v4, v5}, Ly1/q;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    and-int/lit8 v3, p2, 0xe

    .line 52
    .line 53
    xor-int/lit8 v3, v3, 0x6

    .line 54
    .line 55
    const/4 v4, 0x4

    .line 56
    if-le v3, v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lf1/s;->g(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    :cond_2
    and-int/lit8 v3, p2, 0x6

    .line 65
    .line 66
    if-ne v3, v4, :cond_4

    .line 67
    .line 68
    :cond_3
    const/4 v3, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v3, 0x0

    .line 71
    :goto_1
    and-int/lit8 v4, p2, 0x70

    .line 72
    .line 73
    xor-int/lit8 v4, v4, 0x30

    .line 74
    .line 75
    const/16 v5, 0x20

    .line 76
    .line 77
    if-le v4, v5, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Lf1/s;->c(F)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_7

    .line 84
    .line 85
    :cond_5
    and-int/lit8 p2, p2, 0x30

    .line 86
    .line 87
    if-ne p2, v5, :cond_6

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    const/4 v2, 0x0

    .line 91
    :cond_7
    :goto_2
    or-int p2, v3, v2

    .line 92
    .line 93
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez p2, :cond_8

    .line 98
    .line 99
    sget-object p2, Lf1/n;->a:Lf1/w0;

    .line 100
    .line 101
    if-ne v2, p2, :cond_9

    .line 102
    .line 103
    :cond_8
    new-instance v2, Lb1/e;

    .line 104
    .line 105
    invoke-direct {v2, v0, p0, p3}, Lb1/e;-><init>(ZFLf1/b1;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_9
    check-cast v2, Lb1/e;

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_a
    invoke-static {p0, v3}, Ln3/f;->a(FF)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_c

    .line 119
    .line 120
    invoke-static {v4, v5, v4, v5}, Ly1/q;->c(JJ)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_c

    .line 125
    .line 126
    if-eqz v0, :cond_b

    .line 127
    .line 128
    sget-object p0, Lc1/h1;->c:Lc1/i1;

    .line 129
    .line 130
    :goto_3
    move-object v2, p0

    .line 131
    goto :goto_4

    .line 132
    :cond_b
    sget-object p0, Lc1/h1;->d:Lc1/i1;

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_c
    new-instance p2, Lc1/i1;

    .line 136
    .line 137
    invoke-direct {p2, v0, p0, v4, v5}, Lc1/i1;-><init>(ZFJ)V

    .line 138
    .line 139
    .line 140
    move-object v2, p2

    .line 141
    :goto_4
    invoke-virtual {p1, v1}, Lf1/s;->p(Z)V

    .line 142
    .line 143
    .line 144
    return-object v2
.end method
