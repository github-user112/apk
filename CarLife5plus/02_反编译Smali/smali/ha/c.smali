.class public final Lha/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw9/h;


# instance fields
.field public final a:Lba/a;

.field public final b:Lla/b;

.field public final c:Z

.field public final d:Lf1/e;


# direct methods
.method public constructor <init>(Lba/a;Lla/b;Z)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "annotationOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lha/c;->a:Lba/a;

    .line 15
    .line 16
    iput-object p2, p0, Lha/c;->b:Lla/b;

    .line 17
    .line 18
    iput-boolean p3, p0, Lha/c;->c:Z

    .line 19
    .line 20
    iget-object p1, p1, Lba/a;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lha/a;

    .line 23
    .line 24
    iget-object p1, p1, Lha/a;->a:Lkb/o;

    .line 25
    .line 26
    new-instance p2, Lba/j;

    .line 27
    .line 28
    const/4 p3, 0x5

    .line 29
    invoke-direct {p2, p3, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    check-cast p1, Lkb/l;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lkb/l;->c(Lf9/k;)Lf1/e;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lha/c;->d:Lf1/e;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final c(Lua/c;)Lw9/b;
    .locals 3

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/c;->b:Lla/b;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lla/b;->a(Lua/c;)Lba/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lha/c;->d:Lf1/e;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw9/b;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v1

    .line 26
    :cond_1
    :goto_0
    sget-object v1, Lfa/c;->a:Lua/e;

    .line 27
    .line 28
    iget-object v1, p0, Lha/c;->a:Lba/a;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lfa/c;->a(Lua/c;Lla/b;Lba/a;)Lga/g;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public final g(Lua/c;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp4/e;->q(Lw9/h;Lua/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lha/c;->b:Lla/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lla/b;->getAnnotations()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    iget-object v0, p0, Lha/c;->b:Lla/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lla/b;->getAnnotations()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-static {v1}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lha/c;->d:Lf1/e;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lwb/l;->N(Lwb/j;Lf9/k;)Lwb/p;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lfa/c;->a:Lua/e;

    .line 20
    .line 21
    sget-object v2, Ls9/o;->m:Lua/c;

    .line 22
    .line 23
    iget-object v3, p0, Lha/c;->a:Lba/a;

    .line 24
    .line 25
    invoke-static {v2, v0, v3}, Lfa/c;->a(Lua/c;Lla/b;Lba/a;)Lga/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Ls8/o;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-direct {v2, v3, v0}, Ls8/o;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Lwb/j;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object v1, v0, v3

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    invoke-static {v0}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lwb/l;->K(Lwb/j;)Lwb/i;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lv/x0;

    .line 53
    .line 54
    const/16 v2, 0x13

    .line 55
    .line 56
    invoke-direct {v1, v2}, Lv/x0;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lwb/h;

    .line 60
    .line 61
    invoke-direct {v2, v0, v3, v1}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lwb/g;

    .line 65
    .line 66
    invoke-direct {v0, v2}, Lwb/g;-><init>(Lwb/h;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method
