.class public final Lib/c;
.super Ly9/c0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/d0;


# instance fields
.field public final g:Lqa/a;

.field public final h:Lu0/j;

.field public final i:Lba/a;

.field public j:Lpa/g0;

.field public k:Ljb/r;


# direct methods
.method public constructor <init>(Lua/c;Lkb/l;Lv9/y;Lpa/g0;Lqa/a;)V
    .locals 1

    .line 1
    const-string p2, "fqName"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "module"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3, p1}, Ly9/c0;-><init>(Lv9/y;Lua/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p5, p0, Lib/c;->g:Lqa/a;

    .line 15
    .line 16
    new-instance p1, Lu0/j;

    .line 17
    .line 18
    iget-object p2, p4, Lpa/g0;->d:Lpa/n0;

    .line 19
    .line 20
    const-string p3, "getStrings(...)"

    .line 21
    .line 22
    invoke-static {p2, p3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p3, p4, Lpa/g0;->e:Lpa/m0;

    .line 26
    .line 27
    const-string v0, "getQualifiedNames(...)"

    .line 28
    .line 29
    invoke-static {p3, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2, p3}, Lu0/j;-><init>(Lpa/n0;Lpa/m0;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lib/c;->h:Lu0/j;

    .line 36
    .line 37
    new-instance p2, Lba/a;

    .line 38
    .line 39
    new-instance p3, Lhb/b0;

    .line 40
    .line 41
    invoke-direct {p3, p0}, Lhb/b0;-><init>(Lib/c;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p4, p1, p5, p3}, Lba/a;-><init>(Lpa/g0;Lu0/j;Lqa/a;Lhb/b0;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lib/c;->i:Lba/a;

    .line 48
    .line 49
    iput-object p4, p0, Lib/c;->j:Lpa/g0;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final D0(Lhb/i;)V
    .locals 11

    .line 1
    const-string v0, "components"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lib/c;->j:Lpa/g0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lib/c;->j:Lpa/g0;

    .line 12
    .line 13
    new-instance v2, Ljb/r;

    .line 14
    .line 15
    iget-object v4, v0, Lpa/g0;->f:Lpa/e0;

    .line 16
    .line 17
    const-string v0, "getPackage(...)"

    .line 18
    .line 19
    invoke-static {v4, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "scope of "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    new-instance v10, La8/g0;

    .line 37
    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    invoke-direct {v10, v0, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v5, p0, Lib/c;->h:Lu0/j;

    .line 44
    .line 45
    iget-object v6, p0, Lib/c;->g:Lqa/a;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v3, p0

    .line 49
    move-object v8, p1

    .line 50
    invoke-direct/range {v2 .. v10}, Ljb/r;-><init>(Lv9/d0;Lpa/e0;Lra/f;Lra/a;Lna/h;Lhb/i;Ljava/lang/String;Lf9/a;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, v3, Lib/c;->k:Ljb/r;

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    move-object v3, p0

    .line 57
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final R()Leb/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lib/c;->k:Ljb/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "_memberScope"

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

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "builtins package fragment for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ly9/c0;->e:Lua/c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " from "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
