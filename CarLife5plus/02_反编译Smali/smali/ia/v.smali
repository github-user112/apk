.class public final Lia/v;
.super Lia/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final n:Lba/z;

.field public final o:Lia/q;

.field public final p:Lkb/i;

.field public final q:Lf1/e;


# direct methods
.method public constructor <init>(Lba/a;Lba/z;Lia/q;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lia/a0;-><init>(Lba/a;Lia/o;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lia/v;->n:Lba/z;

    .line 6
    .line 7
    iput-object p3, p0, Lia/v;->o:Lia/q;

    .line 8
    .line 9
    iget-object p2, p1, Lba/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lha/a;

    .line 12
    .line 13
    iget-object p2, p2, Lha/a;->a:Lkb/o;

    .line 14
    .line 15
    new-instance p3, La8/f0;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-direct {p3, v0, p1, p0}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v0, p2

    .line 22
    check-cast v0, Lkb/l;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lkb/i;

    .line 28
    .line 29
    invoke-direct {v1, v0, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lia/v;->p:Lkb/i;

    .line 33
    .line 34
    new-instance p3, La8/h0;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-direct {p3, v0, p0, p1}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast p2, Lkb/l;

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Lkb/l;->c(Lf9/k;)Lf1/e;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lia/v;->q:Lf1/e;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final c(Leb/f;Lf9/k;)Ljava/util/Collection;
    .locals 4

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Leb/f;->l:I

    .line 7
    .line 8
    sget v1, Leb/f;->e:I

    .line 9
    .line 10
    or-int/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Leb/f;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lia/a0;->d:Lkb/d;

    .line 21
    .line 22
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v2, v1

    .line 48
    check-cast v2, Lv9/k;

    .line 49
    .line 50
    instance-of v3, v2, Lv9/e;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    check-cast v2, Lv9/e;

    .line 55
    .line 56
    invoke-interface {v2}, Lv9/k;->getName()Lua/e;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "getName(...)"

    .line 61
    .line 62
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-object v0
.end method

.method public final e(Lua/e;Lda/b;)Lv9/h;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "location"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lia/v;->v(Lua/e;Lba/p;)Lv9/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final f(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    return-object p1
.end method

.method public final h(Leb/f;Lf9/k;)Ljava/util/Set;
    .locals 1

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p2, Leb/f;->e:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Leb/f;->a(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object p1, p0, Lia/v;->p:Lkb/i;

    .line 18
    .line 19
    invoke-virtual {p1}, Lkb/i;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/Set;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    .line 29
    new-instance p2, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object p2

    .line 59
    :cond_2
    iget-object p1, p0, Lia/v;->n:Lba/z;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 67
    .line 68
    .line 69
    return-object p1
.end method

.method public final i(Leb/f;Leb/l;)Ljava/util/Set;
    .locals 0

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 7
    .line 8
    return-object p1
.end method

.method public final k()Lia/c;
    .locals 1

    .line 1
    sget-object v0, Lia/b;->a:Lia/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Lua/e;)V
    .locals 0

    .line 1
    const-string p1, "name"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Leb/f;)Ljava/util/Set;
    .locals 1

    .line 1
    const-string v0, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 7
    .line 8
    return-object p1
.end method

.method public final q()Lv9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/v;->o:Lia/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v(Lua/e;Lba/p;)Lv9/e;
    .locals 2

    .line 1
    sget-object v0, Lua/g;->a:Lua/e;

    .line 2
    .line 3
    const-string v0, "name"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "asString(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p1, Lua/e;->b:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lia/v;->p:Lkb/i;

    .line 28
    .line 29
    invoke-virtual {v0}, Lkb/i;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Set;

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lia/r;

    .line 51
    .line 52
    invoke-direct {v0, p1, p2}, Lia/r;-><init>(Lua/e;Lba/p;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lia/v;->q:Lf1/e;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lv9/e;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method
