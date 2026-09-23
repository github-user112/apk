.class public final Ldc/o;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public synthetic g:Ldc/e;

.field public final synthetic h:Ly8/i;

.field public synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/n;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ldc/o;->e:I

    .line 1
    check-cast p1, Ly8/i;

    iput-object p1, p0, Ldc/o;->h:Ly8/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lf9/o;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ldc/o;->e:I

    .line 2
    check-cast p1, Ly8/i;

    iput-object p1, p0, Ldc/o;->h:Ly8/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ldc/o;->e:I

    .line 2
    .line 3
    check-cast p1, Ldc/e;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, [Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p3, Lw8/c;

    .line 11
    .line 12
    new-instance v0, Ldc/o;

    .line 13
    .line 14
    iget-object v1, p0, Ldc/o;->h:Ly8/i;

    .line 15
    .line 16
    invoke-direct {v0, v1, p3}, Ldc/o;-><init>(Lf9/o;Lw8/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Ldc/o;->g:Ldc/e;

    .line 20
    .line 21
    iput-object p2, v0, Ldc/o;->i:Ljava/lang/Object;

    .line 22
    .line 23
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ldc/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :pswitch_0
    check-cast p3, Lw8/c;

    .line 31
    .line 32
    new-instance v0, Ldc/o;

    .line 33
    .line 34
    iget-object v1, p0, Ldc/o;->h:Ly8/i;

    .line 35
    .line 36
    invoke-direct {v0, v1, p3}, Ldc/o;-><init>(Lf9/n;Lw8/c;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, v0, Ldc/o;->g:Ldc/e;

    .line 40
    .line 41
    iput-object p2, v0, Ldc/o;->i:Ljava/lang/Object;

    .line 42
    .line 43
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ldc/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ldc/o;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ldc/o;->f:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    iget-object v0, p0, Ldc/o;->g:Ldc/e;

    .line 31
    .line 32
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ldc/o;->g:Ldc/e;

    .line 40
    .line 41
    iget-object p1, p0, Ldc/o;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aget-object v4, p1, v4

    .line 47
    .line 48
    aget-object p1, p1, v2

    .line 49
    .line 50
    iput-object v0, p0, Ldc/o;->g:Ldc/e;

    .line 51
    .line 52
    iput v2, p0, Ldc/o;->f:I

    .line 53
    .line 54
    iget-object v2, p0, Ldc/o;->h:Ly8/i;

    .line 55
    .line 56
    invoke-interface {v2, v4, p1, p0}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v3, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 64
    iput-object v2, p0, Ldc/o;->g:Ldc/e;

    .line 65
    .line 66
    iput v1, p0, Ldc/o;->f:I

    .line 67
    .line 68
    invoke-interface {v0, p1, p0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v3, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    :goto_1
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 76
    .line 77
    :goto_2
    return-object v3

    .line 78
    :pswitch_0
    iget v0, p0, Ldc/o;->f:I

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    const/4 v2, 0x1

    .line 82
    sget-object v3, Lx8/a;->a:Lx8/a;

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    if-eq v0, v2, :cond_6

    .line 87
    .line 88
    if-ne v0, v1, :cond_5

    .line 89
    .line 90
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_6
    iget-object v0, p0, Ldc/o;->g:Ldc/e;

    .line 103
    .line 104
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Ldc/o;->g:Ldc/e;

    .line 112
    .line 113
    iget-object p1, p0, Ldc/o;->i:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v0, p0, Ldc/o;->g:Ldc/e;

    .line 116
    .line 117
    iput v2, p0, Ldc/o;->f:I

    .line 118
    .line 119
    iget-object v2, p0, Ldc/o;->h:Ly8/i;

    .line 120
    .line 121
    invoke-interface {v2, p1, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-ne p1, v3, :cond_8

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_8
    :goto_3
    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Ldc/o;->g:Ldc/e;

    .line 130
    .line 131
    iput v1, p0, Ldc/o;->f:I

    .line 132
    .line 133
    invoke-interface {v0, p1, p0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-ne p1, v3, :cond_9

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_9
    :goto_4
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 141
    .line 142
    :goto_5
    return-object v3

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
