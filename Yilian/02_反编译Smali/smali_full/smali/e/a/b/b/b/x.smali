.class public final Le/a/b/b/b/x;
.super Le/a/b/b/b/l;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/a/b/b/b/l;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Le/a/b/b/b/j;)Le/a/b/b/b/h;
    .locals 3

    new-instance v0, Le/a/b/b/b/x;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 3
    invoke-direct {v0, p1, v1, v2}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-object v0
.end method

.method public j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 3

    new-instance v0, Le/a/b/b/b/x;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 3
    invoke-direct {v0, v1, v2, p1}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-object v0
.end method
