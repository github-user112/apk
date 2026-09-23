.class public abstract Le/a/b/b/b/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 6

    check-cast p0, Le/a/b/b/b/z;

    invoke-virtual {p0}, Le/a/b/b/b/z;->l()I

    move-result p0

    int-to-short v0, p0

    const/16 v1, 0x10

    const/16 v2, 0x2d

    const/16 v3, 0x2b

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne p0, v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [C

    if-gez p0, :cond_0

    aput-char v2, v0, v4

    neg-int p0, p0

    goto :goto_0

    :cond_0
    aput-char v3, v0, v4

    :goto_0
    if-ge v4, v5, :cond_1

    rsub-int/lit8 v2, v4, 0x4

    and-int/lit8 v3, p0, 0xf

    .line 1
    invoke-static {v3, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/2addr p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x9

    new-array v0, v0, [C

    if-gez p0, :cond_3

    aput-char v2, v0, v4

    neg-int p0, p0

    goto :goto_1

    :cond_3
    aput-char v3, v0, v4

    :goto_1
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    rsub-int/lit8 v2, v4, 0x8

    and-int/lit8 v3, p0, 0xf

    .line 2
    invoke-static {v3, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/2addr p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :goto_2
    return-object p0
.end method

.method public static c(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Le/a/b/b/b/z;

    .line 1
    iget-object p0, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    invoke-virtual {p0}, Le/a/b/b/b/h;->c()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {p0}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(II)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 2

    check-cast p0, Le/a/b/b/b/f;

    .line 1
    iget v0, p0, Le/a/b/b/b/f;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Le/a/b/b/b/f;->l()I

    move-result v1

    .line 3
    iget-object p0, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 4
    invoke-virtual {p0}, Le/a/b/d/c/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 p0, 0x10000

    if-ge v1, p0, :cond_2

    invoke-static {v1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 1

    check-cast p0, Le/a/b/b/b/f;

    .line 1
    iget-object p0, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 2
    instance-of v0, p0, Le/a/b/d/c/v;

    if-eqz v0, :cond_0

    check-cast p0, Le/a/b/d/c/v;

    invoke-virtual {p0}, Le/a/b/d/c/v;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Le/a/b/d/c/p;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v1, p0, Le/a/b/d/c/o;

    if-eqz v1, :cond_0

    check-cast p0, Le/a/b/d/c/o;

    .line 1
    iget-wide v1, p0, Le/a/b/d/c/o;->a:J

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/b/d/c/p;->g()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    const/4 p0, 0x4

    const/16 v3, 0x10

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    if-eq p1, v3, :cond_3

    const/16 p0, 0x20

    if-eq p1, p0, :cond_2

    const/16 p0, 0x40

    if-ne p1, p0, :cond_1

    invoke-static {v1, v2}, Ld/s/y;->h0(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    invoke-static {p0}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    long-to-int p0, v1

    invoke-static {p0}, Ld/s/y;->d0(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    long-to-int p0, v1

    const/4 p1, 0x1

    new-array p1, p1, [C

    and-int/lit8 p0, p0, 0xf

    .line 3
    invoke-static {p0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/4 v1, 0x0

    aput-char p0, p1, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 4
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Le/a/b/d/c/p;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v1, p0, Le/a/b/d/c/m;

    if-eqz v1, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a/b/d/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(II)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_1

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Le/a/b/b/b/h;I)S
    .locals 1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    .line 1
    iget-object p0, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget p0, p0, Le/a/b/b/b/j;->a:I

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(I)Z
    .locals 1

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t(Le/a/b/f/a;SI)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2}, Le/a/b/b/b/n;->v(Le/a/b/f/a;SSS)V

    return-void
.end method

.method public static u(Le/a/b/f/a;SS)V
    .locals 0

    check-cast p0, Le/a/b/f/c;

    invoke-virtual {p0, p1}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p0, p2}, Le/a/b/f/c;->l(I)V

    return-void
.end method

.method public static v(Le/a/b/f/a;SSS)V
    .locals 0

    check-cast p0, Le/a/b/f/c;

    invoke-virtual {p0, p1}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p0, p2}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p0, p3}, Le/a/b/f/c;->l(I)V

    return-void
.end method


# virtual methods
.method public b(Le/a/b/b/b/z;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract d()I
.end method

.method public f(Le/a/b/b/b/h;)Ljava/util/BitSet;
    .locals 0

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    return-object p1
.end method

.method public abstract i(Le/a/b/b/b/h;)Ljava/lang/String;
.end method

.method public abstract j(Le/a/b/b/b/h;Z)Ljava/lang/String;
.end method

.method public abstract k(Le/a/b/b/b/h;)Z
.end method

.method public abstract w(Le/a/b/f/a;Le/a/b/b/b/h;)V
.end method
