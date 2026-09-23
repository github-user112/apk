.class public final Lnb/c;
.super Ly9/l0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final D0(Lv9/k;Lv9/x;Lea/o;)Ly9/l0;
    .locals 0

    .line 1
    const-string p2, "newOwner"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "visibility"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "kind"

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    invoke-static {p2, p1}, La2/f;->M(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final E0(ILua/e;Lv9/k;Lv9/t;Lv9/m0;Lw9/h;)Ly9/u;
    .locals 0

    .line 1
    const-string p2, "newOwner"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "kind"

    .line 7
    .line 8
    invoke-static {p1, p2}, La2/f;->M(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "annotations"

    .line 12
    .line 13
    invoke-static {p6, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final j0(Lv9/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final l0(Ljava/util/Collection;)V
    .locals 1

    .line 1
    const-string v0, "overriddenDescriptors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final bridge synthetic n0(Lv9/e;Lv9/x;Lea/o;)Lv9/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnb/c;->D0(Lv9/k;Lv9/x;Lea/o;)Ly9/l0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final r0()Lv9/s;
    .locals 2

    .line 1
    new-instance v0, Lkb/a;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1, p0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
