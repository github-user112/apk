.class public abstract Le/a/b/b/c/l0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/b/b/c/m;

.field public final c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/b/b/c/m;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    iput-object p1, p0, Le/a/b/b/c/l0;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    iput p3, p0, Le/a/b/b/c/l0;->c:I

    const/4 p1, -0x1

    iput p1, p0, Le/a/b/b/c/l0;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/a/b/b/c/l0;->e:Z

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid alignment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Le/a/b/b/c/y;)I
.end method

.method public final b(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Le/a/b/b/c/l0;->d:I

    if-ltz v0, :cond_0

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not yet set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relative < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Le/a/b/b/c/l0;->d:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract d()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Le/a/b/b/c/y;",
            ">;"
        }
    .end annotation
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Le/a/b/b/c/l0;->h()V

    invoke-virtual {p0}, Le/a/b/b/c/l0;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/b/b/c/l0;->e:Z

    return-void
.end method

.method public abstract f()V
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Le/a/b/b/c/l0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 2

    iget-boolean v0, p0, Le/a/b/b/c/l0;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract i()I
.end method

.method public final j(Le/a/b/f/a;)V
    .locals 5

    invoke-virtual {p0}, Le/a/b/b/c/l0;->g()V

    .line 1
    iget v0, p0, Le/a/b/b/c/l0;->c:I

    move-object v1, p1

    check-cast v1, Le/a/b/f/c;

    invoke-virtual {v1, v0}, Le/a/b/f/c;->a(I)V

    .line 2
    iget v0, v1, Le/a/b/f/c;->c:I

    .line 3
    iget v2, p0, Le/a/b/b/c/l0;->d:I

    if-gez v2, :cond_0

    iput v0, p0, Le/a/b/b/c/l0;->d:I

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_3

    :goto_0
    invoke-virtual {v1}, Le/a/b/f/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/a/b/b/c/l0;->a:Ljava/lang/String;

    const-string v3, "\n"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Le/a/b/b/c/l0;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1, v4, v3}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Le/a/b/b/c/l0;->k(Le/a/b/f/a;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alignment mismatch: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Le/a/b/b/c/l0;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract k(Le/a/b/f/a;)V
.end method
