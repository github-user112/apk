.class public final Le/a/b/b/b/b0/e;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/e;

    invoke-direct {v0}, Le/a/b/b/b/b0/e;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/e;->a:Le/a/b/b/b/n;

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

    const/4 v0, 0x1

    return v0
.end method

.method public f(Le/a/b/b/b/h;)Ljava/util/BitSet;
    .locals 8

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v3

    .line 3
    iget v3, v3, Le/a/b/d/b/k;->a:I

    const/4 v4, 0x1

    .line 4
    invoke-virtual {p1, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v5

    .line 5
    iget v5, v5, Le/a/b/d/b/k;->a:I

    .line 6
    iget-object v6, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    if-eq v6, v1, :cond_2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    if-eq v3, v5, :cond_0

    .line 7
    invoke-virtual {v0, v2, v2}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Le/a/b/b/b/n;->r(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :goto_0
    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 8
    iget p1, p1, Le/a/b/d/b/k;->a:I

    .line 9
    invoke-static {p1}, Le/a/b/b/b/n;->r(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    invoke-static {v3}, Le/a/b/b/b/n;->r(I)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/BitSet;->set(IZ)V

    invoke-static {v5}, Le/a/b/b/b/n;->r(I)Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Ljava/util/BitSet;->set(IZ)V

    :goto_1
    return-object v0
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    invoke-virtual {v2}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/a/b/b/b/h;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public k(Le/a/b/b/b/h;)Z
    .locals 5

    instance-of v0, p1, Le/a/b/b/b/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    invoke-virtual {p1, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 4
    iget v4, v0, Le/a/b/d/b/k;->a:I

    .line 5
    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 6
    iget p1, p1, Le/a/b/d/b/k;->a:I

    if-eq v4, p1, :cond_3

    return v1

    .line 7
    :cond_2
    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    invoke-virtual {p1, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 8
    :cond_3
    iget p1, v0, Le/a/b/d/b/k;->a:I

    .line 9
    invoke-static {p1}, Le/a/b/b/b/n;->r(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget p1, v2, Le/a/b/d/b/k;->a:I

    .line 11
    invoke-static {p1}, Le/a/b/b/b/n;->r(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 3

    .line 1
    iget-object v0, p2, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v2, v1, -0x2

    .line 3
    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 4
    iget v2, v2, Le/a/b/d/b/k;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 6
    iget v0, v0, Le/a/b/d/b/k;->a:I

    .line 7
    invoke-static {v2, v0}, Le/a/b/b/b/n;->n(II)I

    move-result v0

    invoke-static {p2, v0}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    .line 8
    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1, p2}, Le/a/b/f/c;->l(I)V

    return-void
.end method
