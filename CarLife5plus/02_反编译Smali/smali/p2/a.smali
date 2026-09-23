.class public final Lp2/a;
.super Li2/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public e:Ld0/a0;


# virtual methods
.method public final j(Lp2/f;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/a;->e:Ld0/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ld0/c;->c:Lp2/f;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final q(Lp2/f;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/a;->e:Ld0/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ld0/c;->c:Lp2/f;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "Check failed."

    .line 12
    .line 13
    invoke-static {p1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lp2/a;->e:Ld0/a0;

    .line 17
    .line 18
    iget-object p1, p1, Ld0/a0;->c:Lf1/k1;

    .line 19
    .line 20
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ld0/t0;

    .line 25
    .line 26
    return-object p1
.end method
