.class public final Le/a/b/b/b/m;
.super Le/a/b/b/b/h;
.source ""


# instance fields
.field public e:[Le/a/b/b/b/x;


# direct methods
.method public constructor <init>(Le/a/b/d/b/q;Le/a/b/d/b/l;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/b/b/b/k;->b:Le/a/b/b/b/j;

    invoke-direct {p0, v0, p1, p2}, Le/a/b/b/b/h;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    .line 2
    iget-object p1, p2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p1, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/b/b/b/m;->e:[Le/a/b/b/b/x;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registers.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()I
    .locals 5

    invoke-virtual {p0}, Le/a/b/b/b/m;->l()V

    iget-object v0, p0, Le/a/b/b/b/m;->e:[Le/a/b/b/b/x;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Le/a/b/b/b/l;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public e(Z)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v5

    .line 4
    sget-object v6, Le/a/b/d/b/q;->d:Le/a/b/d/b/q;

    invoke-virtual {v5}, Le/a/b/d/b/k;->getType()Le/a/b/d/d/c;

    move-result-object v7

    .line 5
    invoke-static {v4, v7}, Le/a/b/d/b/k;->i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;

    move-result-object v7

    .line 6
    invoke-static {v6, v7, v5}, Le/a/b/b/b/h;->f(Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/b/b/x;

    move-result-object v6

    if-eqz v3, :cond_0

    const/16 v7, 0xa

    .line 7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v6, p1}, Le/a/b/b/b/l;->e(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Le/a/b/d/b/k;->h()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Le/a/b/b/b/j;)Le/a/b/b/b/h;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(I)Le/a/b/b/b/h;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b/d/b/l;->n(I)Le/a/b/d/b/l;

    move-result-object p1

    .line 3
    new-instance v0, Le/a/b/b/b/m;

    .line 4
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 5
    invoke-direct {v0, v1, p1}, Le/a/b/b/b/m;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-object v0
.end method

.method public j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 2

    new-instance v0, Le/a/b/b/b/m;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    invoke-direct {v0, v1, p1}, Le/a/b/b/b/m;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-object v0
.end method

.method public k(Le/a/b/f/a;)V
    .locals 5

    invoke-virtual {p0}, Le/a/b/b/b/m;->l()V

    iget-object v0, p0, Le/a/b/b/b/m;->e:[Le/a/b/b/b/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1
    iget-object v4, v3, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v4, v4, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 3
    invoke-virtual {v4, p1, v3}, Le/a/b/b/b/n;->w(Le/a/b/f/a;Le/a/b/b/b/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 8

    iget-object v0, p0, Le/a/b/b/b/m;->e:[Le/a/b/b/b/x;

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 3
    new-array v2, v1, [Le/a/b/b/b/x;

    iput-object v2, p0, Le/a/b/b/b/m;->e:[Le/a/b/b/b/x;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v4

    iget-object v5, p0, Le/a/b/b/b/m;->e:[Le/a/b/b/b/x;

    .line 4
    sget-object v6, Le/a/b/d/b/q;->d:Le/a/b/d/b/q;

    invoke-virtual {v4}, Le/a/b/d/b/k;->getType()Le/a/b/d/d/c;

    move-result-object v7

    .line 5
    invoke-static {v3, v7}, Le/a/b/d/b/k;->i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;

    move-result-object v7

    .line 6
    invoke-static {v6, v7, v4}, Le/a/b/b/b/h;->f(Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/b/b/x;

    move-result-object v6

    .line 7
    aput-object v6, v5, v2

    invoke-virtual {v4}, Le/a/b/d/b/k;->h()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
