.class public abstract Lv/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lv/b1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final a(Ljava/lang/Object;Lv/w0;Lv/j;Ljava/lang/String;Lf1/s;I)Lf1/v2;
    .locals 8

    .line 1
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 p5, 0x0

    .line 6
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 7
    .line 8
    if-ne p3, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p4, p3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    check-cast p3, Lf1/b1;

    .line 18
    .line 19
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne v1, v0, :cond_1

    .line 24
    .line 25
    new-instance v1, Lv/c;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1, p5}, Lv/c;-><init>(Ljava/lang/Object;Lv/w0;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    move-object v4, v1

    .line 34
    check-cast v4, Lv/c;

    .line 35
    .line 36
    invoke-static {p5, p4}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {p2, p4}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    const/4 p1, -0x1

    .line 51
    const/4 p2, 0x6

    .line 52
    invoke-static {p1, p2, p5}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p4, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    move-object v3, p1

    .line 60
    check-cast v3, Lcc/l;

    .line 61
    .line 62
    invoke-virtual {p4, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p4, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    or-int/2addr p1, p2

    .line 71
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    if-ne p2, v0, :cond_4

    .line 78
    .line 79
    :cond_3
    new-instance p2, La8/n0;

    .line 80
    .line 81
    const/16 p1, 0x12

    .line 82
    .line 83
    invoke-direct {p2, p1, v3, p0}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    check-cast p2, Lf9/a;

    .line 90
    .line 91
    invoke-static {p2, p4}, Lf1/b;->h(Lf9/a;Lf1/s;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-virtual {p4, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    or-int/2addr p0, p1

    .line 103
    invoke-virtual {p4, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    or-int/2addr p0, p1

    .line 108
    invoke-virtual {p4, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    or-int/2addr p0, p1

    .line 113
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-nez p0, :cond_5

    .line 118
    .line 119
    if-ne p1, v0, :cond_6

    .line 120
    .line 121
    :cond_5
    new-instance v2, Lr2/z2;

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-direct/range {v2 .. v7}, Lr2/z2;-><init>(Lcc/l;Lv/c;Lf1/b1;Lf1/b1;Lw8/c;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move-object p1, v2

    .line 131
    :cond_6
    check-cast p1, Lf9/n;

    .line 132
    .line 133
    invoke-static {p4, p1, v3}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Lf1/v2;

    .line 141
    .line 142
    if-nez p0, :cond_7

    .line 143
    .line 144
    iget-object p0, v4, Lv/c;->c:Lv/k;

    .line 145
    .line 146
    :cond_7
    return-object p0
.end method
