.class public final Lb8/l;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lb8/l;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lb8/l;->g:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lb8/l;->e:I

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
    invoke-virtual {p0, p1, p2}, Lb8/l;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lb8/l;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lb8/l;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb8/l;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lb8/l;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lb8/l;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lb8/l;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lb8/l;

    .line 41
    .line 42
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lb8/l;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lb8/l;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lb8/l;

    .line 54
    .line 55
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lb8/l;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget p1, p0, Lb8/l;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lb8/l;

    .line 7
    .line 8
    iget-object v0, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lf0/u;

    .line 11
    .line 12
    iget v1, p0, Lb8/l;->g:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/l;-><init>(Ljava/lang/Object;ILw8/c;I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_0
    new-instance p1, Lb8/l;

    .line 20
    .line 21
    iget-object v0, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lx/n1;

    .line 24
    .line 25
    iget v1, p0, Lb8/l;->g:I

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/l;-><init>(Ljava/lang/Object;ILw8/c;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, Lb8/l;

    .line 33
    .line 34
    iget-object v0, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lh0/n0;

    .line 37
    .line 38
    iget v1, p0, Lb8/l;->g:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/l;-><init>(Ljava/lang/Object;ILw8/c;I)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    new-instance p1, Lb8/l;

    .line 46
    .line 47
    iget-object v0, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lz7/b2;

    .line 50
    .line 51
    iget v1, p0, Lb8/l;->g:I

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {p1, v0, v1, p2, v2}, Lb8/l;-><init>(Ljava/lang/Object;ILw8/c;I)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lb8/l;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lb8/l;->f:I

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
    iget-object p1, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lf0/u;

    .line 31
    .line 32
    iput v1, p0, Lb8/l;->f:I

    .line 33
    .line 34
    iget v0, p0, Lb8/l;->g:I

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Lf0/u;->i(Lf0/u;ILy8/i;)Ljava/lang/Object;

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
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 46
    .line 47
    :goto_1
    return-object v0

    .line 48
    :pswitch_0
    iget v0, p0, Lb8/l;->f:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lx/n1;

    .line 73
    .line 74
    iput v1, p0, Lb8/l;->f:I

    .line 75
    .line 76
    iget-object v0, p1, Lx/n1;->a:Lf1/h1;

    .line 77
    .line 78
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget v1, p0, Lb8/l;->g:I

    .line 83
    .line 84
    sub-int/2addr v1, v0

    .line 85
    int-to-float v0, v1

    .line 86
    invoke-static {p1, v0, p0}, Lp4/o;->b0(Lx/n1;FLy8/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 91
    .line 92
    if-ne p1, v0, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 96
    .line 97
    :goto_3
    return-object v0

    .line 98
    :pswitch_1
    iget v0, p0, Lb8/l;->f:I

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    if-ne v0, v1, :cond_6

    .line 104
    .line 105
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_7
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lh0/n0;

    .line 123
    .line 124
    iget-object p1, p1, Lh0/n0;->p:Lh0/k0;

    .line 125
    .line 126
    iput v1, p0, Lb8/l;->f:I

    .line 127
    .line 128
    iget v0, p0, Lb8/l;->g:I

    .line 129
    .line 130
    invoke-interface {p1, v0, p0}, Lh0/k0;->c(ILb8/l;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 135
    .line 136
    if-ne p1, v0, :cond_8

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_8
    :goto_4
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 140
    .line 141
    :goto_5
    return-object v0

    .line 142
    :pswitch_2
    iget v0, p0, Lb8/l;->f:I

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    if-ne v0, v1, :cond_9

    .line 148
    .line 149
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 158
    .line 159
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_a
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    sget-object p1, Lb8/o;->d:Ldc/a0;

    .line 167
    .line 168
    iget-object v0, p0, Lb8/l;->h:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lz7/b2;

    .line 171
    .line 172
    new-instance v2, Lb8/j;

    .line 173
    .line 174
    iget v3, p0, Lb8/l;->g:I

    .line 175
    .line 176
    invoke-direct {v2, v3, v0}, Lb8/j;-><init>(ILz7/b2;)V

    .line 177
    .line 178
    .line 179
    iput v1, p0, Lb8/l;->f:I

    .line 180
    .line 181
    new-instance v1, Lb0/f;

    .line 182
    .line 183
    const/4 v3, 0x3

    .line 184
    invoke-direct {v1, v3, v2, v0}, Lb0/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v1, p0}, Ldc/a0;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 191
    .line 192
    :goto_6
    return-object p1

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
