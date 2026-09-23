.class public abstract Lwb/l;
.super Lwb/m;


# direct methods
.method public static J(Lwb/j;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 21
    .line 22
    const-string v0, "Count overflow has happened."

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    return v0
.end method

.method public static final K(Lwb/j;)Lwb/i;
    .locals 4

    .line 1
    new-instance v0, Lv/x0;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lv/x0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    instance-of v1, p0, Lwb/p;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p0, Lwb/p;

    .line 13
    .line 14
    new-instance v1, Lwb/i;

    .line 15
    .line 16
    iget-object v2, p0, Lwb/p;->a:Lwb/j;

    .line 17
    .line 18
    iget-object p0, p0, Lwb/p;->b:Lf9/k;

    .line 19
    .line 20
    invoke-direct {v1, v2, p0, v0}, Lwb/i;-><init>(Lwb/j;Lf9/k;Lf9/k;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance v1, Lwb/i;

    .line 25
    .line 26
    new-instance v2, Lm7/j;

    .line 27
    .line 28
    const/16 v3, 0xb

    .line 29
    .line 30
    invoke-direct {v2, v3}, Lm7/j;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, v2, v0}, Lwb/i;-><init>(Lwb/j;Lf9/k;Lf9/k;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public static L(Lf9/a;)Lwb/j;
    .locals 3

    .line 1
    new-instance v0, Lwb/c;

    .line 2
    .line 3
    new-instance v1, Lw0/b1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, Lw0/b1;-><init>(Lf9/a;I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v2, p0, v1}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Lwb/a;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lwb/a;-><init>(Lwb/j;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public static M(Ljava/lang/Object;Lf9/k;)Lwb/j;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lwb/f;->a:Lwb/f;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lwb/c;

    .line 7
    .line 8
    new-instance v1, Landroidx/lifecycle/j0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/j0;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    invoke-direct {v0, p0, v1, p1}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static N(Lwb/j;Lf9/k;)Lwb/p;
    .locals 1

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwb/p;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lwb/p;-><init>(Lwb/j;Lf9/k;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static O(Lwb/j;Lf9/k;)Lwb/h;
    .locals 2

    .line 1
    new-instance v0, Lwb/p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lwb/p;-><init>(Lwb/j;Lf9/k;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lv/x0;

    .line 7
    .line 8
    const/16 p1, 0x13

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lv/x0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lwb/h;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, v0, v1, p0}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public static P(Lwb/j;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v1
.end method
