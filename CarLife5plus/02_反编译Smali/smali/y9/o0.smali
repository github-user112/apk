.class public final Ly9/o0;
.super Ly9/u;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ly9/n0;


# static fields
.field public static final G:Ly9/d0;


# instance fields
.field public final D:Lkb/o;

.field public final E:Lv9/p0;

.field public F:Ly9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-string v1, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Ly9/o0;

    .line 7
    .line 8
    const-string v4, "withDispatchReceiver"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    new-instance v0, Ly9/d0;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ly9/o0;->G:Ly9/d0;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lkb/o;Lv9/p0;Ly9/i;Ly9/n0;Lw9/h;ILv9/m0;)V
    .locals 7

    .line 1
    sget-object v2, Lua/g;->e:Lua/e;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p4

    .line 6
    move-object v6, p5

    .line 7
    move v1, p6

    .line 8
    move-object v5, p7

    .line 9
    invoke-direct/range {v0 .. v6}, Ly9/u;-><init>(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Ly9/o0;->D:Lkb/o;

    .line 13
    .line 14
    iput-object v3, v0, Ly9/o0;->E:Lv9/p0;

    .line 15
    .line 16
    new-instance p2, La8/f0;

    .line 17
    .line 18
    const/16 p4, 0x14

    .line 19
    .line 20
    invoke-direct {p2, p4, p0, p3}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Lkb/l;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p4, Lkb/i;

    .line 29
    .line 30
    invoke-direct {p4, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, v0, Ly9/o0;->F:Ly9/i;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final bridge synthetic B0()Lv9/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly9/o0;->N0()Ly9/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
    .locals 8

    .line 1
    const-string p2, "newOwner"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "kind"

    .line 7
    .line 8
    invoke-static {p1, p2}, La2/f;->M(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "annotations"

    .line 12
    .line 13
    invoke-static {p6, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    if-eq p1, v6, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    :cond_0
    new-instance v0, Ly9/o0;

    .line 21
    .line 22
    iget-object v2, p0, Ly9/o0;->E:Lv9/p0;

    .line 23
    .line 24
    iget-object v3, p0, Ly9/o0;->F:Ly9/i;

    .line 25
    .line 26
    iget-object v1, p0, Ly9/o0;->D:Lkb/o;

    .line 27
    .line 28
    move-object v4, p0

    .line 29
    move-object v7, p5

    .line 30
    move-object v5, p6

    .line 31
    invoke-direct/range {v0 .. v7}, Ly9/o0;-><init>(Lkb/o;Lv9/p0;Ly9/i;Ly9/n0;Lw9/h;ILv9/m0;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final N0()Ly9/n0;
    .locals 2

    .line 1
    invoke-super {p0}, Ly9/u;->a()Lv9/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Ly9/n0;

    .line 11
    .line 12
    return-object v0
.end method

.method public final O0(Llb/s0;)Ly9/o0;
    .locals 2

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ly9/u;->e(Llb/s0;)Lv9/t;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ly9/o0;

    .line 16
    .line 17
    iget-object v0, p1, Ly9/u;->g:Llb/w;

    .line 18
    .line 19
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Llb/s0;->d(Llb/w;)Llb/s0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Ly9/o0;->F:Ly9/i;

    .line 27
    .line 28
    invoke-virtual {v1}, Ly9/i;->P0()Ly9/i;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ly9/i;->S0(Llb/s0;)Ly9/i;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return-object p1

    .line 40
    :cond_0
    iput-object v0, p1, Ly9/o0;->F:Ly9/i;

    .line 41
    .line 42
    return-object p1
.end method

.method public final bridge synthetic a()Lv9/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly9/o0;->N0()Ly9/n0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/c;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ly9/o0;->N0()Ly9/n0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/k;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ly9/o0;->N0()Ly9/n0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lv9/t;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ly9/o0;->N0()Ly9/n0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e(Llb/s0;)Lv9/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly9/o0;->O0(Llb/s0;)Ly9/o0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Llb/s0;)Lv9/t;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ly9/o0;->O0(Llb/s0;)Ly9/o0;

    move-result-object p1

    return-object p1
.end method

.method public final k()Lv9/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/o0;->E:Lv9/p0;

    return-object v0
.end method

.method public final k()Lv9/k;
    .locals 1

    .line 2
    iget-object v0, p0, Ly9/o0;->E:Lv9/p0;

    return-object v0
.end method

.method public final n0(Lv9/e;Lv9/x;Lea/o;)Lv9/c;
    .locals 2

    .line 1
    const-string v0, "newOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "visibility"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "kind"

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-static {v1, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Llb/s0;->b:Llb/s0;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ly9/u;->I0(Llb/s0;)Ly9/t;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object p1, v0, Ly9/t;->b:Lv9/k;

    .line 24
    .line 25
    iput-object p2, v0, Ly9/t;->c:Lv9/x;

    .line 26
    .line 27
    iput-object p3, v0, Ly9/t;->d:Lea/o;

    .line 28
    .line 29
    iput v1, v0, Ly9/t;->f:I

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, v0, Ly9/t;->m:Z

    .line 33
    .line 34
    iget-object p1, v0, Ly9/t;->x:Ly9/u;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ly9/u;->F0(Ly9/t;)Ly9/u;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Ly9/n0;

    .line 46
    .line 47
    return-object p1
.end method

.method public final p()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/u;->g:Llb/w;

    .line 2
    .line 3
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/o0;->F:Ly9/i;

    .line 2
    .line 3
    iget-boolean v0, v0, Ly9/i;->D:Z

    .line 4
    .line 5
    return v0
.end method

.method public final z()Lv9/e;
    .locals 2

    .line 1
    iget-object v0, p0, Ly9/o0;->F:Ly9/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly9/i;->z()Lv9/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getConstructedClass(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
