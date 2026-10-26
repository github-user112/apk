.class public final Le/a/b/b/b/b0/g;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/g;

    invoke-direct {v0}, Le/a/b/b/b/b0/g;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/g;->a:Le/a/b/b/b/n;

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

    const/4 v0, 0x2

    return v0
.end method

.method public f(Le/a/b/b/b/h;)Ljava/util/BitSet;
    .locals 5

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 3
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v3

    .line 4
    iget v3, v3, Le/a/b/d/b/k;->a:I

    .line 5
    invoke-static {v3}, Le/a/b/b/b/n;->q(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 6
    iget v0, v0, Le/a/b/d/b/k;->a:I

    .line 7
    invoke-virtual {p1, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 8
    iget p1, p1, Le/a/b/d/b/k;->a:I

    if-ne v0, p1, :cond_1

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Le/a/b/b/b/n;->h(Le/a/b/b/b/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .locals 5

    instance-of v0, p1, Le/a/b/b/b/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v2, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 4
    iget v4, v2, Le/a/b/d/b/k;->a:I

    .line 5
    invoke-virtual {v0, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 6
    iget v0, v0, Le/a/b/d/b/k;->a:I

    if-eq v4, v0, :cond_3

    return v1

    .line 7
    :cond_2
    invoke-virtual {v0, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 8
    :cond_3
    iget v0, v2, Le/a/b/d/b/k;->a:I

    .line 9
    invoke-static {v0}, Le/a/b/b/b/n;->q(I)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    check-cast p1, Le/a/b/b/b/f;

    invoke-virtual {p1}, Le/a/b/b/b/f;->l()I

    move-result v0

    .line 10
    iget-object p1, p1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 11
    invoke-static {v0}, Le/a/b/b/b/n;->s(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    instance-of v0, p1, Le/a/b/d/c/w;

    if-nez v0, :cond_6

    instance-of v0, p1, Le/a/b/d/c/j;

    if-nez v0, :cond_6

    instance-of p1, p1, Le/a/b/d/c/v;

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 3

    .line 1
    iget-object v0, p2, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    move-object v1, p2

    check-cast v1, Le/a/b/b/b/f;

    invoke-virtual {v1}, Le/a/b/b/b/f;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 3
    iget v0, v0, Le/a/b/d/b/k;->a:I

    .line 4
    invoke-static {p2, v0}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    int-to-short v0, v1

    invoke-static {p1, p2, v0}, Le/a/b/b/b/n;->u(Le/a/b/f/a;SS)V

    return-void
.end method
