.class public final Llb/p0;
.super Llb/q0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic b:I

.field public final c:Llb/q0;


# direct methods
.method public synthetic constructor <init>(Llb/q0;I)V
    .locals 0

    .line 1
    iput p2, p0, Llb/p0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Llb/p0;->c:Llb/q0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Llb/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Llb/q0;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 12
    .line 13
    invoke-virtual {v0}, Llb/q0;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Llb/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Llb/q0;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lw9/h;)Lw9/h;
    .locals 1

    .line 1
    iget v0, p0, Llb/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "annotations"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Llb/q0;->c(Lw9/h;)Lw9/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :pswitch_0
    const-string v0, "annotations"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Llb/q0;->c(Lw9/h;)Lw9/h;

    .line 26
    .line 27
    .line 28
    move-result-object p1

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

.method public final d(Llb/w;)Llb/n0;
    .locals 3

    .line 1
    iget v0, p0, Llb/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Llb/k0;->k()Lv9/h;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v2, p1, Lv9/q0;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Lv9/q0;

    .line 29
    .line 30
    :cond_0
    invoke-static {v0, v1}, Lp9/x1;->j(Llb/n0;Lv9/q0;)Llb/n0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    return-object v1

    .line 35
    :pswitch_0
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget v0, p0, Llb/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 7
    .line 8
    invoke-virtual {v0}, Llb/q0;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 14
    .line 15
    invoke-virtual {v0}, Llb/q0;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Llb/w;Llb/y0;)Llb/w;
    .locals 1

    .line 1
    iget v0, p0, Llb/p0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "topLevelType"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "position"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Llb/q0;->f(Llb/w;Llb/y0;)Llb/w;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    const-string v0, "topLevelType"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "position"

    .line 29
    .line 30
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Llb/p0;->c:Llb/q0;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Llb/q0;->f(Llb/w;Llb/y0;)Llb/w;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
