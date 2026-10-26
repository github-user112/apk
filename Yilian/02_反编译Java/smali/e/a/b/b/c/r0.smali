.class public final Le/a/b/b/c/r0;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/d/d/e;


# direct methods
.method public constructor <init>(Le/a/b/d/d/e;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Le/a/b/f/d;

    .line 1
    iget-object v0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    .line 2
    invoke-direct {p0, v1, v0}, Le/a/b/b/c/h0;-><init>(II)V

    iput-object p1, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 3

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    check-cast v0, Le/a/b/f/d;

    .line 3
    iget-object v0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    invoke-interface {v2, v1}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Le/a/b/b/c/q0;->p(Le/a/b/d/d/c;)Le/a/b/b/c/p0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->l:Le/a/b/b/c/z;

    return-object v0
.end method

.method public f(Le/a/b/b/c/h0;)I
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    check-cast p1, Le/a/b/b/c/r0;

    iget-object p1, p1, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    invoke-static {v0, p1}, Le/a/b/d/d/b;->i(Le/a/b/d/d/e;Le/a/b/d/d/e;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    invoke-static {v0}, Le/a/b/d/d/b;->l(Le/a/b/d/d/e;)I

    move-result v0

    return v0
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 7

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    check-cast v0, Le/a/b/f/d;

    .line 3
    iget-object v0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 4
    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type_list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    invoke-interface {v3, v1}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/a/b/b/c/q0;->n(Le/a/b/d/d/c;)I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "  "

    invoke-static {v6}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    invoke-interface {v1, v2}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/b/b/c/q0;->n(Le/a/b/d/d/c;)I

    move-result v1

    invoke-virtual {p2, v1}, Le/a/b/f/c;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
