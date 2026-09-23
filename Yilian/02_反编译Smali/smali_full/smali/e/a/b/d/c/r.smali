.class public abstract Le/a/b/d/c/r;
.super Le/a/b/d/c/x;
.source ""


# instance fields
.field public final a:Le/a/b/d/c/w;

.field public final b:Le/a/b/d/c/t;


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V
    .locals 0

    invoke-direct {p0}, Le/a/b/d/c/x;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    iput-object p2, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    invoke-virtual {v1}, Le/a/b/d/c/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    invoke-virtual {v1}, Le/a/b/d/c/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Le/a/b/d/c/a;)I
    .locals 2

    check-cast p1, Le/a/b/d/c/r;

    iget-object v0, p0, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    iget-object v1, p1, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    invoke-virtual {v0, v1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 1
    iget-object v0, v0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    .line 2
    iget-object p1, p1, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 3
    iget-object p1, p1, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    .line 4
    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Le/a/b/d/c/r;

    iget-object v1, p0, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    iget-object v2, p1, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    invoke-virtual {v1, v2}, Le/a/b/d/c/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    iget-object p1, p1, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    invoke-virtual {v1, p1}, Le/a/b/d/c/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    invoke-virtual {v0}, Le/a/b/d/c/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    invoke-virtual {v1}, Le/a/b/d/c/t;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/d/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
