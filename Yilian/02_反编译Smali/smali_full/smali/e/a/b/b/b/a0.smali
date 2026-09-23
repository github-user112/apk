.class public abstract Le/a/b/b/b/a0;
.super Le/a/b/b/b/h;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/d/b/q;)V
    .locals 2

    sget-object v0, Le/a/b/b/b/k;->b:Le/a/b/b/b/j;

    sget-object v1, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    invoke-direct {p0, v0, p1, v1}, Le/a/b/b/b/h;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Le/a/b/b/b/j;)Le/a/b/b/b/h;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)Le/a/b/b/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b/d/b/l;->n(I)Le/a/b/d/b/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/b/b/b/h;->j(Le/a/b/d/b/l;)Le/a/b/b/b/h;

    move-result-object p1

    return-object p1
.end method

.method public final k(Le/a/b/f/a;)V
    .locals 0

    return-void
.end method
