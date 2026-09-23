.class public final Le/a/b/b/b/q;
.super Le/a/b/b/b/a0;
.source ""


# instance fields
.field public final e:Le/a/b/d/b/k;


# direct methods
.method public constructor <init>(Le/a/b/d/b/q;Le/a/b/d/b/k;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/b/b/a0;-><init>(Le/a/b/d/b/q;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    invoke-virtual {v0}, Le/a/b/d/b/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Le/a/b/e/a;)Le/a/b/b/b/h;
    .locals 3

    new-instance v0, Le/a/b/b/b/q;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    invoke-virtual {p1, v2}, Le/a/b/e/a;->b(Le/a/b/d/b/k;)Le/a/b/d/b/k;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le/a/b/b/b/q;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/k;)V

    return-object v0
.end method

.method public i(I)Le/a/b/b/b/h;
    .locals 3

    new-instance v0, Le/a/b/b/b/q;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    invoke-virtual {v2, p1}, Le/a/b/d/b/k;->n(I)Le/a/b/d/b/k;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le/a/b/b/b/q;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/k;)V

    return-object v0
.end method

.method public j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 2

    new-instance p1, Le/a/b/b/b/q;

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v1, p0, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    invoke-direct {p1, v0, v1}, Le/a/b/b/b/q;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/k;)V

    return-object p1
.end method
