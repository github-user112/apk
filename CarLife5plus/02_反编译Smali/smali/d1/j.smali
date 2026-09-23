.class public final synthetic Ld1/j;
.super Lg9/p;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/i;


# virtual methods
.method public final a()Lm9/b;
    .locals 1

    .line 1
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lg9/z;->d(Ld1/j;)Lm9/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final bridge synthetic b()Lm9/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/j;->b()Lm9/q;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lm9/q;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lg9/s;->i()Lm9/u;

    move-result-object v0

    check-cast v0, Lm9/i;

    invoke-interface {v0}, Lm9/r;->b()Lm9/q;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lm9/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/j;->c()Lm9/h;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lm9/h;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lg9/s;->i()Lm9/u;

    move-result-object v0

    check-cast v0, Lm9/i;

    invoke-interface {v0}, Lm9/i;->c()Lm9/h;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/b1;

    .line 4
    .line 5
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/j;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
