.class public abstract Lva/n;
.super Lva/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static e(Lva/a;Lva/a;ILva/m0;Ljava/lang/Class;)Lva/m;
    .locals 6

    .line 1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Lva/m;

    .line 4
    .line 5
    new-instance v4, Lva/l;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v4, p2, p3, v1}, Lva/l;-><init>(ILva/m0;Z)V

    .line 9
    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lva/m;-><init>(Lva/a;Ljava/lang/Object;Lva/a;Lva/l;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static f(Lva/a;Ljava/lang/Object;Lva/a;ILva/m0;Ljava/lang/Class;)Lva/m;
    .locals 3

    .line 1
    move v0, p3

    .line 2
    move-object p3, p2

    .line 3
    move-object p2, p1

    .line 4
    move-object p1, p0

    .line 5
    new-instance p0, Lva/m;

    .line 6
    .line 7
    move-object v1, p4

    .line 8
    new-instance p4, Lva/l;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p4, v0, v1, v2}, Lva/l;-><init>(ILva/m0;Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct/range {p0 .. p5}, Lva/m;-><init>(Lva/a;Ljava/lang/Object;Lva/a;Lva/l;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
