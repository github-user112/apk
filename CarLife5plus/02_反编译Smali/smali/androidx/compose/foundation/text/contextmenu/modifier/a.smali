.class public abstract Landroidx/compose/foundation/text/contextmenu/modifier/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static final a(Lr1/p;Lf9/n;)Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;-><init>(Lf9/n;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final b(Lf9/k;)Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureElement;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureElement;-><init>(Lf9/k;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final c(Lr1/p;Lkb/a;Lf9/k;Lw0/j1;Lf9/k;)Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerElement;-><init>(Lkb/a;Lf9/k;Lf9/k;Lf9/k;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final d(Lx1/c;Lo2/w;Lo2/w;)Lx1/c;
    .locals 2

    .line 1
    invoke-interface {p1}, Lo2/w;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Lo2/w;->isAttached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lx1/c;->d()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {p1}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2, p1, v0, v1}, Lo2/w;->p(Lo2/w;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-virtual {p0}, Lx1/c;->c()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {p1, p2, v0, v1}, Lp9/p1;->d(JJ)Lx1/c;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    :goto_0
    sget-object p0, Lx1/c;->e:Lx1/c;

    .line 36
    .line 37
    return-object p0
.end method
