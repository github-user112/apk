.class public final Lu9/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lx9/c;


# static fields
.field public static final d:Lu9/e;

.field public static final synthetic e:[Lm9/u;

.field public static final f:Lua/c;

.field public static final g:Lua/e;

.field public static final h:Lua/b;


# instance fields
.field public final a:Ly9/a0;

.field public final b:Lf9/k;

.field public final c:Lkb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lu9/g;

    .line 4
    .line 5
    const-string v2, "cloneable"

    .line 6
    .line 7
    const-string v3, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Lm9/u;

    .line 21
    .line 22
    aput-object v0, v1, v4

    .line 23
    .line 24
    sput-object v1, Lu9/g;->e:[Lm9/u;

    .line 25
    .line 26
    new-instance v0, Lu9/e;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lu9/g;->d:Lu9/e;

    .line 32
    .line 33
    sget-object v0, Ls9/p;->k:Lua/c;

    .line 34
    .line 35
    sput-object v0, Lu9/g;->f:Lua/c;

    .line 36
    .line 37
    sget-object v0, Ls9/o;->c:Lua/d;

    .line 38
    .line 39
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lu9/g;->g:Lua/e;

    .line 44
    .line 45
    invoke-virtual {v0}, Lua/d;->g()Lua/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lua/b;

    .line 50
    .line 51
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 56
    .line 57
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v1, v2, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 62
    .line 63
    .line 64
    sput-object v1, Lu9/g;->h:Lua/b;

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(Lkb/l;Ly9/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lu9/g;->a:Ly9/a0;

    .line 5
    .line 6
    sget-object p2, Lu9/f;->b:Lu9/f;

    .line 7
    .line 8
    iput-object p2, p0, Lu9/g;->b:Lf9/k;

    .line 9
    .line 10
    new-instance p2, La8/f0;

    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    invoke-direct {p2, v0, p0, p1}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lkb/j;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lu9/g;->c:Lkb/j;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lua/b;)Lv9/e;
    .locals 1

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu9/g;->h:Lua/b;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lu9/g;->e:[Lm9/u;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    iget-object v0, p0, Lu9/g;->c:Lkb/j;

    .line 20
    .line 21
    invoke-static {v0, p1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ly9/k;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public final b(Lua/c;Lua/e;)Z
    .locals 1

    .line 1
    const-string v0, "packageFqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lu9/g;->g:Lua/e;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    sget-object p2, Lu9/g;->f:Lua/c;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final c(Lua/c;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "packageFqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu9/g;->f:Lua/c;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lu9/g;->e:[Lm9/u;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    iget-object v0, p0, Lu9/g;->c:Lkb/j;

    .line 20
    .line 21
    invoke-static {v0, p1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ly9/k;

    .line 26
    .line 27
    invoke-static {p1}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/Collection;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 35
    .line 36
    return-object p1
.end method
