.class public final Le/a/b/d/b/l;
.super Le/a/b/f/d;
.source ""

# interfaces
.implements Le/a/b/d/d/e;


# static fields
.field public static final c:Le/a/b/d/b/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/d/b/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/d/b/l;-><init>(I)V

    sput-object v0, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    return-void
.end method

.method public static k(Le/a/b/d/b/k;)Le/a/b/d/b/l;
    .locals 2

    new-instance v0, Le/a/b/d/b/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1, p0}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static l(Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/d/b/l;
    .locals 2

    new-instance v0, Le/a/b/d/b/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1, p0}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b(I)Le/a/b/d/d/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/d/b/k;

    .line 2
    invoke-virtual {p1}, Le/a/b/d/b/k;->getType()Le/a/b/d/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public i(I)Le/a/b/d/b/k;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/d/b/k;

    return-object p1
.end method

.method public j()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Le/a/b/d/b/l;->b(I)Le/a/b/d/d/c;

    move-result-object v3

    invoke-virtual {v3}, Le/a/b/d/d/c;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public m(IZLjava/util/BitSet;)Le/a/b/d/b/l;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Le/a/b/d/b/l;

    .line 3
    iget-object v2, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    .line 4
    invoke-direct {v1, v2}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 5
    invoke-virtual {p0, v3}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Le/a/b/d/b/k;

    if-nez p3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v5, p1}, Le/a/b/d/b/k;->o(I)Le/a/b/d/b/k;

    move-result-object v5

    if-nez p2, :cond_3

    invoke-virtual {v5}, Le/a/b/d/b/k;->h()I

    move-result p2

    add-int/2addr p1, p2

    :cond_3
    const/4 p2, 0x0

    .line 8
    :cond_4
    invoke-virtual {v1, v3, v5}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_5
    iget-boolean p1, p0, Le/a/b/f/i;->a:Z

    xor-int/2addr p1, v4

    if-eqz p1, :cond_6

    .line 10
    iput-boolean v2, v1, Le/a/b/f/i;->a:Z

    :cond_6
    return-object v1
.end method

.method public n(I)Le/a/b/d/b/l;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Le/a/b/d/b/l;

    invoke-direct {v1, v0}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/d/b/k;

    invoke-virtual {v4, p1}, Le/a/b/d/b/k;->n(I)Le/a/b/d/b/k;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p1, p0, Le/a/b/f/i;->a:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 4
    iput-boolean v2, v1, Le/a/b/f/i;->a:Z

    :cond_2
    return-object v1
.end method
