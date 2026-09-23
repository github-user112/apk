.class public final Lp9/d0;
.super Lp9/h0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/c;
.implements Lp9/t1;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "jClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lp9/d0;->b:Ljava/lang/Class;

    .line 10
    .line 11
    new-instance p1, Lp9/u;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, v0}, Lp9/u;-><init>(Lp9/d0;I)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lr8/i;->a:Lr8/i;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lp9/d0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public static s(Lua/b;Laa/f;)Ly9/k;
    .locals 7

    .line 1
    new-instance v0, Ly9/k;

    .line 2
    .line 3
    new-instance v1, Lu9/l;

    .line 4
    .line 5
    iget-object p1, p1, Laa/f;->a:Lhb/i;

    .line 6
    .line 7
    iget-object v2, p1, Lhb/i;->b:Lv9/y;

    .line 8
    .line 9
    iget-object v3, p0, Lua/b;->a:Lua/c;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lu9/l;-><init>(Lv9/y;Lua/c;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lua/b;->f()Lua/e;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p1, Lhb/i;->b:Lv9/y;

    .line 20
    .line 21
    invoke-interface {p0}, Lv9/y;->j()Ls9/i;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v3, "Any"

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Ls9/i;->k(Ljava/lang/String;)Lv9/e;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Lv9/e;->n()Llb/a0;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, p1, Lhb/i;->a:Lkb/l;

    .line 40
    .line 41
    sget-object v3, Lv9/x;->b:Lv9/x;

    .line 42
    .line 43
    sget-object v4, Lv9/f;->a:Lv9/f;

    .line 44
    .line 45
    invoke-direct/range {v0 .. v6}, Ly9/k;-><init>(Lv9/k;Lua/e;Lv9/x;Lv9/f;Ljava/util/List;Lkb/o;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lp9/b0;

    .line 49
    .line 50
    invoke-direct {p0, v6, v0}, Leb/h;-><init>(Lkb/l;Ly9/b;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p0, p1, v1}, Ly9/k;->B0(Leb/o;Ljava/util/Set;Ly9/i;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/d0;->b:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lv9/e;->f()Lv9/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lv9/f;->b:Lv9/f;

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lv9/e;->f()Lv9/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lv9/f;->f:Lv9/f;

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0}, Lv9/e;->w()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getConstructors(...)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 33
    .line 34
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lp9/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lc7/a;->w(Lm9/c;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Lm9/c;

    .line 10
    .line 11
    invoke-static {p1}, Lc7/a;->w(Lm9/c;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final f(Lua/e;)Ljava/util/Collection;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lv9/e;->n()Llb/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Llb/w;->R()Leb/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lda/b;->b:Lda/b;

    .line 14
    .line 15
    invoke-interface {v0, p1, v1}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Lv9/e;->O()Leb/o;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getStaticScope(...)"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, p1, v1}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Iterable;

    .line 37
    .line 38
    invoke-static {p1, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final g(I)Lv9/k0;
    .locals 9

    .line 1
    iget-object v0, p0, Lp9/d0;->b:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "DefaultImpls"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lp9/d0;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lp9/d0;->g(I)Lv9/k0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    instance-of v1, v0, Ljb/i;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    check-cast v0, Ljb/i;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v0, v2

    .line 51
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v1, v0, Ljb/i;->e:Lpa/k;

    .line 54
    .line 55
    sget-object v3, Lsa/k;->j:Lva/m;

    .line 56
    .line 57
    const-string v4, "classLocalVariable"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v3, p1}, Lp9/x1;->s(Lva/k;Lva/m;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    move-object v4, p1

    .line 67
    check-cast v4, Lpa/i0;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    iget-object p1, v0, Ljb/i;->l:Lhb/k;

    .line 72
    .line 73
    iget-object v5, p1, Lhb/k;->b:Lra/f;

    .line 74
    .line 75
    iget-object v6, p1, Lhb/k;->d:Lra/g;

    .line 76
    .line 77
    iget-object v7, v0, Ljb/i;->f:Lra/a;

    .line 78
    .line 79
    sget-object v8, Lp9/c0;->i:Lp9/c0;

    .line 80
    .line 81
    iget-object v3, p0, Lp9/d0;->b:Ljava/lang/Class;

    .line 82
    .line 83
    invoke-static/range {v3 .. v8}, Lp9/c2;->f(Ljava/lang/Class;Lva/k;Lra/f;Lra/g;Lra/a;Lf9/n;)Lv9/b;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lv9/k0;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_2
    return-object v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lc7/a;->w(Lm9/c;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lv9/e;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/d0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/z;

    .line 8
    .line 9
    iget-object v0, v0, Lp9/z;->e:Lp9/v1;

    .line 10
    .line 11
    sget-object v1, Lp9/z;->l:[Lm9/u;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    aget-object v1, v1, v2

    .line 15
    .line 16
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/d0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/z;

    .line 8
    .line 9
    iget-object v0, v0, Lp9/z;->d:Lp9/v1;

    .line 10
    .line 11
    sget-object v1, Lp9/z;->l:[Lm9/u;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    aget-object v1, v1, v2

    .line 15
    .line 16
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public final l(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lba/d;->a:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    iget-object v1, p0, Lp9/d0;->b:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lba/d;->d:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0, p1}, Lg9/b0;->f(ILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    sget-object v0, Lba/d;->c:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Class;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v0

    .line 41
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public final n(Lua/e;)Ljava/util/Collection;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lv9/e;->n()Llb/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Llb/w;->R()Leb/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lda/b;->b:Lda/b;

    .line 14
    .line 15
    invoke-interface {v0, p1, v1}, Leb/o;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lp9/d0;->u()Lv9/e;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Lv9/e;->O()Leb/o;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getStaticScope(...)"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, p1, v1}, Leb/o;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Iterable;

    .line 37
    .line 38
    invoke-static {p1, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final t()Lua/b;
    .locals 3

    .line 1
    sget-object v0, Lp9/a2;->a:Lua/b;

    .line 2
    .line 3
    const-string v0, "klass"

    .line 4
    .line 5
    iget-object v1, p0, Lp9/d0;->b:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getComponentType(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcb/c;->b(Ljava/lang/String;)Lcb/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcb/c;->d()Ls9/k;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_0
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v0, Lua/b;

    .line 47
    .line 48
    sget-object v1, Ls9/p;->k:Lua/c;

    .line 49
    .line 50
    iget-object v2, v2, Ls9/k;->b:Lua/e;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    sget-object v0, Ls9/o;->g:Lua/d;

    .line 57
    .line 58
    invoke-virtual {v0}, Lua/d;->g()Lua/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lua/b;

    .line 63
    .line 64
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 69
    .line 70
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v1, v2, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    sget-object v0, Lp9/a2;->a:Lua/b;

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcb/c;->b(Ljava/lang/String;)Lcb/c;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcb/c;->d()Ls9/k;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_4
    if-eqz v2, :cond_5

    .line 108
    .line 109
    new-instance v0, Lua/b;

    .line 110
    .line 111
    sget-object v1, Ls9/p;->k:Lua/c;

    .line 112
    .line 113
    iget-object v2, v2, Ls9/k;->a:Lua/e;

    .line 114
    .line 115
    invoke-direct {v0, v1, v2}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 116
    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_5
    invoke-static {v1}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-boolean v1, v0, Lua/b;->c:Z

    .line 124
    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    sget-object v1, Lu9/d;->a:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0}, Lua/b;->a()Lua/c;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "fqName"

    .line 134
    .line 135
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object v2, Lu9/d;->h:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lua/b;

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "class "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lp9/d0;->t()Lua/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v1, Lua/b;->a:Lua/c;

    .line 13
    .line 14
    iget-object v3, v2, Lua/c;->a:Lua/d;

    .line 15
    .line 16
    invoke-virtual {v3}, Lua/d;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/16 v4, 0x2e

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, v2, Lua/c;->a:Lua/d;

    .line 33
    .line 34
    iget-object v2, v2, Lua/d;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3, v2, v4}, La2/f;->J(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    iget-object v1, v1, Lua/b;->b:Lua/c;

    .line 41
    .line 42
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 43
    .line 44
    iget-object v1, v1, Lua/d;->a:Ljava/lang/String;

    .line 45
    .line 46
    const/16 v3, 0x24

    .line 47
    .line 48
    invoke-static {v1, v4, v3}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public final u()Lv9/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/d0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Lp9/z;->a()Lv9/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
