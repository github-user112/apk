.class public final Le/a/b/b/c/t0;
.super Le/a/b/b/c/h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/a/b/b/c/h0;",
        ">",
        "Le/a/b/b/c/h0;"
    }
.end annotation


# instance fields
.field public final e:Le/a/b/b/c/z;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/b/c/z;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b/b/c/z;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Le/a/b/b/c/t0;->n(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    .line 1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/c/h0;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Le/a/b/b/c/h0;->c()I

    move-result v1

    mul-int v1, v1, v2

    invoke-static {p2}, Le/a/b/b/c/t0;->n(Ljava/util/List;)I

    move-result v2

    add-int/2addr v2, v1

    .line 2
    invoke-direct {p0, v0, v2}, Le/a/b/b/c/h0;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p2, p0, Le/a/b/b/c/t0;->f:Ljava/util/List;

    iput-object p1, p0, Le/a/b/b/c/t0;->e:Le/a/b/b/c/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "itemType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/b/b/c/h0;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/b/b/c/h0;

    .line 1
    iget p0, p0, Le/a/b/b/c/h0;->a:I

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "items == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.size() == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 2

    iget-object v0, p0, Le/a/b/b/c/t0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/c/h0;

    invoke-virtual {v1, p1}, Le/a/b/b/c/y;->a(Le/a/b/b/c/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/t0;->e:Le/a/b/b/c/z;

    return-object v0
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 7

    .line 1
    iget v0, p0, Le/a/b/b/c/h0;->a:I

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Le/a/b/b/c/t0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/c/h0;

    invoke-virtual {v4}, Le/a/b/b/c/h0;->c()I

    move-result v5

    if-eqz v3, :cond_0

    .line 3
    iget v1, v4, Le/a/b/b/c/h0;->a:I

    const/4 v2, 0x0

    move v2, v1

    move v1, v5

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    if-ne v5, v1, :cond_2

    iget v6, v4, Le/a/b/b/c/h0;->a:I

    if-ne v6, v2, :cond_1

    .line 4
    :goto_1
    invoke-virtual {v4, p1, p2}, Le/a/b/b/c/h0;->j(Le/a/b/b/c/l0;I)I

    move-result p2

    add-int/2addr p2, v5

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "item alignment mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "item size mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 4

    iget-object v0, p0, Le/a/b/b/c/t0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v3, p0, Le/a/b/b/c/t0;->e:Le/a/b/b/c/z;

    .line 2
    iget-object v3, v3, Le/a/b/b/c/z;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, p2, v1}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_0
    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    iget-object v0, p0, Le/a/b/b/c/t0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/c/h0;

    invoke-virtual {v1, p1, p2}, Le/a/b/b/c/h0;->d(Le/a/b/b/c/m;Le/a/b/f/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Le/a/b/b/c/t0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Le/a/b/b/c/t0;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
