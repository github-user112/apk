.class public final Le/a/b/b/c/a0;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/b/c/z;

.field public final f:Le/a/b/b/c/l0;

.field public final g:Le/a/b/b/c/y;

.field public final h:I


# direct methods
.method public constructor <init>(Le/a/b/b/c/l0;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    sget-object v0, Le/a/b/b/c/z;->k:Le/a/b/b/c/z;

    iput-object v0, p0, Le/a/b/b/c/a0;->e:Le/a/b/b/c/z;

    iput-object p1, p0, Le/a/b/b/c/a0;->f:Le/a/b/b/c/l0;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/a0;->g:Le/a/b/b/c/y;

    const/4 p1, 0x1

    iput p1, p0, Le/a/b/b/c/a0;->h:I

    return-void
.end method

.method public constructor <init>(Le/a/b/b/c/z;Le/a/b/b/c/l0;Le/a/b/b/c/y;Le/a/b/b/c/y;I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-lez p5, :cond_0

    iput-object p1, p0, Le/a/b/b/c/a0;->e:Le/a/b/b/c/z;

    iput-object p2, p0, Le/a/b/b/c/a0;->f:Le/a/b/b/c/l0;

    iput-object p3, p0, Le/a/b/b/c/a0;->g:Le/a/b/b/c/y;

    iput p5, p0, Le/a/b/b/c/a0;->h:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n([Le/a/b/b/c/l0;Le/a/b/b/c/g0;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7

    .line 1
    iget-object v2, v1, Le/a/b/b/c/g0;->f:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v12, v0, v5

    invoke-virtual {v12}, Le/a/b/b/c/l0;->d()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Le/a/b/b/c/y;

    invoke-virtual {v14}, Le/a/b/b/c/y;->b()Le/a/b/b/c/z;

    move-result-object v15

    if-eq v15, v7, :cond_1

    if-eqz v11, :cond_0

    new-instance v8, Le/a/b/b/c/a0;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Le/a/b/b/c/a0;-><init>(Le/a/b/b/c/z;Le/a/b/b/c/l0;Le/a/b/b/c/y;Le/a/b/b/c/y;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_3

    new-instance v4, Le/a/b/b/c/a0;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Le/a/b/b/c/a0;-><init>(Le/a/b/b/c/z;Le/a/b/b/c/l0;Le/a/b/b/c/y;Le/a/b/b/c/y;I)V

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-ne v12, v1, :cond_4

    new-instance v4, Le/a/b/b/c/a0;

    invoke-direct {v4, v1}, Le/a/b/b/c/a0;-><init>(Le/a/b/b/c/l0;)V

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Le/a/b/b/c/t0;

    sget-object v3, Le/a/b/b/c/z;->k:Le/a/b/b/c/z;

    invoke-direct {v0, v3, v2}, Le/a/b/b/c/t0;-><init>(Le/a/b/b/c/z;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 0

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->v:Le/a/b/b/c/z;

    return-object v0
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 6

    iget-object p1, p0, Le/a/b/b/c/a0;->e:Le/a/b/b/c/z;

    .line 1
    iget p1, p1, Le/a/b/b/c/z;->a:I

    .line 2
    iget-object v0, p0, Le/a/b/b/c/a0;->g:Le/a/b/b/c/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/b/c/a0;->f:Le/a/b/b/c/l0;

    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/a/b/b/c/a0;->f:Le/a/b/b/c/l0;

    invoke-virtual {v1, v0}, Le/a/b/b/c/l0;->a(Le/a/b/b/c/y;)I

    move-result v0

    :goto_0
    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/b/c/a0;->e:Le/a/b/b/c/z;

    .line 3
    iget-object v3, v3, Le/a/b/b/c/z;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/b/c/a0;->e:Le/a/b/b/c/z;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v1}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const-string v1, "  unused: 0"

    invoke-virtual {p2, v3, v1}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/a/b/b/c/a0;->h:I

    const/4 v4, 0x4

    const-string v5, "  offset: "

    invoke-static {v3, v1, p2, v4, v5}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, p2, v4}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_1
    invoke-virtual {p2, p1}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p2, v2}, Le/a/b/f/c;->l(I)V

    iget p1, p0, Le/a/b/b/c/a0;->h:I

    invoke-virtual {p2, p1}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Le/a/b/b/c/a0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Le/a/b/b/c/a0;->f:Le/a/b/b/c/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Le/a/b/b/c/a0;->e:Le/a/b/b/c/z;

    .line 1
    iget-object v1, v1, Le/a/b/b/c/z;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
