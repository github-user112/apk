.class public final Lf1/r2;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lf9/n;

.field public final synthetic i:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf9/n;Lf1/b1;Lw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lf1/r2;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lf1/r2;->h:Lf9/n;

    .line 4
    .line 5
    iput-object p2, p0, Lf1/r2;->i:Lf1/b1;

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
    iget v0, p0, Lf1/r2;->e:I

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
    invoke-virtual {p0, p1, p2}, Lf1/r2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lf1/r2;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lf1/r2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lf1/r2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lf1/r2;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lf1/r2;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Lf1/r2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf1/r2;

    .line 7
    .line 8
    iget-object v1, p0, Lf1/r2;->i:Lf1/b1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iget-object v3, p0, Lf1/r2;->h:Lf9/n;

    .line 12
    .line 13
    invoke-direct {v0, v3, v1, p2, v2}, Lf1/r2;-><init>(Lf9/n;Lf1/b1;Lw8/c;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lf1/r2;->g:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lf1/r2;

    .line 20
    .line 21
    iget-object v1, p0, Lf1/r2;->i:Lf1/b1;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iget-object v3, p0, Lf1/r2;->h:Lf9/n;

    .line 25
    .line 26
    invoke-direct {v0, v3, v1, p2, v2}, Lf1/r2;-><init>(Lf9/n;Lf1/b1;Lw8/c;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lf1/r2;->g:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lf1/r2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lf1/r2;->f:I

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
    iget-object p1, p0, Lf1/r2;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lac/w;

    .line 31
    .line 32
    new-instance v0, Lf1/s1;

    .line 33
    .line 34
    iget-object v2, p0, Lf1/r2;->i:Lf1/b1;

    .line 35
    .line 36
    invoke-interface {p1}, Lac/w;->q()Lw8/h;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, v2, p1}, Lf1/s1;-><init>(Lf1/b1;Lw8/h;)V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lf1/r2;->f:I

    .line 44
    .line 45
    iget-object p1, p0, Lf1/r2;->h:Lf9/n;

    .line 46
    .line 47
    invoke-interface {p1, v0, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 52
    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 57
    .line 58
    :goto_1
    return-object v0

    .line 59
    :pswitch_0
    iget v0, p0, Lf1/r2;->f:I

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lf1/r2;->g:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lac/w;

    .line 84
    .line 85
    new-instance v0, Lf1/s1;

    .line 86
    .line 87
    iget-object v2, p0, Lf1/r2;->i:Lf1/b1;

    .line 88
    .line 89
    invoke-interface {p1}, Lac/w;->q()Lw8/h;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, v2, p1}, Lf1/s1;-><init>(Lf1/b1;Lw8/h;)V

    .line 94
    .line 95
    .line 96
    iput v1, p0, Lf1/r2;->f:I

    .line 97
    .line 98
    iget-object p1, p0, Lf1/r2;->h:Lf9/n;

    .line 99
    .line 100
    invoke-interface {p1, v0, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 105
    .line 106
    if-ne p1, v0, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 110
    .line 111
    :goto_3
    return-object v0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
