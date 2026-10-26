.class public final Le/a/b/b/b/b0/w;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/w;

    invoke-direct {v0}, Le/a/b/b/b/b0/w;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/w;->a:Le/a/b/b/b/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/b/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v2, v1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    invoke-virtual {v2}, Le/a/b/d/b/k;->h()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-virtual {v2, v5}, Le/a/b/d/b/k;->n(I)Le/a/b/d/b/k;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/a/b/b/b/n;->h(Le/a/b/b/b/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/a/b/b/b/h;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Le/a/b/b/b/n;->g(Le/a/b/b/b/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public k(Le/a/b/b/b/h;)Z
    .locals 7

    instance-of v0, p1, Le/a/b/b/b/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/a/b/b/b/f;

    invoke-virtual {p1}, Le/a/b/b/b/f;->l()I

    move-result v0

    .line 1
    iget-object v2, p1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 2
    invoke-static {v0}, Le/a/b/b/b/n;->s(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, v2, Le/a/b/d/c/s;

    if-nez v0, :cond_2

    instance-of v0, v2, Le/a/b/d/c/w;

    if-nez v0, :cond_2

    return v1

    .line 3
    :cond_2
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 4
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v0

    array-length v2, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 5
    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 7
    iget v2, v2, Le/a/b/d/b/k;->a:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 8
    invoke-virtual {p1, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v5

    .line 9
    iget v6, v5, Le/a/b/d/b/k;->a:I

    if-eq v6, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {v5}, Le/a/b/d/b/k;->h()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 12
    iget v0, v0, Le/a/b/d/b/k;->a:I

    .line 13
    invoke-static {v0}, Le/a/b/b/b/n;->s(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Le/a/b/d/b/l;->j()I

    move-result p1

    invoke-static {p1}, Le/a/b/b/b/n;->q(I)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 4

    .line 1
    iget-object v0, p2, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    move-object v1, p2

    check-cast v1, Le/a/b/b/b/f;

    invoke-virtual {v1}, Le/a/b/b/b/f;->l()I

    move-result v1

    .line 3
    iget-object v2, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 5
    iget v3, v2, Le/a/b/d/b/k;->a:I

    .line 6
    :goto_0
    invoke-virtual {v0}, Le/a/b/d/b/l;->j()I

    move-result v0

    invoke-static {p2, v0}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    int-to-short v0, v1

    int-to-short v1, v3

    invoke-static {p1, p2, v0, v1}, Le/a/b/b/b/n;->v(Le/a/b/f/a;SSS)V

    return-void
.end method
