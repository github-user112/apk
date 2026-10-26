.class public Le/c/b/b/f$i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/f$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Le/c/b/b/f$i;


# direct methods
.method public constructor <init>(Le/c/b/b/f$i;)V
    .locals 1

    iput-object p1, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    iget-object v0, v0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    iput-object v0, p0, Le/c/b/b/f$i$a;->b:Ljava/util/Collection;

    iget-object p1, p1, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :goto_0
    iput-object p1, p0, Le/c/b/b/f$i$a;->a:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Le/c/b/b/f$i;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    iget-object p1, p1, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    iput-object p1, p0, Le/c/b/b/f$i$a;->b:Ljava/util/Collection;

    iput-object p2, p0, Le/c/b/b/f$i$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    invoke-virtual {v0}, Le/c/b/b/f$i;->b()V

    iget-object v0, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    iget-object v0, v0, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    iget-object v1, p0, Le/c/b/b/f$i$a;->b:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$i$a;->a()V

    iget-object v0, p0, Le/c/b/b/f$i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$i$a;->a()V

    iget-object v0, p0, Le/c/b/b/f$i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Le/c/b/b/f$i$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    iget-object v0, v0, Le/c/b/b/f$i;->e:Le/c/b/b/f;

    invoke-static {v0}, Le/c/b/b/f;->g(Le/c/b/b/f;)I

    iget-object v0, p0, Le/c/b/b/f$i$a;->c:Le/c/b/b/f$i;

    invoke-virtual {v0}, Le/c/b/b/f$i;->c()V

    return-void
.end method
