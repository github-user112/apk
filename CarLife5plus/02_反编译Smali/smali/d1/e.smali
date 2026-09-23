.class public abstract Ld1/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lb3/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb3/y;

    .line 2
    .line 3
    new-instance v1, Lb3/w;

    .line 4
    .line 5
    invoke-direct {v1}, Lb3/w;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v1}, Lb3/y;-><init>(Lb3/x;Lb3/w;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Ld1/e;->a:Lb3/y;

    .line 13
    .line 14
    return-void
.end method

.method public static final a(JLb3/o0;Lf9/n;Lf1/s;I)V
    .locals 7

    .line 1
    const v0, -0x2aaf331b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p4, p0, p1}, Lf1/s;->e(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p5

    .line 24
    :goto_1
    and-int/lit8 v2, p5, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v2

    .line 40
    :cond_3
    and-int/lit16 v2, p5, 0x180

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const/16 v2, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v2, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v0, v2

    .line 56
    :cond_5
    and-int/lit16 v2, v0, 0x93

    .line 57
    .line 58
    const/16 v3, 0x92

    .line 59
    .line 60
    if-ne v2, v3, :cond_7

    .line 61
    .line 62
    invoke-virtual {p4}, Lf1/s;->z()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 70
    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_7
    :goto_4
    sget-object v2, Lc1/u2;->a:Lf1/c0;

    .line 74
    .line 75
    invoke-virtual {p4, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lb3/o0;

    .line 80
    .line 81
    invoke-virtual {v3, p2}, Lb3/o0;->d(Lb3/o0;)Lb3/o0;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Lc1/a0;->a:Lf1/c0;

    .line 86
    .line 87
    new-instance v5, Ly1/q;

    .line 88
    .line 89
    invoke-direct {v5, p0, p1}, Ly1/q;-><init>(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v2, v3}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-array v1, v1, [Lf1/u1;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    aput-object v4, v1, v3

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    aput-object v2, v1, v3

    .line 107
    .line 108
    shr-int/lit8 v0, v0, 0x3

    .line 109
    .line 110
    and-int/lit8 v0, v0, 0x70

    .line 111
    .line 112
    const/16 v2, 0x8

    .line 113
    .line 114
    or-int/2addr v0, v2

    .line 115
    invoke-static {v1, p3, p4, v0}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 116
    .line 117
    .line 118
    :goto_5
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    if-eqz p4, :cond_8

    .line 123
    .line 124
    new-instance v0, Ld1/h;

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    move-wide v1, p0

    .line 128
    move-object v3, p2

    .line 129
    move-object v4, p3

    .line 130
    move v5, p5

    .line 131
    invoke-direct/range {v0 .. v6}, Ld1/h;-><init>(JLb3/o0;Lf9/n;II)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p4, Lf1/w1;->d:Lf9/n;

    .line 135
    .line 136
    :cond_8
    return-void
.end method
