.class public final Lnb/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lnb/l;

.field public static final b:Lnb/e;

.field public static final c:Lnb/a;

.field public static final d:Lnb/i;

.field public static final e:Lnb/i;

.field public static final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lnb/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnb/l;->a:Lnb/l;

    .line 7
    .line 8
    sget-object v0, Lnb/e;->a:Lnb/e;

    .line 9
    .line 10
    sput-object v0, Lnb/l;->b:Lnb/e;

    .line 11
    .line 12
    new-instance v0, Lnb/a;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v4, "unknown class"

    .line 19
    .line 20
    aput-object v4, v2, v3

    .line 21
    .line 22
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "<Error class: %s>"

    .line 27
    .line 28
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lua/e;->g(Ljava/lang/String;)Lua/e;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lnb/a;-><init>(Lua/e;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lnb/l;->c:Lnb/a;

    .line 40
    .line 41
    sget-object v0, Lnb/k;->h:Lnb/k;

    .line 42
    .line 43
    new-array v1, v3, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lnb/l;->d:Lnb/i;

    .line 50
    .line 51
    sget-object v0, Lnb/k;->u:Lnb/k;

    .line 52
    .line 53
    new-array v1, v3, [Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lnb/l;->e:Lnb/i;

    .line 60
    .line 61
    new-instance v0, Lnb/f;

    .line 62
    .line 63
    invoke-direct {v0}, Lnb/f;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lnb/l;->f:Ljava/util/Set;

    .line 71
    .line 72
    return-void
.end method

.method public static final varargs a(Lnb/h;Z[Ljava/lang/String;)Lnb/g;
    .locals 2

    .line 1
    const-string v0, "formatParams"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lnb/m;

    .line 9
    .line 10
    array-length v1, p2

    .line 11
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length v0, p2

    .line 21
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, p0, p2}, Lnb/g;-><init>(Lnb/h;[Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance p1, Lnb/g;

    .line 32
    .line 33
    array-length v0, p2

    .line 34
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p1, p0, p2}, Lnb/g;-><init>(Lnb/h;[Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public static final varargs b(Lnb/h;[Ljava/lang/String;)Lnb/g;
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0, p1}, Lnb/l;->a(Lnb/h;Z[Ljava/lang/String;)Lnb/g;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final varargs c(Lnb/k;[Ljava/lang/String;)Lnb/i;
    .locals 2

    .line 1
    const-string v0, "kind"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "formatParams"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    array-length v0, p1

    .line 19
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lnb/l;->d(Lnb/k;[Ljava/lang/String;)Lnb/j;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v1, p1

    .line 30
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [Ljava/lang/String;

    .line 35
    .line 36
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 37
    .line 38
    invoke-static {p0, v1, v0, p1}, Lnb/l;->e(Lnb/k;Ljava/util/List;Llb/k0;[Ljava/lang/String;)Lnb/i;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static varargs d(Lnb/k;[Ljava/lang/String;)Lnb/j;
    .locals 2

    .line 1
    const-string v0, "kind"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "formatParams"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lnb/j;

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, [Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lnb/j;-><init>(Lnb/k;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static varargs e(Lnb/k;Ljava/util/List;Llb/k0;[Ljava/lang/String;)Lnb/i;
    .locals 8

    .line 1
    const-string v0, "kind"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "formatParams"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lnb/i;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lnb/h;->e:Lnb/h;

    .line 22
    .line 23
    invoke-static {v2, v0}, Lnb/l;->b(Lnb/h;[Ljava/lang/String;)Lnb/g;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    array-length v0, p3

    .line 28
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    move-object v7, p3

    .line 33
    check-cast v7, [Ljava/lang/String;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v4, p0

    .line 37
    move-object v5, p1

    .line 38
    move-object v2, p2

    .line 39
    invoke-direct/range {v1 .. v7}, Lnb/i;-><init>(Llb/k0;Lnb/g;Lnb/k;Ljava/util/List;Z[Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public static final f(Lv9/k;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p0, Lnb/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lnb/a;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lnb/l;->b:Lnb/e;

    .line 16
    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method
