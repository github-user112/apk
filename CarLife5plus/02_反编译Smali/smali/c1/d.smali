.class public final Lc1/d;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lb0/k;

.field public final synthetic h:Lp1/p;


# direct methods
.method public synthetic constructor <init>(Lb0/k;Lp1/p;Lw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lc1/d;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lc1/d;->g:Lb0/k;

    .line 4
    .line 5
    iput-object p2, p0, Lc1/d;->h:Lp1/p;

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
    iget v0, p0, Lc1/d;->e:I

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
    invoke-virtual {p0, p1, p2}, Lc1/d;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lc1/d;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lc1/d;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lc1/d;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lc1/d;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lc1/d;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p1, p0, Lc1/d;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lc1/d;

    .line 7
    .line 8
    iget-object v0, p0, Lc1/d;->h:Lp1/p;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Lc1/d;->g:Lb0/k;

    .line 12
    .line 13
    invoke-direct {p1, v2, v0, p2, v1}, Lc1/d;-><init>(Lb0/k;Lp1/p;Lw8/c;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lc1/d;

    .line 18
    .line 19
    iget-object v0, p0, Lc1/d;->h:Lp1/p;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lc1/d;->g:Lb0/k;

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, p2, v1}, Lc1/d;-><init>(Lb0/k;Lp1/p;Lw8/c;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

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
    iget v0, p0, Lc1/d;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lc1/d;->f:I

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
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lc1/d;->g:Lb0/k;

    .line 31
    .line 32
    iget-object p1, p1, Lb0/k;->a:Ldc/a0;

    .line 33
    .line 34
    new-instance v0, Lc1/c;

    .line 35
    .line 36
    iget-object v2, p0, Lc1/d;->h:Lp1/p;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v0, v2, v3}, Lc1/c;-><init>(Lp1/p;I)V

    .line 40
    .line 41
    .line 42
    iput v1, p0, Lc1/d;->f:I

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, p0}, Ldc/a0;->i(Ldc/a0;Ldc/e;Lw8/c;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 51
    .line 52
    :goto_0
    return-object p1

    .line 53
    :pswitch_0
    iget v0, p0, Lc1/d;->f:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
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
    :cond_3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lc1/d;->g:Lb0/k;

    .line 78
    .line 79
    iget-object p1, p1, Lb0/k;->a:Ldc/a0;

    .line 80
    .line 81
    new-instance v0, Lc1/c;

    .line 82
    .line 83
    iget-object v2, p0, Lc1/d;->h:Lp1/p;

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-direct {v0, v2, v3}, Lc1/c;-><init>(Lp1/p;I)V

    .line 87
    .line 88
    .line 89
    iput v1, p0, Lc1/d;->f:I

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0, p0}, Ldc/a0;->i(Ldc/a0;Ldc/e;Lw8/c;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 98
    .line 99
    :goto_1
    return-object p1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
