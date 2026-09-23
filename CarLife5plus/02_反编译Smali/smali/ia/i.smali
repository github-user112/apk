.class public final Lia/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lv9/e;

    .line 2
    .line 3
    invoke-static {p1}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lua/c;->a:Lua/d;

    .line 8
    .line 9
    iget-object p1, p1, Lua/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    check-cast p2, Lv9/e;

    .line 12
    .line 13
    invoke-static {p2}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p2, p2, Lua/c;->a:Lua/d;

    .line 18
    .line 19
    iget-object p2, p2, Lua/d;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2}, Lp9/l;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method
