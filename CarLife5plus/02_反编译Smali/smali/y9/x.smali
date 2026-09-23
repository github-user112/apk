.class public final Ly9/x;
.super Ly9/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/h0;


# static fields
.field public static final synthetic h:[Lm9/u;


# instance fields
.field public final c:Ly9/a0;

.field public final d:Lua/c;

.field public final e:Lkb/j;

.field public final f:Lkb/j;

.field public final g:Leb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Ly9/x;

    .line 4
    .line 5
    const-string v2, "fragments"

    .line 6
    .line 7
    const-string v3, "getFragments()Ljava/util/List;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "empty"

    .line 20
    .line 21
    const-string v5, "getEmpty()Z"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lm9/u;

    .line 29
    .line 30
    aput-object v0, v2, v4

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    sput-object v2, Ly9/x;->h:[Lm9/u;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ly9/a0;Lua/c;Lkb/l;)V
    .locals 2

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "storageManager"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p2, Lua/c;->a:Lua/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lua/d;->e:Lua/e;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    sget-object v1, Lw9/g;->a:Lw9/f;

    .line 27
    .line 28
    invoke-direct {p0, v1, v0}, Ly9/m;-><init>(Lw9/h;Lua/e;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ly9/x;->c:Ly9/a0;

    .line 32
    .line 33
    iput-object p2, p0, Ly9/x;->d:Lua/c;

    .line 34
    .line 35
    new-instance p1, Ly9/w;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-direct {p1, p0, p2}, Ly9/w;-><init>(Ly9/x;I)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lkb/j;

    .line 42
    .line 43
    invoke-direct {p2, p3, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Ly9/x;->e:Lkb/j;

    .line 47
    .line 48
    new-instance p1, Ly9/w;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-direct {p1, p0, p2}, Ly9/w;-><init>(Ly9/x;I)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Lkb/j;

    .line 55
    .line 56
    invoke-direct {p2, p3, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Ly9/x;->f:Lkb/j;

    .line 60
    .line 61
    new-instance p1, Leb/k;

    .line 62
    .line 63
    new-instance p2, Ly9/w;

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-direct {p2, p0, v0}, Ly9/w;-><init>(Ly9/x;I)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p3, p2}, Leb/k;-><init>(Lkb/o;Lf9/a;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Ly9/x;->g:Leb/k;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lv9/m;->s(Ly9/x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lv9/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lv9/h0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    check-cast p1, Ly9/x;

    .line 14
    .line 15
    iget-object v1, p1, Ly9/x;->d:Lua/c;

    .line 16
    .line 17
    iget-object v2, p0, Ly9/x;->d:Lua/c;

    .line 18
    .line 19
    invoke-static {v2, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Ly9/x;->c:Ly9/a0;

    .line 26
    .line 27
    iget-object p1, p1, Ly9/x;->c:Ly9/a0;

    .line 28
    .line 29
    invoke-static {v1, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ly9/x;->c:Ly9/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Ly9/x;->d:Lua/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Lua/c;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final k()Lv9/k;
    .locals 2

    .line 1
    iget-object v0, p0, Ly9/x;->d:Lua/c;

    .line 2
    .line 3
    iget-object v1, v0, Lua/c;->a:Lua/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lua/d;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Ly9/x;->c:Ly9/a0;

    .line 14
    .line 15
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ly9/a0;->y0(Lua/c;)Lv9/h0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
