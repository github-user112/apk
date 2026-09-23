.class public final Lw9/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw9/b;


# instance fields
.field public final a:Llb/w;

.field public final b:Ljava/util/Map;

.field public final c:Lv9/m0;


# direct methods
.method public constructor <init>(Llb/a0;Ljava/util/Map;Lv9/m0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lw9/c;->a:Llb/w;

    .line 10
    .line 11
    iput-object p2, p0, Lw9/c;->b:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p3, p0, Lw9/c;->c:Lv9/m0;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    invoke-static {p1}, Lw9/c;->c(I)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Lw9/c;->c(I)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static synthetic c(I)V
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    if-eq p0, v2, :cond_0

    .line 5
    .line 6
    if-eq p0, v1, :cond_0

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    .line 14
    .line 15
    :goto_0
    const/4 v4, 0x2

    .line 16
    if-eq p0, v2, :cond_1

    .line 17
    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v5, 0x2

    .line 25
    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl"

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eq p0, v8, :cond_4

    .line 32
    .line 33
    if-eq p0, v4, :cond_3

    .line 34
    .line 35
    if-eq p0, v2, :cond_2

    .line 36
    .line 37
    if-eq p0, v1, :cond_2

    .line 38
    .line 39
    if-eq p0, v0, :cond_2

    .line 40
    .line 41
    const-string v9, "annotationType"

    .line 42
    .line 43
    aput-object v9, v5, v7

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    aput-object v6, v5, v7

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const-string v9, "source"

    .line 50
    .line 51
    aput-object v9, v5, v7

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    const-string v9, "valueArguments"

    .line 55
    .line 56
    aput-object v9, v5, v7

    .line 57
    .line 58
    :goto_2
    if-eq p0, v2, :cond_7

    .line 59
    .line 60
    if-eq p0, v1, :cond_6

    .line 61
    .line 62
    if-eq p0, v0, :cond_5

    .line 63
    .line 64
    aput-object v6, v5, v8

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    const-string v6, "getSource"

    .line 68
    .line 69
    aput-object v6, v5, v8

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_6
    const-string v6, "getAllValueArguments"

    .line 73
    .line 74
    aput-object v6, v5, v8

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_7
    const-string v6, "getType"

    .line 78
    .line 79
    aput-object v6, v5, v8

    .line 80
    .line 81
    :goto_3
    if-eq p0, v2, :cond_8

    .line 82
    .line 83
    if-eq p0, v1, :cond_8

    .line 84
    .line 85
    if-eq p0, v0, :cond_8

    .line 86
    .line 87
    const-string v6, "<init>"

    .line 88
    .line 89
    aput-object v6, v5, v4

    .line 90
    .line 91
    :cond_8
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eq p0, v2, :cond_9

    .line 96
    .line 97
    if-eq p0, v1, :cond_9

    .line 98
    .line 99
    if-eq p0, v0, :cond_9

    .line 100
    .line 101
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_4
    throw p0
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 3

    .line 1
    invoke-static {p0}, Lbb/e;->d(Lw9/b;)Lv9/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {v0}, Lnb/l;->f(Lv9/k;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lbb/e;->c(Lv9/l;)Lua/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    return-object v1
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Lw9/c;->c(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public final getSource()Lv9/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->c:Lv9/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x5

    .line 7
    invoke-static {v0}, Lw9/c;->c(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public final getType()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->a:Llb/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Lw9/c;->c(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lwa/g;->c:Lwa/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lwa/g;->v(Lw9/b;Lw9/d;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
