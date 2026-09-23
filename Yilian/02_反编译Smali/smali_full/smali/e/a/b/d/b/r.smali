.class public final Le/a/b/d/b/r;
.super Le/a/b/d/b/c;
.source ""


# instance fields
.field public final f:Le/a/b/d/d/e;


# direct methods
.method public constructor <init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Le/a/b/d/b/c;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    .line 1
    iget p1, p1, Le/a/b/d/b/n;->e:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iput-object p4, p0, Le/a/b/d/b/r;->f:Le/a/b/d/d/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Le/a/b/d/b/e$b;)V
    .locals 0

    invoke-interface {p1, p0}, Le/a/b/d/b/e$b;->d(Le/a/b/d/b/r;)V

    return-void
.end method

.method public d()Le/a/b/d/d/e;
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/r;->f:Le/a/b/d/d/e;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    .line 2
    invoke-interface {v0}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Le/a/b/d/c/v;

    if-eqz v2, :cond_0

    check-cast v0, Le/a/b/d/c/v;

    invoke-virtual {v0}, Le/a/b/d/c/v;->f()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, " "

    invoke-static {v1, v0}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b/d/b/r;->f:Le/a/b/d/d/e;

    invoke-static {v1}, Le/a/b/d/b/s;->f(Le/a/b/d/d/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
