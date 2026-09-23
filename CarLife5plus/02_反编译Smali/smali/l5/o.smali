.class public final Ll5/o;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ll5/l;


# direct methods
.method public synthetic constructor <init>(Ll5/l;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll5/o;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Ll5/o;->h:Ll5/l;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ll5/o;->e:I

    .line 2
    .line 3
    check-cast p1, Lk2/a0;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ll5/o;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ll5/o;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ll5/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ll5/o;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ll5/o;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ll5/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Ll5/o;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll5/o;

    .line 7
    .line 8
    iget-object v1, p0, Ll5/o;->h:Ll5/l;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, v1, p2, v2}, Ll5/o;-><init>(Ll5/l;Lw8/c;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ll5/o;->g:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Ll5/o;

    .line 18
    .line 19
    iget-object v1, p0, Ll5/o;->h:Ll5/l;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, v1, p2, v2}, Ll5/o;-><init>(Ll5/l;Lw8/c;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Ll5/o;->g:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ll5/o;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ll5/o;->f:I

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
    iget-object p1, p0, Ll5/o;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lk2/a0;

    .line 31
    .line 32
    new-instance v0, Ll5/p;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Ll5/o;->h:Ll5/l;

    .line 36
    .line 37
    invoke-direct {v0, v3, v2}, Ll5/p;-><init>(Ll5/l;I)V

    .line 38
    .line 39
    .line 40
    iput v1, p0, Ll5/o;->f:I

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Lz/y;->e(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 52
    .line 53
    :goto_1
    return-object v0

    .line 54
    :pswitch_0
    iget v0, p0, Ll5/o;->f:I

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Ll5/o;->g:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lk2/a0;

    .line 79
    .line 80
    new-instance v0, La8/q;

    .line 81
    .line 82
    const/16 v2, 0x14

    .line 83
    .line 84
    iget-object v3, p0, Ll5/o;->h:Ll5/l;

    .line 85
    .line 86
    invoke-direct {v0, v2, v3}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput v1, p0, Ll5/o;->f:I

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x7

    .line 93
    invoke-static {p1, v1, v0, p0, v2}, Lz/d2;->e(Lk2/a0;Lc1/f2;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 98
    .line 99
    if-ne p1, v0, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 103
    .line 104
    :goto_3
    return-object v0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
