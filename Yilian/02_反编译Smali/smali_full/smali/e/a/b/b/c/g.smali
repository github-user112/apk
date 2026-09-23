.class public final Le/a/b/b/c/g;
.super Le/a/b/b/c/s0;
.source ""


# instance fields
.field public final f:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Le/a/b/d/d/c;",
            "Le/a/b/b/c/f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/c/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/b/c/m;)V
    .locals 2

    const-string v0, "class_defs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Le/a/b/b/c/s0;-><init>(Ljava/lang/String;Le/a/b/b/c/m;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/g;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Le/a/b/b/c/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/b/b/c/g;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Le/a/b/b/c/g;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/d/d/c;

    sub-int v4, v0, v2

    invoke-virtual {p0, v3, v2, v4}, Le/a/b/b/c/g;->m(Le/a/b/d/d/c;II)I

    move-result v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Le/a/b/d/d/c;II)I
    .locals 5

    iget-object v0, p0, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/b/c/f;

    if-eqz v0, :cond_6

    .line 1
    iget v1, v0, Le/a/b/b/c/x;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    if-ltz p3, :cond_5

    add-int/lit8 p3, p3, -0x1

    .line 2
    iget-object p1, v0, Le/a/b/b/c/f;->d:Le/a/b/d/c/w;

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p1, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Le/a/b/b/c/g;->m(Le/a/b/d/d/c;II)I

    move-result p2

    .line 5
    :cond_2
    iget-object p1, v0, Le/a/b/b/c/f;->e:Le/a/b/b/c/r0;

    if-nez p1, :cond_3

    sget-object p1, Le/a/b/d/d/b;->c:Le/a/b/d/d/b;

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p1, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    .line 7
    :goto_1
    move-object v1, p1

    check-cast v1, Le/a/b/f/d;

    .line 8
    iget-object v1, v1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    :goto_2
    if-ge v2, v1, :cond_4

    .line 9
    invoke-interface {p1, v2}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v4

    invoke-virtual {p0, v4, p2, p3}, Le/a/b/b/c/g;->m(Le/a/b/d/d/c;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p2}, Le/a/b/b/c/x;->g(I)V

    iget-object p1, p0, Le/a/b/b/c/g;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v3

    return p2

    :cond_5
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "class circularity with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_3
    return p2
.end method
