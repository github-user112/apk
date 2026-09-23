.class public final Lba/b0;
.super Lba/x;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "recordComponent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lba/b0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/reflect/Member;
    .locals 6

    .line 1
    const-string v0, "recordComponent"

    .line 2
    .line 3
    iget-object v1, p0, Lba/b0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lc7/a;->b:Lu0/j;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    new-instance v3, Lu0/j;

    .line 18
    .line 19
    const-string v4, "getType"

    .line 20
    .line 21
    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "getAccessor"

    .line 26
    .line 27
    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v3, v5, v4, v0}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    move-object v0, v3

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    new-instance v0, Lu0/j;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v0, v3, v2, v2}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sput-object v0, Lc7/a;->b:Lu0/j;

    .line 44
    .line 45
    :cond_0
    iget-object v0, v0, Lu0/j;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/reflect/Method;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "null cannot be cast to non-null type java.lang.reflect.Method"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v0

    .line 62
    check-cast v2, Ljava/lang/reflect/Method;

    .line 63
    .line 64
    :goto_1
    if-eqz v2, :cond_2

    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 68
    .line 69
    const-string v1, "Can\'t find `getAccessor` method"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public final f()Lla/d;
    .locals 6

    .line 1
    const-string v0, "recordComponent"

    .line 2
    .line 3
    iget-object v1, p0, Lba/b0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lc7/a;->b:Lu0/j;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    new-instance v3, Lu0/j;

    .line 18
    .line 19
    const-string v4, "getType"

    .line 20
    .line 21
    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "getAccessor"

    .line 26
    .line 27
    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v3, v5, v4, v0}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    move-object v0, v3

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    new-instance v0, Lu0/j;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v0, v3, v2, v2}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sput-object v0, Lc7/a;->b:Lu0/j;

    .line 44
    .line 45
    :cond_0
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/reflect/Method;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v2, v0

    .line 62
    check-cast v2, Ljava/lang/Class;

    .line 63
    .line 64
    :goto_1
    if-eqz v2, :cond_2

    .line 65
    .line 66
    new-instance v0, Lba/r;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Lba/r;-><init>(Ljava/lang/reflect/Type;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 73
    .line 74
    const-string v1, "Can\'t find `getType` method"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method
