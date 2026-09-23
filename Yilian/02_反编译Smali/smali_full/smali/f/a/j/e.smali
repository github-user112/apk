.class public final Lf/a/j/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "V:",
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

.field public final b:Ljava/lang/String;

.field public final c:Le/a/b/d/c/t;

.field public final d:Le/a/b/d/c/j;


# direct methods
.method public constructor <init>(Lf/a/j/k;Lf/a/j/k;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/k<",
            "TD;>;",
            "Lf/a/j/k<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Lf/a/j/e;->a:Lf/a/j/k;

    iput-object p3, p0, Lf/a/j/e;->b:Ljava/lang/String;

    new-instance v0, Le/a/b/d/c/t;

    new-instance v1, Le/a/b/d/c/v;

    invoke-direct {v1, p3}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    new-instance p3, Le/a/b/d/c/v;

    iget-object p2, p2, Lf/a/j/k;->a:Ljava/lang/String;

    invoke-direct {p3, p2}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Le/a/b/d/c/t;-><init>(Le/a/b/d/c/v;Le/a/b/d/c/v;)V

    iput-object v0, p0, Lf/a/j/e;->c:Le/a/b/d/c/t;

    new-instance p2, Le/a/b/d/c/j;

    iget-object p1, p1, Lf/a/j/k;->c:Le/a/b/d/c/w;

    invoke-direct {p2, p1, v0}, Le/a/b/d/c/j;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    iput-object p2, p0, Lf/a/j/e;->d:Le/a/b/d/c/j;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lf/a/j/e;

    if-eqz v0, :cond_0

    check-cast p1, Lf/a/j/e;

    iget-object v0, p1, Lf/a/j/e;->a:Lf/a/j/k;

    iget-object v1, p0, Lf/a/j/e;->a:Lf/a/j/k;

    invoke-virtual {v0, v1}, Lf/a/j/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lf/a/j/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lf/a/j/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lf/a/j/e;->a:Lf/a/j/k;

    invoke-virtual {v0}, Lf/a/j/k;->hashCode()I

    move-result v0

    iget-object v1, p0, Lf/a/j/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/a/j/e;->a:Lf/a/j/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/j/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
