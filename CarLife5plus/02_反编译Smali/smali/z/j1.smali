.class public final Lz/j1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lz/l1;

.field public synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lz/l1;JLw8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Lz/j1;->e:I

    iput-object p1, p0, Lz/j1;->g:Lz/l1;

    iput-wide p2, p0, Lz/j1;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lz/l1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lz/j1;->e:I

    .line 2
    iput-object p1, p0, Lz/j1;->g:Lz/l1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lz/j1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx1/b;

    .line 7
    .line 8
    iget-wide v0, p1, Lx1/b;->a:J

    .line 9
    .line 10
    check-cast p2, Lw8/c;

    .line 11
    .line 12
    new-instance p1, Lz/j1;

    .line 13
    .line 14
    iget-object v2, p0, Lz/j1;->g:Lz/l1;

    .line 15
    .line 16
    invoke-direct {p1, v2, p2}, Lz/j1;-><init>(Lz/l1;Lw8/c;)V

    .line 17
    .line 18
    .line 19
    iput-wide v0, p1, Lz/j1;->h:J

    .line 20
    .line 21
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lz/j1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_0
    check-cast p1, Lac/w;

    .line 29
    .line 30
    check-cast p2, Lw8/c;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lz/j1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lz/j1;

    .line 37
    .line 38
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lz/j1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :pswitch_1
    check-cast p1, Lac/w;

    .line 46
    .line 47
    check-cast p2, Lw8/c;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lz/j1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lz/j1;

    .line 54
    .line 55
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lz/j1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_2
    check-cast p1, Lac/w;

    .line 63
    .line 64
    check-cast p2, Lw8/c;

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Lz/j1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lz/j1;

    .line 71
    .line 72
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lz/j1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    iget v0, p0, Lz/j1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz/j1;

    .line 7
    .line 8
    iget-object v1, p0, Lz/j1;->g:Lz/l1;

    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lz/j1;-><init>(Lz/l1;Lw8/c;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Lx1/b;

    .line 14
    .line 15
    iget-wide p1, p1, Lx1/b;->a:J

    .line 16
    .line 17
    iput-wide p1, v0, Lz/j1;->h:J

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance v1, Lz/j1;

    .line 21
    .line 22
    iget-wide v3, p0, Lz/j1;->h:J

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    iget-object v2, p0, Lz/j1;->g:Lz/l1;

    .line 26
    .line 27
    move-object v5, p2

    .line 28
    invoke-direct/range {v1 .. v6}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    move-object v6, p2

    .line 33
    new-instance v2, Lz/j1;

    .line 34
    .line 35
    iget-wide v4, p0, Lz/j1;->h:J

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    iget-object v3, p0, Lz/j1;->g:Lz/l1;

    .line 39
    .line 40
    invoke-direct/range {v2 .. v7}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :pswitch_2
    move-object v6, p2

    .line 45
    new-instance v2, Lz/j1;

    .line 46
    .line 47
    iget-wide v4, p0, Lz/j1;->h:J

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    iget-object v3, p0, Lz/j1;->g:Lz/l1;

    .line 51
    .line 52
    invoke-direct/range {v2 .. v7}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lz/j1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lz/j1;->f:I

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
    iget-wide v2, p0, Lz/j1;->h:J

    .line 29
    .line 30
    iget-object p1, p0, Lz/j1;->g:Lz/l1;

    .line 31
    .line 32
    iget-object p1, p1, Lz/l1;->E:Lz/s1;

    .line 33
    .line 34
    iput v1, p0, Lz/j1;->f:I

    .line 35
    .line 36
    invoke-static {p1, v2, v3, p0}, Landroidx/compose/foundation/gestures/a;->a(Lz/s1;JLy8/c;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 41
    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    move-object p1, v0

    .line 45
    :cond_2
    :goto_0
    return-object p1

    .line 46
    :pswitch_0
    iget v0, p0, Lz/j1;->f:I

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lz/j1;->g:Lz/l1;

    .line 69
    .line 70
    iget-object p1, p1, Lz/l1;->E:Lz/s1;

    .line 71
    .line 72
    iget-wide v2, p0, Lz/j1;->h:J

    .line 73
    .line 74
    iput v1, p0, Lz/j1;->f:I

    .line 75
    .line 76
    invoke-virtual {p1, v2, v3, v1, p0}, Lz/s1;->b(JZLy8/i;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 81
    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    :goto_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 86
    .line 87
    :goto_2
    return-object v0

    .line 88
    :pswitch_1
    iget v0, p0, Lz/j1;->f:I

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    if-ne v0, v1, :cond_6

    .line 94
    .line 95
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_7
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lz/j1;->g:Lz/l1;

    .line 111
    .line 112
    iget-object p1, p1, Lz/l1;->E:Lz/s1;

    .line 113
    .line 114
    new-instance v0, Lz/k1;

    .line 115
    .line 116
    iget-wide v2, p0, Lz/j1;->h:J

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-direct {v0, v2, v3, v4}, Lz/k1;-><init>(JLw8/c;)V

    .line 120
    .line 121
    .line 122
    iput v1, p0, Lz/j1;->f:I

    .line 123
    .line 124
    sget-object v1, Lx/v0;->b:Lx/v0;

    .line 125
    .line 126
    invoke-virtual {p1, v1, v0, p0}, Lz/s1;->f(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 131
    .line 132
    if-ne p1, v0, :cond_8

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_8
    :goto_3
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 136
    .line 137
    :goto_4
    return-object v0

    .line 138
    :pswitch_2
    iget v0, p0, Lz/j1;->f:I

    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    if-ne v0, v1, :cond_9

    .line 144
    .line 145
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 152
    .line 153
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_a
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lz/j1;->g:Lz/l1;

    .line 161
    .line 162
    iget-object p1, p1, Lz/l1;->E:Lz/s1;

    .line 163
    .line 164
    iget-wide v2, p0, Lz/j1;->h:J

    .line 165
    .line 166
    iput v1, p0, Lz/j1;->f:I

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, v2, v3, v0, p0}, Lz/s1;->b(JZLy8/i;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 174
    .line 175
    if-ne p1, v0, :cond_b

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_b
    :goto_5
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 179
    .line 180
    :goto_6
    return-object v0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
