.class public abstract Ly9/f;
.super Ly9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/p0;


# instance fields
.field public final e:Lkb/o;

.field public final f:Lea/o;

.field public g:Ljava/util/List;

.field public final h:Ly9/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-string v1, "getConstructors()Ljava/util/Collection;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Ly9/f;

    .line 7
    .line 8
    const-string v4, "constructors"

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
    return-void
.end method

.method public constructor <init>(Lkb/o;Lv9/k;Lw9/h;Lua/e;Lea/o;)V
    .locals 1

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "visibilityImpl"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 17
    .line 18
    invoke-direct {p0, p2, p3, p4, v0}, Ly9/n;-><init>(Lv9/k;Lw9/h;Lua/e;Lv9/m0;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ly9/f;->e:Lkb/o;

    .line 22
    .line 23
    iput-object p5, p0, Ly9/f;->f:Lea/o;

    .line 24
    .line 25
    new-instance p2, La8/g0;

    .line 26
    .line 27
    const/16 p3, 0x1b

    .line 28
    .line 29
    invoke-direct {p2, p3, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    check-cast p1, Lkb/l;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lkb/l;->a(Lf9/a;)Lkb/j;

    .line 35
    .line 36
    .line 37
    new-instance p1, Ly9/e;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ly9/e;-><init>(Ly9/f;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Ly9/f;->h:Ly9/e;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final B0()Lv9/l;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lv9/m;->K(Ly9/f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final H()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final I()Z
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ljb/u;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljb/u;->E0()Llb/a0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lba/j;

    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Llb/v0;->c(Llb/w;Lf9/k;Lub/h;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final a()Lv9/h;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a()Lv9/k;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final d()Lea/o;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/f;->f:Lea/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/f;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "declaredTypeParametersImpl"

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
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
    iget-object v0, p0, Ly9/f;->h:Ly9/e;

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
    const-string v1, "typealias "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lua/e;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
