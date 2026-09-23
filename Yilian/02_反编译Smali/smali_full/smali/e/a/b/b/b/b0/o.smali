.class public final Le/a/b/b/b/b0/o;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/o;

    invoke-direct {v0}, Le/a/b/b/b/b0/o;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/o;->a:Le/a/b/b/b/n;

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
    .locals 3

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v2

    .line 3
    iget v2, v2, Le/a/b/d/b/k;->a:I

    .line 4
    invoke-static {v2}, Le/a/b/b/b/n;->q(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 5
    iget p1, p1, Le/a/b/d/b/k;->a:I

    .line 6
    invoke-static {p1}, Le/a/b/b/b/n;->s(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/a/b/b/b/h;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public k(Le/a/b/b/b/h;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    instance-of p1, p1, Le/a/b/b/b/x;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p1, p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 5
    iget p1, p1, Le/a/b/d/b/k;->a:I

    .line 6
    invoke-static {p1}, Le/a/b/b/b/n;->q(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p1

    .line 7
    iget p1, p1, Le/a/b/d/b/k;->a:I

    .line 8
    invoke-static {p1}, Le/a/b/b/b/n;->s(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 2

    .line 1
    iget-object v0, p2, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v1

    .line 3
    iget v1, v1, Le/a/b/d/b/k;->a:I

    .line 4
    invoke-static {p2, v1}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    .line 5
    iget v0, v0, Le/a/b/d/b/k;->a:I

    int-to-short v0, v0

    .line 6
    invoke-static {p1, p2, v0}, Le/a/b/b/b/n;->u(Le/a/b/f/a;SS)V

    return-void
.end method
