.class public final Le/a/b/b/c/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/a/b/b/b/t;

.field public final b:Le/a/b/b/b/o;

.field public final c:Le/a/b/f/c;

.field public final d:Le/a/b/b/c/m;

.field public final e:I

.field public final f:I

.field public final g:Le/a/b/d/d/a;

.field public final h:Z

.field public i:I

.field public j:I

.field public k:Le/a/b/f/a;

.field public l:Ljava/io/PrintWriter;

.field public m:Ljava/lang/String;

.field public n:Z

.field public final o:[Le/a/b/b/b/o$b;


# direct methods
.method public constructor <init>(Le/a/b/b/b/t;Le/a/b/b/b/o;Le/a/b/b/c/m;IIZLe/a/b/d/c/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/a/b/b/c/k;->i:I

    const/4 v0, 0x1

    iput v0, p0, Le/a/b/b/c/k;->j:I

    iput-object p1, p0, Le/a/b/b/c/k;->a:Le/a/b/b/b/t;

    iput-object p2, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    iput-object p3, p0, Le/a/b/b/c/k;->d:Le/a/b/b/c/m;

    .line 1
    iget-object p1, p7, Le/a/b/d/c/d;->c:Le/a/b/d/d/a;

    .line 2
    iput-object p1, p0, Le/a/b/b/c/k;->g:Le/a/b/d/d/a;

    iput-boolean p6, p0, Le/a/b/b/c/k;->h:Z

    iput p4, p0, Le/a/b/b/c/k;->e:I

    iput p5, p0, Le/a/b/b/c/k;->f:I

    new-instance p1, Le/a/b/f/c;

    invoke-direct {p1}, Le/a/b/f/c;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    new-array p1, p5, [Le/a/b/b/b/o$b;

    iput-object p1, p0, Le/a/b/b/c/k;->o:[Le/a/b/b/b/o$b;

    return-void
.end method

.method public static b(II)I
    .locals 2

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p1, p0

    add-int/2addr p1, v1

    return p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le/a/b/b/c/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/b/b/c/k;->m:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Le/a/b/b/c/k;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast v0, Le/a/b/f/c;

    invoke-virtual {v0, p1, p2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c()[B
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/b/b/c/k;->a:Le/a/b/b/b/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Le/a/b/b/c/k;->a:Le/a/b/b/b/t;

    .line 4
    invoke-virtual {v4, v3}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/t$a;

    .line 5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Le/a/b/b/c/i;

    invoke-direct {v0, p0}, Le/a/b/b/c/i;-><init>(Le/a/b/b/c/k;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Le/a/b/b/c/k;->g:Le/a/b/d/d/a;

    .line 7
    iget-object v3, v3, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 8
    iget-object v3, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v3, v3

    .line 9
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget v3, p0, Le/a/b/b/c/k;->f:I

    iget-object v4, p0, Le/a/b/b/c/k;->g:Le/a/b/d/d/a;

    .line 11
    iget-object v4, v4, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 12
    invoke-virtual {v4}, Le/a/b/d/d/b;->k()I

    move-result v4

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Le/a/b/b/c/k;->h:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 13
    new-instance v4, Ljava/util/BitSet;

    iget v6, p0, Le/a/b/b/c/k;->f:I

    sub-int/2addr v6, v3

    invoke-direct {v4, v6}, Ljava/util/BitSet;-><init>(I)V

    iget-object v6, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    .line 14
    iget-object v6, v6, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    .line 15
    iget-object v8, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    invoke-virtual {v8, v7}, Le/a/b/b/b/o;->i(I)Le/a/b/b/b/o$b;

    move-result-object v8

    .line 16
    iget-object v9, v8, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 17
    iget v9, v9, Le/a/b/d/b/k;->a:I

    if-ge v9, v3, :cond_2

    goto :goto_3

    :cond_2
    sub-int/2addr v9, v3

    .line 18
    invoke-virtual {v4, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Le/a/b/b/c/j;

    invoke-direct {v3, p0}, Le/a/b/b/c/j;-><init>(Le/a/b/b/c/k;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    iget-object v3, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez v3, :cond_6

    iget-object v3, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    :goto_5
    iget-object v4, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 20
    iget v4, v4, Le/a/b/f/c;->c:I

    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/b/b/t$a;

    .line 22
    iget-object v6, v6, Le/a/b/b/b/t$a;->b:Le/a/b/d/b/q;

    .line 23
    iget v6, v6, Le/a/b/d/b/q;->c:I

    .line 24
    iput v6, p0, Le/a/b/b/c/k;->j:I

    :cond_7
    iget-object v6, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    iget v7, p0, Le/a/b/b/c/k;->j:I

    invoke-virtual {v6, v7}, Le/a/b/f/c;->n(I)I

    if-eqz v3, :cond_8

    iget-object v6, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 25
    iget v6, v6, Le/a/b/f/c;->c:I

    sub-int/2addr v6, v4

    const-string v4, "line_start: "

    .line 26
    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Le/a/b/b/c/k;->j:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    .line 27
    :cond_8
    iget v4, p0, Le/a/b/b/c/k;->f:I

    iget-object v6, p0, Le/a/b/b/c/k;->g:Le/a/b/d/d/a;

    .line 28
    iget-object v6, v6, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 29
    invoke-virtual {v6}, Le/a/b/d/d/b;->k()I

    move-result v6

    sub-int/2addr v4, v6

    iget-boolean v6, p0, Le/a/b/b/c/k;->h:Z

    xor-int/lit8 v7, v6, 0x1

    sub-int/2addr v4, v7

    .line 30
    iget-object v7, p0, Le/a/b/b/c/k;->g:Le/a/b/d/d/a;

    .line 31
    iget-object v7, v7, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 32
    iget-object v8, v7, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v8, v8

    if-nez v6, :cond_b

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/b/b/b/o$b;

    .line 34
    iget-object v10, v9, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 35
    iget v10, v10, Le/a/b/d/b/k;->a:I

    if-ne v4, v10, :cond_9

    .line 36
    iget-object v6, p0, Le/a/b/b/c/k;->o:[Le/a/b/b/b/o$b;

    aput-object v9, v6, v4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    :cond_b
    iget-object v6, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 37
    iget v9, v6, Le/a/b/f/c;->c:I

    .line 38
    invoke-virtual {v6, v8}, Le/a/b/f/c;->n(I)I

    if-eqz v3, :cond_c

    iget-object v6, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 39
    iget v6, v6, Le/a/b/f/c;->c:I

    sub-int/2addr v6, v9

    new-array v9, v5, [Ljava/lang/Object;

    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "parameters_size: %04x"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    :cond_c
    const/4 v6, 0x0

    :goto_6
    const/4 v9, 0x0

    if-ge v6, v8, :cond_10

    invoke-virtual {v7, v6}, Le/a/b/d/d/b;->j(I)Le/a/b/d/d/c;

    move-result-object v10

    iget-object v11, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 41
    iget v11, v11, Le/a/b/f/c;->c:I

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/b/b/b/o$b;

    .line 43
    iget-object v14, v13, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 44
    iget v14, v14, Le/a/b/d/b/k;->a:I

    if-eq v4, v14, :cond_d

    goto :goto_7

    .line 45
    :cond_d
    invoke-virtual {v13}, Le/a/b/b/b/o$b;->c()Le/a/b/d/c/v;

    throw v9

    :cond_e
    invoke-virtual {p0, v9}, Le/a/b/b/c/k;->g(Le/a/b/d/c/v;)V

    if-eqz v3, :cond_f

    iget-object v9, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 46
    iget v9, v9, Le/a/b/f/c;->c:I

    sub-int/2addr v9, v11

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "<unnamed>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "v"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v11}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    :cond_f
    invoke-virtual {v10}, Le/a/b/d/d/c;->f()I

    move-result v9

    add-int/2addr v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_10
    iget-object v0, p0, Le/a/b/b/c/k;->o:[Le/a/b/b/b/o$b;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_12

    aget-object v6, v0, v4

    if-nez v6, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    invoke-virtual {v6}, Le/a/b/b/b/o$b;->c()Le/a/b/d/c/v;

    throw v9

    .line 48
    :cond_12
    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Le/a/b/f/c;->j(I)V

    iget-object v0, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez v0, :cond_13

    iget-object v0, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_14

    :cond_13
    new-array v0, v5, [Ljava/lang/Object;

    iget v3, p0, Le/a/b/b/c/k;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "%04x: prologue end"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    .line 49
    iget-object v3, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 50
    :goto_9
    iget-object v7, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    .line 51
    iget-object v7, v7, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v7, v7

    :goto_a
    if-ge v4, v7, :cond_1c

    .line 52
    iget-object v8, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    invoke-virtual {v8, v4}, Le/a/b/b/b/o;->i(I)Le/a/b/b/b/o$b;

    move-result-object v8

    .line 53
    iget v8, v8, Le/a/b/b/b/o$b;->a:I

    .line 54
    iget v10, p0, Le/a/b/b/c/k;->i:I

    if-ne v8, v10, :cond_1c

    iget-object v8, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v4}, Le/a/b/b/b/o;->i(I)Le/a/b/b/b/o$b;

    move-result-object v4

    .line 55
    iget-object v8, v4, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 56
    iget v8, v8, Le/a/b/d/b/k;->a:I

    .line 57
    iget-object v11, p0, Le/a/b/b/c/k;->o:[Le/a/b/b/b/o$b;

    aget-object v12, v11, v8

    if-ne v4, v12, :cond_15

    goto :goto_b

    :cond_15
    aput-object v4, v11, v8

    invoke-virtual {v4}, Le/a/b/b/b/o$b;->d()Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz v12, :cond_18

    .line 58
    iget-object v8, v12, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    invoke-virtual {v4, v8}, Le/a/b/b/b/o$b;->e(Le/a/b/d/b/k;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 59
    invoke-virtual {v12}, Le/a/b/b/b/o$b;->d()Z

    move-result v8

    if-nez v8, :cond_17

    .line 60
    iget-object v8, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 61
    iget v11, v8, Le/a/b/f/c;->c:I

    const/4 v11, 0x6

    .line 62
    invoke-virtual {v8, v11}, Le/a/b/f/c;->j(I)V

    .line 63
    iget-object v8, v4, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 64
    iget v8, v8, Le/a/b/d/b/k;->a:I

    .line 65
    invoke-virtual {p0, v8}, Le/a/b/b/c/k;->h(I)V

    iget-object v8, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez v8, :cond_16

    iget-object v8, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-nez v8, :cond_16

    goto :goto_b

    :cond_16
    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 66
    iget v0, v0, Le/a/b/f/c;->c:I

    .line 67
    invoke-virtual {p0, v4}, Le/a/b/b/c/k;->i(Le/a/b/b/b/o$b;)Ljava/lang/String;

    throw v9

    .line 68
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_18
    invoke-virtual {v4}, Le/a/b/b/b/o$b;->c()Le/a/b/d/c/v;

    throw v9

    .line 70
    :cond_19
    iget-object v8, v4, Le/a/b/b/b/o$b;->b:Le/a/b/b/b/o$a;

    .line 71
    sget-object v11, Le/a/b/b/b/o$a;->c:Le/a/b/b/b/o$a;

    if-eq v8, v11, :cond_1b

    .line 72
    iget-object v8, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 73
    iget v11, v8, Le/a/b/f/c;->c:I

    const/4 v11, 0x5

    .line 74
    invoke-virtual {v8, v11}, Le/a/b/f/c;->j(I)V

    iget-object v8, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 75
    iget-object v11, v4, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 76
    iget v11, v11, Le/a/b/d/b/k;->a:I

    .line 77
    invoke-virtual {v8, v11}, Le/a/b/f/c;->n(I)I

    iget-object v8, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez v8, :cond_1a

    iget-object v8, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-nez v8, :cond_1a

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 78
    iget v0, v0, Le/a/b/f/c;->c:I

    .line 79
    invoke-virtual {p0, v4}, Le/a/b/b/c/k;->i(Le/a/b/b/b/o$b;)Ljava/lang/String;

    throw v9

    :cond_1b
    :goto_b
    move v4, v10

    goto/16 :goto_a

    .line 80
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_c
    if-ge v6, v7, :cond_1d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/b/b/b/t$a;

    .line 81
    iget v8, v8, Le/a/b/b/b/t$a;->a:I

    .line 82
    iget v10, p0, Le/a/b/b/c/k;->i:I

    if-ne v8, v10, :cond_1d

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/b/b/t$a;

    invoke-virtual {p0, v6}, Le/a/b/b/c/k;->f(Le/a/b/b/b/t$a;)V

    move v6, v8

    goto :goto_c

    :cond_1d
    const v7, 0x7fffffff

    if-ge v4, v3, :cond_1e

    .line 83
    iget-object v8, p0, Le/a/b/b/c/k;->b:Le/a/b/b/b/o;

    invoke-virtual {v8, v4}, Le/a/b/b/b/o;->i(I)Le/a/b/b/b/o$b;

    move-result-object v8

    .line 84
    iget v8, v8, Le/a/b/b/b/o$b;->a:I

    goto :goto_d

    :cond_1e
    const v8, 0x7fffffff

    :goto_d
    if-ge v6, v0, :cond_1f

    .line 85
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/b/b/b/t$a;

    .line 86
    iget v10, v10, Le/a/b/b/b/t$a;->a:I

    goto :goto_e

    :cond_1f
    const v10, 0x7fffffff

    .line 87
    :goto_e
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ne v11, v7, :cond_20

    goto :goto_f

    :cond_20
    iget v12, p0, Le/a/b/b/c/k;->e:I

    if-ne v11, v12, :cond_23

    if-ne v8, v7, :cond_23

    if-ne v10, v7, :cond_23

    .line 88
    :goto_f
    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    invoke-virtual {v0, v1}, Le/a/b/f/c;->j(I)V

    iget-object v0, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez v0, :cond_21

    iget-object v0, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_22

    :cond_21
    const-string v0, "end sequence"

    invoke-virtual {p0, v5, v0}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    .line 89
    :cond_22
    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    invoke-virtual {v0}, Le/a/b/f/c;->h()[B

    move-result-object v0

    return-object v0

    :cond_23
    if-ne v11, v10, :cond_24

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/b/b/t$a;

    invoke-virtual {p0, v6}, Le/a/b/b/c/k;->f(Le/a/b/b/b/t$a;)V

    move v6, v7

    goto/16 :goto_9

    :cond_24
    iget v7, p0, Le/a/b/b/c/k;->i:I

    sub-int/2addr v11, v7

    invoke-virtual {p0, v11}, Le/a/b/b/c/k;->e(I)V

    goto/16 :goto_9
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 1
    iget v1, v0, Le/a/b/f/c;->c:I

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2}, Le/a/b/f/c;->j(I)V

    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    invoke-virtual {v0, p1}, Le/a/b/f/c;->m(I)I

    iget v0, p0, Le/a/b/b/c/k;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Le/a/b/b/c/k;->j:I

    iget-object p1, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 3
    iget p1, p1, Le/a/b/f/c;->c:I

    sub-int/2addr p1, v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Le/a/b/b/c/k;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "line = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 1
    iget v1, v0, Le/a/b/f/c;->c:I

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Le/a/b/f/c;->j(I)V

    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    invoke-virtual {v0, p1}, Le/a/b/f/c;->n(I)I

    iget v0, p0, Le/a/b/b/c/k;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Le/a/b/b/c/k;->i:I

    iget-object p1, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    .line 3
    iget p1, p1, Le/a/b/f/c;->c:I

    sub-int/2addr p1, v1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget v2, p0, Le/a/b/b/c/k;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%04x: advance pc"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final f(Le/a/b/b/b/t$a;)V
    .locals 4

    .line 1
    iget-object v0, p1, Le/a/b/b/b/t$a;->b:Le/a/b/d/b/q;

    .line 2
    iget v0, v0, Le/a/b/d/b/q;->c:I

    .line 3
    iget p1, p1, Le/a/b/b/b/t$a;->a:I

    .line 4
    iget v1, p0, Le/a/b/b/c/k;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Le/a/b/b/c/k;->i:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_6

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Le/a/b/b/c/k;->d(I)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0, p1}, Le/a/b/b/c/k;->b(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_3

    invoke-virtual {p0, p1}, Le/a/b/b/c/k;->e(I)V

    invoke-static {v0, v2}, Le/a/b/b/c/k;->b(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_2

    invoke-virtual {p0, v0}, Le/a/b/b/c/k;->d(I)V

    invoke-static {v2, v2}, Le/a/b/b/c/k;->b(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    iget-object v3, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    invoke-virtual {v3, v1}, Le/a/b/f/c;->j(I)V

    iget v1, p0, Le/a/b/b/c/k;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Le/a/b/b/c/k;->j:I

    iget v0, p0, Le/a/b/b/c/k;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Le/a/b/b/c/k;->i:I

    iget-object p1, p0, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    if-nez p1, :cond_4

    iget-object p1, p0, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget v0, p0, Le/a/b/b/c/k;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget v0, p0, Le/a/b/b/c/k;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%04x: line %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Le/a/b/b/c/k;->a(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Le/a/b/d/c/v;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/a/b/f/c;->n(I)I

    return-void
.end method

.method public final h(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Le/a/b/b/c/k;->c:Le/a/b/f/c;

    invoke-virtual {v0, p1}, Le/a/b/f/c;->n(I)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Signed value where unsigned required: "

    invoke-static {v1, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Le/a/b/b/b/o$b;)Ljava/lang/String;
    .locals 2

    const-string v0, "v"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p1, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 2
    iget v1, v1, Le/a/b/d/b/k;->a:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/a/b/b/b/o$b;->b()Le/a/b/d/c/v;

    const/4 p1, 0x0

    throw p1
.end method
