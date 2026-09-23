.class public final Lec/h;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lec/k;

.field public final synthetic i:Ldc/e;


# direct methods
.method public constructor <init>(Lec/k;Ldc/e;Ljava/lang/Object;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lec/h;->e:I

    .line 1
    iput-object p1, p0, Lec/h;->h:Lec/k;

    iput-object p2, p0, Lec/h;->i:Ldc/e;

    iput-object p3, p0, Lec/h;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lec/k;Ldc/e;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lec/h;->e:I

    .line 2
    iput-object p1, p0, Lec/h;->h:Lec/k;

    iput-object p2, p0, Lec/h;->i:Ldc/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lec/h;->e:I

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
    invoke-virtual {p0, p1, p2}, Lec/h;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lec/h;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lec/h;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lec/h;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lec/h;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lec/h;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lec/h;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lec/h;

    .line 7
    .line 8
    iget-object v1, p0, Lec/h;->h:Lec/k;

    .line 9
    .line 10
    iget-object v2, p0, Lec/h;->i:Ldc/e;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p2}, Lec/h;-><init>(Lec/k;Ldc/e;Lw8/c;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lec/h;->g:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    new-instance p1, Lec/h;

    .line 19
    .line 20
    iget-object v0, p0, Lec/h;->i:Ldc/e;

    .line 21
    .line 22
    iget-object v1, p0, Lec/h;->g:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, p0, Lec/h;->h:Lec/k;

    .line 25
    .line 26
    invoke-direct {p1, v2, v0, v1, p2}, Lec/h;-><init>(Lec/k;Ldc/e;Ljava/lang/Object;Lw8/c;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lec/h;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lec/h;->f:I

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
    iget-object p1, p0, Lec/h;->g:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v4, p1

    .line 31
    check-cast v4, Lac/w;

    .line 32
    .line 33
    new-instance v3, Lg9/x;

    .line 34
    .line 35
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Lec/h;->h:Lec/k;

    .line 39
    .line 40
    iget-object p1, v5, Lec/f;->d:Ldc/d;

    .line 41
    .line 42
    new-instance v2, Lec/j;

    .line 43
    .line 44
    iget-object v6, p0, Lec/h;->i:Ldc/e;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-direct/range {v2 .. v7}, Lec/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iput v1, p0, Lec/h;->f:I

    .line 51
    .line 52
    invoke-interface {p1, v2, p0}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 57
    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 62
    .line 63
    :goto_1
    return-object v0

    .line 64
    :pswitch_0
    iget v0, p0, Lec/h;->f:I

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    if-ne v0, v1, :cond_3

    .line 70
    .line 71
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lec/h;->h:Lec/k;

    .line 87
    .line 88
    iget-object p1, p1, Lec/k;->e:Ly8/i;

    .line 89
    .line 90
    iget-object v0, p0, Lec/h;->g:Ljava/lang/Object;

    .line 91
    .line 92
    iput v1, p0, Lec/h;->f:I

    .line 93
    .line 94
    iget-object v1, p0, Lec/h;->i:Ldc/e;

    .line 95
    .line 96
    invoke-interface {p1, v1, v0, p0}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 101
    .line 102
    if-ne p1, v0, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 106
    .line 107
    :goto_3
    return-object v0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
