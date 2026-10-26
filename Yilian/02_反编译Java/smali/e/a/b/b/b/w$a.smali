.class public Le/a/b/b/b/w$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/d/b/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/b/b/b/r;

.field public b:Le/a/b/d/b/a;

.field public c:Le/a/b/b/b/e;

.field public final synthetic d:Le/a/b/b/b/w;


# direct methods
.method public constructor <init>(Le/a/b/b/b/w;Le/a/b/b/b/r;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/b/w$a;->d:Le/a/b/b/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/d/b/j;)V
    .locals 5

    .line 1
    iget-object v0, p1, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 2
    iget v1, v0, Le/a/b/d/b/n;->a:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p1, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 4
    invoke-static {p1}, Le/a/b/b/b/u;->a(Le/a/b/d/b/e;)Le/a/b/b/b/j;

    move-result-object v2

    .line 5
    iget v0, v0, Le/a/b/d/b/n;->e:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Le/a/b/b/b/w$a;->b:Le/a/b/d/b/a;

    .line 7
    iget-object v0, v0, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    .line 8
    invoke-virtual {v0, v3}, Le/a/b/f/f;->g(I)I

    move-result v0

    new-instance v3, Le/a/b/b/b/z;

    .line 9
    iget-object v4, p1, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    .line 10
    invoke-static {p1, v4}, Le/a/b/b/b/w;->a(Le/a/b/d/b/e;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p1

    .line 11
    iget-object v4, p0, Le/a/b/b/b/w$a;->d:Le/a/b/b/b/w;

    .line 12
    iget-object v4, v4, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    .line 13
    iget-object v4, v4, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    aget-object v0, v4, v0

    .line 14
    invoke-direct {v3, v2, v1, p1, v0}, Le/a/b/b/b/z;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v3, Le/a/b/b/b/x;

    .line 15
    iget-object v0, p1, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    .line 16
    invoke-static {p1, v0}, Le/a/b/b/b/w;->a(Le/a/b/d/b/e;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p1

    .line 17
    invoke-direct {v3, v2, v1, p1}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    .line 18
    :goto_1
    iget-object p1, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 19
    iget-object p1, p1, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {p1, v3}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    return-void
.end method

.method public b(Le/a/b/d/b/i;)V
    .locals 5

    .line 1
    iget-object v0, p1, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 2
    invoke-static {p1}, Le/a/b/b/b/u;->a(Le/a/b/d/b/e;)Le/a/b/b/b/j;

    move-result-object v1

    .line 3
    iget-object v2, p1, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 4
    iget v3, v2, Le/a/b/d/b/n;->a:I

    .line 5
    iget v2, v2, Le/a/b/d/b/n;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    .line 6
    iget-object v2, p0, Le/a/b/b/b/w$a;->d:Le/a/b/b/b/w;

    .line 7
    iget-boolean v3, v2, Le/a/b/b/b/w;->j:Z

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p1, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    .line 9
    iget-object p1, p1, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    .line 10
    check-cast p1, Le/a/b/d/c/l;

    .line 11
    iget p1, p1, Le/a/b/d/c/n;->a:I

    .line 12
    iget v4, v2, Le/a/b/b/b/w;->g:I

    .line 13
    iget v2, v2, Le/a/b/b/b/w;->i:I

    sub-int/2addr v4, v2

    add-int/2addr v4, p1

    .line 14
    invoke-virtual {v3}, Le/a/b/d/b/k;->getType()Le/a/b/d/d/c;

    move-result-object p1

    .line 15
    invoke-static {v4, p1}, Le/a/b/d/b/k;->i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;

    move-result-object p1

    .line 16
    new-instance v2, Le/a/b/b/b/x;

    invoke-static {v3, p1}, Le/a/b/d/b/l;->l(Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p1

    invoke-direct {v2, v1, v0, p1}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    .line 17
    iget-object p1, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 18
    iget-object p1, p1, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {p1, v2}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p1, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    .line 20
    invoke-static {p1, v2}, Le/a/b/b/b/w;->a(Le/a/b/d/b/e;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v2

    .line 21
    new-instance v3, Le/a/b/b/b/f;

    .line 22
    iget-object p1, p1, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    .line 23
    invoke-direct {v3, v1, v0, v2, p1}, Le/a/b/b/b/f;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    .line 24
    iget-object p1, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 25
    iget-object p1, p1, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {p1, v3}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Le/a/b/d/b/s;)V
    .locals 5

    .line 1
    iget-object v0, p1, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 2
    invoke-static {p1}, Le/a/b/b/b/u;->a(Le/a/b/d/b/e;)Le/a/b/b/b/j;

    move-result-object v1

    .line 3
    iget-object v2, p1, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 4
    iget v2, v2, Le/a/b/d/b/n;->e:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Le/a/b/b/b/w$a;->f()Le/a/b/d/b/k;

    move-result-object v2

    .line 6
    iget-boolean v3, v1, Le/a/b/b/b/j;->e:Z

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v3, v4, :cond_1

    .line 7
    iget-object v3, p0, Le/a/b/b/b/w$a;->c:Le/a/b/b/b/e;

    invoke-virtual {p0, v3}, Le/a/b/b/b/w$a;->e(Le/a/b/b/b/h;)V

    new-instance v3, Le/a/b/b/b/x;

    .line 8
    invoke-static {p1, v2}, Le/a/b/b/b/w;->a(Le/a/b/d/b/e;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p1

    .line 9
    invoke-direct {v3, v1, v0, p1}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    .line 10
    iget-object p1, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 11
    iget-object p1, p1, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {p1, v3}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Le/a/b/d/b/r;)V
    .locals 10

    .line 1
    iget-object v0, p1, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 2
    invoke-static {p1}, Le/a/b/b/b/u;->a(Le/a/b/d/b/e;)Le/a/b/b/b/j;

    move-result-object v1

    .line 3
    iget-object v2, p1, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 4
    iget-object v3, p1, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    .line 5
    iget v4, v2, Le/a/b/d/b/n;->e:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 6
    iget-object v4, p0, Le/a/b/b/b/w$a;->c:Le/a/b/b/b/e;

    invoke-virtual {p0, v4}, Le/a/b/b/b/w$a;->e(Le/a/b/b/b/h;)V

    .line 7
    iget-boolean v4, v2, Le/a/b/d/b/n;->f:Z

    if-eqz v4, :cond_0

    .line 8
    iget-object p1, p1, Le/a/b/d/b/e;->d:Le/a/b/d/b/l;

    .line 9
    new-instance v2, Le/a/b/b/b/f;

    invoke-direct {v2, v1, v0, p1, v3}, Le/a/b/b/b/f;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    .line 10
    iget-object p1, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 11
    iget-object p1, p1, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {p1, v2}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    goto :goto_4

    .line 12
    :cond_0
    invoke-virtual {p0}, Le/a/b/b/b/w$a;->f()Le/a/b/d/b/k;

    move-result-object v4

    .line 13
    invoke-static {p1, v4}, Le/a/b/b/b/w;->a(Le/a/b/d/b/e;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v5

    .line 14
    iget-boolean v6, v1, Le/a/b/b/b/j;->e:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2

    .line 15
    iget v6, v2, Le/a/b/d/b/n;->a:I

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-ne v6, v7, :cond_5

    iget p1, v2, Le/a/b/d/b/n;->a:I

    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    .line 16
    iget p1, v1, Le/a/b/b/b/j;->a:I

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    .line 17
    new-instance p1, Le/a/b/b/b/x;

    invoke-direct {p1, v1, v0, v5}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    goto :goto_3

    :cond_4
    new-instance p1, Le/a/b/b/b/f;

    invoke-direct {p1, v1, v0, v5, v3}, Le/a/b/b/b/f;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    .line 18
    :goto_3
    iget-object v0, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 19
    iget-object v0, v0, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {v0, p1}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    :goto_4
    return-void

    .line 20
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Le/a/b/b/b/h;)V
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/w$a;->a:Le/a/b/b/b/r;

    .line 1
    iget-object v0, v0, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {v0, p1}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    return-void
.end method

.method public final f()Le/a/b/d/b/k;
    .locals 4

    iget-object v0, p0, Le/a/b/b/b/w$a;->b:Le/a/b/d/b/a;

    .line 1
    iget v0, v0, Le/a/b/d/b/a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Le/a/b/b/b/w$a;->d:Le/a/b/b/b/w;

    .line 3
    iget-object v2, v2, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    .line 4
    iget-object v2, v2, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 5
    invoke-virtual {v2, v0}, Le/a/b/d/b/b;->l(I)Le/a/b/d/b/a;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v0

    .line 8
    iget-object v2, v0, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 9
    iget v2, v2, Le/a/b/d/b/n;->a:I

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    return-object v1

    .line 10
    :cond_1
    iget-object v0, v0, Le/a/b/d/b/e;->c:Le/a/b/d/b/k;

    return-object v0
.end method
