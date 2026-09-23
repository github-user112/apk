.class public final Lv/a;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public e:Lv/k;

.field public f:Lg9/t;

.field public g:I

.field public final synthetic h:Lv/c;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lv/m0;

.field public final synthetic k:J

.field public final synthetic l:Lf9/k;


# direct methods
.method public constructor <init>(Lv/c;Ljava/lang/Object;Lv/m0;JLf9/k;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/a;->h:Lv/c;

    .line 2
    .line 3
    iput-object p2, p0, Lv/a;->i:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lv/a;->j:Lv/m0;

    .line 6
    .line 7
    iput-wide p4, p0, Lv/a;->k:J

    .line 8
    .line 9
    iput-object p6, p0, Lv/a;->l:Lf9/k;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p7}, Ly8/i;-><init>(ILw8/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lw8/c;

    .line 3
    .line 4
    new-instance v0, Lv/a;

    .line 5
    .line 6
    iget-wide v4, p0, Lv/a;->k:J

    .line 7
    .line 8
    iget-object v6, p0, Lv/a;->l:Lf9/k;

    .line 9
    .line 10
    iget-object v1, p0, Lv/a;->h:Lv/c;

    .line 11
    .line 12
    iget-object v2, p0, Lv/a;->i:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v3, p0, Lv/a;->j:Lv/m0;

    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lv/a;-><init>(Lv/c;Ljava/lang/Object;Lv/m0;JLf9/k;Lw8/c;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lv/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v1, p0, Lv/a;->j:Lv/m0;

    .line 2
    .line 3
    iget v0, p0, Lv/a;->g:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v4, p0, Lv/a;->h:Lv/c;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lv/a;->f:Lg9/t;

    .line 13
    .line 14
    iget-object v1, p0, Lv/a;->e:Lv/k;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    move-object p1, v4

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :catch_0
    move-exception v0

    .line 23
    move-object p1, v0

    .line 24
    :goto_0
    move-object p1, v4

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p1, v4, Lv/c;->c:Lv/k;

    .line 39
    .line 40
    iget-object v0, v4, Lv/c;->a:Lv/w0;

    .line 41
    .line 42
    iget-object v0, v0, Lv/w0;->a:Lf9/k;

    .line 43
    .line 44
    iget-object v3, p0, Lv/a;->i:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {v0, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lv/p;

    .line 51
    .line 52
    iput-object v0, p1, Lv/k;->c:Lv/p;

    .line 53
    .line 54
    iget-object p1, v1, Lv/m0;->c:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v0, v4, Lv/c;->e:Lf1/k1;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v4, Lv/c;->d:Lf1/k1;

    .line 62
    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v4, Lv/c;->c:Lv/k;

    .line 69
    .line 70
    iget-object v0, p1, Lv/k;->b:Lf1/k1;

    .line 71
    .line 72
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iget-object v0, p1, Lv/k;->c:Lv/p;

    .line 77
    .line 78
    invoke-static {v0}, Lv/d;->f(Lv/p;)Lv/p;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget-wide v9, p1, Lv/k;->d:J

    .line 83
    .line 84
    iget-boolean v13, p1, Lv/k;->f:Z

    .line 85
    .line 86
    new-instance v5, Lv/k;

    .line 87
    .line 88
    iget-object v6, p1, Lv/k;->a:Lv/w0;

    .line 89
    .line 90
    const-wide/high16 v11, -0x8000000000000000L

    .line 91
    .line 92
    invoke-direct/range {v5 .. v13}, Lv/k;-><init>(Lv/w0;Ljava/lang/Object;Lv/p;JJZ)V

    .line 93
    .line 94
    .line 95
    new-instance v7, Lg9/t;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-wide v9, p0, Lv/a;->k:J

    .line 101
    .line 102
    iget-object v6, p0, Lv/a;->l:Lf9/k;

    .line 103
    .line 104
    new-instance v3, La8/h;

    .line 105
    .line 106
    const/4 v8, 0x5

    .line 107
    invoke-direct/range {v3 .. v8}, La8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    .line 109
    .line 110
    move-object p1, v4

    .line 111
    :try_start_2
    iput-object v5, p0, Lv/a;->e:Lv/k;

    .line 112
    .line 113
    iput-object v7, p0, Lv/a;->f:Lg9/t;

    .line 114
    .line 115
    iput v2, p0, Lv/a;->g:I

    .line 116
    .line 117
    move-object v4, v3

    .line 118
    move-object v0, v5

    .line 119
    move-wide v2, v9

    .line 120
    move-object v5, p0

    .line 121
    invoke-static/range {v0 .. v5}, Lv/d;->c(Lv/k;Lv/f;JLf9/k;Lw8/c;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    move-object v5, v0

    .line 126
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 127
    .line 128
    if-ne v1, v0, :cond_2

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_2
    move-object v1, v5

    .line 132
    move-object v0, v7

    .line 133
    :goto_1
    :try_start_3
    iget-boolean v0, v0, Lg9/t;->a:Z

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    sget-object v0, Lv/g;->a:Lv/g;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    sget-object v0, Lv/g;->b:Lv/g;

    .line 143
    .line 144
    :goto_2
    invoke-static {p1}, Lv/c;->b(Lv/c;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lv/h;

    .line 148
    .line 149
    invoke-direct {v2, v1, v0}, Lv/h;-><init>(Lv/k;Lv/g;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :catch_2
    move-exception v0

    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :goto_3
    invoke-static {p1}, Lv/c;->b(Lv/c;)V

    .line 157
    .line 158
    .line 159
    throw v0
.end method
