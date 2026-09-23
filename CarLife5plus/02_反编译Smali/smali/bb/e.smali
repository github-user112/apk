.class public abstract Lbb/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Ly9/r0;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lbb/a;->b:Lbb/a;

    .line 6
    .line 7
    sget-object v1, Lbb/c;->i:Lbb/c;

    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Lub/k;->h(Ljava/util/List;Lub/a;Lf9/k;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "ifAny(...)"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static b(Lv9/c;Lf9/k;)Lv9/c;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lg9/x;

    .line 7
    .line 8
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Lbb/a;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Lbb/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lbb/d;

    .line 22
    .line 23
    invoke-direct {v2, v0, p1}, Lbb/d;-><init>(Lg9/x;Lf9/k;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1, v2}, Lub/k;->f(Ljava/util/List;Lub/a;Lub/k;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lv9/c;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final c(Lv9/l;)Lua/c;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lua/d;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, v1

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lua/d;->g()Lua/c;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    return-object v1
.end method

.method public static final d(Lw9/b;)Lv9/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lw9/b;->getType()Llb/w;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Llb/k0;->k()Lv9/h;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v0, p0, Lv9/e;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p0, Lv9/e;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static final e(Lv9/k;)Ls9/i;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Lv9/y;->j()Ls9/i;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final f(Lv9/h;)Lua/b;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Lv9/d0;

    .line 10
    .line 11
    const-string v2, "getName(...)"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lua/b;

    .line 16
    .line 17
    check-cast v0, Lv9/d0;

    .line 18
    .line 19
    check-cast v0, Ly9/c0;

    .line 20
    .line 21
    iget-object v0, v0, Ly9/c0;->e:Lua/c;

    .line 22
    .line 23
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v0, p0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    instance-of v1, v0, Lv9/i;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Lv9/h;

    .line 39
    .line 40
    invoke-static {v0}, Lbb/e;->f(Lv9/h;)Lua/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lua/b;->d(Lua/e;)Lua/b;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public static final g(Lv9/k;)Lua/c;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lxa/d;->h(Lv9/k;)Lua/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lua/d;->a(Lua/e;)Lua/d;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lua/d;->g()Lua/c;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final h(Lv9/k;)Lua/d;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "getFqName(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static final i(Lv9/y;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmb/g;->a:Lfc/s;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lv9/y;->v0(Lfc/s;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static final j(Lv9/k;)Lv9/y;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lxa/d;->d(Lv9/k;)Lv9/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "getContainingModule(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static final k(Lv9/c;)Lv9/c;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lv9/j0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lv9/j0;

    .line 11
    .line 12
    check-cast p0, Ly9/g0;

    .line 13
    .line 14
    invoke-virtual {p0}, Ly9/g0;->C0()Lv9/k0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "getCorrespondingProperty(...)"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public static final l(Lv9/c;)Lwb/i;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Lv9/c;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p0, v1, v2

    .line 11
    .line 12
    invoke-static {v1}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p0}, Lv9/c;->m()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v3, "getOverriddenDescriptors(...)"

    .line 21
    .line 22
    invoke-static {p0, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p0, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-static {p0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v3, Lbb/b;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Lbb/b;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lwb/i;

    .line 37
    .line 38
    sget-object v5, Lwb/n;->i:Lwb/n;

    .line 39
    .line 40
    invoke-direct {v4, p0, v3, v5}, Lwb/i;-><init>(Lwb/j;Lf9/k;Lf9/k;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    new-array p0, p0, [Lwb/j;

    .line 45
    .line 46
    aput-object v1, p0, v2

    .line 47
    .line 48
    aput-object v4, p0, v0

    .line 49
    .line 50
    invoke-static {p0}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lwb/l;->K(Lwb/j;)Lwb/i;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
