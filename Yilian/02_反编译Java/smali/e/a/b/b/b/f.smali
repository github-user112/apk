.class public final Le/a/b/b/b/f;
.super Le/a/b/b/b/l;
.source ""


# instance fields
.field public final e:Le/a/b/d/c/a;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/a/b/b/b/l;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    const/4 p1, -0x1

    iput p1, p0, Le/a/b/b/b/f;->f:I

    iput p1, p0, Le/a/b/b/b/f;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constant == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    invoke-interface {v0}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Le/a/b/b/b/j;)Le/a/b/b/b/h;
    .locals 4

    new-instance v0, Le/a/b/b/b/f;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 3
    iget-object v3, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    invoke-direct {v0, p1, v1, v2, v3}, Le/a/b/b/b/f;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    iget p1, p0, Le/a/b/b/b/f;->f:I

    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Le/a/b/b/b/f;->n(I)V

    :cond_0
    iget p1, p0, Le/a/b/b/b/f;->g:I

    if-ltz p1, :cond_1

    invoke-virtual {v0, p1}, Le/a/b/b/b/f;->m(I)V

    :cond_1
    return-object v0
.end method

.method public j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 4

    new-instance v0, Le/a/b/b/b/f;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 3
    iget-object v3, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    invoke-direct {v0, v1, v2, p1, v3}, Le/a/b/b/b/f;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/c/a;)V

    iget p1, p0, Le/a/b/b/b/f;->f:I

    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Le/a/b/b/b/f;->n(I)V

    :cond_0
    iget p1, p0, Le/a/b/b/b/f;->g:I

    if-ltz p1, :cond_1

    invoke-virtual {v0, p1}, Le/a/b/b/b/f;->m(I)V

    :cond_1
    return-object v0
.end method

.method public l()I
    .locals 3

    iget v0, p0, Le/a/b/b/b/f;->f:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "index not yet set for "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Le/a/b/b/b/f;->g:I

    if-gez v0, :cond_0

    iput p1, p0, Le/a/b/b/b/f;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Le/a/b/b/b/f;->f:I

    if-gez v0, :cond_0

    iput p1, p0, Le/a/b/b/b/f;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
