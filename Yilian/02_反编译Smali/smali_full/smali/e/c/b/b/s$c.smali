.class public Le/c/b/b/s$c;
.super Le/c/b/b/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/s<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Le/c/b/b/s;


# direct methods
.method public constructor <init>(Le/c/b/b/s;II)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/s$c;->e:Le/c/b/b/s;

    invoke-direct {p0}, Le/c/b/b/s;-><init>()V

    iput p2, p0, Le/c/b/b/s$c;->c:I

    iput p3, p0, Le/c/b/b/s$c;->d:I

    return-void
.end method


# virtual methods
.method public c()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/c/b/b/s$c;->e:Le/c/b/b/s;

    invoke-virtual {v0}, Le/c/b/b/q;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Le/c/b/b/s$c;->e:Le/c/b/b/s;

    invoke-virtual {v0}, Le/c/b/b/q;->e()I

    move-result v0

    iget v1, p0, Le/c/b/b/s$c;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Le/c/b/b/s$c;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Le/c/b/b/s$c;->e:Le/c/b/b/s;

    invoke-virtual {v0}, Le/c/b/b/q;->e()I

    move-result v0

    iget v1, p0, Le/c/b/b/s$c;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Le/c/b/b/s$c;->d:I

    invoke-static {p1, v0}, Le/c/b/a/f;->c(II)I

    iget-object v0, p0, Le/c/b/b/s$c;->e:Le/c/b/b/s;

    iget v1, p0, Le/c/b/b/s$c;->c:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/c/b/b/s;->n()Le/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-super {p0}, Le/c/b/b/s;->n()Le/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-super {p0, p1}, Le/c/b/b/s;->o(I)Le/c/b/b/a;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Le/c/b/b/s$c;->d:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/c/b/b/s$c;->u(II)Le/c/b/b/s;

    move-result-object p1

    return-object p1
.end method

.method public u(II)Le/c/b/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Le/c/b/b/s<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Le/c/b/b/s$c;->d:I

    invoke-static {p1, p2, v0}, Le/c/b/a/f;->f(III)V

    iget-object v0, p0, Le/c/b/b/s$c;->e:Le/c/b/b/s;

    iget v1, p0, Le/c/b/b/s$c;->c:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Le/c/b/b/s;->u(II)Le/c/b/b/s;

    move-result-object p1

    return-object p1
.end method
