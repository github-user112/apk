.class public final Le/a/b/b/c/h;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/d/c/s;

.field public final f:Le/a/b/b/b/g;

.field public g:Le/a/b/b/c/d;

.field public final h:Z

.field public final i:Le/a/b/d/d/e;

.field public j:Le/a/b/b/c/l;


# direct methods
.method public constructor <init>(Le/a/b/d/c/s;Le/a/b/b/b/g;ZLe/a/b/d/d/e;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    if-eqz p4, :cond_0

    iput-object p1, p0, Le/a/b/b/c/h;->e:Le/a/b/d/c/s;

    iput-object p2, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    iput-boolean p3, p0, Le/a/b/b/c/h;->h:Z

    iput-object p4, p0, Le/a/b/b/c/h;->i:Le/a/b/d/d/e;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    iput-object p1, p0, Le/a/b/b/c/h;->j:Le/a/b/b/c/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 12

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->m:Le/a/b/b/c/g0;

    .line 2
    iget-object v1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 3
    iget-object v2, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 4
    iget v3, v2, Le/a/b/b/b/g;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    iget-object v2, v2, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    .line 5
    iget-boolean v2, v2, Le/a/b/b/b/s;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 7
    iget-object v2, v2, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    .line 8
    iget-boolean v2, v2, Le/a/b/b/b/s;->e:Z

    if-eqz v2, :cond_2

    .line 9
    :cond_1
    new-instance v2, Le/a/b/b/c/l;

    iget-object v3, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    iget-boolean v6, p0, Le/a/b/b/c/h;->h:Z

    iget-object v7, p0, Le/a/b/b/c/h;->e:Le/a/b/d/c/s;

    invoke-direct {v2, v3, v6, v7}, Le/a/b/b/c/l;-><init>(Le/a/b/b/b/g;ZLe/a/b/d/c/s;)V

    iput-object v2, p0, Le/a/b/b/c/h;->j:Le/a/b/b/c/l;

    invoke-virtual {v0, v2}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    :cond_2
    iget-object v0, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 10
    iget-object v0, v0, Le/a/b/b/b/g;->c:Le/a/b/b/b/b;

    check-cast v0, Le/a/b/b/b/y;

    .line 11
    iget-object v0, v0, Le/a/b/b/b/y;->a:Le/a/b/d/b/o;

    .line 12
    iget-object v0, v0, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 13
    iget-object v2, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 14
    invoke-virtual {v0, v3}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object v6

    invoke-virtual {v6}, Le/a/b/d/b/a;->b()Le/a/b/d/b/e;

    move-result-object v6

    invoke-virtual {v6}, Le/a/b/d/b/e;->d()Le/a/b/d/d/e;

    move-result-object v6

    check-cast v6, Le/a/b/f/d;

    .line 15
    iget-object v6, v6, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/16 v0, 0x14

    const/4 v2, 0x0

    if-eqz v5, :cond_9

    .line 16
    iget-object v3, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 17
    iget-object v3, v3, Le/a/b/b/b/g;->c:Le/a/b/b/b/b;

    check-cast v3, Le/a/b/b/b/y;

    if-eqz v3, :cond_8

    .line 18
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v3, v3, Le/a/b/b/b/y;->a:Le/a/b/d/b/o;

    .line 19
    iget-object v3, v3, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 20
    iget-object v6, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    .line 21
    invoke-virtual {v3, v7}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object v8

    invoke-virtual {v8}, Le/a/b/d/b/a;->b()Le/a/b/d/b/e;

    move-result-object v8

    invoke-virtual {v8}, Le/a/b/d/b/e;->d()Le/a/b/d/d/e;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/b/f/d;

    .line 22
    iget-object v9, v9, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v9, v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_5

    .line 23
    invoke-interface {v8, v10}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/d/d/c;

    invoke-virtual {v1, v5}, Le/a/b/b/c/q0;->p(Le/a/b/d/d/c;)Le/a/b/b/c/p0;

    goto :goto_5

    :cond_7
    new-instance v1, Le/a/b/b/c/d;

    iget-object v3, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    invoke-direct {v1, v3}, Le/a/b/b/c/d;-><init>(Le/a/b/b/b/g;)V

    iput-object v1, p0, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    goto :goto_6

    .line 25
    :cond_8
    throw v2

    .line 26
    :cond_9
    :goto_6
    iget-object v1, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 27
    iget-object v1, v1, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    if-eqz v1, :cond_11

    .line 28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/b/h;

    .line 29
    instance-of v5, v1, Le/a/b/b/b/f;

    if-eqz v5, :cond_b

    check-cast v1, Le/a/b/b/b/f;

    .line 30
    iget-object v1, v1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 31
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    instance-of v5, v1, Le/a/b/b/b/p;

    if-eqz v5, :cond_d

    check-cast v1, Le/a/b/b/b/p;

    .line 32
    iget-object v1, v1, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    .line 33
    invoke-virtual {v1}, Le/a/b/d/b/m;->i()I

    move-result v5

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_a

    invoke-virtual {v1, v6}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v7

    if-nez v7, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 34
    :cond_c
    throw v2

    .line 35
    :cond_d
    instance-of v5, v1, Le/a/b/b/b/q;

    if-eqz v5, :cond_a

    check-cast v1, Le/a/b/b/b/q;

    .line 36
    iget-object v1, v1, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    if-nez v1, :cond_e

    goto :goto_7

    .line 37
    :cond_e
    throw v2

    .line 38
    :cond_f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/d/c/a;

    invoke-virtual {p1, v1}, Le/a/b/b/c/m;->a(Le/a/b/d/c/a;)V

    goto :goto_9

    :cond_10
    return-void

    .line 39
    :cond_11
    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->p:Le/a/b/b/c/z;

    return-object v0
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 9

    .line 1
    iget-object p1, p1, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    .line 2
    iget-object p2, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    new-instance v0, Le/a/b/b/c/h$a;

    invoke-direct {v0, p0, p1}, Le/a/b/b/c/h$a;-><init>(Le/a/b/b/c/h;Le/a/b/b/c/m;)V

    .line 3
    iget-object p2, p2, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    .line 4
    iget-object p2, p2, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/b/h;

    instance-of v2, v1, Le/a/b/b/b/f;

    if-eqz v2, :cond_0

    check-cast v1, Le/a/b/b/b/f;

    .line 5
    iget-object v2, v1, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 6
    invoke-virtual {v0, v2}, Le/a/b/b/c/h$a;->a(Le/a/b/d/c/a;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1, v3}, Le/a/b/b/b/f;->n(I)V

    :cond_1
    instance-of v3, v2, Le/a/b/d/c/r;

    if-eqz v3, :cond_0

    check-cast v2, Le/a/b/d/c/r;

    .line 7
    iget-object v2, v2, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    .line 8
    invoke-virtual {v0, v2}, Le/a/b/b/c/h$a;->a(Le/a/b/d/c/a;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Le/a/b/b/b/f;->m(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 10
    invoke-virtual {p2}, Le/a/b/b/c/d;->b()V

    .line 11
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 12
    iget-object v1, p2, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    .line 13
    iget-object v1, v1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 14
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p2, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v3, p2, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    iget-object v4, p2, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    invoke-virtual {v4, v2}, Le/a/b/b/b/d;->i(I)Le/a/b/b/b/d$a;

    move-result-object v4

    .line 15
    iget-object v4, v4, Le/a/b/b/b/d$a;->c:Le/a/b/b/b/c;

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p2, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_8

    new-instance v1, Le/a/b/f/c;

    invoke-direct {v1}, Le/a/b/f/c;-><init>()V

    iget-object v2, p2, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Le/a/b/f/c;->n(I)I

    move-result v2

    iput v2, p2, Le/a/b/b/c/d;->d:I

    iget-object v2, p2, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/c;

    .line 17
    iget-object v5, v4, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v5, v5

    .line 18
    invoke-virtual {v4}, Le/a/b/b/b/c;->i()Z

    move-result v6

    .line 19
    iget v7, v1, Le/a/b/f/c;->c:I

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, -0x1

    neg-int v3, v5

    invoke-virtual {v1, v3}, Le/a/b/f/c;->m(I)I

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v5}, Le/a/b/f/c;->m(I)I

    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_6

    invoke-virtual {v4, v3}, Le/a/b/b/b/c;->k(I)Le/a/b/b/b/c$a;

    move-result-object v7

    .line 21
    iget-object v8, v7, Le/a/b/b/b/c$a;->a:Le/a/b/d/c/w;

    .line 22
    invoke-virtual {p1, v8}, Le/a/b/b/c/q0;->m(Le/a/b/d/c/w;)I

    move-result v8

    invoke-virtual {v1, v8}, Le/a/b/f/c;->n(I)I

    .line 23
    iget v7, v7, Le/a/b/b/b/c$a;->b:I

    .line 24
    invoke-virtual {v1, v7}, Le/a/b/f/c;->n(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Le/a/b/b/b/c;->k(I)Le/a/b/b/b/c$a;

    move-result-object v3

    .line 25
    iget v3, v3, Le/a/b/b/b/c$a;->b:I

    .line 26
    invoke-virtual {v1, v3}, Le/a/b/f/c;->n(I)I

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Le/a/b/f/c;->h()[B

    move-result-object p1

    iput-object p1, p2, Le/a/b/b/c/d;->c:[B

    .line 27
    iget-object p1, p0, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    .line 28
    invoke-virtual {p1}, Le/a/b/b/c/d;->b()V

    iget-object p2, p1, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    .line 29
    iget-object p2, p2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    .line 30
    iget-object p1, p1, Le/a/b/b/c/d;->c:[B

    array-length p1, p1

    add-int v0, p2, p1

    goto :goto_5

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "too many catch handlers"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_9
    :goto_5
    iget-object p1, p0, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 33
    invoke-virtual {p1}, Le/a/b/b/b/g;->a()V

    iget-object p1, p1, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    .line 34
    invoke-virtual {p1}, Le/a/b/b/b/i;->i()I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_a

    add-int/lit8 p1, p1, 0x1

    :cond_a
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->l(I)V

    return-void
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    check-cast v0, Le/a/b/f/c;

    invoke-virtual {v0}, Le/a/b/f/c;->d()Z

    move-result v8

    .line 1
    iget-object v2, v1, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 2
    invoke-virtual {v2}, Le/a/b/b/b/g;->a()V

    iget-object v2, v2, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    .line 3
    iget v2, v2, Le/a/b/b/b/i;->c:I

    .line 4
    iget-object v3, v1, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 5
    invoke-virtual {v3}, Le/a/b/b/b/g;->a()V

    iget-object v3, v3, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    .line 6
    iget-object v4, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v6, v4, :cond_4

    .line 7
    invoke-virtual {v3, v6}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/b/b/b/h;

    instance-of v11, v10, Le/a/b/b/b/f;

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    move-object v11, v10

    check-cast v11, Le/a/b/b/b/f;

    .line 8
    iget-object v11, v11, Le/a/b/b/b/f;->e:Le/a/b/d/c/a;

    .line 9
    instance-of v12, v11, Le/a/b/d/c/d;

    if-nez v12, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget-object v10, v10, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 11
    iget v10, v10, Le/a/b/b/b/j;->b:I

    const/16 v12, 0x71

    if-ne v10, v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 12
    :goto_1
    check-cast v11, Le/a/b/d/c/d;

    invoke-virtual {v11, v9}, Le/a/b/d/c/d;->f(Z)I

    move-result v9

    if-le v9, v7, :cond_3

    move v7, v9

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_4
    iget-object v3, v1, Le/a/b/b/c/h;->e:Le/a/b/d/c/s;

    iget-boolean v4, v1, Le/a/b/b/c/h;->h:Z

    invoke-virtual {v3, v4}, Le/a/b/d/c/d;->f(Z)I

    move-result v3

    .line 14
    iget-object v4, v1, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 15
    invoke-virtual {v4}, Le/a/b/b/b/g;->a()V

    iget-object v4, v4, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    .line 16
    invoke-virtual {v4}, Le/a/b/b/b/i;->i()I

    move-result v4

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    iget-object v6, v1, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    .line 17
    :cond_6
    invoke-virtual {v6}, Le/a/b/b/c/d;->b()V

    iget-object v6, v6, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    .line 18
    iget-object v6, v6, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    .line 19
    :goto_4
    iget-object v10, v1, Le/a/b/b/c/h;->j:Le/a/b/b/c/l;

    if-nez v10, :cond_7

    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Le/a/b/b/c/h0;->g()I

    move-result v10

    :goto_5
    const/4 v11, 0x2

    if-eqz v8, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v13, v1, Le/a/b/b/c/h;->e:Le/a/b/d/c/s;

    invoke-virtual {v13}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  registers_size: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  ins_size:       "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  outs_size:      "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  tries_size:     "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  debug_off:      "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x4

    const-string v12, "  insns_size:     "

    invoke-static {v10, v5, v0, v11, v12}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v5, v0, v11}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    iget-object v5, v1, Le/a/b/b/c/h;->i:Le/a/b/d/d/e;

    check-cast v5, Le/a/b/f/d;

    .line 20
    iget-object v5, v5, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v5, v5

    if-eqz v5, :cond_b

    const-string v5, "  throws "

    .line 21
    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Le/a/b/b/c/h;->i:Le/a/b/d/d/e;

    .line 22
    move-object v12, v11

    check-cast v12, Le/a/b/f/d;

    .line 23
    iget-object v12, v12, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v12, v12

    if-nez v12, :cond_8

    const-string v11, "<empty>"

    goto :goto_7

    .line 24
    :cond_8
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v14, 0x64

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v12, :cond_a

    if-eqz v14, :cond_9

    const-string v15, ", "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-interface {v11, v14}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v15

    invoke-virtual {v15}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 25
    :goto_7
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v2}, Le/a/b/f/c;->l(I)V

    invoke-virtual {v0, v3}, Le/a/b/f/c;->l(I)V

    invoke-virtual {v0, v7}, Le/a/b/f/c;->l(I)V

    invoke-virtual {v0, v6}, Le/a/b/f/c;->l(I)V

    invoke-virtual {v0, v10}, Le/a/b/f/c;->k(I)V

    invoke-virtual {v0, v4}, Le/a/b/f/c;->k(I)V

    .line 26
    iget-object v2, v1, Le/a/b/b/c/h;->f:Le/a/b/b/b/g;

    .line 27
    invoke-virtual {v2}, Le/a/b/b/b/g;->a()V

    iget-object v2, v2, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    .line 28
    :try_start_0
    invoke-virtual {v2, v0}, Le/a/b/b/b/i;->k(Le/a/b/f/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v2, v1, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    if-eqz v2, :cond_14

    if-eqz v9, :cond_d

    if-eqz v8, :cond_c

    const-string v2, "  padding: 0"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Le/a/b/f/c;->l(I)V

    :cond_d
    iget-object v9, v1, Le/a/b/b/c/h;->g:Le/a/b/b/c/d;

    .line 30
    invoke-virtual {v9}, Le/a/b/b/c/d;->b()V

    invoke-virtual {v0}, Le/a/b/f/c;->d()Z

    move-result v2

    const-string v10, ".."

    if-eqz v2, :cond_11

    const/4 v11, 0x0

    .line 31
    invoke-virtual {v9}, Le/a/b/b/c/d;->b()V

    const/4 v2, 0x6

    iget-object v3, v9, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    .line 32
    iget-object v3, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v3, v3

    const-string v12, "    "

    const/4 v4, 0x0

    const-string v5, "  tries:"

    const/4 v6, 0x0

    .line 33
    invoke-virtual {v0, v6, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_e

    iget-object v6, v9, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    invoke-virtual {v6, v5}, Le/a/b/b/b/d;->i(I)Le/a/b/b/b/d$a;

    move-result-object v6

    .line 34
    iget-object v7, v6, Le/a/b/b/b/d$a;->c:Le/a/b/b/b/c;

    const-string v13, "try "

    .line 35
    invoke-static {v12, v13}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 36
    iget v14, v6, Le/a/b/b/b/d$a;->a:I

    .line 37
    invoke-static {v14}, Ld/s/y;->f0(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v6, v6, Le/a/b/b/b/d$a;->b:I

    .line 39
    invoke-static {v6}, Ld/s/y;->f0(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Le/a/b/b/b/c;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v6}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    const-string v2, "  handlers:"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    iget v2, v9, Le/a/b/b/c/d;->d:I

    const-string v3, "size: "

    invoke-static {v12, v3}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v9, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    invoke-static {v5}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    iget-object v2, v9, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v2, 0x0

    move-object v2, v4

    const/4 v3, 0x0

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Le/a/b/b/b/c;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v2, :cond_f

    sub-int v4, v15, v3

    move-object v5, v12

    move-object v6, v11

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Le/a/b/b/c/d;->a(Le/a/b/b/b/c;IILjava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;)V

    :cond_f
    move-object v2, v14

    move v3, v15

    goto :goto_9

    :cond_10
    iget-object v4, v9, Le/a/b/b/c/d;->c:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    const/4 v6, 0x0

    move-object v5, v12

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Le/a/b/b/c/d;->a(Le/a/b/b/b/c;IILjava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;)V

    .line 40
    :cond_11
    iget-object v2, v9, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    .line 41
    iget-object v2, v2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_13

    .line 42
    iget-object v4, v9, Le/a/b/b/c/d;->b:Le/a/b/b/b/d;

    invoke-virtual {v4, v3}, Le/a/b/b/b/d;->i(I)Le/a/b/b/b/d$a;

    move-result-object v4

    .line 43
    iget v5, v4, Le/a/b/b/b/d$a;->a:I

    .line 44
    iget v6, v4, Le/a/b/b/b/d$a;->b:I

    sub-int v7, v6, v5

    const/high16 v11, 0x10000

    if-ge v7, v11, :cond_12

    .line 45
    invoke-virtual {v0, v5}, Le/a/b/f/c;->k(I)V

    invoke-virtual {v0, v7}, Le/a/b/f/c;->l(I)V

    iget-object v5, v9, Le/a/b/b/c/d;->e:Ljava/util/TreeMap;

    .line 46
    iget-object v4, v4, Le/a/b/b/b/d$a;->c:Le/a/b/b/b/c;

    .line 47
    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Le/a/b/f/c;->l(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "bogus exception range: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v2, v9, Le/a/b/b/c/d;->c:[B

    invoke-virtual {v0, v2}, Le/a/b/f/c;->i([B)V

    :cond_14
    if-eqz v8, :cond_15

    .line 48
    iget-object v2, v1, Le/a/b/b/c/h;->j:Le/a/b/b/c/l;

    if-eqz v2, :cond_15

    const-string v2, "  debug info"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    iget-object v2, v1, Le/a/b/b/c/h;->j:Le/a/b/b/c/l;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v4, "    "

    move-object/from16 v3, p1

    move-object v6, v0

    .line 49
    invoke-virtual/range {v2 .. v7}, Le/a/b/b/c/l;->n(Le/a/b/b/c/m;Ljava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;Z)[B

    :cond_15
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "...while writing instructions for "

    .line 50
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Le/a/b/b/c/h;->e:Le/a/b/d/c/s;

    invoke-virtual {v3}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Le/a/a/c/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Le/a/a/c/b;

    move-result-object v0

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/h;->e:Le/a/b/d/c/s;

    invoke-virtual {v0}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CodeItem{"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/a/b/b/c/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
