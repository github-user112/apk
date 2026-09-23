.class public final Lu9/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lx9/b;
.implements Lx9/d;


# static fields
.field public static final synthetic h:[Lm9/u;


# instance fields
.field public final a:Ly9/a0;

.field public final b:Lkb/j;

.field public final c:Llb/a0;

.field public final d:Lkb/j;

.field public final e:Lkb/f;

.field public final f:Lkb/j;

.field public final g:Lkb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lu9/m;

    .line 4
    .line 5
    const-string v2, "settings"

    .line 6
    .line 7
    const-string v3, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

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
    const-string v3, "cloneableType"

    .line 20
    .line 21
    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "notConsideredDeprecation"

    .line 28
    .line 29
    const-string v6, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    .line 30
    .line 31
    invoke-static {v1, v5, v6, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [Lm9/u;

    .line 37
    .line 38
    aput-object v0, v2, v4

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    sput-object v2, Lu9/m;->h:[Lm9/u;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Ly9/a0;Lkb/l;La8/g0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu9/m;->a:Ly9/a0;

    .line 5
    .line 6
    new-instance v0, Lkb/j;

    .line 7
    .line 8
    invoke-direct {v0, p2, p3}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lu9/m;->b:Lkb/j;

    .line 12
    .line 13
    new-instance p3, Lua/c;

    .line 14
    .line 15
    const-string v0, "java.io"

    .line 16
    .line 17
    invoke-direct {p3, v0}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lu9/l;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {v2, p1, p3, v0}, Lu9/l;-><init>(Lv9/y;Lua/c;I)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Llb/y;

    .line 27
    .line 28
    new-instance p3, Lu9/j;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p3, p0, v0}, Lu9/j;-><init>(Lu9/m;I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2, p3}, Llb/y;-><init>(Lkb/o;Lf9/a;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    new-instance v1, Ly9/k;

    .line 42
    .line 43
    const-string p1, "Serializable"

    .line 44
    .line 45
    invoke-static {p1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sget-object v4, Lv9/x;->e:Lv9/x;

    .line 50
    .line 51
    sget-object v5, Lv9/f;->b:Lv9/f;

    .line 52
    .line 53
    move-object v7, p2

    .line 54
    invoke-direct/range {v1 .. v7}, Ly9/k;-><init>(Lv9/k;Lua/e;Lv9/x;Lv9/f;Ljava/util/List;Lkb/o;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    sget-object p3, Leb/n;->b:Leb/n;

    .line 61
    .line 62
    invoke-virtual {v1, p3, p1, p2}, Ly9/k;->B0(Leb/o;Ljava/util/Set;Ly9/i;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ly9/b;->n()Llb/a0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lu9/m;->c:Llb/a0;

    .line 70
    .line 71
    new-instance p1, La8/f0;

    .line 72
    .line 73
    const/16 p2, 0x10

    .line 74
    .line 75
    invoke-direct {p1, p2, p0, v7}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lkb/j;

    .line 79
    .line 80
    invoke-direct {p2, v7, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lu9/m;->d:Lkb/j;

    .line 84
    .line 85
    new-instance p1, Lkb/f;

    .line 86
    .line 87
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    const/high16 p3, 0x3f800000    # 1.0f

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    const/4 v1, 0x3

    .line 93
    invoke-direct {p2, v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 94
    .line 95
    .line 96
    new-instance p3, Lkb/g;

    .line 97
    .line 98
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-direct {p1, v7, p2, p3, v0}, Lkb/f;-><init>(Lkb/l;Ljava/util/concurrent/ConcurrentHashMap;Lf9/k;I)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lu9/m;->e:Lkb/f;

    .line 106
    .line 107
    new-instance p1, Lu9/j;

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    invoke-direct {p1, p0, p2}, Lu9/j;-><init>(Lu9/m;I)V

    .line 111
    .line 112
    .line 113
    new-instance p2, Lkb/j;

    .line 114
    .line 115
    invoke-direct {p2, v7, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 116
    .line 117
    .line 118
    iput-object p2, p0, Lu9/m;->f:Lkb/j;

    .line 119
    .line 120
    new-instance p1, Lba/j;

    .line 121
    .line 122
    const/16 p2, 0x16

    .line 123
    .line 124
    invoke-direct {p1, p2, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, p1}, Lkb/l;->b(Lf9/k;)Lkb/f;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lu9/m;->g:Lkb/f;

    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public final a(Lv9/e;)Ljava/util/Collection;
    .locals 6

    .line 1
    invoke-static {p1}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lu9/p;->a:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    sget-object v0, Ls9/o;->g:Lua/d;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lua/d;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    iget-object v4, p0, Lu9/m;->c:Llb/a0;

    .line 16
    .line 17
    if-nez v1, :cond_5

    .line 18
    .line 19
    sget-object v1, Ls9/o;->g0:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    invoke-virtual {p1, v0}, Lua/d;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lu9/d;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p1}, Lu9/d;->f(Lua/d;)Lua/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lua/b;->a()Lua/c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lua/c;->a:Lua/d;

    .line 55
    .line 56
    iget-object p1, p1, Lua/d;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const-class v0, Ljava/io/Serializable;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    nop

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 72
    :goto_1
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-static {v4}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 80
    .line 81
    :goto_2
    return-object p1

    .line 82
    :cond_5
    :goto_3
    sget-object p1, Lu9/m;->h:[Lm9/u;

    .line 83
    .line 84
    aget-object p1, p1, v3

    .line 85
    .line 86
    iget-object v0, p0, Lu9/m;->d:Lkb/j;

    .line 87
    .line 88
    invoke-static {v0, p1}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Llb/a0;

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [Llb/w;

    .line 96
    .line 97
    aput-object p1, v0, v2

    .line 98
    .line 99
    aput-object v4, v0, v3

    .line 100
    .line 101
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method public final b(Lv9/e;Ljb/t;)Z
    .locals 3

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lu9/m;->f(Lv9/e;)Lia/j;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Lfb/a;->getAnnotations()Lw9/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lx9/e;->a:Lua/c;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lw9/h;->g(Lua/c;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lu9/m;->g()Lu9/h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {p2, v0}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lia/j;->B0()Lia/o;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2}, Ly9/m;->getName()Lua/e;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v2, "getName(...)"

    .line 47
    .line 48
    invoke-static {p2, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lda/b;->a:Lda/b;

    .line 52
    .line 53
    invoke-virtual {p1, p2, v2}, Lia/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Iterable;

    .line 58
    .line 59
    instance-of p2, p1, Ljava/util/Collection;

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    move-object p2, p1

    .line 64
    check-cast p2, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Ly9/l0;

    .line 88
    .line 89
    invoke-static {p2, v0}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    :goto_0
    const/4 p1, 0x1

    .line 100
    return p1

    .line 101
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 102
    return p1
.end method

.method public final c(Lua/e;Lv9/e;)Ljava/util/Collection;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "classDescriptor"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lu9/a;->e:Lua/e;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sget-object v4, Lda/b;->a:Lda/b;

    .line 24
    .line 25
    sget-object v5, Lu9/m;->h:[Lm9/u;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    sget-object v7, Ls8/w;->a:Ls8/w;

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    instance-of v3, v2, Ljb/i;

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    sget-object v3, Ls9/o;->g:Lua/d;

    .line 37
    .line 38
    invoke-static {v2, v3}, Ls9/i;->b(Lv9/e;Lua/d;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    invoke-static {v2}, Ls9/i;->s(Lv9/h;)Ls9/k;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    :cond_0
    check-cast v2, Ljb/i;

    .line 51
    .line 52
    iget-object v3, v2, Ljb/i;->e:Lpa/k;

    .line 53
    .line 54
    iget-object v3, v3, Lpa/k;->q:Ljava/util/List;

    .line 55
    .line 56
    const-string v8, "getFunctionList(...)"

    .line 57
    .line 58
    invoke-static {v3, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_3

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Lpa/a0;

    .line 83
    .line 84
    iget-object v9, v2, Ljb/i;->l:Lhb/k;

    .line 85
    .line 86
    iget-object v9, v9, Lhb/k;->b:Lra/f;

    .line 87
    .line 88
    iget v8, v8, Lpa/a0;->f:I

    .line 89
    .line 90
    invoke-static {v9, v8}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    sget-object v9, Lu9/a;->e:Lua/e;

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Lua/e;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_2

    .line 101
    .line 102
    return-object v7

    .line 103
    :cond_3
    :goto_0
    iget-object v3, v0, Lu9/m;->d:Lkb/j;

    .line 104
    .line 105
    aget-object v5, v5, v6

    .line 106
    .line 107
    invoke-static {v3, v5}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Llb/a0;

    .line 112
    .line 113
    invoke-virtual {v3}, Llb/w;->R()Leb/o;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v3, v1, v4}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Ljava/lang/Iterable;

    .line 122
    .line 123
    invoke-static {v1}, Ls8/p;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ly9/l0;

    .line 128
    .line 129
    invoke-interface {v1}, Lv9/t;->r0()Lv9/s;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1, v2}, Lv9/s;->D(Lv9/k;)Lv9/s;

    .line 134
    .line 135
    .line 136
    sget-object v3, Lv9/o;->e:Lea/o;

    .line 137
    .line 138
    invoke-interface {v1, v3}, Lv9/s;->g(Lea/o;)Lv9/s;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ly9/b;->n()Llb/a0;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v1, v3}, Lv9/s;->a(Llb/w;)Lv9/s;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ly9/b;->A0()Ly9/v;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v1, v2}, Lv9/s;->L(Ly9/v;)Lv9/s;

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Lv9/s;->build()Lv9/t;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    check-cast v1, Ly9/l0;

    .line 163
    .line 164
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    return-object v1

    .line 169
    :cond_4
    invoke-virtual {v0}, Lu9/m;->g()Lu9/h;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lu9/m;->f(Lv9/e;)Lia/j;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const/4 v8, 0x2

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x3

    .line 183
    const-string v11, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 184
    .line 185
    if-nez v3, :cond_5

    .line 186
    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    goto/16 :goto_b

    .line 190
    .line 191
    :cond_5
    invoke-static {v3}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    sget-object v14, Lu9/b;->f:Lu9/b;

    .line 196
    .line 197
    const-string v15, "builtIns"

    .line 198
    .line 199
    invoke-static {v14, v15}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v13, v14}, Lu9/e;->b(Lua/c;Ls9/i;)Lv9/e;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    if-nez v13, :cond_6

    .line 207
    .line 208
    sget-object v13, Ls8/y;->a:Ls8/y;

    .line 209
    .line 210
    const/16 v16, 0x0

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_6
    sget-object v15, Lu9/d;->a:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v13}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    const/16 v16, 0x0

    .line 220
    .line 221
    sget-object v12, Lu9/d;->k:Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    check-cast v12, Lua/c;

    .line 228
    .line 229
    if-nez v12, :cond_7

    .line 230
    .line 231
    invoke-static {v13}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    move-object v13, v12

    .line 236
    check-cast v13, Ljava/util/Collection;

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_7
    invoke-virtual {v14, v12}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    new-array v14, v8, [Lv9/e;

    .line 244
    .line 245
    aput-object v13, v14, v9

    .line 246
    .line 247
    aput-object v12, v14, v6

    .line 248
    .line 249
    invoke-static {v14}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    :goto_1
    check-cast v13, Ljava/lang/Iterable;

    .line 254
    .line 255
    instance-of v12, v13, Ljava/util/List;

    .line 256
    .line 257
    if-eqz v12, :cond_9

    .line 258
    .line 259
    move-object v12, v13

    .line 260
    check-cast v12, Ljava/util/List;

    .line 261
    .line 262
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    if-eqz v14, :cond_8

    .line 267
    .line 268
    :goto_2
    move-object/from16 v12, v16

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    sub-int/2addr v14, v6

    .line 276
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    goto :goto_4

    .line 281
    :cond_9
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-nez v14, :cond_a

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v14

    .line 296
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v15

    .line 300
    if-eqz v15, :cond_b

    .line 301
    .line 302
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v14

    .line 306
    goto :goto_3

    .line 307
    :cond_b
    move-object v12, v14

    .line 308
    :goto_4
    check-cast v12, Lv9/e;

    .line 309
    .line 310
    if-nez v12, :cond_c

    .line 311
    .line 312
    goto/16 :goto_b

    .line 313
    .line 314
    :cond_c
    sget v7, Lub/h;->c:I

    .line 315
    .line 316
    new-instance v7, Ljava/util/ArrayList;

    .line 317
    .line 318
    const/16 v14, 0xa

    .line 319
    .line 320
    invoke-static {v13, v14}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 328
    .line 329
    .line 330
    move-result-object v13

    .line 331
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    if-eqz v14, :cond_d

    .line 336
    .line 337
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v14

    .line 341
    check-cast v14, Lv9/e;

    .line 342
    .line 343
    invoke-static {v14}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_d
    new-instance v13, Lub/h;

    .line 352
    .line 353
    invoke-direct {v13, v9}, Lub/h;-><init>(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v13, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 357
    .line 358
    .line 359
    sget-object v7, Lu9/d;->a:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {v2}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    sget-object v14, Lu9/d;->j:Ljava/util/HashMap;

    .line 366
    .line 367
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    invoke-static {v3}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 372
    .line 373
    .line 374
    move-result-object v14

    .line 375
    new-instance v15, La8/f0;

    .line 376
    .line 377
    const/16 v9, 0x11

    .line 378
    .line 379
    invoke-direct {v15, v9, v3, v12}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    iget-object v3, v0, Lu9/m;->e:Lkb/f;

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    new-instance v9, Lkb/h;

    .line 388
    .line 389
    invoke-direct {v9, v14, v15}, Lkb/h;-><init>(Ljava/lang/Object;Lf9/a;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v9}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    if-eqz v3, :cond_23

    .line 397
    .line 398
    check-cast v3, Lv9/e;

    .line 399
    .line 400
    invoke-interface {v3}, Lv9/e;->s0()Leb/o;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const-string v9, "getUnsubstitutedMemberScope(...)"

    .line 405
    .line 406
    invoke-static {v3, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-interface {v3, v1, v4}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Ljava/lang/Iterable;

    .line 414
    .line 415
    new-instance v3, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    :cond_e
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    if-eqz v4, :cond_17

    .line 429
    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    move-object v9, v4

    .line 435
    check-cast v9, Ly9/l0;

    .line 436
    .line 437
    invoke-virtual {v9}, Ly9/u;->f()I

    .line 438
    .line 439
    .line 440
    move-result v12

    .line 441
    if-eq v12, v6, :cond_10

    .line 442
    .line 443
    :cond_f
    :goto_7
    const/4 v9, 0x0

    .line 444
    goto/16 :goto_a

    .line 445
    .line 446
    :cond_10
    invoke-virtual {v9}, Ly9/u;->d()Lea/o;

    .line 447
    .line 448
    .line 449
    move-result-object v12

    .line 450
    iget-object v12, v12, Lea/o;->a:Ln/a;

    .line 451
    .line 452
    iget-boolean v12, v12, Ln/a;->b:Z

    .line 453
    .line 454
    if-nez v12, :cond_11

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_11
    invoke-static {v9}, Ls9/i;->D(Lv9/t;)Z

    .line 458
    .line 459
    .line 460
    move-result v12

    .line 461
    if-eqz v12, :cond_12

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_12
    invoke-virtual {v9}, Ly9/u;->m()Ljava/util/Collection;

    .line 465
    .line 466
    .line 467
    move-result-object v12

    .line 468
    check-cast v12, Ljava/lang/Iterable;

    .line 469
    .line 470
    instance-of v14, v12, Ljava/util/Collection;

    .line 471
    .line 472
    if-eqz v14, :cond_13

    .line 473
    .line 474
    move-object v14, v12

    .line 475
    check-cast v14, Ljava/util/Collection;

    .line 476
    .line 477
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v14

    .line 481
    if-eqz v14, :cond_13

    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_13
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v12

    .line 488
    :cond_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v14

    .line 492
    if-eqz v14, :cond_15

    .line 493
    .line 494
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v14

    .line 498
    check-cast v14, Lv9/t;

    .line 499
    .line 500
    invoke-interface {v14}, Lv9/k;->k()Lv9/k;

    .line 501
    .line 502
    .line 503
    move-result-object v14

    .line 504
    const-string v15, "getContainingDeclaration(...)"

    .line 505
    .line 506
    invoke-static {v14, v15}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-static {v14}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 510
    .line 511
    .line 512
    move-result-object v14

    .line 513
    invoke-virtual {v13, v14}, Lub/h;->contains(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v14

    .line 517
    if-eqz v14, :cond_14

    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_15
    :goto_8
    invoke-virtual {v9}, Ly9/n;->k()Lv9/k;

    .line 521
    .line 522
    .line 523
    move-result-object v12

    .line 524
    invoke-static {v12, v11}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    check-cast v12, Lv9/e;

    .line 528
    .line 529
    invoke-static {v9, v10}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v14

    .line 533
    sget-object v15, Lu9/p;->e:Ljava/util/LinkedHashSet;

    .line 534
    .line 535
    invoke-static {v12, v14}, Li9/a;->U(Lv9/e;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    invoke-interface {v15, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v12

    .line 543
    xor-int/2addr v12, v7

    .line 544
    if-eqz v12, :cond_16

    .line 545
    .line 546
    const/4 v9, 0x1

    .line 547
    goto :goto_9

    .line 548
    :cond_16
    invoke-static {v9}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    sget-object v12, Lu9/e;->a:Lu9/e;

    .line 553
    .line 554
    new-instance v14, Lu9/f;

    .line 555
    .line 556
    invoke-direct {v14, v0}, Lu9/f;-><init>(Lu9/m;)V

    .line 557
    .line 558
    .line 559
    invoke-static {v9, v12, v14}, Lub/k;->h(Ljava/util/List;Lub/a;Lf9/k;)Ljava/lang/Boolean;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    const-string v12, "ifAny(...)"

    .line 564
    .line 565
    invoke-static {v9, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    :goto_9
    if-nez v9, :cond_f

    .line 573
    .line 574
    const/4 v9, 0x1

    .line 575
    :goto_a
    if-eqz v9, :cond_e

    .line 576
    .line 577
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    goto/16 :goto_6

    .line 581
    .line 582
    :cond_17
    move-object v7, v3

    .line 583
    :goto_b
    new-instance v1, Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    :cond_18
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    if-eqz v4, :cond_22

    .line 597
    .line 598
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    check-cast v4, Ly9/l0;

    .line 603
    .line 604
    invoke-virtual {v4}, Ly9/n;->k()Lv9/k;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    invoke-static {v7, v11}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    check-cast v7, Lv9/e;

    .line 612
    .line 613
    invoke-static {v7, v2}, Lp9/q;->v(Lv9/e;Lv9/e;)Llb/g0;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    new-instance v9, Llb/s0;

    .line 618
    .line 619
    invoke-direct {v9, v7}, Llb/s0;-><init>(Llb/q0;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4, v9}, Ly9/u;->e(Llb/s0;)Lv9/t;

    .line 623
    .line 624
    .line 625
    move-result-object v7

    .line 626
    const-string v9, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    .line 627
    .line 628
    invoke-static {v7, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    check-cast v7, Ly9/l0;

    .line 632
    .line 633
    invoke-interface {v7}, Lv9/t;->r0()Lv9/s;

    .line 634
    .line 635
    .line 636
    move-result-object v7

    .line 637
    invoke-interface {v7, v2}, Lv9/s;->D(Lv9/k;)Lv9/s;

    .line 638
    .line 639
    .line 640
    invoke-interface {v2}, Lv9/e;->A0()Ly9/v;

    .line 641
    .line 642
    .line 643
    move-result-object v9

    .line 644
    invoke-interface {v7, v9}, Lv9/s;->L(Ly9/v;)Lv9/s;

    .line 645
    .line 646
    .line 647
    invoke-interface {v7}, Lv9/s;->n()Lv9/s;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v4}, Ly9/n;->k()Lv9/k;

    .line 651
    .line 652
    .line 653
    move-result-object v9

    .line 654
    invoke-static {v9, v11}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    check-cast v9, Lv9/e;

    .line 658
    .line 659
    invoke-static {v4, v10}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v12

    .line 663
    new-instance v13, Lg9/x;

    .line 664
    .line 665
    invoke-direct {v13}, Lg9/x;-><init>()V

    .line 666
    .line 667
    .line 668
    invoke-static {v9}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    new-instance v14, Lkb/a;

    .line 673
    .line 674
    const/16 v15, 0x19

    .line 675
    .line 676
    invoke-direct {v14, v15, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    new-instance v15, Lbb/d;

    .line 680
    .line 681
    invoke-direct {v15, v12, v13, v6}, Lbb/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 682
    .line 683
    .line 684
    invoke-static {v9, v14, v15}, Lub/k;->f(Ljava/util/List;Lub/a;Lub/k;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v9

    .line 688
    const-string v12, "dfs(...)"

    .line 689
    .line 690
    invoke-static {v9, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    check-cast v9, Lu9/k;

    .line 694
    .line 695
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 696
    .line 697
    .line 698
    move-result v9

    .line 699
    if-eqz v9, :cond_1e

    .line 700
    .line 701
    if-eq v9, v6, :cond_21

    .line 702
    .line 703
    if-eq v9, v8, :cond_1b

    .line 704
    .line 705
    if-eq v9, v10, :cond_1a

    .line 706
    .line 707
    const/4 v4, 0x4

    .line 708
    if-ne v9, v4, :cond_19

    .line 709
    .line 710
    :goto_d
    move-object/from16 v4, v16

    .line 711
    .line 712
    goto/16 :goto_11

    .line 713
    .line 714
    :cond_19
    new-instance v1, Lac/p;

    .line 715
    .line 716
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 717
    .line 718
    .line 719
    throw v1

    .line 720
    :cond_1a
    iget-object v4, v0, Lu9/m;->f:Lkb/j;

    .line 721
    .line 722
    aget-object v9, v5, v8

    .line 723
    .line 724
    invoke-static {v4, v9}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    check-cast v4, Lw9/h;

    .line 729
    .line 730
    invoke-interface {v7, v4}, Lv9/s;->E(Lw9/h;)Lv9/s;

    .line 731
    .line 732
    .line 733
    goto/16 :goto_10

    .line 734
    .line 735
    :cond_1b
    invoke-virtual {v4}, Ly9/m;->getName()Lua/e;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    sget-object v12, Lu9/n;->a:Lua/e;

    .line 740
    .line 741
    invoke-static {v9, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v12

    .line 745
    iget-object v13, v0, Lu9/m;->g:Lkb/f;

    .line 746
    .line 747
    if-eqz v12, :cond_1c

    .line 748
    .line 749
    invoke-virtual {v4}, Ly9/m;->getName()Lua/e;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    invoke-virtual {v4}, Lua/e;->b()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    new-instance v9, Lr8/j;

    .line 758
    .line 759
    const-string v12, "first"

    .line 760
    .line 761
    invoke-direct {v9, v4, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v13, v9}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    check-cast v4, Lw9/h;

    .line 769
    .line 770
    goto :goto_e

    .line 771
    :cond_1c
    sget-object v12, Lu9/n;->b:Lua/e;

    .line 772
    .line 773
    invoke-static {v9, v12}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v9

    .line 777
    if-eqz v9, :cond_1d

    .line 778
    .line 779
    invoke-virtual {v4}, Ly9/m;->getName()Lua/e;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    invoke-virtual {v4}, Lua/e;->b()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    new-instance v9, Lr8/j;

    .line 788
    .line 789
    const-string v12, "last"

    .line 790
    .line 791
    invoke-direct {v9, v4, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v13, v9}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    check-cast v4, Lw9/h;

    .line 799
    .line 800
    :goto_e
    invoke-interface {v7, v4}, Lv9/s;->E(Lw9/h;)Lv9/s;

    .line 801
    .line 802
    .line 803
    goto :goto_10

    .line 804
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 805
    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    const-string v3, "Unexpected name: "

    .line 809
    .line 810
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v4}, Ly9/m;->getName()Lua/e;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    throw v1

    .line 832
    :cond_1e
    invoke-interface {v2}, Lv9/e;->h()Lv9/x;

    .line 833
    .line 834
    .line 835
    move-result-object v4

    .line 836
    sget-object v9, Lv9/x;->b:Lv9/x;

    .line 837
    .line 838
    if-ne v4, v9, :cond_1f

    .line 839
    .line 840
    invoke-interface {v2}, Lv9/e;->f()Lv9/f;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    sget-object v9, Lv9/f;->c:Lv9/f;

    .line 845
    .line 846
    if-eq v4, v9, :cond_1f

    .line 847
    .line 848
    const/4 v4, 0x1

    .line 849
    goto :goto_f

    .line 850
    :cond_1f
    const/4 v4, 0x0

    .line 851
    :goto_f
    if-eqz v4, :cond_20

    .line 852
    .line 853
    goto/16 :goto_d

    .line 854
    .line 855
    :cond_20
    invoke-interface {v7}, Lv9/s;->r()Lv9/s;

    .line 856
    .line 857
    .line 858
    :cond_21
    :goto_10
    invoke-interface {v7}, Lv9/s;->build()Lv9/t;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    check-cast v4, Ly9/l0;

    .line 866
    .line 867
    :goto_11
    if-eqz v4, :cond_18

    .line 868
    .line 869
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    goto/16 :goto_c

    .line 873
    .line 874
    :cond_22
    return-object v1

    .line 875
    :cond_23
    invoke-static {v10}, Lkb/f;->a(I)V

    .line 876
    .line 877
    .line 878
    throw v16
.end method

.method public final d(Lv9/e;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu9/m;->g()Lu9/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lu9/m;->f(Lv9/e;)Lia/j;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lia/j;->B0()Lia/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lia/a0;->b()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    sget-object p1, Ls8/y;->a:Ls8/y;

    .line 30
    .line 31
    :cond_1
    check-cast p1, Ljava/util/Collection;

    .line 32
    .line 33
    return-object p1
.end method

.method public final e(Lv9/e;)Ljava/util/Collection;
    .locals 14

    .line 1
    invoke-interface {p1}, Lv9/e;->f()Lv9/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lv9/f;->a:Lv9/f;

    .line 6
    .line 7
    if-ne v0, v1, :cond_c

    .line 8
    .line 9
    invoke-virtual {p0}, Lu9/m;->g()Lu9/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lu9/m;->f(Lv9/e;)Lia/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    invoke-static {v0}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lu9/b;->f:Lu9/b;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lu9/e;->b(Lua/c;Ls9/i;)Lv9/e;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    invoke-static {v1, v0}, Lp9/q;->v(Lv9/e;Lv9/e;)Llb/g0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Llb/s0;

    .line 43
    .line 44
    invoke-direct {v3, v2}, Llb/s0;-><init>(Llb/q0;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lia/j;->q:Lia/o;

    .line 48
    .line 49
    iget-object v2, v2, Lia/o;->q:Lkb/j;

    .line 50
    .line 51
    invoke-virtual {v2}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/List;

    .line 56
    .line 57
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x3

    .line 71
    const/4 v7, 0x1

    .line 72
    const/4 v8, 0x0

    .line 73
    if-eqz v5, :cond_8

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v9, v5

    .line 80
    check-cast v9, Ly9/i;

    .line 81
    .line 82
    move-object v10, v9

    .line 83
    check-cast v10, Ly9/u;

    .line 84
    .line 85
    invoke-virtual {v10}, Ly9/u;->d()Lea/o;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    iget-object v11, v11, Lea/o;->a:Ln/a;

    .line 90
    .line 91
    iget-boolean v11, v11, Ln/a;->b:Z

    .line 92
    .line 93
    if-eqz v11, :cond_2

    .line 94
    .line 95
    invoke-interface {v1}, Lv9/e;->w()Ljava/util/Collection;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    const-string v12, "getConstructors(...)"

    .line 100
    .line 101
    invoke-static {v11, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast v11, Ljava/lang/Iterable;

    .line 105
    .line 106
    instance-of v12, v11, Ljava/util/Collection;

    .line 107
    .line 108
    if-eqz v12, :cond_3

    .line 109
    .line 110
    move-object v12, v11

    .line 111
    check-cast v12, Ljava/util/Collection;

    .line 112
    .line 113
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_3

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_5

    .line 129
    .line 130
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    check-cast v12, Ly9/i;

    .line 135
    .line 136
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v3}, Ly9/i;->S0(Llb/s0;)Ly9/i;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    invoke-static {v12, v13}, Lxa/j;->j(Lv9/b;Lv9/b;)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-ne v12, v7, :cond_4

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    :goto_1
    invoke-virtual {v10}, Ly9/u;->S()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-ne v11, v7, :cond_7

    .line 159
    .line 160
    invoke-virtual {v10}, Ly9/u;->S()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    const-string v10, "getValueParameters(...)"

    .line 165
    .line 166
    invoke-static {v7, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v7}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    check-cast v7, Ly9/r0;

    .line 174
    .line 175
    check-cast v7, Ly9/s0;

    .line 176
    .line 177
    invoke-virtual {v7}, Ly9/s0;->getType()Llb/w;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Llb/w;->D0()Llb/k0;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-interface {v7}, Llb/k0;->k()Lv9/h;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    if-eqz v7, :cond_6

    .line 190
    .line 191
    invoke-static {v7}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    :cond_6
    invoke-static {p1}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v8, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_7

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    invoke-static {v9}, Ls9/i;->D(Lv9/t;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-nez v7, :cond_2

    .line 212
    .line 213
    sget-object v7, Lu9/p;->f:Ljava/util/LinkedHashSet;

    .line 214
    .line 215
    invoke-static {v9, v6}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-static {v0, v6}, Li9/a;->U(Lv9/e;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-nez v6, :cond_2

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 235
    .line 236
    const/16 v2, 0xa

    .line 237
    .line 238
    invoke-static {v4, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_b

    .line 254
    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    check-cast v4, Ly9/i;

    .line 260
    .line 261
    move-object v5, v4

    .line 262
    check-cast v5, Ly9/u;

    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    sget-object v9, Llb/s0;->b:Llb/s0;

    .line 268
    .line 269
    invoke-virtual {v5, v9}, Ly9/u;->I0(Llb/s0;)Ly9/t;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iput-object p1, v5, Ly9/t;->b:Lv9/k;

    .line 274
    .line 275
    invoke-interface {p1}, Lv9/e;->n()Llb/a0;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v5, v9}, Ly9/t;->a(Llb/w;)Lv9/s;

    .line 280
    .line 281
    .line 282
    iput-boolean v7, v5, Ly9/t;->o:Z

    .line 283
    .line 284
    invoke-virtual {v3}, Llb/s0;->f()Llb/q0;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    if-eqz v9, :cond_a

    .line 289
    .line 290
    iput-object v9, v5, Ly9/t;->a:Llb/q0;

    .line 291
    .line 292
    sget-object v9, Lu9/p;->g:Ljava/util/LinkedHashSet;

    .line 293
    .line 294
    invoke-static {v4, v6}, Lm9/e0;->N(Lv9/t;I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-static {v0, v4}, Li9/a;->U(Lv9/e;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-nez v4, :cond_9

    .line 307
    .line 308
    sget-object v4, Lu9/m;->h:[Lm9/u;

    .line 309
    .line 310
    const/4 v9, 0x2

    .line 311
    aget-object v4, v4, v9

    .line 312
    .line 313
    iget-object v9, p0, Lu9/m;->f:Lkb/j;

    .line 314
    .line 315
    invoke-static {v9, v4}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    check-cast v4, Lw9/h;

    .line 320
    .line 321
    invoke-virtual {v5, v4}, Ly9/t;->E(Lw9/h;)Lv9/s;

    .line 322
    .line 323
    .line 324
    :cond_9
    iget-object v4, v5, Ly9/t;->x:Ly9/u;

    .line 325
    .line 326
    invoke-virtual {v4, v5}, Ly9/u;->F0(Ly9/t;)Ly9/u;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    .line 331
    .line 332
    invoke-static {v4, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    check-cast v4, Ly9/i;

    .line 336
    .line 337
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_a
    const/16 p1, 0x25

    .line 342
    .line 343
    invoke-static {p1}, Ly9/t;->b(I)V

    .line 344
    .line 345
    .line 346
    throw v8

    .line 347
    :cond_b
    return-object v1

    .line 348
    :cond_c
    :goto_3
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 349
    .line 350
    return-object p1
.end method

.method public final f(Lv9/e;)Lia/j;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    sget-object v1, Ls9/o;->a:Lua/d;

    .line 5
    .line 6
    invoke-static {p1, v1}, Ls9/i;->b(Lv9/e;Lua/d;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Ls9/i;->J(Lv9/h;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p1}, Lbb/e;->h(Lv9/k;)Lua/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lua/d;->d()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v1, Lu9/d;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1}, Lu9/d;->f(Lua/d;)Lua/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1}, Lua/b;->a()Lua/c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p0}, Lu9/m;->g()Lu9/h;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v1, v1, Lu9/h;->a:Ly9/a0;

    .line 51
    .line 52
    invoke-static {v1, p1}, Lv9/v;->j(Lv9/y;Lua/c;)Lv9/e;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    instance-of v1, p1, Lia/j;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    check-cast p1, Lia/j;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_4
    :goto_0
    return-object v0

    .line 64
    :cond_5
    const/16 p1, 0x6c

    .line 65
    .line 66
    invoke-static {p1}, Ls9/i;->a(I)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public final g()Lu9/h;
    .locals 2

    .line 1
    sget-object v0, Lu9/m;->h:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lu9/m;->b:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lu9/h;

    .line 13
    .line 14
    return-object v0
.end method
