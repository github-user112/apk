.class public final Lb1/p;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:F

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb1/q;FLv/j;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb1/p;->e:I

    .line 1
    iput-object p1, p0, Lb1/p;->h:Ljava/lang/Object;

    iput p2, p0, Lb1/p;->f:F

    iput-object p3, p0, Lb1/p;->i:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lv/s0;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb1/p;->e:I

    .line 2
    iput-object p1, p0, Lb1/p;->i:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lb1/p;->e:I

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
    invoke-virtual {p0, p1, p2}, Lb1/p;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lb1/p;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lb1/p;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb1/p;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lb1/p;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lb1/p;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lb1/p;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb1/p;

    .line 7
    .line 8
    iget-object v1, p0, Lb1/p;->i:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lv/s0;

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Lb1/p;-><init>(Lv/s0;Lw8/c;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lb1/p;->h:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    new-instance p1, Lb1/p;

    .line 19
    .line 20
    iget-object v0, p0, Lb1/p;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lb1/q;

    .line 23
    .line 24
    iget v1, p0, Lb1/p;->f:F

    .line 25
    .line 26
    iget-object v2, p0, Lb1/p;->i:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lv/j;

    .line 29
    .line 30
    invoke-direct {p1, v0, v1, v2, p2}, Lb1/p;-><init>(Lb1/q;FLv/j;Lw8/c;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lb1/p;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lb1/p;->g:I

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
    iget v0, p0, Lb1/p;->f:F

    .line 14
    .line 15
    iget-object v2, p0, Lb1/p;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lac/w;

    .line 18
    .line 19
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lb1/p;->h:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lac/w;

    .line 37
    .line 38
    invoke-interface {p1}, Lac/w;->q()Lw8/h;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lv/d;->i(Lw8/h;)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    move-object v2, p1

    .line 47
    :cond_2
    :goto_0
    invoke-static {v2}, Lac/z;->p(Lac/w;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lb1/p;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lv/s0;

    .line 56
    .line 57
    new-instance v3, Lv/q0;

    .line 58
    .line 59
    invoke-direct {v3, p1, v0}, Lv/q0;-><init>(Lv/s0;F)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lb1/p;->h:Ljava/lang/Object;

    .line 63
    .line 64
    iput v0, p0, Lb1/p;->f:F

    .line 65
    .line 66
    iput v1, p0, Lb1/p;->g:I

    .line 67
    .line 68
    iget-object p1, p0, Ly8/c;->b:Lw8/h;

    .line 69
    .line 70
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lf1/b;->q(Lw8/h;)Lf1/x0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1, v3, p0}, Lf1/x0;->v(Lf9/k;Lw8/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 82
    .line 83
    if-ne p1, v3, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 87
    .line 88
    :goto_1
    return-object v3

    .line 89
    :pswitch_0
    iget v0, p0, Lb1/p;->g:I

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    if-ne v0, v1, :cond_4

    .line 95
    .line 96
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_5
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lb1/p;->h:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lb1/q;

    .line 114
    .line 115
    iget-object p1, p1, Lb1/q;->c:Ljava/lang/Object;

    .line 116
    .line 117
    move-object v2, p1

    .line 118
    check-cast v2, Lv/c;

    .line 119
    .line 120
    iget p1, p0, Lb1/p;->f:F

    .line 121
    .line 122
    new-instance v3, Ljava/lang/Float;

    .line 123
    .line 124
    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lb1/p;->i:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v4, p1

    .line 130
    check-cast v4, Lv/j;

    .line 131
    .line 132
    iput v1, p0, Lb1/p;->g:I

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    const/16 v7, 0xc

    .line 136
    .line 137
    move-object v6, p0

    .line 138
    invoke-static/range {v2 .. v7}, Lv/c;->c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 143
    .line 144
    if-ne p1, v0, :cond_6

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 148
    .line 149
    :goto_3
    return-object v0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
