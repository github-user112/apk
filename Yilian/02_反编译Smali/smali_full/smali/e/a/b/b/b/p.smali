.class public final Le/a/b/b/b/p;
.super Le/a/b/b/b/a0;
.source ""


# instance fields
.field public final e:Le/a/b/d/b/m;


# direct methods
.method public constructor <init>(Le/a/b/d/b/q;Le/a/b/d/b/m;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/b/a0;-><init>(Le/a/b/d/b/q;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    invoke-virtual {v0}, Le/a/b/d/b/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    invoke-virtual {p1}, Le/a/b/d/b/m;->i()I

    move-result p1

    iget-object v0, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    .line 1
    iget-object v0, v0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v0, v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    invoke-virtual {v2, p1}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "\n  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Le/a/b/e/a;)Le/a/b/b/b/h;
    .locals 8

    new-instance v0, Le/a/b/b/b/p;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    .line 3
    iget-object v3, v2, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v3, v3

    .line 4
    new-instance v4, Le/a/b/d/b/m;

    .line 5
    iget v5, p1, Le/a/b/e/a;->b:I

    .line 6
    invoke-direct {v4, v5}, Le/a/b/d/b/m;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    invoke-virtual {v2, v6}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1, v7}, Le/a/b/e/a;->b(Le/a/b/d/b/k;)Le/a/b/d/b/k;

    move-result-object v7

    invoke-virtual {v4, v7}, Le/a/b/d/b/m;->g(Le/a/b/d/b/k;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v5, v4, Le/a/b/f/i;->a:Z

    .line 8
    invoke-virtual {v4, v2}, Le/a/b/d/b/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 9
    :goto_1
    invoke-direct {v0, v1, v2}, Le/a/b/b/b/p;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/m;)V

    return-object v0
.end method

.method public i(I)Le/a/b/b/b/h;
    .locals 8

    new-instance v0, Le/a/b/b/b/p;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    .line 3
    iget-object v3, v2, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v3, v3

    new-instance v4, Le/a/b/d/b/m;

    add-int v5, v3, p1

    invoke-direct {v4, v5}, Le/a/b/d/b/m;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    iget-object v7, v2, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v7, v7, v6

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Le/a/b/d/b/k;->n(I)Le/a/b/d/b/k;

    move-result-object v7

    invoke-virtual {v4, v7}, Le/a/b/d/b/m;->g(Le/a/b/d/b/k;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Le/a/b/d/b/m;->c:I

    iput p1, v4, Le/a/b/d/b/m;->c:I

    .line 4
    iget-boolean p1, v2, Le/a/b/f/i;->a:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 5
    iput-boolean v5, v4, Le/a/b/f/i;->a:Z

    .line 6
    :cond_2
    invoke-direct {v0, v1, v4}, Le/a/b/b/b/p;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/m;)V

    return-object v0
.end method

.method public j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 2

    new-instance p1, Le/a/b/b/b/p;

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v1, p0, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    invoke-direct {p1, v0, v1}, Le/a/b/b/b/p;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/m;)V

    return-object p1
.end method
