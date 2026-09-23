.class public abstract Landroidx/compose/foundation/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(Lr1/p;Ly1/z;)Lr1/p;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/BackgroundElement;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    sget-object v4, Ly1/h0;->a:Ly1/g0;

    .line 7
    .line 8
    move-object v3, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/BackgroundElement;-><init>(JLy1/z;Ly1/l0;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final b(Lr1/p;JLy1/l0;)Lr1/p;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/BackgroundElement;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x2

    .line 5
    move-wide v1, p1

    .line 6
    move-object v4, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/BackgroundElement;-><init>(JLy1/z;Ly1/l0;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;
    .locals 7

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v4, p3

    .line 9
    :goto_0
    instance-of p3, p2, Lx/r0;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move-object v2, p2

    .line 15
    check-cast v2, Lx/r0;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    move-object v1, p1

    .line 21
    move-object v6, p4

    .line 22
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/ClickableElement;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Lf9/a;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v1, p1

    .line 27
    move-object v6, p4

    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/ClickableElement;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Lf9/a;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    sget-object p1, Lr1/m;->a:Lr1/m;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-static {p1, v1, p2}, Landroidx/compose/foundation/c;->a(Lr1/p;Lb0/k;Lx/n0;)Lr1/p;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/ClickableElement;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Lf9/a;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    new-instance p3, Landroidx/compose/foundation/b;

    .line 59
    .line 60
    invoke-direct {p3, p2, v4, v6}, Landroidx/compose/foundation/b;-><init>(Lx/n0;ZLf9/a;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p3}, Lr1/a;->a(Lr1/p;Lf9/o;)Lr1/p;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static d(Lr1/p;Ljava/lang/String;Lf9/a;I)Lr1/p;
    .locals 7

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    move-object v5, p1

    .line 7
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/ClickableElement;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Lf9/a;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static e(Lr1/p;Lb0/k;Lf9/a;Lf9/a;)Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/CombinedClickableElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p3, p2}, Landroidx/compose/foundation/CombinedClickableElement;-><init>(Lb0/k;Lf9/a;Lf9/a;)V

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

.method public static final f(Lr1/p;ZLb0/k;)Lr1/p;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroidx/compose/foundation/FocusableElement;

    .line 4
    .line 5
    invoke-direct {p1, p2}, Landroidx/compose/foundation/FocusableElement;-><init>(Lb0/k;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lr1/m;->a:Lr1/m;

    .line 10
    .line 11
    :goto_0
    invoke-interface {p0, p1}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static g(Lr1/p;Lb0/k;)Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/HoverableElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/HoverableElement;-><init>(Lb0/k;)V

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

.method public static final h(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Li2/c;->z(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget p0, Li2/a;->p:I

    .line 6
    .line 7
    sget-wide v2, Li2/a;->h:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Li2/a;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    sget-wide v2, Li2/a;->k:J

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Li2/a;->a(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    sget-wide v2, Li2/a;->o:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Li2/a;->a(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    sget-wide v2, Li2/a;->j:J

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Li2/a;->a(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public static i(Lr1/p;Lz/m1;Lz/w0;ZLz/h;Lb0/k;ZLx/h;)Lr1/p;
    .locals 8

    .line 1
    sget v0, Lx/t;->a:F

    .line 2
    .line 3
    sget-object v0, Lz/w0;->a:Lz/w0;

    .line 4
    .line 5
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lx/g0;->c:Lx/g0;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lx/g0;->b:Lx/g0;

    .line 17
    .line 18
    invoke-static {v1, v0}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Landroidx/compose/foundation/ScrollingContainerElement;

    .line 27
    .line 28
    move-object v5, p1

    .line 29
    move-object v4, p2

    .line 30
    move v6, p3

    .line 31
    move-object v3, p4

    .line 32
    move-object v1, p5

    .line 33
    move v7, p6

    .line 34
    move-object v2, p7

    .line 35
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ScrollingContainerElement;-><init>(Lb0/k;Lx/h;Lz/h;Lz/w0;Lz/m1;ZZ)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
