.class public final Lz/g;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Lg9/u;

.field public f:Lv/k;

.field public g:I

.field public final synthetic h:F

.field public final synthetic i:Lz/h;

.field public final synthetic j:Lz/o1;


# direct methods
.method public constructor <init>(FLz/h;Lz/o1;Lw8/c;)V
    .locals 0

    .line 1
    iput p1, p0, Lz/g;->h:F

    .line 2
    .line 3
    iput-object p2, p0, Lz/g;->i:Lz/h;

    .line 4
    .line 5
    iput-object p3, p0, Lz/g;->j:Lz/o1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/g;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/g;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/g;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    new-instance p1, Lz/g;

    .line 2
    .line 3
    iget-object v0, p0, Lz/g;->i:Lz/h;

    .line 4
    .line 5
    iget-object v1, p0, Lz/g;->j:Lz/o1;

    .line 6
    .line 7
    iget v2, p0, Lz/g;->h:F

    .line 8
    .line 9
    invoke-direct {p1, v2, v0, v1, p2}, Lz/g;-><init>(FLz/h;Lz/o1;Lw8/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lz/g;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lz/g;->f:Lv/k;

    .line 9
    .line 10
    iget-object v1, p0, Lz/g;->e:Lg9/u;

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lz/g;->h:F

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    .line 36
    cmpl-float v0, v0, v2

    .line 37
    .line 38
    if-lez v0, :cond_4

    .line 39
    .line 40
    new-instance v5, Lg9/u;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput p1, v5, Lg9/u;->a:F

    .line 46
    .line 47
    new-instance v3, Lg9/u;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x1c

    .line 53
    .line 54
    invoke-static {p1, v0}, Lv/d;->b(FI)Lv/k;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :try_start_1
    iget-object v6, p0, Lz/g;->i:Lz/h;

    .line 59
    .line 60
    iget-object v0, v6, Lz/h;->a:Lv/s;

    .line 61
    .line 62
    iget-object v4, p0, Lz/g;->j:Lz/o1;

    .line 63
    .line 64
    new-instance v2, La8/h;

    .line 65
    .line 66
    const/4 v7, 0x7

    .line 67
    invoke-direct/range {v2 .. v7}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    iput-object v5, p0, Lz/g;->e:Lg9/u;

    .line 71
    .line 72
    iput-object p1, p0, Lz/g;->f:Lv/k;

    .line 73
    .line 74
    iput v1, p0, Lz/g;->g:I

    .line 75
    .line 76
    iget-object v1, p1, Lv/k;->b:Lf1/k1;

    .line 77
    .line 78
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v3, p1, Lv/k;->c:Lv/p;

    .line 83
    .line 84
    sget-object v4, Lv/d;->j:Lv/w0;

    .line 85
    .line 86
    new-instance v7, Lv/r;

    .line 87
    .line 88
    invoke-direct {v7, v0, v4, v1, v3}, Lv/r;-><init>(Lv/s;Lv/w0;Ljava/lang/Object;Lv/p;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    const-wide/high16 v8, -0x8000000000000000L

    .line 92
    .line 93
    move-object v11, p0

    .line 94
    move-object v6, p1

    .line 95
    move-object v10, v2

    .line 96
    :try_start_2
    invoke-static/range {v6 .. v11}, Lv/d;->c(Lv/k;Lv/f;JLf9/k;Lw8/c;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 101
    .line 102
    if-ne p1, v0, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :try_start_3
    sget-object p1, Lr8/z;->a:Lr8/z;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    .line 107
    :goto_0
    if-ne p1, v0, :cond_3

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_3
    move-object v1, v5

    .line 111
    goto :goto_3

    .line 112
    :catch_0
    :goto_1
    move-object v1, v5

    .line 113
    move-object v0, v6

    .line 114
    goto :goto_2

    .line 115
    :catch_1
    move-object v6, p1

    .line 116
    goto :goto_1

    .line 117
    :catch_2
    :goto_2
    iget-object p1, v0, Lv/k;->a:Lv/w0;

    .line 118
    .line 119
    iget-object p1, p1, Lv/w0;->b:Lf9/k;

    .line 120
    .line 121
    iget-object v0, v0, Lv/k;->c:Lv/p;

    .line 122
    .line 123
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/lang/Number;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, v1, Lg9/u;->a:F

    .line 134
    .line 135
    :goto_3
    iget p1, v1, Lg9/u;->a:F

    .line 136
    .line 137
    :cond_4
    new-instance v0, Ljava/lang/Float;

    .line 138
    .line 139
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 140
    .line 141
    .line 142
    return-object v0
.end method
