.class public final Le/c/b/b/u0;
.super Le/c/b/b/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/u<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public transient d:I
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/b/u;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/b/u;-><init>()V

    iput-object p1, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    iput p2, p0, Le/c/b/b/u0;->d:I

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Le/c/b/b/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/w0<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    .line 1
    new-instance v1, Le/c/b/b/v;

    invoke-direct {v1, v0}, Le/c/b/b/v;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Le/c/b/b/u0;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Le/c/b/b/u0;->d:I

    :cond_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/u0;->g()Le/c/b/b/w0;

    move-result-object v0

    return-object v0
.end method

.method public k()Le/c/b/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/s<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    invoke-static {v0}, Le/c/b/b/s;->q(Ljava/lang/Object;)Le/c/b/b/s;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget v0, p0, Le/c/b/b/u0;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/c/b/b/u0;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
