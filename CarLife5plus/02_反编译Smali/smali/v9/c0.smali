.class public final Lv9/c0;
.super Ly9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Llb/i;


# direct methods
.method public constructor <init>(Lkb/l;Lv9/g;Lua/e;ZI)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Ly9/j;-><init>(Lkb/o;Lv9/k;Lua/e;Lv9/m0;)V

    .line 9
    .line 10
    .line 11
    iput-boolean p4, p0, Lv9/c0;->g:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {p2, p5}, Li9/a;->Z(II)Ll9/d;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 p4, 0xa

    .line 21
    .line 22
    invoke-static {p2, p4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    move-object p4, p2

    .line 34
    check-cast p4, Ll9/c;

    .line 35
    .line 36
    iget-boolean p5, p4, Ll9/c;->c:Z

    .line 37
    .line 38
    if-eqz p5, :cond_0

    .line 39
    .line 40
    invoke-virtual {p4}, Ll9/c;->nextInt()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    new-instance p5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "T"

    .line 47
    .line 48
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-static {p5}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 59
    .line 60
    .line 61
    move-result-object p5

    .line 62
    sget-object v0, Llb/y0;->c:Llb/y0;

    .line 63
    .line 64
    invoke-static {p0, v0, p5, p4, p1}, Ly9/p0;->F0(Ly9/b;Llb/y0;Lua/e;ILkb/o;)Ly9/p0;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iput-object p3, p0, Lv9/c0;->h:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance p2, Llb/i;

    .line 75
    .line 76
    invoke-static {p0}, Lv9/v;->c(Lv9/i;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-static {p0}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-interface {p4}, Lv9/y;->j()Ls9/i;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-virtual {p4}, Ls9/i;->e()Llb/a0;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    invoke-static {p4}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    check-cast p4, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-direct {p2, p0, p3, p4, p1}, Llb/i;-><init>(Ly9/z;Ljava/util/List;Ljava/util/Collection;Lkb/o;)V

    .line 99
    .line 100
    .line 101
    iput-object p2, p0, Lv9/c0;->i:Llb/i;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final E(Lmb/f;)Leb/o;
    .locals 0

    .line 1
    sget-object p1, Leb/n;->b:Leb/n;

    .line 2
    .line 3
    return-object p1
.end method

.method public final F()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv9/c0;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final N()Ly9/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final bridge synthetic O()Leb/o;
    .locals 1

    .line 1
    sget-object v0, Leb/n;->b:Leb/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lea/o;
    .locals 2

    .line 1
    sget-object v0, Lv9/o;->e:Lea/o;

    .line 2
    .line 3
    const-string v1, "PUBLIC"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final f()Lv9/f;
    .locals 1

    .line 1
    sget-object v0, Lv9/f;->a:Lv9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    sget-object v0, Lw9/g;->a:Lw9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lv9/x;
    .locals 1

    .line 1
    sget-object v0, Lv9/x;->b:Lv9/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final o0()Lv9/r0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/c0;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final t()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/c0;->i:Llb/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

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
    invoke-virtual {p0}, Ly9/b;->getName()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " (not found)"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final w()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
