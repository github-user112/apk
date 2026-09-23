.class public final Lo7/e;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lo7/h;


# direct methods
.method public synthetic constructor <init>(Lo7/h;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo7/e;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/e;->g:Lo7/h;

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
    iget v0, p0, Lo7/e;->e:I

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
    invoke-virtual {p0, p1, p2}, Lo7/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lo7/e;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lo7/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo7/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lo7/e;

    .line 29
    .line 30
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lo7/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 36
    .line 37
    return-object p1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    iget p1, p0, Lo7/e;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lo7/e;

    .line 7
    .line 8
    iget-object v0, p0, Lo7/e;->g:Lo7/h;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, v0, p2, v1}, Lo7/e;-><init>(Lo7/h;Lw8/c;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lo7/e;

    .line 16
    .line 17
    iget-object v0, p0, Lo7/e;->g:Lo7/h;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, p2, v1}, Lo7/e;-><init>(Lo7/h;Lw8/c;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo7/e;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lo7/e;->f:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    invoke-static {p1}, Lp9/v;->l(Ljava/lang/Object;)Lac/p;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 30
    .line 31
    new-instance v0, Lo7/d;

    .line 32
    .line 33
    iget-object v2, p0, Lo7/e;->g:Lo7/h;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v0, v2, v3}, Lo7/d;-><init>(Lo7/h;I)V

    .line 37
    .line 38
    .line 39
    iput v1, p0, Lo7/e;->f:I

    .line 40
    .line 41
    invoke-virtual {p1, v0, p0}, Ldc/l0;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_0
    iget v0, p0, Lo7/e;->f:I

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p1}, Lp9/v;->l(Ljava/lang/Object;)Lac/p;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    throw p1

    .line 67
    :cond_3
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lo7/i;->g:Ldc/l0;

    .line 71
    .line 72
    new-instance v0, Lo7/d;

    .line 73
    .line 74
    iget-object v2, p0, Lo7/e;->g:Lo7/h;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v0, v2, v3}, Lo7/d;-><init>(Lo7/h;I)V

    .line 78
    .line 79
    .line 80
    iput v1, p0, Lo7/e;->f:I

    .line 81
    .line 82
    invoke-virtual {p1, v0, p0}, Ldc/l0;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
