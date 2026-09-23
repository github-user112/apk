.class public final Lz/z1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lf9/o;

.field public final synthetic h:Lz/z0;

.field public final synthetic i:Lk2/w;


# direct methods
.method public synthetic constructor <init>(Lf9/o;Lz/z0;Lk2/w;Lw8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Lz/z1;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lz/z1;->g:Lf9/o;

    .line 4
    .line 5
    iput-object p2, p0, Lz/z1;->h:Lz/z0;

    .line 6
    .line 7
    iput-object p3, p0, Lz/z1;->i:Lk2/w;

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
    iget v0, p0, Lz/z1;->e:I

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
    invoke-virtual {p0, p1, p2}, Lz/z1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lz/z1;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lz/z1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lz/z1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lz/z1;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lz/z1;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p1, p0, Lz/z1;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz/z1;

    .line 7
    .line 8
    iget-object v3, p0, Lz/z1;->i:Lk2/w;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v1, p0, Lz/z1;->g:Lf9/o;

    .line 12
    .line 13
    iget-object v2, p0, Lz/z1;->h:Lz/z0;

    .line 14
    .line 15
    move-object v4, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lz/z1;-><init>(Lf9/o;Lz/z0;Lk2/w;Lw8/c;I)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    move-object v4, p2

    .line 21
    new-instance v1, Lz/z1;

    .line 22
    .line 23
    move-object v5, v4

    .line 24
    iget-object v4, p0, Lz/z1;->i:Lk2/w;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    iget-object v2, p0, Lz/z1;->g:Lf9/o;

    .line 28
    .line 29
    iget-object v3, p0, Lz/z1;->h:Lz/z0;

    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lz/z1;-><init>(Lf9/o;Lz/z0;Lk2/w;Lw8/c;I)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lz/z1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lz/z1;->f:I

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
    iget-object p1, p0, Lz/z1;->i:Lk2/w;

    .line 29
    .line 30
    iget-wide v2, p1, Lk2/w;->c:J

    .line 31
    .line 32
    new-instance p1, Lx1/b;

    .line 33
    .line 34
    invoke-direct {p1, v2, v3}, Lx1/b;-><init>(J)V

    .line 35
    .line 36
    .line 37
    iput v1, p0, Lz/z1;->f:I

    .line 38
    .line 39
    iget-object v0, p0, Lz/z1;->g:Lf9/o;

    .line 40
    .line 41
    iget-object v1, p0, Lz/z1;->h:Lz/z0;

    .line 42
    .line 43
    invoke-interface {v0, v1, p1, p0}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 48
    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    :goto_1
    return-object v0

    .line 55
    :pswitch_0
    iget v0, p0, Lz/z1;->f:I

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lz/z1;->i:Lk2/w;

    .line 78
    .line 79
    iget-wide v2, p1, Lk2/w;->c:J

    .line 80
    .line 81
    new-instance p1, Lx1/b;

    .line 82
    .line 83
    invoke-direct {p1, v2, v3}, Lx1/b;-><init>(J)V

    .line 84
    .line 85
    .line 86
    iput v1, p0, Lz/z1;->f:I

    .line 87
    .line 88
    iget-object v0, p0, Lz/z1;->g:Lf9/o;

    .line 89
    .line 90
    iget-object v1, p0, Lz/z1;->h:Lz/z0;

    .line 91
    .line 92
    invoke-interface {v0, v1, p1, p0}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 97
    .line 98
    if-ne p1, v0, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    :goto_3
    return-object v0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
