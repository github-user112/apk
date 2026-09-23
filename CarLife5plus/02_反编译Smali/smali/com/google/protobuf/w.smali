.class public final Lcom/google/protobuf/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/c0;


# static fields
.field public static final a:Lcom/google/protobuf/w;

.field public static final b:Lcom/google/protobuf/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/w;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/protobuf/w;->a:Lcom/google/protobuf/w;

    .line 7
    .line 8
    new-instance v0, Lcom/google/protobuf/v;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/k0;Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final b(Lcom/google/protobuf/j0;Lcom/google/protobuf/j0;)Lcom/google/protobuf/j0;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final c(Lcom/google/protobuf/y0;Lcom/google/protobuf/y0;)Lcom/google/protobuf/y0;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/y0;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-ne p1, p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 11
    .line 12
    throw p1
.end method

.method public final e(ZFZF)F
    .locals 0

    .line 1
    if-ne p1, p3, :cond_0

    .line 2
    .line 3
    cmpl-float p1, p2, p4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final f(Lcom/google/protobuf/m0;Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final g(ZZZZ)Z
    .locals 0

    .line 1
    if-ne p1, p3, :cond_0

    .line 2
    .line 3
    if-ne p2, p4, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 7
    .line 8
    throw p1
.end method

.method public final h(ZLcom/google/protobuf/i;ZLcom/google/protobuf/i;)Lcom/google/protobuf/i;
    .locals 0

    .line 1
    if-ne p1, p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p4}, Lcom/google/protobuf/i;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 11
    .line 12
    throw p1
.end method

.method public final i(ZJZJ)J
    .locals 0

    .line 1
    if-ne p1, p4, :cond_0

    .line 2
    .line 3
    cmp-long p1, p2, p5

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-wide p2

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final j(ZDZD)D
    .locals 0

    .line 1
    if-ne p1, p4, :cond_0

    .line 2
    .line 3
    cmpl-double p1, p2, p5

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-wide p2

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final k(Lcom/google/protobuf/l0;Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 9
    .line 10
    throw p1
.end method

.method public final l(IIZZ)I
    .locals 0

    .line 1
    if-ne p3, p4, :cond_0

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    sget-object p1, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/v;

    .line 7
    .line 8
    throw p1
.end method
