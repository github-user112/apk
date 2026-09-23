.class public final Lnc/e0;
.super Lnc/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lnc/d0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lnc/x0;->a:Lnc/x0;

    .line 2
    .line 3
    sget-object v0, Loc/l;->a:Loc/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lnc/d0;

    .line 9
    .line 10
    sget-object v1, Lnc/x0;->b:Lnc/s0;

    .line 11
    .line 12
    sget-object v2, Loc/l;->b:Llc/f;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lnc/d0;-><init>(Llc/e;Llc/e;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lnc/e0;->a:Lnc/d0;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lnc/e0;->h(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    const-string v0, "descriptor"

    .line 5
    .line 6
    iget-object v1, p0, Lnc/e0;->a:Lnc/d0;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p2}, Lnc/e0;->g(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    add-int/lit8 v4, v0, 0x1

    .line 41
    .line 42
    sget-object v5, Lnc/x0;->a:Lnc/x0;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0, v5, v3}, Lpc/s;->o(Llc/e;ILkc/a;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    sget-object v3, Loc/l;->a:Loc/l;

    .line 50
    .line 51
    invoke-virtual {p1, v1, v4, v3, v2}, Lpc/s;->o(Llc/e;ILkc/a;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, v1}, Lpc/s;->t(Llc/e;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lnc/e0;->a:Lnc/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    mul-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    return p1
.end method

.method public final g(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final j(Lmc/a;ILjava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    .line 3
    sget-object v0, Loc/l;->a:Loc/l;

    .line 4
    .line 5
    const-string v1, "builder"

    .line 6
    .line 7
    invoke-static {p3, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lnc/x0;->a:Lnc/x0;

    .line 11
    .line 12
    iget-object v2, p0, Lnc/e0;->a:Lnc/d0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {p1, v2, p2, v1, v3}, Lmc/a;->q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v2}, Lmc/a;->f(Llc/e;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/lit8 v5, p2, 0x1

    .line 24
    .line 25
    if-ne v4, v5, :cond_1

    .line 26
    .line 27
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    sget-object p2, Loc/l;->b:Llc/f;

    .line 34
    .line 35
    iget-object p2, p2, Llc/f;->b:La/a;

    .line 36
    .line 37
    instance-of p2, p2, Llc/d;

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    invoke-static {v1, p3}, Ls8/b0;->K(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p1, v2, v4, v0, p2}, Lmc/a;->q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p1, v2, v4, v0, v3}, Lmc/a;->q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const-string p1, "Value must follow key in a map, index for key: "

    .line 59
    .line 60
    const-string p3, ", returned index for value: "

    .line 61
    .line 62
    invoke-static {p2, v4, p1, p3}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string p1, "<this>"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
