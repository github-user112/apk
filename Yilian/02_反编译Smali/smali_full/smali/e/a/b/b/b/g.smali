.class public final Le/a/b/b/b/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public b:Le/a/b/b/b/s;

.field public c:Le/a/b/b/b/b;

.field public d:Le/a/b/b/b/d;

.field public e:Le/a/b/b/b/t;

.field public f:Le/a/b/b/b/o;

.field public g:Le/a/b/b/b/i;


# direct methods
.method public constructor <init>(ILe/a/b/b/b/s;Le/a/b/b/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput p1, p0, Le/a/b/b/b/g;->a:I

    iput-object p2, p0, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    iput-object p3, p0, Le/a/b/b/b/g;->c:Le/a/b/b/b/b;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/b/g;->d:Le/a/b/b/b/d;

    iput-object p1, p0, Le/a/b/b/b/g;->e:Le/a/b/b/b/t;

    iput-object p1, p0, Le/a/b/b/b/g;->f:Le/a/b/b/b/o;

    iput-object p1, p0, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedInsns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    .line 1
    iget v2, v1, Le/a/b/b/b/s;->f:I

    if-gez v2, :cond_3e

    .line 2
    iget-object v2, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Le/a/b/b/b/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v6, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/b/b/h;

    .line 3
    iget-object v6, v6, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 4
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1, v3}, Le/a/b/b/b/s;->f([Le/a/b/b/b/j;)Z

    iget-object v2, v1, Le/a/b/b/b/s;->a:Le/a/b/b/a;

    iget-boolean v2, v2, Le/a/b/b/a;->a:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_e

    .line 6
    :cond_2
    iget v2, v1, Le/a/b/b/b/s;->b:I

    iget v6, v1, Le/a/b/b/b/s;->f:I

    add-int/2addr v2, v6

    iget v6, v1, Le/a/b/b/b/s;->g:I

    add-int/2addr v2, v6

    iget v6, v1, Le/a/b/b/b/s;->h:I

    sub-int/2addr v2, v6

    iget-object v6, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/b/b/b/h;

    .line 7
    iget-object v11, v11, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    const/4 v12, 0x0

    .line 8
    :goto_1
    iget-object v13, v11, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v13, v13

    if-ge v12, v13, :cond_3

    .line 9
    invoke-virtual {v11, v12}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v13

    invoke-virtual {v13}, Le/a/b/d/b/k;->j()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 10
    iget v14, v13, Le/a/b/d/b/k;->a:I

    if-lt v14, v2, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 11
    :goto_2
    iget v13, v13, Le/a/b/d/b/k;->a:I

    and-int/2addr v13, v5

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_7

    if-eqz v14, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    if-eqz v14, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_a
    if-le v7, v8, :cond_b

    if-le v9, v10, :cond_b

    .line 12
    invoke-virtual {v1, v5}, Le/a/b/b/b/s;->c(I)V

    goto :goto_6

    :cond_b
    if-le v7, v8, :cond_c

    goto :goto_5

    :cond_c
    if-le v9, v10, :cond_e

    invoke-virtual {v1, v5}, Le/a/b/b/b/s;->c(I)V

    iget v2, v1, Le/a/b/b/b/s;->h:I

    if-eqz v2, :cond_d

    if-le v8, v7, :cond_d

    :goto_5
    invoke-virtual {v1, v5}, Le/a/b/b/b/s;->b(I)V

    :cond_d
    :goto_6
    invoke-virtual {v1, v3}, Le/a/b/b/b/s;->f([Le/a/b/b/b/j;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    :cond_e
    iget v2, v1, Le/a/b/b/b/s;->f:I

    if-nez v2, :cond_10

    iget-object v2, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_22

    iget-object v8, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/b/b/b/h;

    .line 14
    iget-object v9, v8, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 15
    aget-object v10, v3, v7

    if-eq v9, v10, :cond_f

    iget-object v9, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Le/a/b/b/b/h;->h(Le/a/b/b/b/j;)Le/a/b/b/b/h;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 16
    :cond_10
    iget-object v2, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v7, Ljava/util/ArrayList;

    mul-int/lit8 v8, v2, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v2, :cond_21

    iget-object v10, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/b/b/b/h;

    .line 17
    iget-object v11, v10, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 18
    aget-object v12, v3, v9

    if-eqz v12, :cond_11

    move/from16 v18, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_11
    invoke-virtual {v1, v10}, Le/a/b/b/b/s;->d(Le/a/b/b/b/h;)Le/a/b/b/b/j;

    move-result-object v12

    .line 19
    iget-object v13, v12, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 20
    invoke-virtual {v13, v10}, Le/a/b/b/b/n;->f(Le/a/b/b/b/h;)Ljava/util/BitSet;

    move-result-object v13

    .line 21
    iget-object v14, v10, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    invoke-virtual {v13, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    .line 22
    iget-object v6, v10, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 23
    iget-boolean v6, v6, Le/a/b/b/b/j;->e:Z

    if-eqz v6, :cond_12

    .line 24
    invoke-virtual {v13, v4}, Ljava/util/BitSet;->set(I)V

    .line 25
    :cond_12
    iget-object v6, v14, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    .line 26
    invoke-virtual {v13}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    sub-int v6, v6, v16

    if-nez v6, :cond_13

    sget-object v6, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    move/from16 v18, v2

    const/4 v2, 0x0

    goto :goto_b

    :cond_13
    new-instance v4, Le/a/b/d/b/l;

    invoke-direct {v4, v6}, Le/a/b/d/b/l;-><init>(I)V

    move/from16 v18, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 27
    :goto_9
    iget-object v2, v14, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v6, v2, :cond_15

    .line 28
    invoke-virtual {v13, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v14, v6}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 29
    :cond_15
    iget-boolean v2, v14, Le/a/b/f/i;->a:Z

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    .line 30
    iput-boolean v2, v4, Le/a/b/f/i;->a:Z

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    :goto_a
    move-object v6, v4

    .line 31
    :goto_b
    iget-object v4, v10, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 32
    iget-boolean v4, v4, Le/a/b/b/b/j;->e:Z

    if-eqz v4, :cond_17

    .line 33
    invoke-virtual {v13, v2, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 34
    :cond_17
    iget-object v2, v6, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_c

    .line 35
    :cond_18
    new-instance v2, Le/a/b/b/b/m;

    iget-object v4, v10, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    invoke-direct {v2, v4, v6}, Le/a/b/b/b/m;-><init>(Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    .line 36
    :goto_c
    iget-object v4, v10, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 37
    iget-boolean v4, v4, Le/a/b/b/b/j;->e:Z

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v13, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, v10, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    invoke-virtual {v5, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v5

    iget-object v6, v10, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    invoke-virtual {v5, v4}, Le/a/b/d/b/k;->o(I)Le/a/b/d/b/k;

    move-result-object v14

    invoke-static {v6, v5, v14}, Le/a/b/b/b/h;->f(Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/b/b/x;

    move-result-object v5

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    :cond_1a
    const/4 v5, 0x0

    .line 39
    :goto_d
    iget-object v6, v10, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 40
    iget-object v14, v10, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 41
    iget-boolean v14, v14, Le/a/b/b/b/j;->e:Z

    .line 42
    invoke-virtual {v6, v4, v14, v13}, Le/a/b/d/b/l;->m(IZLjava/util/BitSet;)Le/a/b/d/b/l;

    move-result-object v6

    invoke-virtual {v10, v6}, Le/a/b/b/b/h;->j(Le/a/b/d/b/l;)Le/a/b/b/b/h;

    move-result-object v10

    .line 43
    :goto_e
    instance-of v4, v10, Le/a/b/b/b/e;

    if-eqz v4, :cond_1b

    move-object v4, v10

    check-cast v4, Le/a/b/b/b/e;

    .line 44
    iget-boolean v6, v4, Le/a/b/b/b/e;->e:Z

    if-eqz v6, :cond_1b

    .line 45
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    instance-of v2, v10, Le/a/b/b/b/a0;

    if-nez v2, :cond_1e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/e;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    if-eq v12, v11, :cond_1f

    invoke-virtual {v10, v12}, Le/a/b/b/b/h;->h(Le/a/b/b/b/j;)Le/a/b/b/b/h;

    move-result-object v10

    :cond_1f
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_20

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_10
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_8

    .line 46
    :cond_21
    iput-object v7, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    .line 47
    :cond_22
    iget-object v2, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v3, v2, :cond_25

    iget-object v5, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/b/b/h;

    if-eqz v5, :cond_24

    if-ltz v4, :cond_23

    .line 48
    iput v4, v5, Le/a/b/b/b/h;->a:I

    .line 49
    invoke-virtual {v5}, Le/a/b/b/b/h;->b()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 50
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "address < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    const/4 v1, 0x0

    throw v1

    .line 51
    :cond_25
    iget-object v2, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_2a

    iget-object v5, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/b/b/h;

    instance-of v6, v5, Le/a/b/b/b/z;

    if-nez v6, :cond_26

    goto :goto_14

    .line 52
    :cond_26
    iget-object v6, v5, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 53
    move-object v7, v5

    check-cast v7, Le/a/b/b/b/z;

    .line 54
    iget-object v8, v6, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    .line 55
    invoke-virtual {v8, v7}, Le/a/b/b/b/n;->b(Le/a/b/b/b/z;)Z

    move-result v8

    if-eqz v8, :cond_27

    goto :goto_14

    .line 56
    :cond_27
    iget v4, v6, Le/a/b/b/b/j;->b:I

    const/16 v8, 0x28

    if-ne v4, v8, :cond_29

    .line 57
    invoke-virtual {v1, v5, v6}, Le/a/b/b/b/s;->e(Le/a/b/b/b/h;Le/a/b/b/b/j;)Le/a/b/b/b/j;

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v6, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Le/a/b/b/b/h;->h(Le/a/b/b/b/j;)Le/a/b/b/b/h;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "method too long"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    :try_start_0
    iget-object v4, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/e;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Le/a/b/b/b/z;

    sget-object v8, Le/a/b/b/b/k;->Q:Le/a/b/b/b/j;

    .line 58
    iget-object v9, v7, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 59
    sget-object v10, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    .line 60
    iget-object v11, v7, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    .line 61
    invoke-direct {v6, v8, v9, v10, v11}, Le/a/b/b/b/z;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V

    iget-object v8, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Le/a/b/b/b/z;->n(Le/a/b/b/b/e;)Le/a/b/b/b/z;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    :goto_13
    const/4 v4, 0x1

    :goto_14
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_12

    :catch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unpaired TargetInsn"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unpaired TargetInsn (dangling)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const/4 v5, 0x1

    if-nez v4, :cond_22

    .line 62
    iget-object v2, v1, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    iget v3, v1, Le/a/b/b/b/s;->f:I

    iget v4, v1, Le/a/b/b/b/s;->b:I

    add-int/2addr v3, v4

    iget v1, v1, Le/a/b/b/b/s;->g:I

    add-int/2addr v3, v1

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v4, Le/a/b/b/b/i;

    invoke-direct {v4, v1, v3}, Le/a/b/b/b/i;-><init>(II)V

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_2b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/b/b/h;

    .line 64
    invoke-virtual {v4, v3, v6}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2b
    const/4 v3, 0x0

    .line 65
    iput-boolean v3, v4, Le/a/b/f/i;->a:Z

    .line 66
    iput-object v4, v0, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    iget v1, v0, Le/a/b/b/b/g;->a:I

    invoke-static {v4, v1}, Le/a/b/b/b/t;->i(Le/a/b/b/b/i;I)Le/a/b/b/b/t;

    move-result-object v1

    iput-object v1, v0, Le/a/b/b/b/g;->e:Le/a/b/b/b/t;

    iget-object v1, v0, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    invoke-static {v1}, Le/a/b/b/b/o;->j(Le/a/b/b/b/i;)Le/a/b/b/b/o;

    move-result-object v1

    iput-object v1, v0, Le/a/b/b/b/g;->f:Le/a/b/b/b/o;

    iget-object v1, v0, Le/a/b/b/b/g;->c:Le/a/b/b/b/b;

    check-cast v1, Le/a/b/b/b/y;

    .line 67
    iget-object v2, v1, Le/a/b/b/b/y;->a:Le/a/b/d/b/o;

    iget-object v3, v1, Le/a/b/b/b/y;->b:[I

    iget-object v1, v1, Le/a/b/b/b/y;->c:Le/a/b/b/b/a;

    .line 68
    array-length v4, v3

    .line 69
    iget-object v2, v2, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v7, Le/a/b/b/b/c;->c:Le/a/b/b/b/c;

    move-object v10, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v4, :cond_3a

    aget v11, v3, v9

    invoke-virtual {v2, v11}, Le/a/b/d/b/b;->l(I)Le/a/b/d/b/a;

    move-result-object v11

    .line 71
    iget-object v12, v11, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    .line 72
    iget-object v13, v12, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v13, v13

    const/4 v14, -0x1

    add-int/2addr v13, v14

    .line 73
    invoke-virtual {v12, v13}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v12

    .line 74
    iget-object v12, v12, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 75
    iget-object v12, v12, Le/a/b/d/b/n;->d:Le/a/b/d/d/e;

    check-cast v12, Le/a/b/f/d;

    .line 76
    iget-object v12, v12, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v12, v12

    if-eqz v12, :cond_2c

    const/4 v12, 0x1

    goto :goto_17

    :cond_2c
    const/4 v12, 0x0

    :goto_17
    if-nez v12, :cond_2d

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1f

    .line 77
    :cond_2d
    iget-object v12, v11, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    .line 78
    iget v13, v12, Le/a/b/f/f;->c:I

    .line 79
    iget v15, v11, Le/a/b/d/b/a;->d:I

    .line 80
    invoke-virtual {v11}, Le/a/b/d/b/a;->b()Le/a/b/d/b/e;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Le/a/b/d/b/e;->d()Le/a/b/d/d/e;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Le/a/b/f/d;

    .line 81
    iget-object v14, v14, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v14, v14

    if-nez v14, :cond_2e

    .line 82
    sget-object v5, Le/a/b/b/b/c;->c:Le/a/b/b/b/c;

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1c

    :cond_2e
    move-object/from16 v17, v2

    const/4 v2, -0x1

    if-ne v15, v2, :cond_2f

    if-ne v13, v14, :cond_30

    :cond_2f
    if-eq v15, v2, :cond_31

    add-int/lit8 v2, v14, 0x1

    if-ne v13, v2, :cond_30

    invoke-virtual {v12, v14}, Le/a/b/f/f;->g(I)I

    move-result v2

    if-ne v15, v2, :cond_30

    goto :goto_18

    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen: weird successors list"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    :goto_18
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v14, :cond_33

    invoke-interface {v5, v2}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v13

    sget-object v15, Le/a/b/d/d/c;->s:Le/a/b/d/d/c;

    invoke-virtual {v13, v15}, Le/a/b/d/d/c;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    add-int/lit8 v14, v2, 0x1

    goto :goto_1a

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_33
    :goto_1a
    new-instance v2, Le/a/b/b/b/c;

    invoke-direct {v2, v14}, Le/a/b/b/b/c;-><init>(I)V

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v14, :cond_34

    new-instance v15, Le/a/b/d/c/w;

    move-object/from16 v19, v3

    invoke-interface {v5, v13}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v3

    invoke-direct {v15, v3}, Le/a/b/d/c/w;-><init>(Le/a/b/d/d/c;)V

    invoke-virtual {v12, v13}, Le/a/b/f/f;->g(I)I

    move-result v3

    move/from16 v20, v4

    .line 83
    iget-object v4, v1, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    aget-object v3, v4, v3

    .line 84
    invoke-virtual {v3}, Le/a/b/b/b/h;->c()I

    move-result v3

    .line 85
    new-instance v4, Le/a/b/b/b/c$a;

    invoke-direct {v4, v15, v3}, Le/a/b/b/b/c$a;-><init>(Le/a/b/d/c/w;I)V

    invoke-virtual {v2, v13, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_1b

    :cond_34
    move-object/from16 v19, v3

    move/from16 v20, v4

    const/4 v3, 0x0

    .line 86
    iput-boolean v3, v2, Le/a/b/f/i;->a:Z

    move-object v5, v2

    .line 87
    :goto_1c
    iget-object v2, v10, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_35

    goto :goto_1e

    .line 88
    :cond_35
    invoke-virtual {v10, v5}, Le/a/b/f/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-eqz v7, :cond_37

    .line 89
    iget-object v2, v1, Le/a/b/b/b/a;->b:[Le/a/b/b/b/e;

    .line 90
    iget v3, v7, Le/a/b/d/b/a;->a:I

    .line 91
    aget-object v2, v2, v3

    .line 92
    invoke-virtual {v2}, Le/a/b/b/b/h;->c()I

    move-result v2

    .line 93
    iget-object v3, v1, Le/a/b/b/b/a;->c:[Le/a/b/b/b/e;

    .line 94
    iget v4, v11, Le/a/b/d/b/a;->a:I

    .line 95
    aget-object v3, v3, v4

    .line 96
    invoke-virtual {v3}, Le/a/b/b/b/h;->c()I

    move-result v3

    sub-int/2addr v3, v2

    const v2, 0xffff

    if-gt v3, v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1d

    :cond_36
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_38

    move-object v8, v11

    goto :goto_1f

    :cond_37
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "start == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_38
    iget-object v2, v10, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-eqz v2, :cond_39

    .line 98
    invoke-static {v7, v8, v10, v1}, Le/a/b/b/b/y;->a(Le/a/b/d/b/a;Le/a/b/d/b/a;Le/a/b/b/b/c;Le/a/b/b/b/a;)Le/a/b/b/b/d$a;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_1e
    move-object v10, v5

    move-object v7, v11

    move-object v8, v7

    :goto_1f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move/from16 v4, v20

    const/4 v5, 0x1

    goto/16 :goto_16

    .line 99
    :cond_3a
    iget-object v2, v10, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-eqz v2, :cond_3b

    .line 100
    invoke-static {v7, v8, v10, v1}, Le/a/b/b/b/y;->a(Le/a/b/d/b/a;Le/a/b/d/b/a;Le/a/b/b/b/c;Le/a/b/b/b/a;)Le/a/b/b/b/d$a;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Le/a/b/b/b/d;->c:Le/a/b/b/b/d;

    goto :goto_21

    :cond_3c
    new-instance v2, Le/a/b/b/b/d;

    invoke-direct {v2, v1}, Le/a/b/b/b/d;-><init>(I)V

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_3d

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/d$a;

    .line 101
    invoke-virtual {v2, v3, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3d
    const/4 v3, 0x0

    .line 102
    iput-boolean v3, v2, Le/a/b/f/i;->a:Z

    move-object v1, v2

    .line 103
    :goto_21
    iput-object v1, v0, Le/a/b/b/b/g;->d:Le/a/b/b/b/d;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/b/b/b/g;->b:Le/a/b/b/b/s;

    iput-object v2, v0, Le/a/b/b/b/g;->c:Le/a/b/b/b/b;

    return-void

    .line 104
    :cond_3e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "already processed"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :goto_22
    throw v1

    :goto_23
    goto :goto_22
.end method
