.class public final Lf/a/j/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lf/a/j/b;

.field public final b:Lf/a/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Le/a/b/d/b/k;


# direct methods
.method public constructor <init>(Lf/a/j/b;Lf/a/j/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/b;",
            "Lf/a/j/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf/a/j/g;->c:I

    iput-object p1, p0, Lf/a/j/g;->a:Lf/a/j/b;

    iput-object p2, p0, Lf/a/j/g;->b:Lf/a/j/k;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iput p1, p0, Lf/a/j/g;->c:I

    iget-object v0, p0, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v0, v0, Lf/a/j/k;->b:Le/a/b/d/d/c;

    .line 1
    invoke-static {p1, v0}, Le/a/b/d/b/k;->i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lf/a/j/g;->d:Le/a/b/d/b/k;

    .line 3
    iget-object p1, p0, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object p1, p1, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-virtual {p1}, Le/a/b/d/d/c;->f()I

    move-result p1

    return p1
.end method

.method public b()Le/a/b/d/b/k;
    .locals 1

    iget-object v0, p0, Lf/a/j/g;->d:Le/a/b/d/b/k;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/j/g;->a:Lf/a/j/b;

    invoke-virtual {v0}, Lf/a/j/b;->g()V

    iget-object v0, p0, Lf/a/j/g;->d:Le/a/b/d/b/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lf/a/j/g;->d:Le/a/b/d/b/k;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "v"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf/a/j/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/j/g;->b:Lf/a/j/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
