.class public final Le/a/b/b/c/j0;
.super Le/a/b/b/c/x;
.source ""


# instance fields
.field public final b:Le/a/b/d/d/a;

.field public final c:Le/a/b/d/c/v;

.field public d:Le/a/b/b/c/r0;


# direct methods
.method public constructor <init>(Le/a/b/d/d/a;)V
    .locals 8

    invoke-direct {p0}, Le/a/b/b/c/x;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/j0;->b:Le/a/b/d/d/a;

    .line 1
    iget-object v0, p1, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 2
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    iget-object v3, p1, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    .line 5
    iget-object v3, v3, Le/a/b/d/d/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    const/16 v6, 0x4c

    if-ne v3, v5, :cond_0

    const/16 v3, 0x4c

    .line 7
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Le/a/b/d/d/b;->b(I)Le/a/b/d/d/c;

    move-result-object v7

    .line 8
    iget-object v7, v7, Le/a/b/d/d/c;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_1

    const/16 v7, 0x4c

    .line 10
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Le/a/b/d/c/v;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object v0, p0, Le/a/b/b/c/j0;->c:Le/a/b/d/c/v;

    .line 12
    iget-object p1, p1, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 13
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Le/a/b/b/c/r0;

    invoke-direct {v0, p1}, Le/a/b/b/c/r0;-><init>(Le/a/b/d/d/e;)V

    move-object p1, v0

    :goto_1
    iput-object p1, p0, Le/a/b/b/c/j0;->d:Le/a/b/b/c/r0;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 2
    iget-object v1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 3
    iget-object p1, p1, Le/a/b/b/c/m;->c:Le/a/b/b/c/g0;

    .line 4
    iget-object v2, p0, Le/a/b/b/c/j0;->b:Le/a/b/d/d/a;

    .line 5
    iget-object v2, v2, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    .line 6
    invoke-virtual {v1, v2}, Le/a/b/b/c/q0;->p(Le/a/b/d/d/c;)Le/a/b/b/c/p0;

    iget-object v1, p0, Le/a/b/b/c/j0;->c:Le/a/b/d/c/v;

    invoke-virtual {v0, v1}, Le/a/b/b/c/o0;->n(Le/a/b/d/c/v;)Le/a/b/b/c/n0;

    iget-object v0, p0, Le/a/b/b/c/j0;->d:Le/a/b/b/c/r0;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/r0;

    iput-object p1, p0, Le/a/b/b/c/j0;->d:Le/a/b/b/c/r0;

    :cond_0
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->g:Le/a/b/b/c/z;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 8

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 2
    iget-object v1, p0, Le/a/b/b/c/j0;->c:Le/a/b/d/c/v;

    invoke-virtual {v0, v1}, Le/a/b/b/c/o0;->m(Le/a/b/d/c/v;)I

    move-result v0

    .line 3
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 4
    iget-object v1, p0, Le/a/b/b/c/j0;->b:Le/a/b/d/d/a;

    .line 5
    iget-object v1, v1, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    .line 6
    invoke-virtual {p1, v1}, Le/a/b/b/c/q0;->n(Le/a/b/d/d/c;)I

    move-result p1

    iget-object v1, p0, Le/a/b/b/c/j0;->d:Le/a/b/b/c/r0;

    invoke-static {v1}, Le/a/b/b/c/h0;->h(Le/a/b/b/c/h0;)I

    move-result v1

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/a/b/b/c/j0;->b:Le/a/b/d/d/a;

    .line 7
    iget-object v3, v3, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    .line 8
    invoke-virtual {v3}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/b/c/j0;->b:Le/a/b/d/d/a;

    .line 9
    iget-object v3, v3, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 10
    iget-object v4, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    if-eqz v6, :cond_0

    const-string v7, ", "

    .line 11
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v6}, Le/a/b/d/d/b;->b(I)Le/a/b/d/d/c;

    move-result-object v7

    invoke-virtual {v7}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/x;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  shorty_idx:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/a/b/b/c/j0;->c:Le/a/b/d/c/v;

    invoke-virtual {v4}, Le/a/b/d/c/v;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {p2, v4, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  return_type_idx: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/b/c/j0;->b:Le/a/b/d/d/a;

    .line 12
    iget-object v3, v3, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    .line 13
    invoke-virtual {v3}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  parameters_off:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, p2, v4}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_2
    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, p1}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v1}, Le/a/b/f/c;->k(I)V

    return-void
.end method
