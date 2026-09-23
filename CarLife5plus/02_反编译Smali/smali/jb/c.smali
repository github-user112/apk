.class public final Ljb/c;
.super Ly9/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljb/b;


# instance fields
.field public final E:Lpa/n;

.field public final F:Lra/f;

.field public final G:Lra/g;

.field public final H:Lra/h;

.field public final I:Ljb/k;


# direct methods
.method public constructor <init>(Lv9/e;Lv9/j;Lw9/h;ZILpa/n;Lra/f;Lra/g;Lra/h;Ljb/k;Lv9/m0;)V
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
    move v4, p4

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
    move v4, p4

    .line 64
    :goto_0
    invoke-direct/range {v0 .. v6}, Ly9/i;-><init>(Lv9/e;Lv9/j;Lw9/h;ZILv9/m0;)V

    .line 65
    .line 66
    .line 67
    iput-object v7, p0, Ljb/c;->E:Lpa/n;

    .line 68
    .line 69
    iput-object v8, p0, Ljb/c;->F:Lra/f;

    .line 70
    .line 71
    iput-object v9, p0, Ljb/c;->G:Lra/g;

    .line 72
    .line 73
    iput-object v10, p0, Ljb/c;->H:Lra/h;

    .line 74
    .line 75
    move-object/from16 v1, p10

    .line 76
    .line 77
    iput-object v1, p0, Ljb/c;->I:Ljb/k;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final B()Lva/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/c;->E:Lpa/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
    .locals 0

    .line 1
    move-object p2, p6

    .line 2
    move-object p6, p5

    .line 3
    move-object p5, p2

    .line 4
    move-object p2, p3

    .line 5
    move-object p3, p4

    .line 6
    move p4, p1

    .line 7
    move-object p1, p0

    .line 8
    invoke-virtual/range {p1 .. p6}, Ljb/c;->T0(Lv9/k;Lv9/t;ILw9/h;Lv9/m0;)Ljb/c;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    return-object p2
.end method

.method public final L()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final bridge synthetic N0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/i;
    .locals 0

    .line 1
    move-object p2, p6

    .line 2
    move-object p6, p5

    .line 3
    move-object p5, p2

    .line 4
    move-object p2, p3

    .line 5
    move-object p3, p4

    .line 6
    move p4, p1

    .line 7
    move-object p1, p0

    .line 8
    invoke-virtual/range {p1 .. p6}, Ljb/c;->T0(Lv9/k;Lv9/t;ILw9/h;Lv9/m0;)Ljb/c;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    return-object p2
.end method

.method public final P()Lra/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/c;->G:Lra/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lra/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/c;->F:Lra/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T0(Lv9/k;Lv9/t;ILw9/h;Lv9/m0;)Ljb/c;
    .locals 13

    .line 1
    const-string v0, "newOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kind"

    .line 7
    .line 8
    move/from16 v6, p3

    .line 9
    .line 10
    invoke-static {v6, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "annotations"

    .line 14
    .line 15
    move-object/from16 v4, p4

    .line 16
    .line 17
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljb/c;

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    check-cast v2, Lv9/e;

    .line 24
    .line 25
    move-object v3, p2

    .line 26
    check-cast v3, Lv9/j;

    .line 27
    .line 28
    iget-object v10, p0, Ljb/c;->H:Lra/h;

    .line 29
    .line 30
    iget-object v11, p0, Ljb/c;->I:Ljb/k;

    .line 31
    .line 32
    iget-boolean v5, p0, Ly9/i;->D:Z

    .line 33
    .line 34
    iget-object v7, p0, Ljb/c;->E:Lpa/n;

    .line 35
    .line 36
    iget-object v8, p0, Ljb/c;->F:Lra/f;

    .line 37
    .line 38
    iget-object v9, p0, Ljb/c;->G:Lra/g;

    .line 39
    .line 40
    move-object/from16 v12, p5

    .line 41
    .line 42
    invoke-direct/range {v1 .. v12}, Ljb/c;-><init>(Lv9/e;Lv9/j;Lw9/h;ZILpa/n;Lra/f;Lra/g;Lra/h;Ljb/k;Lv9/m0;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, p0, Ly9/u;->v:Z

    .line 46
    .line 47
    iput-boolean p1, v1, Ly9/u;->v:Z

    .line 48
    .line 49
    return-object v1
.end method

.method public final U()Ljb/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/c;->I:Ljb/k;

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

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
