.class public abstract Ll0/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    sput v0, Ll0/e;->a:F

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    mul-float v0, v0, v1

    .line 9
    .line 10
    const v1, 0x401a827a

    .line 11
    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    sput v0, Ll0/e;->b:F

    .line 15
    .line 16
    return-void
.end method

.method public static final a(Lw0/q;Lr1/p;JLf1/s;I)V
    .locals 9

    .line 1
    const v0, 0x69deb1cb

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    :goto_0
    or-int/2addr v0, p5

    .line 18
    invoke-virtual {p4, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v2, 0x10

    .line 28
    .line 29
    :goto_1
    or-int/2addr v0, v2

    .line 30
    or-int/lit16 v0, v0, 0x80

    .line 31
    .line 32
    and-int/lit16 v2, v0, 0x93

    .line 33
    .line 34
    const/16 v3, 0x92

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eq v2, v3, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v2, 0x0

    .line 43
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p4, v3, v2}, Lf1/s;->N(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_8

    .line 50
    .line 51
    invoke-virtual {p4}, Lf1/s;->S()V

    .line 52
    .line 53
    .line 54
    and-int/lit8 v2, p5, 0x1

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p4}, Lf1/s;->x()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 66
    .line 67
    .line 68
    and-int/lit16 v0, v0, -0x381

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    :goto_3
    and-int/lit16 v0, v0, -0x381

    .line 72
    .line 73
    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    :goto_4
    invoke-virtual {p4}, Lf1/s;->q()V

    .line 79
    .line 80
    .line 81
    and-int/lit8 v0, v0, 0xe

    .line 82
    .line 83
    if-eq v0, v1, :cond_5

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_5
    const/4 v4, 0x1

    .line 87
    :goto_5
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v4, :cond_6

    .line 92
    .line 93
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 94
    .line 95
    if-ne v1, v2, :cond_7

    .line 96
    .line 97
    :cond_6
    new-instance v1, La8/q;

    .line 98
    .line 99
    const/16 v2, 0x12

    .line 100
    .line 101
    invoke-direct {v1, v2, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    check-cast v1, Lf9/k;

    .line 108
    .line 109
    invoke-static {p1, v1}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v2, Lr1/c;->b:Lr1/h;

    .line 114
    .line 115
    new-instance v3, Ll0/b;

    .line 116
    .line 117
    invoke-direct {v3, p2, p3, v1}, Ll0/b;-><init>(JLr1/p;)V

    .line 118
    .line 119
    .line 120
    const v1, -0x628ed1fe

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v3, p4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    or-int/lit16 v0, v0, 0x1b0

    .line 128
    .line 129
    invoke-static {p0, v2, v1, p4, v0}, Lw0/y0;->a(Lw0/q;Lr1/d;Ln1/c;Lf1/s;I)V

    .line 130
    .line 131
    .line 132
    :goto_6
    move-wide v6, p2

    .line 133
    goto :goto_7

    .line 134
    :cond_8
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :goto_7
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    if-eqz p2, :cond_9

    .line 143
    .line 144
    new-instance v3, Ll0/a;

    .line 145
    .line 146
    move-object v4, p0

    .line 147
    move-object v5, p1

    .line 148
    move v8, p5

    .line 149
    invoke-direct/range {v3 .. v8}, Ll0/a;-><init>(Lw0/q;Lr1/p;JI)V

    .line 150
    .line 151
    .line 152
    iput-object v3, p2, Lf1/w1;->d:Lf9/n;

    .line 153
    .line 154
    :cond_9
    return-void
.end method

.method public static final b(Lr1/p;Lf1/s;II)V
    .locals 5

    .line 1
    const v0, 0x29616e63

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    or-int/lit8 v2, p2, 0x6

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x2

    .line 24
    :goto_0
    or-int/2addr v2, p2

    .line 25
    :goto_1
    and-int/lit8 v3, v2, 0x3

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v3, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    :goto_2
    and-int/2addr v2, v4

    .line 34
    invoke-virtual {p1, v2, v1}, Lf1/s;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lr1/m;->a:Lr1/m;

    .line 43
    .line 44
    :cond_3
    sget v0, Ll0/e;->b:F

    .line 45
    .line 46
    sget v1, Ll0/e;->a:F

    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/c;->i(Lr1/p;FF)Lr1/p;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Ll0/d;->a:Ll0/d;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 63
    .line 64
    .line 65
    :goto_3
    invoke-virtual {p1}, Lf1/s;->r()Lf1/w1;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    new-instance v0, Lj8/g0;

    .line 72
    .line 73
    invoke-direct {v0, p0, p2, p3}, Lj8/g0;-><init>(Lr1/p;II)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p1, Lf1/w1;->d:Lf9/n;

    .line 77
    .line 78
    :cond_5
    return-void
.end method
