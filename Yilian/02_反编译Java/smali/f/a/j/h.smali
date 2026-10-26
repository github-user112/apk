.class public final Lf/a/j/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lf/a/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/k<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final b:Lf/a/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/k<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Lf/a/j/l;

.field public final e:Le/a/b/d/c/t;

.field public final f:Le/a/b/d/c/s;


# direct methods
.method public constructor <init>(Lf/a/j/k;Lf/a/j/k;Ljava/lang/String;Lf/a/j/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/k<",
            "TD;>;",
            "Lf/a/j/k<",
            "TR;>;",
            "Ljava/lang/String;",
            "Lf/a/j/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Lf/a/j/h;->a:Lf/a/j/k;

    iput-object p2, p0, Lf/a/j/h;->b:Lf/a/j/k;

    iput-object p3, p0, Lf/a/j/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lf/a/j/h;->d:Lf/a/j/l;

    new-instance p2, Le/a/b/d/c/t;

    new-instance p4, Le/a/b/d/c/v;

    invoke-direct {p4, p3}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    new-instance p3, Le/a/b/d/c/v;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/a/j/h;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p4, p3}, Le/a/b/d/c/t;-><init>(Le/a/b/d/c/v;Le/a/b/d/c/v;)V

    iput-object p2, p0, Lf/a/j/h;->e:Le/a/b/d/c/t;

    new-instance p3, Le/a/b/d/c/s;

    iget-object p1, p1, Lf/a/j/k;->c:Le/a/b/d/c/w;

    invoke-direct {p3, p1, p2}, Le/a/b/d/c/s;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    iput-object p3, p0, Lf/a/j/h;->f:Le/a/b/d/c/s;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 4

    const-string v0, "("

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/j/h;->a:Lf/a/j/k;

    iget-object p1, p1, Lf/a/j/k;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lf/a/j/h;->d:Lf/a/j/l;

    iget-object p1, p1, Lf/a/j/l;->a:[Lf/a/j/k;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Lf/a/j/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf/a/j/h;->b:Lf/a/j/k;

    iget-object p1, p1, Lf/a/j/k;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Le/a/b/d/d/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/j/h;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/b/d/d/a;->c(Ljava/lang/String;)Le/a/b/d/d/a;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lf/a/j/h;

    if-eqz v0, :cond_0

    check-cast p1, Lf/a/j/h;

    iget-object v0, p1, Lf/a/j/h;->a:Lf/a/j/k;

    iget-object v1, p0, Lf/a/j/h;->a:Lf/a/j/k;

    invoke-virtual {v0, v1}, Lf/a/j/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lf/a/j/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lf/a/j/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lf/a/j/h;->d:Lf/a/j/l;

    iget-object v1, p0, Lf/a/j/h;->d:Lf/a/j/l;

    invoke-virtual {v0, v1}, Lf/a/j/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lf/a/j/h;->b:Lf/a/j/k;

    iget-object v0, p0, Lf/a/j/h;->b:Lf/a/j/k;

    invoke-virtual {p1, v0}, Lf/a/j/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lf/a/j/h;->a:Lf/a/j/k;

    invoke-virtual {v0}, Lf/a/j/k;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/a/j/h;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lf/a/j/h;->d:Lf/a/j/l;

    invoke-virtual {v0}, Lf/a/j/l;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/a/j/h;->b:Lf/a/j/k;

    invoke-virtual {v1}, Lf/a/j/k;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/a/j/h;->a:Lf/a/j/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/j/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/j/h;->d:Lf/a/j/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
