.class public final Lw0/v0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lw0/w0;


# direct methods
.method public synthetic constructor <init>(Lw0/w0;Lw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/v0;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/v0;->g:Lw0/w0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lw0/v0;->e:I

    .line 2
    .line 3
    check-cast p1, Lw8/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lw0/v0;

    .line 9
    .line 10
    iget-object v1, p0, Lw0/v0;->g:Lw0/w0;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, p1, v2}, Lw0/v0;-><init>(Lw0/w0;Lw8/c;I)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lw0/v0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    new-instance v0, Lw0/v0;

    .line 24
    .line 25
    iget-object v1, p0, Lw0/v0;->g:Lw0/w0;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, v1, p1, v2}, Lw0/v0;-><init>(Lw0/w0;Lw8/c;I)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lw0/v0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

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

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lw0/v0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lw0/v0;->f:I

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
    iput v1, p0, Lw0/v0;->f:I

    .line 29
    .line 30
    iget-object p1, p0, Lw0/v0;->g:Lw0/w0;

    .line 31
    .line 32
    invoke-static {p1, p0}, Lw0/w0;->a(Lw0/w0;Ly8/i;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    :goto_1
    return-object v0

    .line 44
    :pswitch_0
    iget v0, p0, Lw0/v0;->f:I

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_4
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput v1, p0, Lw0/v0;->f:I

    .line 67
    .line 68
    iget-object p1, p0, Lw0/v0;->g:Lw0/w0;

    .line 69
    .line 70
    invoke-static {p1, p0}, Lw0/w0;->a(Lw0/w0;Ly8/i;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 75
    .line 76
    if-ne p1, v0, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    :goto_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 80
    .line 81
    :goto_3
    return-object v0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
