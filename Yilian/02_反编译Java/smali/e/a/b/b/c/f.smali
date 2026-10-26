.class public final Le/a/b/b/c/f;
.super Le/a/b/b/c/x;
.source ""


# instance fields
.field public final b:Le/a/b/d/c/w;

.field public final c:I

.field public final d:Le/a/b/d/c/w;

.field public e:Le/a/b/b/c/r0;

.field public final f:Le/a/b/d/c/v;

.field public final g:Le/a/b/b/c/e;

.field public h:Le/a/b/b/c/n;

.field public i:Le/a/b/b/c/c;


# direct methods
.method public constructor <init>(Le/a/b/d/c/w;ILe/a/b/d/c/w;Le/a/b/d/d/e;Le/a/b/d/c/v;)V
    .locals 0

    invoke-direct {p0}, Le/a/b/b/c/x;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    iput-object p1, p0, Le/a/b/b/c/f;->b:Le/a/b/d/c/w;

    iput p2, p0, Le/a/b/b/c/f;->c:I

    iput-object p3, p0, Le/a/b/b/c/f;->d:Le/a/b/d/c/w;

    move-object p2, p4

    check-cast p2, Le/a/b/f/d;

    .line 1
    iget-object p2, p2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p2, p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Le/a/b/b/c/r0;

    invoke-direct {p2, p4}, Le/a/b/b/c/r0;-><init>(Le/a/b/d/d/e;)V

    :goto_0
    iput-object p2, p0, Le/a/b/b/c/f;->e:Le/a/b/b/c/r0;

    iput-object p5, p0, Le/a/b/b/c/f;->f:Le/a/b/d/c/v;

    new-instance p2, Le/a/b/b/c/e;

    invoke-direct {p2, p1}, Le/a/b/b/c/e;-><init>(Le/a/b/d/c/w;)V

    iput-object p2, p0, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    iput-object p3, p0, Le/a/b/b/c/f;->h:Le/a/b/b/c/n;

    new-instance p1, Le/a/b/b/c/c;

    invoke-direct {p1}, Le/a/b/b/c/c;-><init>()V

    iput-object p1, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interfaces == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "thisClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 6

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v1, p1, Le/a/b/b/c/m;->m:Le/a/b/b/c/g0;

    .line 3
    iget-object v2, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 4
    iget-object v3, p1, Le/a/b/b/c/m;->c:Le/a/b/b/c/g0;

    .line 5
    iget-object v4, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 6
    iget-object v5, p0, Le/a/b/b/c/f;->b:Le/a/b/d/c/w;

    invoke-virtual {v0, v5}, Le/a/b/b/c/q0;->o(Le/a/b/d/c/w;)Le/a/b/b/c/p0;

    iget-object v5, p0, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    invoke-virtual {v5}, Le/a/b/b/c/e;->r()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget-object p1, p1, Le/a/b/b/c/m;->l:Le/a/b/b/c/g0;

    .line 8
    iget-object v5, p0, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    invoke-virtual {p1, v5}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    iget-object p1, p0, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    invoke-virtual {p1}, Le/a/b/b/c/e;->q()Le/a/b/d/c/c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v5, Le/a/b/b/c/n;

    invoke-direct {v5, p1}, Le/a/b/b/c/n;-><init>(Le/a/b/d/c/c;)V

    invoke-virtual {v1, v5}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/n;

    iput-object p1, p0, Le/a/b/b/c/f;->h:Le/a/b/b/c/n;

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/f;->d:Le/a/b/d/c/w;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Le/a/b/b/c/q0;->o(Le/a/b/d/c/w;)Le/a/b/b/c/p0;

    :cond_1
    iget-object p1, p0, Le/a/b/b/c/f;->e:Le/a/b/b/c/r0;

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/r0;

    iput-object p1, p0, Le/a/b/b/c/f;->e:Le/a/b/b/c/r0;

    :cond_2
    iget-object p1, p0, Le/a/b/b/c/f;->f:Le/a/b/d/c/v;

    if-eqz p1, :cond_3

    invoke-virtual {v4, p1}, Le/a/b/b/c/o0;->n(Le/a/b/d/c/v;)Le/a/b/b/c/n0;

    :cond_3
    iget-object p1, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    invoke-virtual {p1}, Le/a/b/b/c/c;->n()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    invoke-virtual {p1}, Le/a/b/b/c/c;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    invoke-virtual {v2, p1}, Le/a/b/b/c/g0;->m(Le/a/b/b/c/h0;)Le/a/b/b/c/h0;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/c;

    iput-object p1, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    invoke-virtual {v2, p1}, Le/a/b/b/c/g0;->l(Le/a/b/b/c/h0;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->j:Le/a/b/b/c/z;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 13

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    .line 1
    iget-object v1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v2, p0, Le/a/b/b/c/f;->b:Le/a/b/d/c/w;

    invoke-virtual {v1, v2}, Le/a/b/b/c/q0;->m(Le/a/b/d/c/w;)I

    move-result v2

    iget-object v3, p0, Le/a/b/b/c/f;->d:Le/a/b/d/c/w;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Le/a/b/b/c/q0;->m(Le/a/b/d/c/w;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Le/a/b/b/c/f;->e:Le/a/b/b/c/r0;

    invoke-static {v3}, Le/a/b/b/c/h0;->h(Le/a/b/b/c/h0;)I

    move-result v3

    iget-object v5, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    invoke-virtual {v5}, Le/a/b/b/c/c;->n()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget-object v5, p0, Le/a/b/b/c/f;->i:Le/a/b/b/c/c;

    invoke-virtual {v5}, Le/a/b/b/c/h0;->g()I

    move-result v5

    :goto_1
    iget-object v7, p0, Le/a/b/b/c/f;->f:Le/a/b/d/c/v;

    if-nez v7, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 4
    invoke-virtual {p1, v7}, Le/a/b/b/c/o0;->m(Le/a/b/d/c/v;)I

    move-result v4

    :goto_2
    iget-object p1, p0, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    invoke-virtual {p1}, Le/a/b/b/c/e;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    iget-object p1, p0, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    invoke-virtual {p1}, Le/a/b/b/c/h0;->g()I

    move-result p1

    :goto_3
    iget-object v7, p0, Le/a/b/b/c/f;->h:Le/a/b/b/c/n;

    invoke-static {v7}, Le/a/b/b/c/h0;->h(Le/a/b/b/c/h0;)I

    move-result v7

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/x;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Le/a/b/b/c/f;->b:Le/a/b/d/c/w;

    invoke-virtual {v8}, Le/a/b/d/c/w;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  class_idx:           "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    const-string v8, "  access_flags:        "

    invoke-static {v2, v0, p2, v6, v8}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, p0, Le/a/b/b/c/f;->c:I

    const/16 v9, 0x7631

    const/4 v10, 0x1

    .line 5
    invoke-static {v8, v9, v10}, Ld/s/y;->O(III)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  superclass_idx:      "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " // "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Le/a/b/b/c/f;->d:Le/a/b/d/c/w;

    const-string v10, "<none>"

    if-nez v9, :cond_4

    move-object v9, v10

    goto :goto_4

    :cond_4
    invoke-virtual {v9}, Le/a/b/d/c/w;->a()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  interfaces_off:      "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, p2, v6}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    if-eqz v3, :cond_5

    iget-object v0, p0, Le/a/b/b/c/f;->e:Le/a/b/b/c/r0;

    .line 7
    iget-object v0, v0, Le/a/b/b/c/r0;->e:Le/a/b/d/d/e;

    .line 8
    move-object v6, v0

    check-cast v6, Le/a/b/f/d;

    .line 9
    iget-object v6, v6, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_5

    const-string v11, "    "

    .line 10
    invoke-static {v11}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0, v9}, Le/a/b/d/d/e;->b(I)Le/a/b/d/d/c;

    move-result-object v12

    invoke-virtual {v12}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p2, v12, v11}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    const-string v0, "  source_file_idx:     "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/a/b/b/c/f;->f:Le/a/b/d/c/v;

    if-nez v6, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v6}, Le/a/b/d/c/v;->a()Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {p2, v6, v0}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  annotations_off:     "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  class_data_off:      "

    invoke-static {v5, v0, p2, v6, v8}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "  static_values_off:   "

    invoke-static {p1, v0, p2, v6, v8}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v0, p2, v6}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_7
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    iget v0, p0, Le/a/b/b/c/f;->c:I

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v1}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v3}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v4}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v5}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, p1}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v7}, Le/a/b/f/c;->k(I)V

    return-void
.end method
