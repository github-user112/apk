.class public final Lj8/x;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf0/u;Lf9/k;Ll9/d;Lf1/v2;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj8/x;->e:I

    .line 1
    iput-object p1, p0, Lj8/x;->f:Ljava/lang/Object;

    iput-object p2, p0, Lj8/x;->g:Ljava/lang/Object;

    iput-object p3, p0, Lj8/x;->h:Ljava/lang/Object;

    iput-object p4, p0, Lj8/x;->i:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lf9/k;Lp1/p;Lr8/j;Lf1/b1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj8/x;->e:I

    .line 2
    iput-object p1, p0, Lj8/x;->g:Ljava/lang/Object;

    iput-object p2, p0, Lj8/x;->f:Ljava/lang/Object;

    iput-object p3, p0, Lj8/x;->h:Ljava/lang/Object;

    iput-object p4, p0, Lj8/x;->i:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Lk2/a0;Ll0/z0;Lw0/r1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj8/x;->e:I

    .line 3
    iput-object p1, p0, Lj8/x;->g:Ljava/lang/Object;

    iput-object p2, p0, Lj8/x;->h:Ljava/lang/Object;

    iput-object p3, p0, Lj8/x;->i:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lj8/x;->e:I

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
    invoke-virtual {p0, p1, p2}, Lj8/x;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lj8/x;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lj8/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lj8/x;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lj8/x;

    .line 27
    .line 28
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lj8/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lj8/x;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lj8/x;

    .line 39
    .line 40
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lj8/x;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    iget v0, p0, Lj8/x;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj8/x;

    .line 7
    .line 8
    iget-object p1, p0, Lj8/x;->g:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Lf9/k;

    .line 12
    .line 13
    iget-object p1, p0, Lj8/x;->f:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lp1/p;

    .line 17
    .line 18
    iget-object p1, p0, Lj8/x;->h:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, Lr8/j;

    .line 22
    .line 23
    iget-object p1, p0, Lj8/x;->i:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, p1

    .line 26
    check-cast v5, Lf1/b1;

    .line 27
    .line 28
    move-object v6, p2

    .line 29
    invoke-direct/range {v1 .. v6}, Lj8/x;-><init>(Lf9/k;Lp1/p;Lr8/j;Lf1/b1;Lw8/c;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    move-object v6, p2

    .line 34
    new-instance p2, Lj8/x;

    .line 35
    .line 36
    iget-object v0, p0, Lj8/x;->g:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lk2/a0;

    .line 39
    .line 40
    iget-object v1, p0, Lj8/x;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Ll0/z0;

    .line 43
    .line 44
    iget-object v2, p0, Lj8/x;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lw0/r1;

    .line 47
    .line 48
    invoke-direct {p2, v0, v1, v2, v6}, Lj8/x;-><init>(Lk2/a0;Ll0/z0;Lw0/r1;Lw8/c;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p2, Lj8/x;->f:Ljava/lang/Object;

    .line 52
    .line 53
    return-object p2

    .line 54
    :pswitch_1
    move-object v6, p2

    .line 55
    new-instance v2, Lj8/x;

    .line 56
    .line 57
    iget-object p1, p0, Lj8/x;->f:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v3, p1

    .line 60
    check-cast v3, Lf0/u;

    .line 61
    .line 62
    iget-object p1, p0, Lj8/x;->g:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v4, p1

    .line 65
    check-cast v4, Lf9/k;

    .line 66
    .line 67
    iget-object p1, p0, Lj8/x;->h:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v5, p1

    .line 70
    check-cast v5, Ll9/d;

    .line 71
    .line 72
    iget-object p1, p0, Lj8/x;->i:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lf1/v2;

    .line 75
    .line 76
    move-object v7, v6

    .line 77
    move-object v6, p1

    .line 78
    invoke-direct/range {v2 .. v7}, Lj8/x;-><init>(Lf0/u;Lf9/k;Ll9/d;Lf1/v2;Lw8/c;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lj8/x;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lj8/x;->g:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lf9/k;

    .line 12
    .line 13
    iget-object v0, p0, Lj8/x;->f:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lp1/p;

    .line 16
    .line 17
    iget-object v1, p0, Lj8/x;->h:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lr8/j;

    .line 20
    .line 21
    iget-object v2, p0, Lj8/x;->i:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lf1/b1;

    .line 24
    .line 25
    new-instance v3, Ll0/u;

    .line 26
    .line 27
    const/4 v4, 0x7

    .line 28
    invoke-direct {v3, v0, v1, v2, v4}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lj8/x;->f:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lac/w;

    .line 43
    .line 44
    new-instance v0, Ll0/d0;

    .line 45
    .line 46
    iget-object v1, p0, Lj8/x;->g:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lk2/a0;

    .line 49
    .line 50
    iget-object v2, p0, Lj8/x;->h:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ll0/z0;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-direct {v0, v1, v2, v4, v3}, Ll0/d0;-><init>(Lk2/a0;Ll0/z0;Lw8/c;I)V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-static {p1, v4, v0, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lb0/g;

    .line 64
    .line 65
    iget-object v3, p0, Lj8/x;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, Lw0/r1;

    .line 68
    .line 69
    const/16 v5, 0xa

    .line 70
    .line 71
    invoke-direct {v0, v1, v3, v4, v5}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v4, v0, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 75
    .line 76
    .line 77
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lj8/x;->f:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lf0/u;

    .line 86
    .line 87
    iget-object p1, p1, Lf0/u;->i:Lz/j;

    .line 88
    .line 89
    invoke-virtual {p1}, Lz/j;->a()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_0

    .line 94
    .line 95
    iget-object p1, p0, Lj8/x;->g:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lf9/k;

    .line 98
    .line 99
    iget-object v0, p0, Lj8/x;->i:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lf1/v2;

    .line 102
    .line 103
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Number;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v1, p0, Lj8/x;->h:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Ll9/d;

    .line 116
    .line 117
    iget v2, v1, Ll9/b;->a:I

    .line 118
    .line 119
    iget v1, v1, Ll9/b;->b:I

    .line 120
    .line 121
    invoke-static {v0, v2, v1}, Li9/a;->n(III)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    new-instance v1, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 134
    .line 135
    return-object p1

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
