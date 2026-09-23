.class public abstract Landroidx/compose/foundation/selection/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static final a(Lr1/p;ZLb0/k;ZLy2/g;Lf9/k;)Lr1/p;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableElement;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/selection/ToggleableElement;-><init>(ZLb0/k;ZLy2/g;Lf9/k;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final b(La3/a;Lf9/a;Lx/n0;Ly2/g;Z)Lr1/p;
    .locals 8

    .line 1
    instance-of v0, p2, Lx/r0;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v4, p2

    .line 7
    check-cast v4, Lx/r0;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/selection/TriStateToggleableElement;

    .line 10
    .line 11
    move-object v2, p0

    .line 12
    move-object v7, p1

    .line 13
    move-object v6, p3

    .line 14
    move v5, p4

    .line 15
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/selection/TriStateToggleableElement;-><init>(La3/a;Lb0/k;Lx/r0;ZLy2/g;Lf9/a;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    move-object v2, p0

    .line 20
    move-object v7, p1

    .line 21
    move-object v6, p3

    .line 22
    move v5, p4

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    new-instance v1, Landroidx/compose/foundation/selection/TriStateToggleableElement;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/selection/TriStateToggleableElement;-><init>(La3/a;Lb0/k;Lx/r0;ZLy2/g;Lf9/a;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    new-instance p0, Landroidx/compose/foundation/selection/a;

    .line 33
    .line 34
    move-object v3, v2

    .line 35
    move-object v4, v7

    .line 36
    move-object v2, p0

    .line 37
    move v7, v5

    .line 38
    move-object v5, p2

    .line 39
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/selection/a;-><init>(La3/a;Lf9/a;Lx/n0;Ly2/g;Z)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lr1/k;

    .line 43
    .line 44
    invoke-direct {p0, v2}, Lr1/k;-><init>(Lf9/o;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method
