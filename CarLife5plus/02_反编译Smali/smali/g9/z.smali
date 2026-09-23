.class public Lg9/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public a(Lg9/j;)Lm9/f;
    .locals 0

    .line 1
    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lm9/c;
    .locals 1

    .line 1
    new-instance v0, Lg9/f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lg9/f;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lm9/e;
    .locals 1

    .line 1
    new-instance v0, Lg9/q;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lg9/q;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public d(Ld1/j;)Lm9/i;
    .locals 0

    .line 1
    return-object p1
.end method

.method public e(Lg9/o;)Lm9/k;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f(Lc1/q0;)Lm9/r;
    .locals 0

    .line 1
    return-object p1
.end method

.method public g(Lg9/r;)Lm9/t;
    .locals 0

    .line 1
    return-object p1
.end method

.method public h(Lg9/i;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    aget-object p1, p1, v0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "kotlin.jvm.functions."

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x15

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    return-object p1
.end method

.method public i(Lg9/n;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg9/z;->h(Lg9/i;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
