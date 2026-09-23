.class public final Lua/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lua/c;

.field public final b:Lua/c;

.field public final c:Z


# direct methods
.method public constructor <init>(Lua/c;Lua/c;Z)V
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativeClassName"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/b;->a:Lua/c;

    iput-object p2, p0, Lua/b;->b:Lua/c;

    iput-boolean p3, p0, Lua/b;->c:Z

    .line 2
    iget-object p1, p2, Lua/c;->a:Lua/d;

    .line 3
    invoke-virtual {p1}, Lua/d;->c()Z

    return-void
.end method

.method public constructor <init>(Lua/c;Lua/e;)V
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topLevelName"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lua/c;->c:Lua/c;

    invoke-static {p2}, Lp9/x1;->O(Lua/e;)Lua/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    return-void
.end method

.method public static final c(Lua/c;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lua/c;->a:Lua/d;

    .line 2
    .line 3
    iget-object p0, p0, Lua/d;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v0, 0x2f

    .line 6
    .line 7
    invoke-static {p0, v0}, Lxb/i;->H(Ljava/lang/CharSequence;C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "`"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x60

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lua/b;->a:Lua/c;

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
    iget-object v2, p0, Lua/b;->b:Lua/c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v1, Lua/c;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 22
    .line 23
    iget-object v0, v0, Lua/d;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x2e

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Lua/c;->a:Lua/d;

    .line 34
    .line 35
    iget-object v0, v0, Lua/d;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v1, v0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lua/b;->a:Lua/c;

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
    iget-object v2, p0, Lua/b;->b:Lua/c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lua/b;->c(Lua/c;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 24
    .line 25
    iget-object v0, v0, Lua/d;->a:Ljava/lang/String;

    .line 26
    .line 27
    const/16 v3, 0x2e

    .line 28
    .line 29
    const/16 v4, 0x2f

    .line 30
    .line 31
    invoke-static {v0, v3, v4}, Lxb/p;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "/"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lua/b;->c(Lua/c;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public final d(Lua/e;)Lua/b;
    .locals 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lua/b;

    .line 7
    .line 8
    iget-object v1, p0, Lua/b;->b:Lua/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lua/c;->a(Lua/e;)Lua/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v1, p0, Lua/b;->c:Z

    .line 15
    .line 16
    iget-object v2, p0, Lua/b;->a:Lua/c;

    .line 17
    .line 18
    invoke-direct {v0, v2, p1, v1}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final e()Lua/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lua/b;->b:Lua/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lua/c;->a:Lua/d;

    .line 8
    .line 9
    invoke-virtual {v1}, Lua/d;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lua/b;

    .line 16
    .line 17
    iget-object v2, p0, Lua/b;->a:Lua/c;

    .line 18
    .line 19
    iget-boolean v3, p0, Lua/b;->c:Z

    .line 20
    .line 21
    invoke-direct {v1, v2, v0, v3}, Lua/b;-><init>(Lua/c;Lua/c;Z)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lua/b;

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
    check-cast p1, Lua/b;

    .line 12
    .line 13
    iget-object v1, p0, Lua/b;->a:Lua/c;

    .line 14
    .line 15
    iget-object v3, p1, Lua/b;->a:Lua/c;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lua/b;->b:Lua/c;

    .line 25
    .line 26
    iget-object v3, p1, Lua/b;->b:Lua/c;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Lua/b;->c:Z

    .line 36
    .line 37
    iget-boolean p1, p1, Lua/b;->c:Z

    .line 38
    .line 39
    if-eq v1, p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final f()Lua/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/b;->b:Lua/c;

    .line 2
    .line 3
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lua/b;->b:Lua/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lua/b;->a:Lua/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/c;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lua/b;->b:Lua/c;

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
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean v0, p0, Lua/b;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x4cf

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x4d5

    .line 26
    .line 27
    :goto_0
    add-int/2addr v1, v0

    .line 28
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lua/b;->a:Lua/c;

    .line 2
    .line 3
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lua/b;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lua/b;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
