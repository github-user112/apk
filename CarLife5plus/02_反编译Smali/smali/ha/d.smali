.class public final Lha/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/g0;


# instance fields
.field public final a:Lba/a;

.field public final b:Lkb/f;


# direct methods
.method public constructor <init>(Lha/a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lba/a;

    .line 5
    .line 6
    sget-object v1, Lha/b;->b:Lha/b;

    .line 7
    .line 8
    new-instance v2, Lr8/f;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1, v2}, Lba/a;-><init>(Lha/a;Lha/f;Lr8/h;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lha/d;->a:Lba/a;

    .line 17
    .line 18
    iget-object p1, p1, Lha/a;->a:Lkb/o;

    .line 19
    .line 20
    check-cast p1, Lkb/l;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lkb/f;

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lkb/g;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, p1, v1, v2, v3}, Lkb/f;-><init>(Lkb/l;Ljava/util/concurrent/ConcurrentHashMap;Lf9/k;I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lha/d;->b:Lkb/f;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lua/c;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lha/d;->c(Lua/c;)Lia/q;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Lua/c;)Z
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/d;->a:Lba/a;

    .line 7
    .line 8
    iget-object p1, p1, Lba/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lha/a;

    .line 11
    .line 12
    iget-object p1, p1, Lha/a;->b:Laa/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final c(Lua/c;)Lia/q;
    .locals 3

    .line 1
    iget-object v0, p0, Lha/d;->a:Lba/a;

    .line 2
    .line 3
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lha/a;

    .line 6
    .line 7
    iget-object v0, v0, Lha/a;->b:Laa/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "fqName"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lba/z;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lba/z;-><init>(Lua/c;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, La8/f0;

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-direct {v1, v2, p0, v0}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lha/d;->b:Lkb/f;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v2, Lkb/h;

    .line 34
    .line 35
    invoke-direct {v2, p1, v1}, Lkb/h;-><init>(Ljava/lang/Object;Lf9/a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    check-cast p1, Lia/q;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_0
    const/4 p1, 0x3

    .line 48
    invoke-static {p1}, Lkb/f;->a(I)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1
.end method

.method public final l(Lua/c;Lf9/k;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "fqName"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lha/d;->c(Lua/c;)Lia/q;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lia/q;->k:Lkb/d;

    .line 11
    .line 12
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 21
    .line 22
    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LazyJavaPackageFragmentProvider of module "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lha/d;->a:Lba/a;

    .line 9
    .line 10
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lha/a;

    .line 13
    .line 14
    iget-object v1, v1, Lha/a;->o:Lv9/y;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
