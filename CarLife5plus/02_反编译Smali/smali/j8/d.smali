.class public final Lj8/d;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FFLw8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Lj8/d;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/d;->i:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lj8/d;->g:F

    .line 6
    .line 7
    iput p3, p0, Lj8/d;->h:F

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lj8/d;->e:I

    .line 2
    .line 3
    check-cast p1, Lac/w;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lj8/d;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lj8/d;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lj8/d;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lj8/d;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lj8/d;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lj8/d;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 7

    .line 1
    iget p1, p0, Lj8/d;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj8/d;

    .line 7
    .line 8
    iget-object p1, p0, Lj8/d;->i:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lz/l1;

    .line 12
    .line 13
    iget v3, p0, Lj8/d;->h:F

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    iget v2, p0, Lj8/d;->g:F

    .line 17
    .line 18
    move-object v4, p2

    .line 19
    invoke-direct/range {v0 .. v5}, Lj8/d;-><init>(Ljava/lang/Object;FFLw8/c;I)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_0
    move-object v4, p2

    .line 24
    new-instance v1, Lj8/d;

    .line 25
    .line 26
    iget-object p1, p0, Lj8/d;->i:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    check-cast v2, Lx/n1;

    .line 30
    .line 31
    move-object v5, v4

    .line 32
    iget v4, p0, Lj8/d;->h:F

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    iget v3, p0, Lj8/d;->g:F

    .line 36
    .line 37
    invoke-direct/range {v1 .. v6}, Lj8/d;-><init>(Ljava/lang/Object;FFLw8/c;I)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lj8/d;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lj8/d;->f:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

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
    iget-object p1, p0, Lj8/d;->i:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lz/l1;

    .line 31
    .line 32
    iget-object p1, p1, Lz/l1;->E:Lz/s1;

    .line 33
    .line 34
    iget v0, p0, Lj8/d;->g:F

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-long v2, v0

    .line 41
    iget v0, p0, Lj8/d;->h:F

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-long v4, v0

    .line 48
    const/16 v0, 0x20

    .line 49
    .line 50
    shl-long/2addr v2, v0

    .line 51
    const-wide v6, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v4, v6

    .line 57
    or-long/2addr v2, v4

    .line 58
    iput v1, p0, Lj8/d;->f:I

    .line 59
    .line 60
    invoke-static {p1, v2, v3, p0}, Landroidx/compose/foundation/gestures/a;->a(Lz/s1;JLy8/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 65
    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 70
    .line 71
    :goto_1
    return-object v0

    .line 72
    :pswitch_0
    iget v0, p0, Lj8/d;->f:I

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    if-ne v0, v1, :cond_3

    .line 78
    .line 79
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lj8/d;->i:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lx/n1;

    .line 97
    .line 98
    iget v0, p0, Lj8/d;->g:F

    .line 99
    .line 100
    iget v2, p0, Lj8/d;->h:F

    .line 101
    .line 102
    mul-float v0, v0, v2

    .line 103
    .line 104
    float-to-int v0, v0

    .line 105
    iput v1, p0, Lj8/d;->f:I

    .line 106
    .line 107
    iget-object v1, p1, Lx/n1;->a:Lf1/h1;

    .line 108
    .line 109
    invoke-virtual {v1}, Lf1/h1;->f()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    sub-int/2addr v0, v1

    .line 114
    int-to-float v0, v0

    .line 115
    invoke-static {p1, v0, p0}, Lp4/o;->b0(Lx/n1;FLy8/c;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 120
    .line 121
    if-ne p1, v0, :cond_5

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 125
    .line 126
    :goto_3
    return-object v0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
