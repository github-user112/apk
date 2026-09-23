.class public final Le/a/b/d/b/b;
.super Le/a/b/f/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/d/b/b$a;
    }
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/h;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Le/a/b/d/b/b;->d:I

    return-void
.end method


# virtual methods
.method public j(Le/a/b/d/b/e$b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object v3

    .line 3
    iget-object v3, v3, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    .line 4
    iget-object v4, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 5
    invoke-virtual {v3, v5}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v6

    invoke-virtual {v6, p1}, Le/a/b/d/b/e;->b(Le/a/b/d/b/e$b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(I)Le/a/b/d/b/a;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/d/b/a;

    return-object p1
.end method

.method public l(I)Le/a/b/d/b/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/f/h;->c:Le/a/b/f/f;

    .line 2
    iget v1, v0, Le/a/b/f/f;->c:I

    if-lt p1, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le/a/b/f/f;->g(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no such label: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
