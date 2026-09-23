.class public final Lcom/google/protobuf/a0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/c0;


# static fields
.field public static final a:Lcom/google/protobuf/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/k0;Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/protobuf/e0;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/protobuf/e0;->c:I

    .line 5
    .line 6
    move-object v2, p2

    .line 7
    check-cast v2, Lcom/google/protobuf/e0;

    .line 8
    .line 9
    iget v2, v2, Lcom/google/protobuf/e0;->c:I

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/protobuf/d;

    .line 17
    .line 18
    iget-boolean v3, v3, Lcom/google/protobuf/d;->a:Z

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    add-int/2addr v2, v1

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/protobuf/e0;->m(I)Lcom/google/protobuf/e0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/google/protobuf/e0;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/google/protobuf/e0;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    if-lez v1, :cond_2

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object p2
.end method

.method public final b(Lcom/google/protobuf/j0;Lcom/google/protobuf/j0;)Lcom/google/protobuf/j0;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/protobuf/s;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/protobuf/s;->c:I

    .line 5
    .line 6
    move-object v2, p2

    .line 7
    check-cast v2, Lcom/google/protobuf/s;

    .line 8
    .line 9
    iget v2, v2, Lcom/google/protobuf/s;->c:I

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/protobuf/d;

    .line 17
    .line 18
    iget-boolean v3, v3, Lcom/google/protobuf/d;->a:Z

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    add-int/2addr v2, v1

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/protobuf/s;->l(I)Lcom/google/protobuf/s;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/google/protobuf/s;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/google/protobuf/s;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    if-lez v1, :cond_2

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object p2
.end method

.method public final c(Lcom/google/protobuf/y0;Lcom/google/protobuf/y0;)Lcom/google/protobuf/y0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/y0;->f:Lcom/google/protobuf/y0;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/y0;->c(Lcom/google/protobuf/y0;Lcom/google/protobuf/y0;)Lcom/google/protobuf/y0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return-object p4

    .line 4
    :cond_0
    return-object p2
.end method

.method public final e(ZFZF)F
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return p4

    .line 4
    :cond_0
    return p2
.end method

.method public final f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lcom/google/protobuf/d;

    .line 15
    .line 16
    iget-boolean v2, v2, Lcom/google/protobuf/d;->a:Z

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    invoke-interface {p1, v1}, Lcom/google/protobuf/m0;->e(I)Lcom/google/protobuf/m0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    if-lez v0, :cond_2

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    return-object p2
.end method

.method public final g(ZZZZ)Z
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return p4

    .line 4
    :cond_0
    return p2
.end method

.method public final h(ZLcom/google/protobuf/i;ZLcom/google/protobuf/i;)Lcom/google/protobuf/i;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return-object p4

    .line 4
    :cond_0
    return-object p2
.end method

.method public final i(ZJZJ)J
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    return-wide p5

    .line 4
    :cond_0
    return-wide p2
.end method

.method public final j(ZDZD)D
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    return-wide p5

    .line 4
    :cond_0
    return-wide p2
.end method

.method public final k(Lcom/google/protobuf/l0;Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/protobuf/q0;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/protobuf/q0;->c:I

    .line 5
    .line 6
    move-object v2, p2

    .line 7
    check-cast v2, Lcom/google/protobuf/q0;

    .line 8
    .line 9
    iget v2, v2, Lcom/google/protobuf/q0;->c:I

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/protobuf/d;

    .line 17
    .line 18
    iget-boolean v3, v3, Lcom/google/protobuf/d;->a:Z

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    add-int/2addr v2, v1

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/protobuf/q0;->m(I)Lcom/google/protobuf/q0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/google/protobuf/q0;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/google/protobuf/q0;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    if-lez v1, :cond_2

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object p2
.end method

.method public final l(IIZZ)I
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    return p2

    .line 4
    :cond_0
    return p1
.end method
