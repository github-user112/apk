.class public Le/c/b/b/f$j$a;
.super Le/c/b/b/f$i$a;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/f$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/f<",
        "TK;TV;>.i.a;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Le/c/b/b/f$j;


# direct methods
.method public constructor <init>(Le/c/b/b/f$j;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/f$j$a;->d:Le/c/b/b/f$j;

    invoke-direct {p0, p1}, Le/c/b/b/f$i$a;-><init>(Le/c/b/b/f$i;)V

    return-void
.end method

.method public constructor <init>(Le/c/b/b/f$j;I)V
    .locals 1

    iput-object p1, p0, Le/c/b/b/f$j$a;->d:Le/c/b/b/f$j;

    .line 1
    iget-object v0, p1, Le/c/b/b/f$i;->b:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Le/c/b/b/f$i$a;-><init>(Le/c/b/b/f$i;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/f$j$a;->d:Le/c/b/b/f$j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Le/c/b/b/f$j$a;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Le/c/b/b/f$j$a;->d:Le/c/b/b/f$j;

    iget-object p1, p1, Le/c/b/b/f$j;->f:Le/c/b/b/f;

    invoke-static {p1}, Le/c/b/b/f;->f(Le/c/b/b/f;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/c/b/b/f$j$a;->d:Le/c/b/b/f$j;

    invoke-virtual {p1}, Le/c/b/b/f$i;->a()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/c/b/b/f$i$a;->a()V

    iget-object v0, p0, Le/c/b/b/f$i$a;->a:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/f$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/f$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
