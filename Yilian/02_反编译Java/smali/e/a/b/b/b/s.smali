.class public final Le/a/b/b/b/s;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/a/b/b/a;

.field public final b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public final h:I


# direct methods
.method public constructor <init>(Le/a/b/b/a;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/b/b/s;->a:Le/a/b/b/a;

    iput p3, p0, Le/a/b/b/b/s;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Le/a/b/b/b/s;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/a/b/b/b/s;->d:Z

    iput-boolean p1, p0, Le/a/b/b/b/s;->e:Z

    iput p4, p0, Le/a/b/b/b/s;->h:I

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/b/h;)V
    .locals 4

    iget-object v0, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1
    iget-boolean v0, p0, Le/a/b/b/b/s;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 3
    iget v0, v0, Le/a/b/d/b/q;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/b/b/b/s;->d:Z

    :cond_0
    iget-boolean v0, p0, Le/a/b/b/b/s;->e:Z

    if-nez v0, :cond_4

    .line 5
    instance-of v0, p1, Le/a/b/b/b/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Le/a/b/b/b/p;

    .line 6
    iget-object p1, p1, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    .line 7
    invoke-virtual {p1}, Le/a/b/d/b/m;->i()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    throw v1

    .line 9
    :cond_2
    instance-of v0, p1, Le/a/b/b/b/q;

    if-eqz v0, :cond_4

    check-cast p1, Le/a/b/b/b/q;

    .line 10
    iget-object p1, p1, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    if-nez p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Le/a/b/b/b/s;->b:I

    iget v2, p0, Le/a/b/b/b/s;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Le/a/b/b/b/s;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Le/a/b/b/b/s;->h:I

    sub-int v2, v1, v2

    new-instance v3, Le/a/b/e/a;

    invoke-direct {v3, v1}, Le/a/b/e/a;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    const/4 v6, 0x1

    if-lt v5, v2, :cond_0

    add-int v7, v5, p1

    invoke-virtual {v3, v5, v7, v6}, Le/a/b/e/a;->a(III)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5, v5, v6}, Le/a/b/e/a;->a(III)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    iget-object v1, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/b/h;

    instance-of v2, v1, Le/a/b/b/b/e;

    if-nez v2, :cond_2

    iget-object v2, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Le/a/b/b/b/h;->g(Le/a/b/e/a;)Le/a/b/b/b/h;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2
    :cond_3
    iget v0, p0, Le/a/b/b/b/s;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Le/a/b/b/b/s;->g:I

    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/b/h;

    instance-of v3, v2, Le/a/b/b/b/e;

    if-nez v3, :cond_0

    iget-object v3, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Le/a/b/b/b/h;->i(I)Le/a/b/b/b/h;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_1
    iget v0, p0, Le/a/b/b/b/s;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Le/a/b/b/b/s;->f:I

    return-void
.end method

.method public final d(Le/a/b/b/b/h;)Le/a/b/b/b/j;
    .locals 4

    .line 1
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v1, p1, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 3
    iget-boolean v1, v1, Le/a/b/b/b/j;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v1, v3}, Le/a/b/d/b/l;->m(IZLjava/util/BitSet;)Le/a/b/d/b/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/b/b/b/h;->j(Le/a/b/d/b/l;)Le/a/b/b/b/h;

    move-result-object v0

    .line 5
    iget-object v1, p1, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 6
    invoke-virtual {p0, v0, v1}, Le/a/b/b/b/s;->e(Le/a/b/b/b/h;Le/a/b/b/b/j;)Le/a/b/b/b/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Le/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No expanded opcode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Le/a/b/b/b/h;Le/a/b/b/b/j;)Le/a/b/b/b/j;
    .locals 2

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p2, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b/b/b/n;->k(Le/a/b/b/b/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b/b/b/s;->a:Le/a/b/b/a;

    iget-boolean v0, v0, Le/a/b/b/a;->c:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p2, Le/a/b/b/b/j;->a:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p2}, Le/a/b/b/b/k;->a(Le/a/b/b/b/j;)Le/a/b/b/b/j;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public final f([Le/a/b/b/b/j;)Z
    .locals 14

    iget v0, p0, Le/a/b/b/b/s;->f:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Le/a/b/b/b/s;->f:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    iget-object v6, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/b/b/h;

    aget-object v7, p1, v5

    invoke-virtual {p0, v6, v7}, Le/a/b/b/b/s;->e(Le/a/b/b/b/h;Le/a/b/b/b/j;)Le/a/b/b/b/j;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v6}, Le/a/b/b/b/s;->d(Le/a/b/b/b/h;)Le/a/b/b/b/j;

    move-result-object v7

    .line 2
    iget-object v7, v7, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 3
    invoke-virtual {v7, v6}, Le/a/b/b/b/n;->f(Le/a/b/b/b/h;)Ljava/util/BitSet;

    move-result-object v7

    .line 4
    iget-object v9, v6, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 5
    iget-boolean v9, v9, Le/a/b/b/b/j;->e:Z

    .line 6
    iget-object v10, v6, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 7
    iget-object v10, v10, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v10, v10

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v7, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v6, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    invoke-virtual {v11, v1}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v11

    invoke-virtual {v11}, Le/a/b/d/b/k;->h()I

    move-result v11

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-ge v9, v10, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v6, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    invoke-virtual {v13, v9}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v13

    invoke-virtual {v13}, Le/a/b/d/b/k;->h()I

    move-result v13

    add-int/2addr v12, v13

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-le v6, v4, :cond_5

    move v4, v6

    goto :goto_4

    :cond_4
    if-ne v7, v8, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    :goto_4
    aput-object v8, p1, v5

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-lt v0, v4, :cond_7

    .line 10
    iput v0, p0, Le/a/b/b/b/s;->f:I

    return v2

    :cond_7
    sub-int v0, v4, v0

    iget-object v2, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_9

    iget-object v5, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/b/b/h;

    instance-of v6, v5, Le/a/b/b/b/e;

    if-nez v6, :cond_8

    iget-object v6, p0, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Le/a/b/b/b/h;->i(I)Le/a/b/b/b/h;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x1

    move v0, v4

    goto/16 :goto_0
.end method
