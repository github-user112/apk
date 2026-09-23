.class public final Le/a/b/b/b/b0/x;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/x;

    invoke-direct {v0}, Le/a/b/b/b/b0/x;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/x;->a:Le/a/b/b/b/n;

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

    const/4 v0, 0x5

    return v0
.end method

.method public f(Le/a/b/b/b/h;)Ljava/util/BitSet;
    .locals 2

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 3
    iget p1, p1, Le/a/b/d/b/k;->a:I

    .line 4
    invoke-static {p1}, Le/a/b/b/b/n;->q(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    check-cast p1, Le/a/b/b/b/f;

    .line 3
    iget-object p1, p1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 4
    check-cast p1, Le/a/b/d/c/p;

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

    invoke-static {p1}, Le/a/b/b/b/n;->m(Le/a/b/d/c/p;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/a/b/b/b/h;Z)Ljava/lang/String;
    .locals 0

    check-cast p1, Le/a/b/b/b/f;

    .line 1
    iget-object p1, p1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 2
    check-cast p1, Le/a/b/d/c/p;

    const/16 p2, 0x40

    invoke-static {p1, p2}, Le/a/b/b/b/n;->l(Le/a/b/d/c/p;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Le/a/b/b/b/h;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    instance-of v1, p1, Le/a/b/b/b/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 5
    iget v0, v0, Le/a/b/d/b/k;->a:I

    .line 6
    invoke-static {v0}, Le/a/b/b/b/n;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Le/a/b/b/b/f;

    .line 7
    iget-object p1, p1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 8
    instance-of p1, p1, Le/a/b/d/c/o;

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 6

    .line 1
    iget-object v0, p2, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    move-object v1, p2

    check-cast v1, Le/a/b/b/b/f;

    .line 3
    iget-object v1, v1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 4
    check-cast v1, Le/a/b/d/c/o;

    .line 5
    iget-wide v1, v1, Le/a/b/d/c/o;->a:J

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 7
    iget v0, v0, Le/a/b/d/b/k;->a:I

    .line 8
    invoke-static {p2, v0}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    long-to-int v0, v1

    int-to-short v0, v0

    const/16 v3, 0x10

    shr-long v3, v1, v3

    long-to-int v4, v3

    int-to-short v3, v4

    const/16 v4, 0x20

    shr-long v4, v1, v4

    long-to-int v5, v4

    int-to-short v4, v5

    const/16 v5, 0x30

    shr-long/2addr v1, v5

    long-to-int v2, v1

    int-to-short v1, v2

    .line 9
    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1, p2}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p1, v0}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p1, v3}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p1, v4}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p1, v1}, Le/a/b/f/c;->l(I)V

    return-void
.end method
