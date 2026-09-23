.class public final Le/a/b/b/c/n0;
.super Le/a/b/b/c/x;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Le/a/b/d/c/v;

.field public c:Le/a/b/b/c/m0;


# direct methods
.method public constructor <init>(Le/a/b/d/c/v;)V
    .locals 1

    invoke-direct {p0}, Le/a/b/b/c/x;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/n0;->c:Le/a/b/b/c/m0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 2

    iget-object v0, p0, Le/a/b/b/c/n0;->c:Le/a/b/b/c/m0;

    if-nez v0, :cond_0

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->e:Le/a/b/b/c/g0;

    .line 2
    new-instance v0, Le/a/b/b/c/m0;

    iget-object v1, p0, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    invoke-direct {v0, v1}, Le/a/b/b/c/m0;-><init>(Le/a/b/d/c/v;)V

    iput-object v0, p0, Le/a/b/b/c/n0;->c:Le/a/b/b/c/m0;

    invoke-virtual {p1, v0}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    :cond_0
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->e:Le/a/b/b/c/z;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/a/b/b/c/n0;

    iget-object v0, p0, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    iget-object p1, p1, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 6

    iget-object p1, p0, Le/a/b/b/c/n0;->c:Le/a/b/b/c/m0;

    invoke-virtual {p1}, Le/a/b/b/c/h0;->g()I

    move-result p1

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/x;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    .line 1
    invoke-virtual {v1}, Le/a/b/d/c/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x62

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const/16 v2, 0x5f

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  string_data_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1, p2, v0}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_1
    invoke-virtual {p2, p1}, Le/a/b/f/c;->k(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Le/a/b/b/c/n0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Le/a/b/b/c/n0;

    iget-object v0, p0, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    iget-object p1, p1, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    invoke-virtual {v0, p1}, Le/a/b/d/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/n0;->b:Le/a/b/d/c/v;

    invoke-virtual {v0}, Le/a/b/d/c/v;->hashCode()I

    move-result v0

    return v0
.end method
