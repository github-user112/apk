.class public final Lx/y0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Ljc/a;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Lx/z0;

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lx/v0;

.field public final synthetic l:Lx/z0;

.field public final synthetic m:Ly8/i;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx/v0;Lx/z0;Lf9/n;Ljava/lang/Object;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx/y0;->k:Lx/v0;

    .line 2
    .line 3
    iput-object p2, p0, Lx/y0;->l:Lx/z0;

    .line 4
    .line 5
    check-cast p3, Ly8/i;

    .line 6
    .line 7
    iput-object p3, p0, Lx/y0;->m:Ly8/i;

    .line 8
    .line 9
    iput-object p4, p0, Lx/y0;->n:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lx/y0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lx/y0;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lx/y0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 6

    .line 1
    new-instance v0, Lx/y0;

    .line 2
    .line 3
    iget-object v3, p0, Lx/y0;->m:Ly8/i;

    .line 4
    .line 5
    iget-object v4, p0, Lx/y0;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p0, Lx/y0;->k:Lx/v0;

    .line 8
    .line 9
    iget-object v2, p0, Lx/y0;->l:Lx/z0;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lx/y0;-><init>(Lx/v0;Lx/z0;Lf9/n;Ljava/lang/Object;Lw8/c;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lx/y0;->j:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lx/y0;->i:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lx/y0;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lx/z0;

    .line 17
    .line 18
    iget-object v1, p0, Lx/y0;->e:Ljc/a;

    .line 19
    .line 20
    iget-object v2, p0, Lx/y0;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lx/x0;

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget-object v0, p0, Lx/y0;->h:Lx/z0;

    .line 41
    .line 42
    iget-object v2, p0, Lx/y0;->g:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v5, p0, Lx/y0;->f:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Lf9/n;

    .line 47
    .line 48
    iget-object v6, p0, Lx/y0;->e:Ljc/a;

    .line 49
    .line 50
    iget-object v7, p0, Lx/y0;->j:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, Lx/x0;

    .line 53
    .line 54
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v8, v6

    .line 58
    move-object v6, v5

    .line 59
    move-object v5, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lx/y0;->j:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lac/w;

    .line 67
    .line 68
    new-instance v0, Lx/x0;

    .line 69
    .line 70
    invoke-interface {p1}, Lac/w;->q()Lw8/h;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v5, Lac/t;->b:Lac/t;

    .line 75
    .line 76
    invoke-interface {p1, v5}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    check-cast p1, Lac/v0;

    .line 84
    .line 85
    iget-object v5, p0, Lx/y0;->k:Lx/v0;

    .line 86
    .line 87
    invoke-direct {v0, v5, p1}, Lx/x0;-><init>(Lx/v0;Lac/v0;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lx/y0;->l:Lx/z0;

    .line 91
    .line 92
    invoke-static {p1, v0}, Lx/z0;->a(Lx/z0;Lx/x0;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p1, Lx/z0;->b:Ljc/c;

    .line 96
    .line 97
    iput-object v0, p0, Lx/y0;->j:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v5, p0, Lx/y0;->e:Ljc/a;

    .line 100
    .line 101
    iget-object v6, p0, Lx/y0;->m:Ly8/i;

    .line 102
    .line 103
    iput-object v6, p0, Lx/y0;->f:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object v7, p0, Lx/y0;->n:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v7, p0, Lx/y0;->g:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object p1, p0, Lx/y0;->h:Lx/z0;

    .line 110
    .line 111
    iput v2, p0, Lx/y0;->i:I

    .line 112
    .line 113
    invoke-virtual {v5, p0}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-ne v2, v4, :cond_3

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move-object v2, v7

    .line 121
    move-object v7, v0

    .line 122
    move-object v0, p1

    .line 123
    :goto_0
    :try_start_1
    iput-object v7, p0, Lx/y0;->j:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v5, p0, Lx/y0;->e:Ljc/a;

    .line 126
    .line 127
    iput-object v0, p0, Lx/y0;->f:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v3, p0, Lx/y0;->g:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v3, p0, Lx/y0;->h:Lx/z0;

    .line 132
    .line 133
    iput v1, p0, Lx/y0;->i:I

    .line 134
    .line 135
    invoke-interface {v6, v2, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    if-ne p1, v4, :cond_4

    .line 140
    .line 141
    :goto_1
    return-object v4

    .line 142
    :cond_4
    move-object v1, v5

    .line 143
    move-object v2, v7

    .line 144
    :goto_2
    :try_start_2
    iget-object v0, v0, Lx/z0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    .line 146
    :cond_5
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    if-eq v4, v2, :cond_5

    .line 158
    .line 159
    :goto_3
    check-cast v1, Ljc/c;

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object p1

    .line 165
    :catchall_1
    move-exception p1

    .line 166
    goto :goto_6

    .line 167
    :catchall_2
    move-exception p1

    .line 168
    move-object v1, v5

    .line 169
    move-object v2, v7

    .line 170
    :goto_4
    :try_start_3
    iget-object v0, v0, Lx/z0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    .line 172
    :goto_5
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_7

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-ne v4, v2, :cond_7

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :goto_6
    check-cast v1, Ljc/c;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method
