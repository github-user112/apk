.class public final Li0/e;
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

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li0/f;Lq2/h1;Lk2/d;Lc8/c1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Li0/e;->e:I

    .line 1
    iput-object p1, p0, Li0/e;->g:Ljava/lang/Object;

    iput-object p2, p0, Li0/e;->h:Ljava/lang/Object;

    iput-object p3, p0, Li0/e;->i:Ljava/lang/Object;

    iput-object p4, p0, Li0/e;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method

.method public constructor <init>(Ll8/p;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;Lw8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Li0/e;->e:I

    .line 2
    iput-object p1, p0, Li0/e;->f:Ljava/lang/Object;

    iput-object p2, p0, Li0/e;->g:Ljava/lang/Object;

    iput-object p3, p0, Li0/e;->h:Ljava/lang/Object;

    iput-object p4, p0, Li0/e;->i:Ljava/lang/Object;

    iput-object p5, p0, Li0/e;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ly8/i;-><init>(ILw8/c;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Li0/e;->e:I

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
    invoke-virtual {p0, p1, p2}, Li0/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Li0/e;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Li0/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Li0/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Li0/e;

    .line 27
    .line 28
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Li0/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 8

    .line 1
    iget v0, p0, Li0/e;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Li0/e;

    .line 7
    .line 8
    iget-object p1, p0, Li0/e;->f:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    check-cast v2, Ll8/p;

    .line 12
    .line 13
    iget-object p1, p0, Li0/e;->g:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lf1/b1;

    .line 17
    .line 18
    iget-object p1, p0, Li0/e;->h:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, p1

    .line 21
    check-cast v4, Lf1/b1;

    .line 22
    .line 23
    iget-object p1, p0, Li0/e;->i:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, p1

    .line 26
    check-cast v5, Lf1/b1;

    .line 27
    .line 28
    iget-object p1, p0, Li0/e;->j:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v6, p1

    .line 31
    check-cast v6, Lf1/b1;

    .line 32
    .line 33
    move-object v7, p2

    .line 34
    invoke-direct/range {v1 .. v7}, Li0/e;-><init>(Ll8/p;Lf1/b1;Lf1/b1;Lf1/b1;Lf1/b1;Lw8/c;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_0
    move-object v7, p2

    .line 39
    new-instance v2, Li0/e;

    .line 40
    .line 41
    iget-object p2, p0, Li0/e;->g:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v3, p2

    .line 44
    check-cast v3, Li0/f;

    .line 45
    .line 46
    iget-object p2, p0, Li0/e;->h:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v4, p2

    .line 49
    check-cast v4, Lq2/h1;

    .line 50
    .line 51
    iget-object p2, p0, Li0/e;->i:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v5, p2

    .line 54
    check-cast v5, Lk2/d;

    .line 55
    .line 56
    iget-object p2, p0, Li0/e;->j:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v6, p2

    .line 59
    check-cast v6, Lc8/c1;

    .line 60
    .line 61
    invoke-direct/range {v2 .. v7}, Li0/e;-><init>(Li0/f;Lq2/h1;Lk2/d;Lc8/c1;Lw8/c;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, v2, Li0/e;->f:Ljava/lang/Object;

    .line 65
    .line 66
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Li0/e;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Li0/e;->j:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Li0/e;->i:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Li0/e;->h:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Li0/e;->g:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    check-cast v4, Lf1/b1;

    .line 18
    .line 19
    sget p1, Ly7/u;->c:I

    .line 20
    .line 21
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-lez p1, :cond_0

    .line 32
    .line 33
    check-cast v3, Lf1/b1;

    .line 34
    .line 35
    iget-object p1, p0, Li0/e;->f:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ll8/p;

    .line 38
    .line 39
    invoke-virtual {p1}, Ll8/p;->i()[Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v3, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast v2, Lf1/b1;

    .line 47
    .line 48
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v2, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    check-cast v1, Lf1/b1;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {v1, p1}, Ly7/u;->f(Lf1/b1;Z)V

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Li0/e;->f:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lac/w;

    .line 72
    .line 73
    new-instance v5, Lb1/f;

    .line 74
    .line 75
    move-object v6, v4

    .line 76
    check-cast v6, Li0/f;

    .line 77
    .line 78
    move-object v7, v3

    .line 79
    check-cast v7, Lq2/h1;

    .line 80
    .line 81
    move-object v8, v2

    .line 82
    check-cast v8, Lk2/d;

    .line 83
    .line 84
    const/4 v10, 0x5

    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-direct/range {v5 .. v10}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x3

    .line 90
    invoke-static {p1, v9, v5, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 91
    .line 92
    .line 93
    new-instance v2, Lb0/g;

    .line 94
    .line 95
    check-cast v1, Lc8/c1;

    .line 96
    .line 97
    const/16 v3, 0x9

    .line 98
    .line 99
    invoke-direct {v2, v6, v1, v9, v3}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v9, v2, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
