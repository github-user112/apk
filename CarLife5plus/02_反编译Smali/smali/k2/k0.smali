.class public final Lk2/k0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLk2/m0;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk2/k0;->e:I

    .line 1
    iput-wide p1, p0, Lk2/k0;->g:J

    iput-object p3, p0, Lk2/k0;->h:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLw8/c;I)V
    .locals 0

    .line 2
    iput p5, p0, Lk2/k0;->e:I

    iput-object p1, p0, Lk2/k0;->h:Ljava/lang/Object;

    iput-wide p2, p0, Lk2/k0;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lk2/k0;->e:I

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
    invoke-virtual {p0, p1, p2}, Lk2/k0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lk2/k0;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lk2/k0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lk2/k0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lk2/k0;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lk2/k0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lk2/k0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lk2/k0;

    .line 41
    .line 42
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lk2/k0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 7

    .line 1
    iget p1, p0, Lk2/k0;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lk2/k0;

    .line 7
    .line 8
    iget-object p1, p0, Lk2/k0;->h:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lv/c;

    .line 12
    .line 13
    iget-wide v2, p0, Lk2/k0;->g:J

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    move-object v4, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Lk2/k0;-><init>(Ljava/lang/Object;JLw8/c;I)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    move-object v4, p2

    .line 22
    new-instance v1, Lk2/k0;

    .line 23
    .line 24
    iget-object p1, p0, Lk2/k0;->h:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    check-cast v2, Lq3/i;

    .line 28
    .line 29
    move-object v5, v4

    .line 30
    iget-wide v3, p0, Lk2/k0;->g:J

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-direct/range {v1 .. v6}, Lk2/k0;-><init>(Ljava/lang/Object;JLw8/c;I)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_1
    move-object v4, p2

    .line 38
    new-instance p1, Lk2/k0;

    .line 39
    .line 40
    iget-object p2, p0, Lk2/k0;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lk2/m0;

    .line 43
    .line 44
    iget-wide v0, p0, Lk2/k0;->g:J

    .line 45
    .line 46
    invoke-direct {p1, v0, v1, p2, v4}, Lk2/k0;-><init>(JLk2/m0;Lw8/c;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lk2/k0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lk2/k0;->f:I

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
    move-object v6, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lk2/k0;->h:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v2, p1

    .line 32
    check-cast v2, Lv/c;

    .line 33
    .line 34
    new-instance v3, Lx1/b;

    .line 35
    .line 36
    iget-wide v4, p0, Lk2/k0;->g:J

    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Lx1/b;-><init>(J)V

    .line 39
    .line 40
    .line 41
    sget-object v4, Lw0/t0;->d:Lv/g0;

    .line 42
    .line 43
    iput v1, p0, Lk2/k0;->f:I

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/16 v7, 0xc

    .line 47
    .line 48
    move-object v6, p0

    .line 49
    invoke-static/range {v2 .. v7}, Lv/c;->c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 54
    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 59
    .line 60
    :goto_1
    return-object v0

    .line 61
    :pswitch_0
    move-object v6, p0

    .line 62
    iget v0, v6, Lk2/k0;->f:I

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, v6, Lk2/k0;->h:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lq3/i;

    .line 87
    .line 88
    iget-object p1, p1, Lq3/i;->a:Lj2/d;

    .line 89
    .line 90
    iput v1, v6, Lk2/k0;->f:I

    .line 91
    .line 92
    iget-wide v0, v6, Lk2/k0;->g:J

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1, p0}, Lj2/d;->b(JLy8/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 99
    .line 100
    if-ne p1, v0, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 104
    .line 105
    :goto_3
    return-object v0

    .line 106
    :pswitch_1
    move-object v6, p0

    .line 107
    iget v0, v6, Lk2/k0;->f:I

    .line 108
    .line 109
    const-wide/16 v1, 0x8

    .line 110
    .line 111
    iget-wide v3, v6, Lk2/k0;->g:J

    .line 112
    .line 113
    const/4 v5, 0x2

    .line 114
    const/4 v7, 0x1

    .line 115
    sget-object v8, Lx8/a;->a:Lx8/a;

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    if-eq v0, v7, :cond_7

    .line 120
    .line 121
    if-ne v0, v5, :cond_6

    .line 122
    .line 123
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_7
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    sub-long v9, v3, v1

    .line 143
    .line 144
    iput v7, v6, Lk2/k0;->f:I

    .line 145
    .line 146
    invoke-static {v9, v10, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v8, :cond_9

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    :goto_4
    iput v5, v6, Lk2/k0;->f:I

    .line 154
    .line 155
    invoke-static {v1, v2, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-ne p1, v8, :cond_a

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_a
    :goto_5
    iget-object p1, v6, Lk2/k0;->h:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Lk2/m0;

    .line 165
    .line 166
    iget-object p1, p1, Lk2/m0;->c:Lac/i;

    .line 167
    .line 168
    if-eqz p1, :cond_b

    .line 169
    .line 170
    new-instance v0, Lk2/q;

    .line 171
    .line 172
    invoke-direct {v0, v3, v4}, Lk2/q;-><init>(J)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_b
    sget-object v8, Lr8/z;->a:Lr8/z;

    .line 183
    .line 184
    :goto_6
    return-object v8

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
