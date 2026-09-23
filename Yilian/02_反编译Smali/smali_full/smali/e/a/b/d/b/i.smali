.class public final Le/a/b/d/b/i;
.super Le/a/b/d/b/c;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;Le/a/b/d/c/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Le/a/b/d/b/c;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    .line 1
    iget p1, p1, Le/a/b/d/b/n;->e:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Le/a/b/d/b/e$b;)V
    .locals 0

    invoke-interface {p1, p0}, Le/a/b/d/b/e$b;->b(Le/a/b/d/b/i;)V

    return-void
.end method

.method public d()Le/a/b/d/d/e;
    .locals 1

    sget-object v0, Le/a/b/d/d/b;->c:Le/a/b/d/d/b;

    return-object v0
.end method
