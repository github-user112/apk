.class public abstract Le/a/b/b/b/l;
.super Le/a/b/b/b/h;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/a/b/b/b/h;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v0, v0, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 3
    invoke-virtual {v0}, Le/a/b/b/b/n;->d()I

    move-result v0

    return v0
.end method

.method public final e(Z)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v1, v0, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Le/a/b/b/b/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0}, Le/a/b/b/b/n;->i(Le/a/b/b/b/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, p1}, Le/a/b/b/b/n;->j(Le/a/b/b/b/h;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " // "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final i(I)Le/a/b/b/b/h;
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
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v0, v0, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 3
    invoke-virtual {v0, p1, p0}, Le/a/b/b/b/n;->w(Le/a/b/f/a;Le/a/b/b/b/h;)V

    return-void
.end method
