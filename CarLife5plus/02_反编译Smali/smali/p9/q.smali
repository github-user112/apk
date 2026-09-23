.class public abstract Lp9/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static a:Le2/f;

.field public static b:Le2/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final A(Llb/w;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lp9/q;->E(Llb/w;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lp9/q;->n(Llb/w;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-static {p0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Llb/n0;

    .line 53
    .line 54
    invoke-virtual {v1}, Llb/n0;->b()Llb/w;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public static final B(Lv9/h;)Lt9/k;
    .locals 3

    .line 1
    instance-of v0, p0, Lv9/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Ls9/i;->J(Lv9/h;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p0}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lua/d;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lua/d;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lt9/m;->b:Lt9/m;

    .line 31
    .line 32
    invoke-virtual {p0}, Lua/d;->g()Lua/c;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lua/c;->b()Lua/c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lua/d;->f()Lua/e;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lua/e;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "asString(...)"

    .line 49
    .line 50
    invoke-static {p0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0, v1}, Lt9/m;->a(Ljava/lang/String;Lua/c;)Lt9/l;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    iget-object p0, p0, Lt9/l;->a:Lt9/k;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public static final C(Llb/w;)Llb/w;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lp9/q;->E(Llb/w;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Llb/w;->getAnnotations()Lw9/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ls9/o;->p:Lua/c;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Lp9/q;->n(Llb/w;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Llb/n0;

    .line 34
    .line 35
    invoke-virtual {p0}, Llb/n0;->b()Llb/w;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public static final D(Llb/w;)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lp9/q;->E(Llb/w;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Llb/w;->B0()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Lp9/q;->n(Llb/w;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p0}, Lp9/q;->E(Llb/w;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Llb/w;->getAnnotations()Lw9/h;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v2, Ls9/o;->p:Lua/c;

    .line 29
    .line 30
    invoke-interface {p0, v2}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    add-int/2addr p0, v1

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v1, v3

    .line 45
    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final E(Llb/w;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Llb/k0;->k()Lv9/h;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lp9/q;->B(Lv9/h;)Lt9/k;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Lt9/g;->c:Lt9/g;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget-object v0, Lt9/j;->c:Lt9/j;

    .line 29
    .line 30
    invoke-static {p0, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static final F(Llb/w;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Llb/k0;->k()Lv9/h;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lp9/q;->B(Lv9/h;)Lt9/k;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    sget-object v0, Lt9/j;->c:Lt9/j;

    .line 23
    .line 24
    invoke-static {p0, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static final G(FJJ)J
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p1, v0

    .line 4
    .line 5
    long-to-int v2, v1

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    shr-long v2, p3, v0

    .line 11
    .line 12
    long-to-int v3, v2

    .line 13
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v1, v2, p0}, Lm9/e0;->p0(FFF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-wide v2, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr p1, v2

    .line 27
    long-to-int p2, p1

    .line 28
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    and-long/2addr p3, v2

    .line 33
    long-to-int p2, p3

    .line 34
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-static {p1, p2, p0}, Lm9/e0;->p0(FFF)F

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    int-to-long p3, p0

    .line 52
    shl-long p0, p1, v0

    .line 53
    .line 54
    and-long/2addr p3, v2

    .line 55
    or-long/2addr p0, p3

    .line 56
    return-wide p0
.end method

.method public static final H(Lf9/a;Lf1/s;I)Lq0/f;
    .locals 3

    .line 1
    sget-object p2, Lr2/n0;->f:Lf1/w2;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lq0/f;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v1, p2, v0, p0}, Lq0/f;-><init>(Landroid/view/View;Lf9/k;Lf9/a;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    check-cast v1, Lq0/f;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    if-ne p2, v2, :cond_3

    .line 45
    .line 46
    :cond_2
    new-instance p2, Lq0/a;

    .line 47
    .line 48
    const/4 p0, 0x3

    .line 49
    invoke-direct {p2, v1, p0}, Lq0/a;-><init>(Lq0/f;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    check-cast p2, Lf9/k;

    .line 56
    .line 57
    invoke-static {v1, p2, p1}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 58
    .line 59
    .line 60
    return-object v1
.end method

.method public static final I(Lua/e;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lua/e;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "asString(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lwa/m;->a:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    const/16 v5, 0x5f

    .line 42
    .line 43
    if-eq v4, v5, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {p0}, Lua/e;->b()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lua/e;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "`"

    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 p0, 0x60

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public static final J(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lua/e;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    const-string v2, "."

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {v1}, Lp9/q;->I(Lua/e;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "lowerRendered"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lowerPrefix"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "upperRendered"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "upperPrefix"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "foldedPrefix"

    .line 22
    .line 23
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {p2, p3}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "substring(...)"

    .line 47
    .line 48
    invoke-static {p0, p1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2, p1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_0

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_0
    invoke-static {p0, p2}, Lp9/q;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 p1, 0x21

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_1
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public static final L(Ljava/lang/String;)Lr8/s;
    .locals 15

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Lp4/e;->h(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x30

    .line 19
    .line 20
    invoke-static {v3, v4}, Lg9/l;->f(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-gez v4, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq v1, v4, :cond_5

    .line 28
    .line 29
    const/16 v5, 0x2b

    .line 30
    .line 31
    if-eq v3, v5, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v4, 0x0

    .line 35
    :cond_2
    const v3, 0x71c71c7

    .line 36
    .line 37
    .line 38
    const v5, 0x71c71c7

    .line 39
    .line 40
    .line 41
    :goto_0
    if-ge v4, v1, :cond_7

    .line 42
    .line 43
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-static {v6, v0}, Ljava/lang/Character;->digit(II)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-gez v6, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/high16 v7, -0x80000000

    .line 55
    .line 56
    xor-int v8, v2, v7

    .line 57
    .line 58
    xor-int v9, v5, v7

    .line 59
    .line 60
    invoke-static {v8, v9}, Ljava/lang/Integer;->compare(II)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-lez v9, :cond_4

    .line 65
    .line 66
    if-ne v5, v3, :cond_5

    .line 67
    .line 68
    const/4 v5, -0x1

    .line 69
    int-to-long v9, v5

    .line 70
    const-wide v11, 0xffffffffL

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    and-long/2addr v9, v11

    .line 76
    int-to-long v13, v0

    .line 77
    and-long/2addr v11, v13

    .line 78
    div-long/2addr v9, v11

    .line 79
    long-to-int v5, v9

    .line 80
    xor-int v9, v5, v7

    .line 81
    .line 82
    invoke-static {v8, v9}, Ljava/lang/Integer;->compare(II)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-lez v8, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    mul-int/lit8 v2, v2, 0xa

    .line 90
    .line 91
    add-int/2addr v6, v2

    .line 92
    xor-int v8, v6, v7

    .line 93
    .line 94
    xor-int/2addr v2, v7

    .line 95
    invoke-static {v8, v2}, Ljava/lang/Integer;->compare(II)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-gez v2, :cond_6

    .line 100
    .line 101
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 102
    return-object p0

    .line 103
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    move v2, v6

    .line 106
    goto :goto_0

    .line 107
    :cond_7
    new-instance p0, Lr8/s;

    .line 108
    .line 109
    invoke-direct {p0, v2}, Lr8/s;-><init>(I)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method

.method public static final M(Ljava/lang/String;)Lr8/u;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v1}, Lp4/e;->h(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0x30

    .line 27
    .line 28
    invoke-static {v4, v5}, Lg9/l;->f(II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    if-gez v5, :cond_2

    .line 34
    .line 35
    if-eq v2, v6, :cond_9

    .line 36
    .line 37
    const/16 v5, 0x2b

    .line 38
    .line 39
    if-eq v4, v5, :cond_1

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    const/4 v4, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v4, 0x0

    .line 46
    :goto_0
    int-to-long v7, v1

    .line 47
    const-wide/16 v9, 0x0

    .line 48
    .line 49
    const-wide v11, 0x71c71c71c71c71cL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    move-wide v13, v9

    .line 55
    move-wide v15, v11

    .line 56
    :goto_1
    if-ge v4, v2, :cond_b

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v5, v1}, Ljava/lang/Character;->digit(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-gez v5, :cond_3

    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_3
    const-wide/high16 v17, -0x8000000000000000L

    .line 71
    .line 72
    move/from16 v19, v2

    .line 73
    .line 74
    xor-long v1, v13, v17

    .line 75
    .line 76
    move/from16 v20, v4

    .line 77
    .line 78
    xor-long v3, v15, v17

    .line 79
    .line 80
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lez v3, :cond_7

    .line 85
    .line 86
    cmp-long v3, v15, v11

    .line 87
    .line 88
    if-nez v3, :cond_9

    .line 89
    .line 90
    const-wide v3, 0x7fffffffffffffffL

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    cmp-long v15, v7, v9

    .line 96
    .line 97
    if-gez v15, :cond_5

    .line 98
    .line 99
    xor-long v15, v7, v17

    .line 100
    .line 101
    cmp-long v21, v3, v15

    .line 102
    .line 103
    if-gez v21, :cond_4

    .line 104
    .line 105
    move-wide/from16 v22, v7

    .line 106
    .line 107
    move-wide v15, v9

    .line 108
    goto :goto_4

    .line 109
    :cond_4
    const-wide/16 v3, 0x1

    .line 110
    .line 111
    move-wide v15, v3

    .line 112
    move-wide/from16 v22, v7

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    div-long/2addr v3, v7

    .line 116
    shl-long/2addr v3, v6

    .line 117
    mul-long v15, v3, v7

    .line 118
    .line 119
    const-wide/16 v21, -0x1

    .line 120
    .line 121
    sub-long v21, v21, v15

    .line 122
    .line 123
    xor-long v15, v21, v17

    .line 124
    .line 125
    xor-long v21, v7, v17

    .line 126
    .line 127
    cmp-long v23, v15, v21

    .line 128
    .line 129
    if-ltz v23, :cond_6

    .line 130
    .line 131
    const/4 v15, 0x1

    .line 132
    :goto_2
    move-wide/from16 v22, v7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    const/4 v15, 0x0

    .line 136
    goto :goto_2

    .line 137
    :goto_3
    int-to-long v6, v15

    .line 138
    add-long/2addr v3, v6

    .line 139
    move-wide v15, v3

    .line 140
    :goto_4
    xor-long v3, v15, v17

    .line 141
    .line 142
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-lez v1, :cond_8

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    move-wide/from16 v22, v7

    .line 150
    .line 151
    :cond_8
    mul-long v13, v13, v22

    .line 152
    .line 153
    int-to-long v1, v5

    .line 154
    const-wide v3, 0xffffffffL

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    and-long/2addr v1, v3

    .line 160
    add-long/2addr v1, v13

    .line 161
    xor-long v3, v1, v17

    .line 162
    .line 163
    xor-long v5, v13, v17

    .line 164
    .line 165
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-gez v3, :cond_a

    .line 170
    .line 171
    :cond_9
    :goto_5
    const/4 v0, 0x0

    .line 172
    return-object v0

    .line 173
    :cond_a
    add-int/lit8 v4, v20, 0x1

    .line 174
    .line 175
    move-wide v13, v1

    .line 176
    move/from16 v2, v19

    .line 177
    .line 178
    move-wide/from16 v7, v22

    .line 179
    .line 180
    const/16 v1, 0xa

    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    const/4 v6, 0x1

    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :cond_b
    new-instance v0, Lr8/u;

    .line 187
    .line 188
    invoke-direct {v0, v13, v14}, Lr8/u;-><init>(J)V

    .line 189
    .line 190
    .line 191
    return-object v0
.end method

.method public static final N(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "lower"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "upper"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    const-string v1, "?"

    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Lxb/p;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {p1, v1}, Lxb/p;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "("

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, ")?"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 70
    return p0
.end method

.method public static final a(Lf9/a;Lr3/s;Ln1/c;Lf1/s;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    const v0, 0x3145f7ad

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p4, 0x6

    .line 12
    .line 13
    const/4 v8, 0x4

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int v0, p4, v0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move/from16 v0, p4

    .line 29
    .line 30
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    or-int/lit8 v0, v0, 0x30

    .line 35
    .line 36
    move-object/from16 v3, p1

    .line 37
    .line 38
    :goto_2
    move v10, v0

    .line 39
    goto :goto_4

    .line 40
    :cond_2
    move-object/from16 v3, p1

    .line 41
    .line 42
    invoke-virtual {v7, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/16 v4, 0x10

    .line 52
    .line 53
    :goto_3
    or-int/2addr v0, v4

    .line 54
    goto :goto_2

    .line 55
    :goto_4
    and-int/lit16 v0, v10, 0x93

    .line 56
    .line 57
    const/16 v4, 0x92

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v12, 0x1

    .line 61
    if-eq v0, v4, :cond_4

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    goto :goto_5

    .line 65
    :cond_4
    const/4 v0, 0x0

    .line 66
    :goto_5
    and-int/lit8 v4, v10, 0x1

    .line 67
    .line 68
    invoke-virtual {v7, v4, v0}, Lf1/s;->N(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_13

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    new-instance v0, Lr3/s;

    .line 77
    .line 78
    const/4 v2, 0x7

    .line 79
    invoke-direct {v0, v2, v11}, Lr3/s;-><init>(IZ)V

    .line 80
    .line 81
    .line 82
    move-object v2, v0

    .line 83
    goto :goto_6

    .line 84
    :cond_5
    move-object v2, v3

    .line 85
    :goto_6
    sget-object v0, Lr2/n0;->f:Lf1/w2;

    .line 86
    .line 87
    invoke-virtual {v7, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v3, v0

    .line 92
    check-cast v3, Landroid/view/View;

    .line 93
    .line 94
    sget-object v0, Lr2/i1;->h:Lf1/w2;

    .line 95
    .line 96
    invoke-virtual {v7, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v5, v0

    .line 101
    check-cast v5, Ln3/c;

    .line 102
    .line 103
    sget-object v0, Lr2/i1;->n:Lf1/w2;

    .line 104
    .line 105
    invoke-virtual {v7, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object v4, v0

    .line 110
    check-cast v4, Ln3/m;

    .line 111
    .line 112
    invoke-static {v7}, Lf1/b;->u(Lf1/s;)Lf1/q;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    invoke-static/range {p2 .. p3}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    new-array v0, v11, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    sget-object v15, Lf1/n;->a:Lf1/w0;

    .line 127
    .line 128
    if-ne v6, v15, :cond_6

    .line 129
    .line 130
    sget-object v6, Lr3/e;->b:Lr3/e;

    .line 131
    .line 132
    invoke-virtual {v7, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    check-cast v6, Lf9/a;

    .line 136
    .line 137
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v11, Lo1/k;->a:Lu0/j;

    .line 142
    .line 143
    const/16 v9, 0xd80

    .line 144
    .line 145
    invoke-static {v0, v11, v6, v7, v9}, Lo1/k;->c([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move-object v6, v0

    .line 150
    check-cast v6, Ljava/util/UUID;

    .line 151
    .line 152
    invoke-virtual {v7, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {v7, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    or-int/2addr v0, v9

    .line 161
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    if-ne v9, v15, :cond_a

    .line 168
    .line 169
    :cond_7
    new-instance v0, Lr3/t;

    .line 170
    .line 171
    invoke-direct/range {v0 .. v6}, Lr3/t;-><init>(Lf9/a;Lr3/s;Landroid/view/View;Ln3/m;Ln3/c;Ljava/util/UUID;)V

    .line 172
    .line 173
    .line 174
    new-instance v3, Lc1/n;

    .line 175
    .line 176
    const/4 v5, 0x4

    .line 177
    invoke-direct {v3, v5, v14}, Lc1/n;-><init>(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    new-instance v5, Ln1/c;

    .line 181
    .line 182
    const v6, 0x14ae31cc

    .line 183
    .line 184
    .line 185
    invoke-direct {v5, v3, v6, v12}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v0, Lr3/t;->g:Lr3/r;

    .line 189
    .line 190
    invoke-virtual {v3, v13}, Lr2/a;->setParentCompositionContext(Lf1/v;)V

    .line 191
    .line 192
    .line 193
    iget-object v6, v3, Lr3/r;->j:Lf1/k1;

    .line 194
    .line 195
    invoke-virtual {v6, v5}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iput-boolean v12, v3, Lr3/r;->n:Z

    .line 199
    .line 200
    iget-object v5, v3, Lr2/a;->d:Lf1/v;

    .line 201
    .line 202
    if-nez v5, :cond_9

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_8

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    const-string v1, "createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference."

    .line 214
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_9
    :goto_7
    invoke-virtual {v3}, Lr2/a;->c()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object v9, v0

    .line 226
    :cond_a
    check-cast v9, Lr3/t;

    .line 227
    .line 228
    invoke-virtual {v7, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    if-nez v0, :cond_b

    .line 237
    .line 238
    if-ne v3, v15, :cond_c

    .line 239
    .line 240
    :cond_b
    new-instance v3, La8/k0;

    .line 241
    .line 242
    const/4 v0, 0x0

    .line 243
    const/4 v5, 0x4

    .line 244
    invoke-direct {v3, v9, v0, v5}, La8/k0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_c
    check-cast v3, Lf9/n;

    .line 251
    .line 252
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 253
    .line 254
    invoke-static {v7, v3, v0}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    if-nez v0, :cond_d

    .line 266
    .line 267
    if-ne v3, v15, :cond_e

    .line 268
    .line 269
    :cond_d
    new-instance v3, Lr3/a;

    .line 270
    .line 271
    const/4 v0, 0x0

    .line 272
    invoke-direct {v3, v9, v0}, Lr3/a;-><init>(Lr3/t;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_e
    check-cast v3, Lf9/k;

    .line 279
    .line 280
    invoke-static {v9, v3, v7}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    and-int/lit8 v3, v10, 0xe

    .line 288
    .line 289
    if-ne v3, v8, :cond_f

    .line 290
    .line 291
    const/4 v3, 0x1

    .line 292
    goto :goto_8

    .line 293
    :cond_f
    const/4 v3, 0x0

    .line 294
    :goto_8
    or-int/2addr v0, v3

    .line 295
    and-int/lit8 v3, v10, 0x70

    .line 296
    .line 297
    const/16 v5, 0x20

    .line 298
    .line 299
    if-ne v3, v5, :cond_10

    .line 300
    .line 301
    const/4 v11, 0x1

    .line 302
    goto :goto_9

    .line 303
    :cond_10
    const/4 v11, 0x0

    .line 304
    :goto_9
    or-int/2addr v0, v11

    .line 305
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {v7, v3}, Lf1/s;->d(I)Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    or-int/2addr v0, v3

    .line 314
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    if-nez v0, :cond_11

    .line 319
    .line 320
    if-ne v3, v15, :cond_12

    .line 321
    .line 322
    :cond_11
    new-instance v3, Lr3/b;

    .line 323
    .line 324
    invoke-direct {v3, v9, v1, v2, v4}, Lr3/b;-><init>(Lr3/t;Lf9/a;Lr3/s;Ln3/m;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_12
    check-cast v3, Lf9/a;

    .line 331
    .line 332
    invoke-static {v3, v7}, Lf1/b;->h(Lf9/a;Lf1/s;)V

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_13
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 337
    .line 338
    .line 339
    move-object v2, v3

    .line 340
    :goto_a
    invoke-virtual {v7}, Lf1/s;->r()Lf1/w1;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    if-eqz v6, :cond_14

    .line 345
    .line 346
    new-instance v0, Lr3/c;

    .line 347
    .line 348
    move-object/from16 v3, p2

    .line 349
    .line 350
    move/from16 v4, p4

    .line 351
    .line 352
    move/from16 v5, p5

    .line 353
    .line 354
    invoke-direct/range {v0 .. v5}, Lr3/c;-><init>(Lf9/a;Lr3/s;Ln1/c;II)V

    .line 355
    .line 356
    .line 357
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 358
    .line 359
    :cond_14
    return-void
.end method

.method public static final b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V
    .locals 17

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p6

    .line 6
    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    const v1, 0x441d0e20

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    move-object/from16 v9, p0

    .line 16
    .line 17
    invoke-virtual {v0, v9}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int/2addr v1, v7

    .line 27
    and-int/lit16 v4, v7, 0x180

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const/16 v4, 0x100

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v4, 0x80

    .line 41
    .line 42
    :goto_1
    or-int/2addr v1, v4

    .line 43
    :cond_2
    and-int/lit8 v4, p8, 0x8

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    or-int/lit16 v1, v1, 0xc00

    .line 48
    .line 49
    move-object/from16 v5, p3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move-object/from16 v5, p3

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    const/16 v6, 0x800

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const/16 v6, 0x400

    .line 64
    .line 65
    :goto_2
    or-int/2addr v1, v6

    .line 66
    :goto_3
    and-int/lit8 v6, p8, 0x10

    .line 67
    .line 68
    if-eqz v6, :cond_6

    .line 69
    .line 70
    or-int/lit16 v1, v1, 0x6000

    .line 71
    .line 72
    :cond_5
    move-object/from16 v8, p4

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    and-int/lit16 v8, v7, 0x6000

    .line 76
    .line 77
    if-nez v8, :cond_5

    .line 78
    .line 79
    move-object/from16 v8, p4

    .line 80
    .line 81
    invoke-virtual {v0, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    const/16 v10, 0x4000

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const/16 v10, 0x2000

    .line 91
    .line 92
    :goto_4
    or-int/2addr v1, v10

    .line 93
    :goto_5
    and-int/lit8 v10, p8, 0x20

    .line 94
    .line 95
    if-eqz v10, :cond_8

    .line 96
    .line 97
    const/high16 v11, 0x30000

    .line 98
    .line 99
    or-int/2addr v1, v11

    .line 100
    move/from16 v11, p5

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_8
    move/from16 v11, p5

    .line 104
    .line 105
    invoke-virtual {v0, v11}, Lf1/s;->c(F)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_9

    .line 110
    .line 111
    const/high16 v12, 0x20000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_9
    const/high16 v12, 0x10000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v1, v12

    .line 117
    :goto_7
    and-int/lit8 v12, p8, 0x40

    .line 118
    .line 119
    if-eqz v12, :cond_a

    .line 120
    .line 121
    const/high16 v12, 0x180000

    .line 122
    .line 123
    :goto_8
    or-int/2addr v1, v12

    .line 124
    goto :goto_9

    .line 125
    :cond_a
    const/4 v12, 0x0

    .line 126
    invoke-virtual {v0, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_b

    .line 131
    .line 132
    const/high16 v12, 0x100000

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_b
    const/high16 v12, 0x80000

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :goto_9
    const v12, 0x92493

    .line 139
    .line 140
    .line 141
    and-int/2addr v12, v1

    .line 142
    const v13, 0x92492

    .line 143
    .line 144
    .line 145
    const/4 v14, 0x0

    .line 146
    const/4 v15, 0x1

    .line 147
    if-eq v12, v13, :cond_c

    .line 148
    .line 149
    const/4 v12, 0x1

    .line 150
    goto :goto_a

    .line 151
    :cond_c
    const/4 v12, 0x0

    .line 152
    :goto_a
    and-int/2addr v1, v15

    .line 153
    invoke-virtual {v0, v1, v12}, Lf1/s;->N(IZ)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_16

    .line 158
    .line 159
    if-eqz v4, :cond_d

    .line 160
    .line 161
    sget-object v1, Lr1/c;->e:Lr1/h;

    .line 162
    .line 163
    move/from16 v16, v10

    .line 164
    .line 165
    move-object v10, v1

    .line 166
    move/from16 v1, v16

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_d
    move v1, v10

    .line 170
    move-object v10, v5

    .line 171
    :goto_b
    if-eqz v6, :cond_e

    .line 172
    .line 173
    sget-object v4, Lo2/j;->b:Lo2/i;

    .line 174
    .line 175
    move-object v11, v4

    .line 176
    goto :goto_c

    .line 177
    :cond_e
    move-object v11, v8

    .line 178
    :goto_c
    if-eqz v1, :cond_f

    .line 179
    .line 180
    const/high16 v1, 0x3f800000    # 1.0f

    .line 181
    .line 182
    const/high16 v12, 0x3f800000    # 1.0f

    .line 183
    .line 184
    goto :goto_d

    .line 185
    :cond_f
    move/from16 v12, p5

    .line 186
    .line 187
    :goto_d
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 188
    .line 189
    sget-object v4, Lr1/m;->a:Lr1/m;

    .line 190
    .line 191
    if-eqz v2, :cond_11

    .line 192
    .line 193
    const v5, 0x71340604

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v5}, Lf1/s;->W(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    if-ne v5, v1, :cond_10

    .line 204
    .line 205
    new-instance v5, Lj8/t;

    .line 206
    .line 207
    const/4 v6, 0x3

    .line 208
    invoke-direct {v5, v6, v2}, Lj8/t;-><init>(ILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_10
    check-cast v5, Lf9/k;

    .line 215
    .line 216
    invoke-static {v4, v5}, Ly2/k;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v0, v14}, Lf1/s;->p(Z)V

    .line 221
    .line 222
    .line 223
    goto :goto_e

    .line 224
    :cond_11
    const v5, 0x71367242

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v5}, Lf1/s;->W(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v14}, Lf1/s;->p(Z)V

    .line 231
    .line 232
    .line 233
    :goto_e
    invoke-interface {v3, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-static {v4}, Lp9/x1;->g(Lr1/p;)Lr1/p;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    const/4 v14, 0x2

    .line 242
    const/4 v13, 0x0

    .line 243
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/draw/a;->d(Lr1/p;Ld2/b;Lr1/d;Lo2/i;FLy1/k;I)Lr1/p;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-ne v5, v1, :cond_12

    .line 252
    .line 253
    sget-object v5, Lx/m0;->a:Lx/m0;

    .line 254
    .line 255
    invoke-virtual {v0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_12
    check-cast v5, Lo2/m0;

    .line 259
    .line 260
    iget-wide v8, v0, Lf1/s;->T:J

    .line 261
    .line 262
    const/16 v1, 0x20

    .line 263
    .line 264
    ushr-long v13, v8, v1

    .line 265
    .line 266
    xor-long/2addr v8, v13

    .line 267
    long-to-int v1, v8

    .line 268
    invoke-static {v0, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 282
    .line 283
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 284
    .line 285
    .line 286
    iget-boolean v9, v0, Lf1/s;->S:Z

    .line 287
    .line 288
    if-eqz v9, :cond_13

    .line 289
    .line 290
    invoke-virtual {v0, v8}, Lf1/s;->k(Lf9/a;)V

    .line 291
    .line 292
    .line 293
    goto :goto_f

    .line 294
    :cond_13
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 295
    .line 296
    .line 297
    :goto_f
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 298
    .line 299
    invoke-static {v0, v8, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    sget-object v5, Lq2/i;->d:Lq2/h;

    .line 303
    .line 304
    invoke-static {v0, v5, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 308
    .line 309
    invoke-static {v0, v5, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 313
    .line 314
    iget-boolean v5, v0, Lf1/s;->S:Z

    .line 315
    .line 316
    if-nez v5, :cond_14

    .line 317
    .line 318
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-nez v5, :cond_15

    .line 331
    .line 332
    :cond_14
    invoke-static {v1, v0, v1, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 333
    .line 334
    .line 335
    :cond_15
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    .line 336
    .line 337
    .line 338
    move-object v4, v10

    .line 339
    move-object v5, v11

    .line 340
    move v6, v12

    .line 341
    goto :goto_10

    .line 342
    :cond_16
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 343
    .line 344
    .line 345
    move/from16 v6, p5

    .line 346
    .line 347
    move-object v4, v5

    .line 348
    move-object v5, v8

    .line 349
    :goto_10
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    if-eqz v9, :cond_17

    .line 354
    .line 355
    new-instance v0, Lx/l0;

    .line 356
    .line 357
    move-object/from16 v1, p0

    .line 358
    .line 359
    move/from16 v8, p8

    .line 360
    .line 361
    invoke-direct/range {v0 .. v8}, Lx/l0;-><init>(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FII)V

    .line 362
    .line 363
    .line 364
    iput-object v0, v9, Lf1/w1;->d:Lf9/n;

    .line 365
    .line 366
    :cond_17
    return-void
.end method

.method public static final c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V
    .locals 9

    .line 1
    sget-object v3, Lr1/c;->e:Lr1/h;

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x10

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    sget-object p5, Lo2/j;->b:Lo2/i;

    .line 8
    .line 9
    :goto_0
    move-object v4, p5

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget-object p5, Lo2/j;->a:Lo2/i;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez p5, :cond_1

    .line 23
    .line 24
    sget-object p5, Lf1/n;->a:Lf1/w0;

    .line 25
    .line 26
    if-ne v0, p5, :cond_2

    .line 27
    .line 28
    :cond_1
    iget-object p5, p0, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result p5

    .line 38
    int-to-long v0, v0

    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    shl-long/2addr v0, v2

    .line 42
    int-to-long v5, p5

    .line 43
    const-wide v7, 0xffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v5, v7

    .line 49
    or-long/2addr v0, v5

    .line 50
    new-instance p5, Ld2/a;

    .line 51
    .line 52
    invoke-direct {p5, p0, v0, v1}, Ld2/a;-><init>(Ly1/f;J)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    iput p0, p5, Ld2/a;->g:I

    .line 57
    .line 58
    invoke-virtual {p3, p5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v0, p5

    .line 62
    :cond_2
    check-cast v0, Ld2/a;

    .line 63
    .line 64
    const p0, 0x3ffff0

    .line 65
    .line 66
    .line 67
    and-int v7, p4, p0

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    .line 72
    move-object v1, p1

    .line 73
    move-object v2, p2

    .line 74
    move-object v6, p3

    .line 75
    invoke-static/range {v0 .. v8}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static final d(FF)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-long p0, p0

    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shl-long/2addr v0, v2

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p0, v2

    .line 20
    or-long/2addr p0, v0

    .line 21
    return-wide p0
.end method

.method public static final e(Lr1/p;Lf1/t1;Ln1/c;Lf1/s;I)V
    .locals 9

    .line 1
    sget-object v0, Lq0/i;->a:Ln1/c;

    .line 2
    .line 3
    const v1, -0x2a95dc91

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p4, 0x6

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    :goto_0
    or-int/2addr v1, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, p4

    .line 25
    :goto_1
    and-int/lit8 v2, p4, 0x30

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v2, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v1, v2

    .line 41
    :cond_3
    and-int/lit16 v2, p4, 0x180

    .line 42
    .line 43
    if-nez v2, :cond_5

    .line 44
    .line 45
    invoke-virtual {p3, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    const/16 v2, 0x100

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    const/16 v2, 0x80

    .line 55
    .line 56
    :goto_3
    or-int/2addr v1, v2

    .line 57
    :cond_5
    and-int/lit16 v2, p4, 0xc00

    .line 58
    .line 59
    if-nez v2, :cond_7

    .line 60
    .line 61
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    const/16 v2, 0x800

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_6
    const/16 v2, 0x400

    .line 71
    .line 72
    :goto_4
    or-int/2addr v1, v2

    .line 73
    :cond_7
    and-int/lit16 v2, v1, 0x493

    .line 74
    .line 75
    const/16 v3, 0x492

    .line 76
    .line 77
    if-eq v2, v3, :cond_8

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    goto :goto_5

    .line 81
    :cond_8
    const/4 v2, 0x0

    .line 82
    :goto_5
    and-int/lit8 v3, v1, 0x1

    .line 83
    .line 84
    invoke-virtual {p3, v3, v2}, Lf1/s;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_a

    .line 89
    .line 90
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 95
    .line 96
    if-ne v2, v3, :cond_9

    .line 97
    .line 98
    sget-object v2, Lf1/w0;->c:Lf1/w0;

    .line 99
    .line 100
    new-instance v3, Lf1/k1;

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-direct {v3, v4, v2}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object v2, v3

    .line 110
    :cond_9
    move-object v5, v2

    .line 111
    check-cast v5, Lf1/b1;

    .line 112
    .line 113
    shr-int/lit8 v1, v1, 0x6

    .line 114
    .line 115
    and-int/lit8 v1, v1, 0xe

    .line 116
    .line 117
    invoke-static {v0, p3, v1}, Lp9/q;->k(Ln1/c;Lf1/s;I)Ls0/c;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {p1, v7}, Lf1/t1;->a(Ljava/lang/Object;)Lf1/u1;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v3, Lc8/m;

    .line 126
    .line 127
    const/4 v8, 0x7

    .line 128
    move-object v4, p0

    .line 129
    move-object v6, p2

    .line 130
    invoke-direct/range {v3 .. v8}, Lc8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    const p0, 0x1059082f

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v3, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const/16 p2, 0x38

    .line 141
    .line 142
    invoke-static {v0, p0, p3, p2}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_a
    move-object v4, p0

    .line 147
    move-object v6, p2

    .line 148
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 149
    .line 150
    .line 151
    :goto_6
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-eqz p0, :cond_b

    .line 156
    .line 157
    new-instance p2, Lh0/u;

    .line 158
    .line 159
    invoke-direct {p2, v4, p1, v6, p4}, Lh0/u;-><init>(Lr1/p;Lf1/t1;Ln1/c;I)V

    .line 160
    .line 161
    .line 162
    iput-object p2, p0, Lf1/w1;->d:Lf9/n;

    .line 163
    .line 164
    :cond_b
    return-void
.end method

.method public static final f(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 3

    .line 1
    const v0, 0x7b14daa1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p3

    .line 23
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 40
    .line 41
    const/16 v2, 0x12

    .line 42
    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    const/4 v1, 0x0

    .line 48
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 49
    .line 50
    invoke-virtual {p2, v2, v1}, Lf1/s;->N(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    and-int/lit8 v1, v0, 0xe

    .line 57
    .line 58
    or-int/lit8 v1, v1, 0x30

    .line 59
    .line 60
    shl-int/lit8 v0, v0, 0x3

    .line 61
    .line 62
    and-int/lit16 v0, v0, 0x380

    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    invoke-static {p0, p1, p2, v0}, Lp9/q;->g(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 70
    .line 71
    .line 72
    :goto_4
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_6

    .line 77
    .line 78
    new-instance v0, Lq0/g;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {v0, p0, p1, p3, v1}, Lq0/g;-><init>(Lr1/p;Ln1/c;II)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 85
    .line 86
    :cond_6
    return-void
.end method

.method public static final g(Lr1/p;Ln1/c;Lf1/s;I)V
    .locals 6

    .line 1
    const v0, 0x2e032b74

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p3

    .line 23
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    :cond_3
    and-int/lit16 v1, p3, 0x180

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const/16 v1, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v1, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v0, v1

    .line 56
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 57
    .line 58
    const/16 v3, 0x92

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x1

    .line 62
    if-eq v1, v3, :cond_6

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    const/4 v1, 0x0

    .line 67
    :goto_4
    and-int/2addr v0, v5

    .line 68
    invoke-virtual {p2, v0, v1}, Lf1/s;->N(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_9

    .line 73
    .line 74
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 79
    .line 80
    if-ne v0, v1, :cond_7

    .line 81
    .line 82
    sget-object v0, Lf1/w0;->c:Lf1/w0;

    .line 83
    .line 84
    new-instance v3, Lf1/k1;

    .line 85
    .line 86
    invoke-direct {v3, v2, v0}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v0, v3

    .line 93
    :cond_7
    check-cast v0, Lf1/b1;

    .line 94
    .line 95
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-ne v2, v1, :cond_8

    .line 100
    .line 101
    new-instance v2, Lj8/h;

    .line 102
    .line 103
    const/16 v1, 0x18

    .line 104
    .line 105
    invoke-direct {v2, v0, v1}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    check-cast v2, Lf9/a;

    .line 112
    .line 113
    invoke-static {v2, p2, v4}, Lp9/q;->H(Lf9/a;Lf1/s;I)Lq0/f;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sget-object v2, Ls0/g;->b:Lf1/c0;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    new-instance v2, La8/m0;

    .line 124
    .line 125
    invoke-direct {v2, p0, v0, p1}, La8/m0;-><init>(Lr1/p;Lf1/b1;Ln1/c;)V

    .line 126
    .line 127
    .line 128
    const v0, -0x115affcc

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v2, p2}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/16 v2, 0x38

    .line 136
    .line 137
    invoke-static {v1, v0, p2, v2}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_9
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 142
    .line 143
    .line 144
    :goto_5
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-eqz p2, :cond_a

    .line 149
    .line 150
    new-instance v0, Lq0/g;

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    invoke-direct {v0, p0, p1, p3, v1}, Lq0/g;-><init>(Lr1/p;Ln1/c;II)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 157
    .line 158
    :cond_a
    return-void
.end method

.method public static final h(Lr1/p;Lf9/n;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x4100086b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p3

    .line 23
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 24
    .line 25
    const/16 v2, 0x20

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 42
    .line 43
    const/16 v3, 0x12

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    if-eq v1, v3, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    const/4 v1, 0x0

    .line 51
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {p2, v3, v1}, Lf1/s;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_9

    .line 58
    .line 59
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 64
    .line 65
    if-ne v1, v3, :cond_5

    .line 66
    .line 67
    sget-object v1, Lr3/f;->b:Lr3/f;

    .line 68
    .line 69
    invoke-virtual {p2, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    check-cast v1, Lo2/m0;

    .line 73
    .line 74
    shr-int/lit8 v3, v0, 0x3

    .line 75
    .line 76
    and-int/lit8 v3, v3, 0xe

    .line 77
    .line 78
    or-int/lit16 v3, v3, 0x180

    .line 79
    .line 80
    shl-int/lit8 v0, v0, 0x3

    .line 81
    .line 82
    and-int/lit8 v0, v0, 0x70

    .line 83
    .line 84
    or-int/2addr v0, v3

    .line 85
    iget-wide v5, p2, Lf1/s;->T:J

    .line 86
    .line 87
    ushr-long v2, v5, v2

    .line 88
    .line 89
    xor-long/2addr v2, v5

    .line 90
    long-to-int v3, v2

    .line 91
    invoke-virtual {p2}, Lf1/s;->l()Lf1/q1;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {p2, p0}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 105
    .line 106
    shl-int/lit8 v0, v0, 0x6

    .line 107
    .line 108
    and-int/lit16 v0, v0, 0x380

    .line 109
    .line 110
    or-int/lit8 v0, v0, 0x6

    .line 111
    .line 112
    invoke-virtual {p2}, Lf1/s;->a0()V

    .line 113
    .line 114
    .line 115
    iget-boolean v7, p2, Lf1/s;->S:Z

    .line 116
    .line 117
    if-eqz v7, :cond_6

    .line 118
    .line 119
    invoke-virtual {p2, v6}, Lf1/s;->k(Lf9/a;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    invoke-virtual {p2}, Lf1/s;->k0()V

    .line 124
    .line 125
    .line 126
    :goto_4
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 127
    .line 128
    invoke-static {p2, v6, v1}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v1, Lq2/i;->d:Lq2/h;

    .line 132
    .line 133
    invoke-static {p2, v1, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    sget-object v1, Lq2/i;->f:Lq2/h;

    .line 137
    .line 138
    iget-boolean v2, p2, Lf1/s;->S:Z

    .line 139
    .line 140
    if-nez v2, :cond_7

    .line 141
    .line 142
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v2, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_8

    .line 155
    .line 156
    :cond_7
    invoke-static {v3, p2, v3, v1}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 157
    .line 158
    .line 159
    :cond_8
    sget-object v1, Lq2/i;->c:Lq2/h;

    .line 160
    .line 161
    invoke-static {p2, v1, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    shr-int/lit8 v0, v0, 0x6

    .line 165
    .line 166
    and-int/lit8 v0, v0, 0xe

    .line 167
    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {p1, p2, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v4}, Lf1/s;->p(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_9
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 180
    .line 181
    .line 182
    :goto_5
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    if-eqz p2, :cond_a

    .line 187
    .line 188
    new-instance v0, Lq3/l;

    .line 189
    .line 190
    invoke-direct {v0, p0, p1, p3}, Lq3/l;-><init>(Lr1/p;Lf9/n;I)V

    .line 191
    .line 192
    .line 193
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 194
    .line 195
    :cond_a
    return-void
.end method

.method public static final i(Lg3/w;)Landroid/view/inputmethod/ExtractedText;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lg3/w;->a:Lb3/g;

    .line 7
    .line 8
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 23
    .line 24
    iget-wide v1, p0, Lg3/w;->b:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Lb3/n0;->f(J)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Lb3/n0;->e(J)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 37
    .line 38
    iget-object p0, p0, Lg3/w;->a:Lb3/g;

    .line 39
    .line 40
    iget-object p0, p0, Lb3/g;->b:Ljava/lang/String;

    .line 41
    .line 42
    const/16 v1, 0xa

    .line 43
    .line 44
    invoke-static {p0, v1}, Lxb/i;->H(Ljava/lang/CharSequence;C)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    xor-int/lit8 p0, p0, 0x1

    .line 49
    .line 50
    iput p0, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 51
    .line 52
    return-object v0
.end method

.method public static final k(Ln1/c;Lf1/s;I)Ls0/c;
    .locals 2

    .line 1
    and-int/lit8 v0, p2, 0xe

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    and-int/lit8 p2, p2, 0x6

    .line 15
    .line 16
    if-ne p2, v1, :cond_2

    .line 17
    .line 18
    :cond_1
    const/4 p2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    if-ne v0, v1, :cond_4

    .line 30
    .line 31
    :cond_3
    new-instance v0, Ls0/c;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ls0/c;-><init>(Ln1/c;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_4
    check-cast v0, Ls0/c;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-nez p0, :cond_5

    .line 50
    .line 51
    if-ne p2, v1, :cond_6

    .line 52
    .line 53
    :cond_5
    new-instance p2, Ls0/d;

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    invoke-direct {p2, p0, v0}, Ls0/d;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_6
    check-cast p2, Lf9/k;

    .line 63
    .line 64
    invoke-static {v0, p2, p1}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public static l(Lq9/g;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lp9/p1;->s(Lq9/g;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    array-length v1, p1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Callable expects "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lp9/p1;->s(Lq9/g;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, " arguments, but "

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    array-length p0, p1

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " were provided."

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public static m(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, " > toIndex: "

    .line 13
    .line 14
    invoke-static {p0, p1, v0, v1}, La2/f;->C(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p2

    .line 22
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ", toIndex: "

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ", size: "

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public static final n(Llb/w;)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Llb/w;->getAnnotations()Lw9/h;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ls9/o;->q:Lua/c;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-interface {p0}, Lw9/b;->b()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Ls9/p;->e:Lua/e;

    .line 25
    .line 26
    invoke-static {v0, p0}, Ls8/b0;->K(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lza/g;

    .line 31
    .line 32
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue"

    .line 33
    .line 34
    invoke-static {p0, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p0, Lza/k;

    .line 38
    .line 39
    iget-object p0, p0, Lza/g;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public static o(Lt9/c;Z)Lt9/f;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "functionClass"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lt9/c;->k:Ljava/util/List;

    .line 9
    .line 10
    new-instance v2, Lt9/f;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v14, 0x1

    .line 14
    move/from16 v4, p1

    .line 15
    .line 16
    invoke-direct {v2, v0, v3, v14, v4}, Lt9/f;-><init>(Lv9/k;Lt9/f;IZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ly9/b;->A0()Ly9/v;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    move-object v6, v5

    .line 43
    check-cast v6, Lv9/q0;

    .line 44
    .line 45
    invoke-interface {v6}, Lv9/q0;->J()Llb/y0;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget-object v7, Llb/y0;->d:Llb/y0;

    .line 50
    .line 51
    if-ne v6, v7, :cond_0

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v3}, Ls8/p;->F0(Ljava/util/List;)Ls8/n;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v15, Ljava/util/ArrayList;

    .line 62
    .line 63
    const/16 v4, 0xa

    .line 64
    .line 65
    invoke-static {v3, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ls8/n;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v16

    .line 76
    :goto_1
    move-object/from16 v3, v16

    .line 77
    .line 78
    check-cast v3, Ls8/a0;

    .line 79
    .line 80
    iget-object v4, v3, Ls8/a0;->b:Ljava/util/Iterator;

    .line 81
    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    invoke-virtual {v3}, Ls8/a0;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ls8/z;

    .line 93
    .line 94
    iget v5, v3, Ls8/z;->a:I

    .line 95
    .line 96
    iget-object v3, v3, Ls8/z;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v3, Lv9/q0;

    .line 99
    .line 100
    invoke-interface {v3}, Lv9/k;->getName()Lua/e;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lua/e;->b()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v6, "asString(...)"

    .line 109
    .line 110
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v6, "T"

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_1

    .line 120
    .line 121
    const-string v4, "instance"

    .line 122
    .line 123
    :goto_2
    move-object v6, v3

    .line 124
    move-object v3, v2

    .line 125
    goto :goto_3

    .line 126
    :cond_1
    const-string v6, "E"

    .line 127
    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_2

    .line 133
    .line 134
    const-string v4, "receiver"

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 138
    .line 139
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-string v6, "toLowerCase(...)"

    .line 144
    .line 145
    invoke-static {v4, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_3
    new-instance v2, Ly9/r0;

    .line 150
    .line 151
    invoke-static {v4}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-interface {v6}, Lv9/h;->n()Llb/a0;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    const-string v4, "getDefaultType(...)"

    .line 160
    .line 161
    invoke-static {v8, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const/4 v12, 0x0

    .line 165
    sget-object v13, Lv9/m0;->e0:Lv9/n0;

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    sget-object v6, Lw9/g;->a:Lw9/f;

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    const/4 v10, 0x0

    .line 172
    const/4 v11, 0x0

    .line 173
    invoke-direct/range {v2 .. v13}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-object v2, v3

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    move-object v3, v2

    .line 182
    invoke-static {v1}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lv9/q0;

    .line 187
    .line 188
    invoke-interface {v1}, Lv9/h;->n()Llb/a0;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    sget-object v9, Lv9/x;->e:Lv9/x;

    .line 193
    .line 194
    sget-object v10, Lv9/o;->e:Lea/o;

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    sget-object v5, Ls8/w;->a:Ls8/w;

    .line 198
    .line 199
    move-object v6, v5

    .line 200
    move-object v4, v0

    .line 201
    move-object v7, v15

    .line 202
    invoke-virtual/range {v2 .. v10}, Ly9/l0;->P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;

    .line 203
    .line 204
    .line 205
    move-object v3, v2

    .line 206
    iput-boolean v14, v3, Ly9/u;->w:Z

    .line 207
    .line 208
    return-object v3
.end method

.method public static final u(Ls9/i;Lw9/h;Llb/w;Ljava/util/List;Ljava/util/ArrayList;Llb/w;Z)Llb/a0;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/2addr v2, v1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    add-int/2addr v2, v4

    .line 20
    add-int/2addr v2, v3

    .line 21
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v4, 0xa

    .line 27
    .line 28
    invoke-static {p3, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Llb/w;

    .line 50
    .line 51
    invoke-static {v5}, Lp4/o;->u(Llb/w;)Llb/f0;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-static {p2}, Lp4/o;->u(Llb/w;)Llb/f0;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move-object v4, v2

    .line 71
    :goto_2
    invoke-static {v0, v4}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    add-int/lit8 v7, v5, 0x1

    .line 90
    .line 91
    if-ltz v5, :cond_3

    .line 92
    .line 93
    check-cast v6, Llb/w;

    .line 94
    .line 95
    invoke-static {v6}, Lp4/o;->u(Llb/w;)Llb/f0;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move v5, v7

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-static {}, Lp9/x1;->L()V

    .line 105
    .line 106
    .line 107
    throw v2

    .line 108
    :cond_4
    invoke-static {p5}, Lp4/o;->u(Llb/w;)Llb/f0;

    .line 109
    .line 110
    .line 111
    move-result-object p5

    .line 112
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result p5

    .line 123
    add-int/2addr p5, p4

    .line 124
    if-nez p2, :cond_5

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    :cond_5
    add-int/2addr p5, v3

    .line 128
    if-eqz p6, :cond_6

    .line 129
    .line 130
    invoke-virtual {p0, p5}, Ls9/i;->w(I)Lv9/e;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    sget-object p4, Ls9/p;->a:Lua/e;

    .line 136
    .line 137
    new-instance p4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string p6, "Function"

    .line 140
    .line 141
    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    invoke-virtual {p0, p4}, Ls9/i;->k(Ljava/lang/String;)Lv9/e;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    :goto_4
    sget-object p5, Lw9/g;->a:Lw9/f;

    .line 156
    .line 157
    if-eqz p2, :cond_9

    .line 158
    .line 159
    sget-object p2, Ls9/o;->p:Lua/c;

    .line 160
    .line 161
    invoke-interface {p1, p2}, Lw9/h;->g(Lua/c;)Z

    .line 162
    .line 163
    .line 164
    move-result p6

    .line 165
    if-eqz p6, :cond_7

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    new-instance p6, Lw9/j;

    .line 169
    .line 170
    sget-object v2, Ls8/x;->a:Ls8/x;

    .line 171
    .line 172
    invoke-direct {p6, p0, p2, v2}, Lw9/j;-><init>(Ls9/i;Lua/c;Ljava/util/Map;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p6}, Ls8/p;->o0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_8

    .line 184
    .line 185
    move-object p1, p5

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    new-instance p2, Lw9/i;

    .line 188
    .line 189
    invoke-direct {p2, v1, p1}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 190
    .line 191
    .line 192
    move-object p1, p2

    .line 193
    :cond_9
    :goto_5
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_c

    .line 198
    .line 199
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    sget-object p3, Ls9/o;->q:Lua/c;

    .line 204
    .line 205
    invoke-interface {p1, p3}, Lw9/h;->g(Lua/c;)Z

    .line 206
    .line 207
    .line 208
    move-result p6

    .line 209
    if-eqz p6, :cond_a

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_a
    new-instance p6, Lw9/j;

    .line 213
    .line 214
    sget-object v2, Ls9/p;->e:Lua/e;

    .line 215
    .line 216
    new-instance v3, Lza/k;

    .line 217
    .line 218
    invoke-direct {v3, p2}, Lza/k;-><init>(I)V

    .line 219
    .line 220
    .line 221
    new-instance p2, Lr8/j;

    .line 222
    .line 223
    invoke-direct {p2, v2, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-static {p2}, Ls8/c0;->I(Lr8/j;)Ljava/util/Map;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-direct {p6, p0, p3, p2}, Lw9/j;-><init>(Ls9/i;Lua/c;Ljava/util/Map;)V

    .line 231
    .line 232
    .line 233
    invoke-static {p1, p6}, Ls8/p;->o0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_b

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_b
    new-instance p5, Lw9/i;

    .line 245
    .line 246
    invoke-direct {p5, v1, p0}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 247
    .line 248
    .line 249
    :goto_6
    move-object p1, p5

    .line 250
    :cond_c
    :goto_7
    invoke-static {p1}, Llb/c;->B(Lw9/h;)Llb/h0;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-static {p0, p4, v0}, Llb/c;->s(Llb/h0;Lv9/e;Ljava/util/List;)Llb/a0;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    return-object p0
.end method

.method public static final v(Lv9/e;Lv9/e;)Llb/g0;
    .locals 4

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "to"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lv9/e;->q()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lv9/e;->q()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lv9/e;->q()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "getDeclaredTypeParameters(...)"

    .line 30
    .line 31
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    invoke-static {p0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lv9/q0;

    .line 60
    .line 61
    invoke-interface {v3}, Lv9/h;->t()Llb/k0;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {p1}, Lv9/e;->q()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-static {p0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lv9/q0;

    .line 100
    .line 101
    invoke-interface {v0}, Lv9/h;->n()Llb/a0;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, "getDefaultType(...)"

    .line 106
    .line 107
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lp4/o;->u(Llb/w;)Llb/f0;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-static {v1, p1}, Ls8/p;->G0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance p1, Llb/g0;

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    invoke-direct {p1, v0, p0}, Llb/g0;-><init>(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object p1
.end method

.method public static w(Ljava/lang/Class;)Landroidx/lifecycle/o0;
    .locals 4

    .line 1
    const-string v0, "Cannot create an instance of "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, Landroidx/lifecycle/o0;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :catch_2
    move-exception v1

    .line 23
    goto :goto_2

    .line 24
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v2, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v2, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :goto_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v2, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v2
.end method

.method public static final x(Llb/w;)Lua/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Llb/w;->getAnnotations()Lw9/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ls9/o;->r:Lua/c;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lw9/h;->c(Lua/c;)Lw9/b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-interface {p0}, Lw9/b;->b()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-static {p0}, Ls8/p;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Lza/w;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    check-cast p0, Lza/w;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object p0, v0

    .line 37
    :goto_0
    if-eqz p0, :cond_3

    .line 38
    .line 39
    iget-object p0, p0, Lza/g;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-static {p0}, Lua/e;->f(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object p0, v0

    .line 53
    :goto_1
    if-eqz p0, :cond_3

    .line 54
    .line 55
    invoke-static {p0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static z(Lv0/b;Ln3/m;Lb3/o0;Ln3/c;Lf3/d;)Lv0/b;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lv0/b;->a:Ln3/m;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p1}, Lb3/d0;->h(Lb3/o0;Ln3/m;)Lb3/o0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lv0/b;->b:Lb3/o0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lb3/o0;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p3}, Ln3/c;->a()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lv0/b;->c:Ln3/d;

    .line 24
    .line 25
    iget v1, v1, Ln3/d;->a:F

    .line 26
    .line 27
    cmpg-float v0, v0, v1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lv0/b;->d:Lf3/d;

    .line 32
    .line 33
    if-ne p4, v0, :cond_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lv0/b;->h:Lv0/b;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lv0/b;->a:Ln3/m;

    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    invoke-static {p2, p1}, Lb3/d0;->h(Lb3/o0;Ln3/m;)Lb3/o0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lv0/b;->b:Lb3/o0;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lb3/o0;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {p3}, Ln3/c;->a()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Lv0/b;->c:Ln3/d;

    .line 61
    .line 62
    iget v1, v1, Ln3/d;->a:F

    .line 63
    .line 64
    cmpg-float v0, v0, v1

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lv0/b;->d:Lf3/d;

    .line 69
    .line 70
    if-ne p4, v0, :cond_1

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_1
    new-instance p0, Lv0/b;

    .line 74
    .line 75
    invoke-static {p2, p1}, Lb3/d0;->h(Lb3/o0;Ln3/m;)Lb3/o0;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p3}, Ln3/c;->a()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-interface {p3}, Ln3/c;->M()F

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    new-instance v1, Ln3/d;

    .line 88
    .line 89
    invoke-direct {v1, v0, p3}, Ln3/d;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, p2, v1, p4}, Lv0/b;-><init>(Ln3/m;Lb3/o0;Ln3/d;Lf3/d;)V

    .line 93
    .line 94
    .line 95
    sput-object p0, Lv0/b;->h:Lv0/b;

    .line 96
    .line 97
    return-object p0
.end method


# virtual methods
.method public abstract j()Ljava/lang/String;
.end method

.method public abstract p(Landroid/content/Context;Lw3/e;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method

.method public abstract q(Landroid/content/Context;[Lb4/m;I)Landroid/graphics/Typeface;
.end method

.method public r(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "createFromFontInfoWithFallback must only be called on API 29+"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public s(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {p1}, Lp9/p1;->x(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lp9/p1;->q(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public t(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p1}, Lp9/p1;->x(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p4

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lp9/p1;->p(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object p4

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object p4
.end method

.method public y([Lb4/m;I)Lb4/m;
    .locals 10

    .line 1
    new-instance v0, Ln6/a;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln6/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    and-int/lit8 v0, p2, 0x1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x190

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x2bc

    .line 16
    .line 17
    :goto_0
    and-int/lit8 p2, p2, 0x2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    :goto_1
    array-length v3, p1

    .line 27
    const/4 v4, 0x0

    .line 28
    const v5, 0x7fffffff

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    :goto_2
    if-ge v6, v3, :cond_5

    .line 33
    .line 34
    aget-object v7, p1, v6

    .line 35
    .line 36
    iget v8, v7, Lb4/m;->c:I

    .line 37
    .line 38
    sub-int/2addr v8, v0

    .line 39
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    mul-int/lit8 v8, v8, 0x2

    .line 44
    .line 45
    iget-boolean v9, v7, Lb4/m;->d:Z

    .line 46
    .line 47
    if-ne v9, p2, :cond_2

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    const/4 v9, 0x1

    .line 52
    :goto_3
    add-int/2addr v8, v9

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    if-le v5, v8, :cond_4

    .line 56
    .line 57
    :cond_3
    move-object v4, v7

    .line 58
    move v5, v8

    .line 59
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    return-object v4
.end method
