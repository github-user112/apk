.class public final Le/a/b/b/c/n;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/d/c/c;

.field public f:[B


# direct methods
.method public constructor <init>(Le/a/b/d/c/c;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    iput-object p1, p0, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/n;->f:[B

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    invoke-static {p1, v0}, Le/a/b/b/c/u0;->a(Le/a/b/b/c/m;Le/a/b/d/c/a;)V

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->t:Le/a/b/b/c/z;

    return-object v0
.end method

.method public f(Le/a/b/b/c/h0;)I
    .locals 1

    check-cast p1, Le/a/b/b/c/n;

    iget-object v0, p0, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    iget-object p1, p1, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    invoke-virtual {v0}, Le/a/b/d/c/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 2

    new-instance p2, Le/a/b/f/c;

    invoke-direct {p2}, Le/a/b/f/c;-><init>()V

    new-instance v0, Le/a/b/b/c/u0;

    .line 1
    iget-object p1, p1, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    .line 2
    invoke-direct {v0, p1, p2}, Le/a/b/b/c/u0;-><init>(Le/a/b/b/c/m;Le/a/b/f/a;)V

    iget-object p1, p0, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Le/a/b/b/c/u0;->e(Le/a/b/d/c/c;Z)V

    invoke-virtual {p2}, Le/a/b/f/c;->h()[B

    move-result-object p1

    iput-object p1, p0, Le/a/b/b/c/n;->f:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->l(I)V

    return-void
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 3

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v0, Le/a/b/b/c/u0;

    invoke-direct {v0, p1, p2}, Le/a/b/b/c/u0;-><init>(Le/a/b/b/c/m;Le/a/b/f/a;)V

    iget-object p1, p0, Le/a/b/b/c/n;->e:Le/a/b/d/c/c;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Le/a/b/b/c/u0;->e(Le/a/b/d/c/c;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/n;->f:[B

    invoke-virtual {p2, p1}, Le/a/b/f/c;->i([B)V

    :goto_0
    return-void
.end method
