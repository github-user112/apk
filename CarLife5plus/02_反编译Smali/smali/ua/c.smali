.class public final Lua/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lua/c;


# instance fields
.field public final a:Lua/d;

.field public transient b:Lua/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lua/c;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lua/c;->c:Lua/c;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lua/d;

    invoke-direct {v0, p1, p0}, Lua/d;-><init>(Ljava/lang/String;Lua/c;)V

    iput-object v0, p0, Lua/c;->a:Lua/d;

    return-void
.end method

.method public constructor <init>(Lua/d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lua/c;->a:Lua/d;

    return-void
.end method

.method public constructor <init>(Lua/d;Lua/c;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lua/c;->a:Lua/d;

    .line 7
    iput-object p2, p0, Lua/c;->b:Lua/c;

    return-void
.end method


# virtual methods
.method public final a(Lua/e;)Lua/c;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lua/c;

    .line 7
    .line 8
    iget-object v1, p0, Lua/c;->a:Lua/d;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lua/d;->a(Lua/e;)Lua/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1, p0}, Lua/c;-><init>(Lua/d;Lua/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final b()Lua/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lua/c;->b:Lua/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lua/c;->a:Lua/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "root"

    .line 13
    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    new-instance v1, Lua/c;

    .line 17
    .line 18
    iget-object v3, v0, Lua/d;->c:Lua/d;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lua/d;->b()V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Lua/d;->c:Lua/d;

    .line 33
    .line 34
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-direct {v1, v3}, Lua/c;-><init>(Lua/d;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lua/c;->b:Lua/c;

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public final c(Lua/e;)Z
    .locals 10

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/c;->a:Lua/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lua/d;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v2, 0x2e

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    invoke-static {v1, v2, v3, v4}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v4, -0x1

    .line 29
    if-ne v2, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_1
    move v6, v2

    .line 36
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const-string p1, "asString(...)"

    .line 41
    .line 42
    invoke-static {v8, p1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ne v6, p1, :cond_2

    .line 50
    .line 51
    iget-object v7, v0, Lua/d;->a:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v4 .. v9}, Lxb/p;->z(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    return p1

    .line 64
    :cond_2
    :goto_0
    return v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lua/c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lua/c;

    .line 12
    .line 13
    iget-object p1, p1, Lua/c;->a:Lua/d;

    .line 14
    .line 15
    iget-object v1, p0, Lua/c;->a:Lua/d;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lua/c;->a:Lua/d;

    .line 2
    .line 3
    iget-object v0, v0, Lua/d;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/c;->a:Lua/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/d;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
