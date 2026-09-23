.class public abstract Le/c/b/b/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Le/c/b/b/n;


# direct methods
.method public constructor <init>(Le/c/b/b/n;Le/c/b/b/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    iget p2, p1, Le/c/b/b/n;->f:I

    iput p2, p0, Le/c/b/b/n$b;->a:I

    .line 2
    invoke-virtual {p1}, Le/c/b/b/n;->isEmpty()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput p1, p0, Le/c/b/b/n$b;->b:I

    iput p2, p0, Le/c/b/b/n$b;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Le/c/b/b/n$b;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    iget v0, v0, Le/c/b/b/n;->f:I

    iget v1, p0, Le/c/b/b/n$b;->a:I

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Le/c/b/b/n$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Le/c/b/b/n$b;->b:I

    iput v0, p0, Le/c/b/b/n$b;->c:I

    invoke-virtual {p0, v0}, Le/c/b/b/n$b;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    iget v2, p0, Le/c/b/b/n$b;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 3
    iget v1, v1, Le/c/b/b/n;->h:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 4
    :goto_0
    iput v2, p0, Le/c/b/b/n$b;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 5
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    iget v0, v0, Le/c/b/b/n;->f:I

    iget v1, p0, Le/c/b/b/n$b;->a:I

    if-ne v0, v1, :cond_2

    .line 2
    iget v0, p0, Le/c/b/b/n$b;->c:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ld/s/y;->m(Z)V

    iget v0, p0, Le/c/b/b/n$b;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Le/c/b/b/n$b;->a:I

    iget-object v0, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    iget v1, p0, Le/c/b/b/n$b;->c:I

    invoke-static {v0, v1}, Le/c/b/b/n;->a(Le/c/b/b/n;I)Ljava/lang/Object;

    iget-object v0, p0, Le/c/b/b/n$b;->d:Le/c/b/b/n;

    iget v1, p0, Le/c/b/b/n$b;->b:I

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    add-int/2addr v1, v0

    iput v1, p0, Le/c/b/b/n$b;->b:I

    iput v0, p0, Le/c/b/b/n$b;->c:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
