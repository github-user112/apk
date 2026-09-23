.class public final Ljb/t;
.super Ly9/l0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljb/b;


# instance fields
.field public final D:Lpa/a0;

.field public final E:Lra/f;

.field public final F:Lra/g;

.field public final G:Lra/h;

.field public final H:Ljb/k;


# direct methods
.method public constructor <init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILpa/a0;Lra/f;Lra/g;Lra/h;Ljb/k;Lv9/m0;)V
    .locals 11

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    move-object/from16 v8, p7

    .line 4
    .line 5
    move-object/from16 v9, p8

    .line 6
    .line 7
    move-object/from16 v10, p9

    .line 8
    .line 9
    const-string v0, "containingDeclaration"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "annotations"

    .line 15
    .line 16
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "kind"

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    invoke-static {v5, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "proto"

    .line 27
    .line 28
    invoke-static {v7, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "nameResolver"

    .line 32
    .line 33
    invoke-static {v8, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "typeTable"

    .line 37
    .line 38
    invoke-static {v9, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "versionRequirementTable"

    .line 42
    .line 43
    invoke-static {v10, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-nez p11, :cond_0

    .line 47
    .line 48
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 49
    .line 50
    move-object v6, v0

    .line 51
    move-object v1, p1

    .line 52
    move-object v2, p2

    .line 53
    move-object v3, p3

    .line 54
    move-object v4, p4

    .line 55
    move-object v0, p0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object/from16 v6, p11

    .line 58
    .line 59
    move-object v0, p0

    .line 60
    move-object v1, p1

    .line 61
    move-object v2, p2

    .line 62
    move-object v3, p3

    .line 63
    move-object v4, p4

    .line 64
    :goto_0
    invoke-direct/range {v0 .. v6}, Ly9/l0;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;)V

    .line 65
    .line 66
    .line 67
    iput-object v7, p0, Ljb/t;->D:Lpa/a0;

    .line 68
    .line 69
    iput-object v8, p0, Ljb/t;->E:Lra/f;

    .line 70
    .line 71
    iput-object v9, p0, Ljb/t;->F:Lra/g;

    .line 72
    .line 73
    iput-object v10, p0, Ljb/t;->G:Lra/h;

    .line 74
    .line 75
    move-object/from16 v1, p10

    .line 76
    .line 77
    iput-object v1, p0, Ljb/t;->H:Ljb/k;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final B()Lva/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/t;->D:Lpa/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
    .locals 13

    .line 1
    const-string v0, "newOwner"

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "kind"

    .line 9
    .line 10
    invoke-static {p1, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "annotations"

    .line 14
    .line 15
    move-object/from16 v4, p6

    .line 16
    .line 17
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljb/t;

    .line 21
    .line 22
    move-object/from16 v3, p4

    .line 23
    .line 24
    check-cast v3, Ly9/l0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Ly9/m;->getName()Lua/e;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "getName(...)"

    .line 33
    .line 34
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object v5, p2

    .line 38
    iget-object v10, p0, Ljb/t;->G:Lra/h;

    .line 39
    .line 40
    iget-object v11, p0, Ljb/t;->H:Ljb/k;

    .line 41
    .line 42
    iget-object v7, p0, Ljb/t;->D:Lpa/a0;

    .line 43
    .line 44
    iget-object v8, p0, Ljb/t;->E:Lra/f;

    .line 45
    .line 46
    iget-object v9, p0, Ljb/t;->F:Lra/g;

    .line 47
    .line 48
    move v6, p1

    .line 49
    move-object/from16 v12, p5

    .line 50
    .line 51
    invoke-direct/range {v1 .. v12}, Ljb/t;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILpa/a0;Lra/f;Lra/g;Lra/h;Ljb/k;Lv9/m0;)V

    .line 52
    .line 53
    .line 54
    iget-boolean p1, p0, Ly9/u;->v:Z

    .line 55
    .line 56
    iput-boolean p1, v1, Ly9/u;->v:Z

    .line 57
    .line 58
    return-object v1
.end method

.method public final P()Lra/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/t;->F:Lra/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lra/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/t;->E:Lra/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Ljb/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/t;->H:Ljb/k;

    .line 2
    .line 3
    return-object v0
.end method
