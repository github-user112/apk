.class public final Lec/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:Lcc/h;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcc/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lec/n;->a:Lcc/h;

    .line 5
    .line 6
    iput p2, p0, Lec/n;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lec/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lec/m;

    .line 7
    .line 8
    iget v1, v0, Lec/m;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lec/m;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lec/m;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lec/m;-><init>(Lec/n;Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lec/m;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lec/m;->f:I

    .line 28
    .line 29
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    sget-object v5, Lx8/a;->a:Lx8/a;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-eq v1, v4, :cond_2

    .line 38
    .line 39
    if-ne v1, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_7

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, Ls8/z;

    .line 61
    .line 62
    iget v1, p0, Lec/n;->b:I

    .line 63
    .line 64
    invoke-direct {p2, v1, p1}, Ls8/z;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput v4, v0, Lec/m;->f:I

    .line 68
    .line 69
    iget-object p1, p0, Lec/n;->a:Lcc/h;

    .line 70
    .line 71
    invoke-interface {p1, p2, v0}, Lcc/x;->s(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v5, :cond_4

    .line 76
    .line 77
    goto :goto_6

    .line 78
    :cond_4
    :goto_1
    iput v3, v0, Lec/m;->f:I

    .line 79
    .line 80
    invoke-interface {v0}, Lw8/c;->r()Lw8/h;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lac/z;->h(Lw8/h;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    instance-of v0, p2, Lfc/f;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    check-cast p2, Lfc/f;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const/4 p2, 0x0

    .line 99
    :goto_2
    if-nez p2, :cond_6

    .line 100
    .line 101
    move-object p1, v2

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    iget-object v0, p2, Lfc/f;->d:Lac/s;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lac/s;->r(Lw8/h;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    iput-object v2, p2, Lfc/f;->f:Ljava/lang/Object;

    .line 112
    .line 113
    iput v4, p2, Lac/f0;->c:I

    .line 114
    .line 115
    invoke-virtual {v0, p1, p2}, Lac/s;->q(Lw8/h;Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    new-instance v1, Lac/v1;

    .line 120
    .line 121
    sget-object v3, Lac/v1;->b:Lac/t;

    .line 122
    .line 123
    invoke-direct {v1, v3}, Lw8/a;-><init>(Lw8/g;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v1}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object v2, p2, Lfc/f;->f:Ljava/lang/Object;

    .line 131
    .line 132
    iput v4, p2, Lac/f0;->c:I

    .line 133
    .line 134
    invoke-virtual {v0, p1, p2}, Lac/s;->q(Lw8/h;Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    :goto_3
    move-object p1, v5

    .line 138
    :goto_4
    if-ne p1, v5, :cond_8

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    move-object p1, v2

    .line 142
    :goto_5
    if-ne p1, v5, :cond_9

    .line 143
    .line 144
    :goto_6
    return-object v5

    .line 145
    :cond_9
    :goto_7
    return-object v2
.end method
