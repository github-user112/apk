.class public abstract Lfa/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lua/e;

.field public static final b:Lua/e;

.field public static final c:Lua/e;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lfa/c;->a:Lua/e;

    .line 8
    .line 9
    const-string v0, "allowedTargets"

    .line 10
    .line 11
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lfa/c;->b:Lua/e;

    .line 16
    .line 17
    const-string v0, "value"

    .line 18
    .line 19
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lfa/c;->c:Lua/e;

    .line 24
    .line 25
    sget-object v0, Ls9/o;->t:Lua/c;

    .line 26
    .line 27
    sget-object v1, Lea/y;->c:Lua/c;

    .line 28
    .line 29
    new-instance v2, Lr8/j;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Ls9/o;->w:Lua/c;

    .line 35
    .line 36
    sget-object v1, Lea/y;->d:Lua/c;

    .line 37
    .line 38
    new-instance v3, Lr8/j;

    .line 39
    .line 40
    invoke-direct {v3, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Ls9/o;->x:Lua/c;

    .line 44
    .line 45
    sget-object v1, Lea/y;->f:Lua/c;

    .line 46
    .line 47
    new-instance v4, Lr8/j;

    .line 48
    .line 49
    invoke-direct {v4, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    new-array v0, v0, [Lr8/j;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    aput-object v2, v0, v1

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    aput-object v3, v0, v1

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    aput-object v4, v0, v1

    .line 63
    .line 64
    invoke-static {v0}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lfa/c;->d:Ljava/lang/Object;

    .line 69
    .line 70
    return-void
.end method

.method public static a(Lua/c;Lla/b;Lba/a;)Lga/g;
    .locals 2

    .line 1
    const-string v0, "kotlinName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "annotationOwner"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "c"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ls9/o;->m:Lua/c;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lea/y;->e:Lua/c;

    .line 25
    .line 26
    const-string v1, "DEPRECATED_ANNOTATION"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lla/b;->a(Lua/c;)Lba/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Lfa/g;

    .line 39
    .line 40
    invoke-direct {p0, v0, p2}, Lfa/g;-><init>(Lba/e;Lba/a;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lfa/c;->d:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lua/c;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-interface {p1, p0}, Lla/b;->a(Lua/c;)Lba/e;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-static {p2, p0, p1}, Lfa/c;->b(Lba/a;Lba/e;Z)Lga/g;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method public static b(Lba/a;Lba/e;Z)Lga/g;
    .locals 3

    .line 1
    const-string v0, "annotation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "c"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lba/e;->a:Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    invoke-static {v0}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lea/y;->c:Lua/c;

    .line 26
    .line 27
    const-string v2, "TARGET_ANNOTATION"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    new-instance p2, Lfa/j;

    .line 43
    .line 44
    invoke-direct {p2, p1, p0}, Lfa/j;-><init>(Lba/e;Lba/a;)V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :cond_0
    sget-object v1, Lea/y;->d:Lua/c;

    .line 49
    .line 50
    const-string v2, "RETENTION_ANNOTATION"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    new-instance p2, Lfa/i;

    .line 66
    .line 67
    invoke-direct {p2, p1, p0}, Lfa/i;-><init>(Lba/e;Lba/a;)V

    .line 68
    .line 69
    .line 70
    return-object p2

    .line 71
    :cond_1
    sget-object v1, Lea/y;->f:Lua/c;

    .line 72
    .line 73
    const-string v2, "DOCUMENTED_ANNOTATION"

    .line 74
    .line 75
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    new-instance p2, Lfa/b;

    .line 89
    .line 90
    sget-object v0, Ls9/o;->x:Lua/c;

    .line 91
    .line 92
    invoke-direct {p2, p0, p1, v0}, Lfa/b;-><init>(Lba/a;Lba/e;Lua/c;)V

    .line 93
    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_2
    sget-object v1, Lea/y;->e:Lua/c;

    .line 97
    .line 98
    const-string v2, "DEPRECATED_ANNOTATION"

    .line 99
    .line 100
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lp9/p1;->H(Lua/c;)Lua/b;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    return-object p0

    .line 115
    :cond_3
    new-instance v0, Lia/f;

    .line 116
    .line 117
    invoke-direct {v0, p0, p1, p2}, Lia/f;-><init>(Lba/a;Lba/e;Z)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method
