.class public abstract Lr9/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;

.field public static final b:Lua/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lua/c;

    .line 3
    .line 4
    sget-object v1, Lea/y;->a:Lua/c;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lea/y;->h:Lua/c;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lea/y;->i:Lua/c;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lea/y;->c:Lua/c;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lea/y;->d:Lua/c;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lea/y;->f:Lua/c;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lua/c;

    .line 58
    .line 59
    const-string v3, "topLevelFqName"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lua/b;

    .line 65
    .line 66
    invoke-virtual {v2}, Lua/c;->b()Lua/c;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v2, v2, Lua/c;->a:Lua/d;

    .line 71
    .line 72
    invoke-virtual {v2}, Lua/d;->f()Lua/e;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {v3, v4, v2}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    sput-object v1, Lr9/a;->a:Ljava/util/LinkedHashSet;

    .line 84
    .line 85
    sget-object v0, Lea/y;->g:Lua/c;

    .line 86
    .line 87
    const-string v1, "REPEATABLE_ANNOTATION"

    .line 88
    .line 89
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lua/b;

    .line 93
    .line 94
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 99
    .line 100
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {v1, v2, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 105
    .line 106
    .line 107
    sput-object v1, Lr9/a;->b:Lua/b;

    .line 108
    .line 109
    return-void
.end method
