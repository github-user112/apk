.class public final Le/a/b/b/c/p0;
.super Le/a/b/b/c/w;
.source ""


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/c/w;-><init>(Le/a/b/d/c/w;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 1

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/w;->b:Le/a/b/d/c/w;

    .line 3
    invoke-virtual {v0}, Le/a/b/d/c/w;->f()Le/a/b/d/c/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/b/b/c/o0;->n(Le/a/b/d/c/v;)Le/a/b/b/c/n0;

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->f:Le/a/b/b/c/z;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/b/c/w;->b:Le/a/b/d/c/w;

    .line 2
    invoke-virtual {v0}, Le/a/b/d/c/w;->f()Le/a/b/d/c/v;

    move-result-object v0

    .line 3
    iget-object p1, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 4
    invoke-virtual {p1, v0}, Le/a/b/b/c/o0;->m(Le/a/b/d/c/v;)I

    move-result p1

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/x;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Le/a/b/d/c/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  descriptor_idx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1, p2, v0}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_0
    invoke-virtual {p2, p1}, Le/a/b/f/c;->k(I)V

    return-void
.end method
