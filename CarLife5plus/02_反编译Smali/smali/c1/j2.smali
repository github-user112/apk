.class public final Lc1/j2;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILw8/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc1/j2;->e:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lc1/j2;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lac/w;

    .line 7
    .line 8
    check-cast p2, Lw8/c;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lc1/j2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lc1/j2;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lc1/j2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Lac/w;

    .line 24
    .line 25
    check-cast p2, Lw8/c;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lc1/j2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lc1/j2;

    .line 32
    .line 33
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lc1/j2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :pswitch_1
    check-cast p1, Lk2/a0;

    .line 40
    .line 41
    check-cast p2, Lw8/c;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lc1/j2;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lc1/j2;

    .line 48
    .line 49
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lc1/j2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    iget p1, p0, Lc1/j2;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lc1/j2;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {p1, v0, p2, v1}, Lc1/j2;-><init>(ILw8/c;I)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_0
    new-instance p1, Lc1/j2;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {p1, v0, p2, v1}, Lc1/j2;-><init>(ILw8/c;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lc1/j2;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p1, v0, p2, v1}, Lc1/j2;-><init>(ILw8/c;I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc1/j2;->e:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lm7/g;->a()V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
