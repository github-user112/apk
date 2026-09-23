.class public final Ll5/u;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lg9/x;

.field public final synthetic i:Lg9/j;

.field public final synthetic j:Ll5/l;


# direct methods
.method public constructor <init>(Lg9/x;Lf9/o;Ll5/l;Lw8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Ll5/u;->e:I

    .line 2
    .line 3
    packed-switch p5, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ll5/u;->h:Lg9/x;

    .line 7
    .line 8
    check-cast p2, Lg9/j;

    .line 9
    .line 10
    iput-object p2, p0, Ll5/u;->i:Lg9/j;

    .line 11
    .line 12
    iput-object p3, p0, Ll5/u;->j:Ll5/l;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iput-object p1, p0, Ll5/u;->h:Lg9/x;

    .line 20
    .line 21
    check-cast p2, Lg9/j;

    .line 22
    .line 23
    iput-object p2, p0, Ll5/u;->i:Lg9/j;

    .line 24
    .line 25
    iput-object p3, p0, Ll5/u;->j:Ll5/l;

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ll5/u;->e:I

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
    invoke-virtual {p0, p1, p2}, Ll5/u;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ll5/u;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ll5/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ll5/u;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ll5/u;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ll5/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Ll5/u;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Ll5/u;

    .line 7
    .line 8
    iget-object v4, p0, Ll5/u;->j:Ll5/l;

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    iget-object v2, p0, Ll5/u;->h:Lg9/x;

    .line 12
    .line 13
    iget-object v3, p0, Ll5/u;->i:Lg9/j;

    .line 14
    .line 15
    move-object v5, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Ll5/u;-><init>(Lg9/x;Lf9/o;Ll5/l;Lw8/c;I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v1, Ll5/u;->g:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    move-object v5, p2

    .line 23
    new-instance v2, Ll5/u;

    .line 24
    .line 25
    move-object v6, v5

    .line 26
    iget-object v5, p0, Ll5/u;->j:Ll5/l;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    iget-object v3, p0, Ll5/u;->h:Lg9/x;

    .line 30
    .line 31
    iget-object v4, p0, Ll5/u;->i:Lg9/j;

    .line 32
    .line 33
    invoke-direct/range {v2 .. v7}, Ll5/u;-><init>(Lg9/x;Lf9/o;Ll5/l;Lw8/c;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v2, Ll5/u;->g:Ljava/lang/Object;

    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Ll5/u;->e:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Ll5/u;->j:Ll5/l;

    .line 6
    .line 7
    iget-object v3, p0, Ll5/u;->i:Lg9/j;

    .line 8
    .line 9
    iget-object v4, p0, Ll5/u;->h:Lg9/x;

    .line 10
    .line 11
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    sget-object v6, Lx8/a;->a:Lx8/a;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v0, p0, Ll5/u;->f:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-ne v0, v7, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    iget-object p1, p0, Ll5/u;->g:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lk2/a0;

    .line 41
    .line 42
    new-instance v0, Ll0/u;

    .line 43
    .line 44
    invoke-direct {v0, v4, v3, v2}, Ll0/u;-><init>(Lg9/x;Lf9/o;Ll5/l;)V

    .line 45
    .line 46
    .line 47
    iput v7, p0, Ll5/u;->f:I

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x7

    .line 51
    invoke-static {p1, v2, v0, p0, v3}, Lz/d2;->e(Lk2/a0;Lc1/f2;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v6, :cond_2

    .line 56
    .line 57
    move-object v1, v6

    .line 58
    :cond_2
    :goto_0
    return-object v1

    .line 59
    :pswitch_0
    iget v0, p0, Ll5/u;->f:I

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    if-ne v0, v7, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Ll5/u;->g:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lk2/a0;

    .line 81
    .line 82
    new-instance v10, Ll0/p;

    .line 83
    .line 84
    invoke-direct {v10, v4, v3, v2}, Ll0/p;-><init>(Lg9/x;Lf9/o;Ll5/l;)V

    .line 85
    .line 86
    .line 87
    iput v7, p0, Ll5/u;->f:I

    .line 88
    .line 89
    sget v0, Lz/y;->a:F

    .line 90
    .line 91
    new-instance v9, Lx7/h;

    .line 92
    .line 93
    const/16 v0, 0xd

    .line 94
    .line 95
    invoke-direct {v9, v0}, Lx7/h;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v11, Lu7/i;

    .line 99
    .line 100
    const/16 v0, 0x9

    .line 101
    .line 102
    invoke-direct {v11, v0}, Lu7/i;-><init>(I)V

    .line 103
    .line 104
    .line 105
    new-instance v12, Lu7/i;

    .line 106
    .line 107
    invoke-direct {v12, v0}, Lu7/i;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v8, Lz/v;

    .line 111
    .line 112
    const/4 v13, 0x0

    .line 113
    invoke-direct/range {v8 .. v13}, Lz/v;-><init>(Lx7/h;Ll0/p;Lu7/i;Lu7/i;Lw8/c;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v8, p0}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v6, :cond_5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object p1, v1

    .line 124
    :goto_1
    if-ne p1, v6, :cond_6

    .line 125
    .line 126
    move-object v1, v6

    .line 127
    :cond_6
    :goto_2
    return-object v1

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
