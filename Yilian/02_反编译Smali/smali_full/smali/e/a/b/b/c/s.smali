.class public final Le/a/b/b/c/s;
.super Le/a/b/b/c/b0;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/d/c/j;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/c/b0;-><init>(Le/a/b/d/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 1

    invoke-super {p0, p1}, Le/a/b/b/c/b0;->a(Le/a/b/b/c/m;)V

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    .line 3
    check-cast v0, Le/a/b/d/c/j;

    .line 4
    invoke-virtual {v0}, Le/a/b/d/c/j;->getType()Le/a/b/d/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/b/b/c/q0;->p(Le/a/b/d/d/c;)Le/a/b/b/c/p0;

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->h:Le/a/b/b/c/z;

    return-object v0
.end method

.method public h(Le/a/b/b/c/m;)I
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    .line 3
    check-cast v0, Le/a/b/d/c/j;

    .line 4
    invoke-virtual {v0}, Le/a/b/d/c/j;->getType()Le/a/b/d/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/b/b/c/q0;->n(Le/a/b/d/d/c;)I

    move-result p1

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "type_idx"

    return-object v0
.end method
