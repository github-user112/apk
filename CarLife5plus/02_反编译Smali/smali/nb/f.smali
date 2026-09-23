.class public final Lnb/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/k0;


# instance fields
.field public final synthetic a:Ly9/i0;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnb/l;->a:Lnb/l;

    .line 5
    .line 6
    sget-object v1, Lnb/l;->c:Lnb/a;

    .line 7
    .line 8
    sget-object v3, Lv9/o;->e:Lea/o;

    .line 9
    .line 10
    const-string v0, "<Error property>"

    .line 11
    .line 12
    invoke-static {v0}, Lua/e;->g(Ljava/lang/String;)Lua/e;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/4 v6, 0x1

    .line 17
    sget-object v7, Lv9/m0;->e0:Lv9/n0;

    .line 18
    .line 19
    sget-object v2, Lv9/x;->d:Lv9/x;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-static/range {v1 .. v7}, Ly9/i0;->D0(Lv9/k;Lv9/x;Lea/o;ZLua/e;ILv9/m0;)Ly9/i0;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    sget-object v9, Lnb/l;->e:Lnb/i;

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    sget-object v10, Ls8/w;->a:Ls8/w;

    .line 31
    .line 32
    move-object v13, v10

    .line 33
    invoke-virtual/range {v8 .. v13}, Ly9/i0;->J0(Llb/w;Ljava/util/List;Ly9/v;Ly9/v;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iput-object v8, p0, Lnb/f;->a:Ly9/i0;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, p2}, Lv9/m;->l(Ly9/i0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-boolean v0, v0, Ly9/i0;->p:Z

    .line 4
    .line 5
    return v0
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-boolean v0, v0, Ly9/i0;->r:Z

    .line 4
    .line 5
    return v0
.end method

.method public final Q()Lza/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->Q()Lza/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final S()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/s0;->S()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    const-string v1, "getValueParameters(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final W()Ly9/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly9/i0;->t:Ly9/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public final Z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-boolean v0, v0, Ly9/i0;->f:Z

    .line 4
    .line 5
    return v0
.end method

.method public final bridge synthetic a()Lv9/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnb/f;->a()Lv9/k0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/c;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lnb/f;->a()Lv9/k0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lv9/k0;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    invoke-virtual {v0}, Ly9/i0;->a()Lv9/k0;

    move-result-object v0

    const-string v1, "getOriginal(...)"

    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/k;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lnb/f;->a()Lv9/k0;

    move-result-object v0

    return-object v0
.end method

.method public final a0()Ly9/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly9/i0;->u:Ly9/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b()Ly9/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly9/i0;->w:Ly9/j0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b0()Ly9/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly9/i0;->z:Ly9/r;

    .line 4
    .line 5
    return-object v0
.end method

.method public final c()Ly9/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly9/i0;->x:Ly9/k0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final d()Lea/o;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->d()Lea/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getVisibility(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final e(Llb/s0;)Lv9/k0;
    .locals 1

    .line 1
    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    invoke-virtual {v0, p1}, Ly9/i0;->e(Llb/s0;)Lv9/k0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Llb/s0;)Lv9/l;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnb/f;->e(Llb/s0;)Lv9/k0;

    move-result-object p1

    return-object p1
.end method

.method public final e0()Ly9/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly9/i0;->y:Ly9/r;

    .line 4
    .line 5
    return-object v0
.end method

.method public final f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "getKind(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, La2/f;->O(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method public final f0()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->f0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getContextReceiverParameters(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfb/a;->getAnnotations()Lw9/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-annotations>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getName()Lua/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/m;->getName()Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/n;->getSource()Lv9/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSource(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getType()Llb/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/s0;->getType()Llb/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getType(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->getTypeParameters()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Lv9/x;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->h()Lv9/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getModality(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final h0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iget-boolean v0, v0, Ly9/i0;->n:Z

    .line 4
    .line 5
    return v0
.end method

.method public final j0(Lv9/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final k()Lv9/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/n;->k()Lv9/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getContainingDeclaration(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final l0(Ljava/util/Collection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    iput-object p1, v0, Ly9/i0;->k:Ljava/util/Collection;

    .line 4
    .line 5
    return-void
.end method

.method public final m()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->m()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getOverriddenDescriptors(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final n0(Lv9/e;Lv9/x;Lea/o;)Lv9/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ly9/i0;->C0(Lv9/k;Lv9/x;Lea/o;)Ly9/i0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final p()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->p()Llb/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final r()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->r()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final t0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnb/f;->a:Ly9/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i0;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
