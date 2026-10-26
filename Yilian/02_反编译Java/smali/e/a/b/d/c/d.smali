.class public abstract Le/a/b/d/c/d;
.super Le/a/b/d/c/r;
.source ""


# instance fields
.field public final c:Le/a/b/d/d/a;

.field public d:Le/a/b/d/d/a;


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/a/b/d/c/r;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    .line 1
    iget-object p1, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 2
    iget-object p1, p1, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    .line 3
    iget-object p1, p1, Le/a/b/d/c/v;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Le/a/b/d/d/a;->c(Ljava/lang/String;)Le/a/b/d/d/a;

    move-result-object p1

    iput-object p1, p0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/d/c/d;->d:Le/a/b/d/d/a;

    return-void
.end method


# virtual methods
.method public final d(Le/a/b/d/c/a;)I
    .locals 1

    invoke-super {p0, p1}, Le/a/b/d/c/r;->d(Le/a/b/d/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Le/a/b/d/c/d;

    iget-object v0, p0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    iget-object p1, p1, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    invoke-virtual {v0, p1}, Le/a/b/d/d/a;->a(Le/a/b/d/d/a;)I

    move-result p1

    return p1
.end method

.method public final f(Z)I
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    goto :goto_2

    :cond_0
    iget-object p1, p0, Le/a/b/d/c/d;->d:Le/a/b/d/d/a;

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    .line 3
    iget-object p1, p1, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    .line 4
    iget-object v0, p0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    if-eqz v0, :cond_2

    const-string v1, "("

    .line 5
    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p1, Le/a/b/d/d/c;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Le/a/b/d/d/a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 8
    iget-object v3, v2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v3, v3

    .line 9
    new-instance v4, Le/a/b/d/d/b;

    add-int/lit8 v5, v3, 0x1

    invoke-direct {v4, v5}, Le/a/b/d/d/b;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v6, p1, 0x1

    .line 10
    iget-object v7, v2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    aget-object p1, v7, p1

    .line 11
    invoke-virtual {v4, v6, p1}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    move p1, v6

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v5, v4, Le/a/b/f/i;->a:Z

    .line 13
    new-instance p1, Le/a/b/d/d/a;

    iget-object v0, v0, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    invoke-direct {p1, v1, v0, v4}, Le/a/b/d/d/a;-><init>(Ljava/lang/String;Le/a/b/d/d/c;Le/a/b/d/d/b;)V

    invoke-static {p1}, Le/a/b/d/d/a;->d(Le/a/b/d/d/a;)Le/a/b/d/d/a;

    move-result-object p1

    .line 14
    iput-object p1, p0, Le/a/b/d/c/d;->d:Le/a/b/d/d/a;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/b/d/c/d;->d:Le/a/b/d/d/a;

    .line 17
    :goto_2
    iget-object p1, p1, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 18
    invoke-virtual {p1}, Le/a/b/d/d/b;->k()I

    move-result p1

    return p1
.end method

.method public final getType()Le/a/b/d/d/c;
    .locals 1

    iget-object v0, p0, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    .line 1
    iget-object v0, v0, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    return-object v0
.end method
