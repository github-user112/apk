.class public final Le/a/b/d/b/s;
.super Le/a/b/d/b/e;
.source ""


# instance fields
.field public final e:Le/a/b/d/d/e;


# direct methods
.method public constructor <init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Le/a/b/d/b/e;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    .line 1
    iget p1, p1, Le/a/b/d/b/n;->e:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iput-object p4, p0, Le/a/b/d/b/s;->e:Le/a/b/d/d/e;

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

.method public static f(Le/a/b/d/d/e;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v1, p0

    check-cast v1, Le/a/b/f/d;

    .line 1
    iget-object v1, v1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, " "

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, v2}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v3

    invoke-virtual {v3}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Le/a/b/d/b/e$b;)V
    .locals 0

    invoke-interface {p1, p0}, Le/a/b/d/b/e$b;->c(Le/a/b/d/b/s;)V

    return-void
.end method

.method public d()Le/a/b/d/d/e;
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/s;->e:Le/a/b/d/d/e;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/s;->e:Le/a/b/d/d/e;

    invoke-static {v0}, Le/a/b/d/b/s;->f(Le/a/b/d/d/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
