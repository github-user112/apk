.class public Lnb/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Leb/o;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lnb/h;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "formatParams"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lnb/h;->a:Ljava/lang/String;

    .line 10
    .line 11
    array-length v0, p2

    .line 12
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lnb/g;->b:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnb/g;->h(Lua/e;Lda/b;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Collection;

    .line 6
    .line 7
    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Leb/f;Lf9/k;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    return-object p1
.end method

.method public d()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lua/e;Lda/b;)Lv9/h;
    .locals 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "location"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lnb/a;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v1, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object p1, v1, v2

    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "<Error class: %s>"

    .line 24
    .line 25
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lua/e;->g(Ljava/lang/String;)Lua/e;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Lnb/a;-><init>(Lua/e;)V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method

.method public bridge synthetic f(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnb/g;->i(Lua/e;Lda/b;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Collection;

    .line 6
    .line 7
    return-object p1
.end method

.method public g()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ls8/y;->a:Ls8/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lua/e;Lda/b;)Ljava/util/Set;
    .locals 9

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnb/c;

    .line 7
    .line 8
    sget-object v1, Lnb/l;->c:Lnb/a;

    .line 9
    .line 10
    const-string p1, "containingDeclaration"

    .line 11
    .line 12
    invoke-static {v1, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "<Error function>"

    .line 16
    .line 17
    invoke-static {p1}, Lua/e;->g(Ljava/lang/String;)Lua/e;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x1

    .line 22
    sget-object v6, Lv9/m0;->e0:Lv9/n0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    sget-object v3, Lw9/g;->a:Lw9/f;

    .line 26
    .line 27
    invoke-direct/range {v0 .. v6}, Ly9/l0;-><init>(Lv9/k;Ly9/l0;Lw9/h;Lua/e;ILv9/m0;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    new-array p1, p1, [Ljava/lang/String;

    .line 32
    .line 33
    sget-object p2, Lnb/k;->e:Lnb/k;

    .line 34
    .line 35
    invoke-static {p2, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v7, Lv9/x;->d:Lv9/x;

    .line 40
    .line 41
    sget-object v8, Lv9/o;->e:Lea/o;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v3, Ls8/w;->a:Ls8/w;

    .line 45
    .line 46
    move-object v4, v3

    .line 47
    move-object v5, v3

    .line 48
    invoke-virtual/range {v0 .. v8}, Ly9/l0;->P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public i(Lua/e;Lda/b;)Ljava/util/Set;
    .locals 0

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lnb/l;->f:Ljava/util/Set;

    .line 7
    .line 8
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ErrorScope{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnb/g;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v2, 0x7d

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, La2/f;->J(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
