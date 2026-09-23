.class public final Le/a/b/d/c/j;
.super Le/a/b/d/c/r;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/a/b/d/c/r;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    return-void
.end method


# virtual methods
.method public d(Le/a/b/d/c/a;)I
    .locals 1

    invoke-super {p0, p1}, Le/a/b/d/c/r;->d(Le/a/b/d/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Le/a/b/d/c/j;

    .line 1
    iget-object v0, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 2
    iget-object v0, v0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    .line 3
    iget-object p1, p1, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 4
    iget-object p1, p1, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    .line 5
    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "field"

    return-object v0
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 2
    iget-object v0, v0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    .line 3
    iget-object v0, v0, Le/a/b/d/c/v;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Le/a/b/d/d/c;->h(Ljava/lang/String;)Le/a/b/d/d/c;

    move-result-object v0

    return-object v0
.end method
