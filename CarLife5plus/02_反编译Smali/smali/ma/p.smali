.class public final Lma/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public c:Lr8/j;


# direct methods
.method public constructor <init>(Lu0/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lma/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lma/p;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Lr8/j;

    .line 14
    .line 15
    const-string p2, "V"

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p1, p2, p3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lma/p;->c:Lr8/j;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Lma/e;)V
    .locals 3

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v0, Ls8/n;

    .line 12
    .line 13
    new-instance v1, La5/e;

    .line 14
    .line 15
    const/16 v2, 0x19

    .line 16
    .line 17
    invoke-direct {v1, v2, p2}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-direct {v0, p2, v1}, Ls8/n;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/16 p2, 0xa

    .line 25
    .line 26
    invoke-static {v0, p2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ls8/c0;->H(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/16 v1, 0x10

    .line 35
    .line 36
    if-ge p2, v1, :cond_1

    .line 37
    .line 38
    const/16 p2, 0x10

    .line 39
    .line 40
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ls8/n;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_0
    move-object v0, p2

    .line 50
    check-cast v0, Ls8/a0;

    .line 51
    .line 52
    iget-object v2, v0, Ls8/a0;->b:Ljava/util/Iterator;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Ls8/a0;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ls8/z;

    .line 65
    .line 66
    iget v2, v0, Ls8/z;->a:I

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v0, v0, Ls8/z;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lma/e;

    .line 75
    .line 76
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p2, Lma/t;

    .line 81
    .line 82
    invoke-direct {p2, v1}, Lma/t;-><init>(Ljava/util/LinkedHashMap;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    new-instance v0, Lr8/j;

    .line 86
    .line 87
    invoke-direct {v0, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lma/p;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final b(Lcb/c;)V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcb/c;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getDesc(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lr8/j;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lma/p;->c:Lr8/j;

    .line 22
    .line 23
    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Lma/e;)V
    .locals 3

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls8/n;

    .line 7
    .line 8
    new-instance v1, La5/e;

    .line 9
    .line 10
    const/16 v2, 0x19

    .line 11
    .line 12
    invoke-direct {v1, v2, p2}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-direct {v0, p2, v1}, Ls8/n;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0xa

    .line 20
    .line 21
    invoke-static {v0, p2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p2}, Ls8/c0;->H(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    if-ge p2, v1, :cond_0

    .line 32
    .line 33
    const/16 p2, 0x10

    .line 34
    .line 35
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ls8/n;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :goto_0
    move-object v0, p2

    .line 45
    check-cast v0, Ls8/a0;

    .line 46
    .line 47
    iget-object v2, v0, Ls8/a0;->b:Ljava/util/Iterator;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Ls8/a0;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ls8/z;

    .line 60
    .line 61
    iget v2, v0, Ls8/z;->a:I

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v0, v0, Ls8/z;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lma/e;

    .line 70
    .line 71
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance p2, Lma/t;

    .line 76
    .line 77
    invoke-direct {p2, v1}, Lma/t;-><init>(Ljava/util/LinkedHashMap;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lr8/j;

    .line 81
    .line 82
    invoke-direct {v0, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lma/p;->c:Lr8/j;

    .line 86
    .line 87
    return-void
.end method
