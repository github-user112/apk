.class public final Le/a/b/b/c/u;
.super Le/a/b/b/c/x;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/b/c/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 0

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->d:Le/a/b/b/c/z;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 13

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->d:Le/a/b/b/c/g0;

    .line 2
    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    .line 3
    iget-object v1, p1, Le/a/b/b/c/m;->b:Le/a/b/b/c/g0;

    .line 4
    iget-object v2, p1, Le/a/b/b/c/m;->d:Le/a/b/b/c/g0;

    .line 5
    invoke-virtual {v1}, Le/a/b/b/c/l0;->c()I

    move-result v1

    invoke-virtual {v2}, Le/a/b/b/c/l0;->c()I

    move-result v3

    .line 6
    invoke-virtual {v2}, Le/a/b/b/c/l0;->g()V

    iget v2, v2, Le/a/b/b/c/g0;->i:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    .line 7
    iget-object v2, p1, Le/a/b/b/c/m;->a:Le/a/b/b/a;

    .line 8
    iget v2, v2, Le/a/b/b/a;->b:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    const-string v2, "037"

    goto :goto_0

    :cond_0
    const-string v2, "035"

    :goto_0
    const-string v5, "dex\n"

    const-string v6, "\u0000"

    .line 9
    invoke-static {v5, v2, v6}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v5

    const v6, 0x12345678

    const/16 v7, 0x70

    const-string v8, "file size not yet known"

    const/16 v9, 0x8

    const/4 v10, 0x4

    if-eqz v5, :cond_2

    const-string v5, "magic: "

    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v11, Le/a/b/d/c/v;

    invoke-direct {v11, v2}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Le/a/b/d/c/v;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v9, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const-string v5, "checksum"

    invoke-virtual {p2, v10, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/16 v5, 0x14

    const-string v11, "signature"

    invoke-virtual {p2, v5, v11}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file_size:       "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v11, p1, Le/a/b/b/c/m;->p:I

    if-ltz v11, :cond_1

    const-string v12, "header_size:     "

    .line 12
    invoke-static {v11, v5, p2, v10, v12}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "endian_tag:      "

    invoke-static {v7, v5, p2, v10, v11}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v10, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const-string v5, "link_size:       0"

    invoke-virtual {p2, v10, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const-string v5, "link_off:        0"

    invoke-virtual {p2, v10, v5}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "map_off:         "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_3

    .line 14
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {p2, v12}, Le/a/b/f/c;->j(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v4}, Le/a/b/f/c;->o(I)V

    .line 15
    iget v2, p1, Le/a/b/b/c/m;->p:I

    if-ltz v2, :cond_13

    .line 16
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v7}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v6}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v9}, Le/a/b/f/c;->o(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    .line 17
    iget-object v0, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 18
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v2, v0, Le/a/b/b/c/o0;->f:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    :goto_3
    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "string_ids_size: "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "string_ids_off:  "

    invoke-static {v2, v4, p2, v10, v6}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v4, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_5
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    .line 19
    iget-object v0, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 20
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v2, v0, Le/a/b/b/c/q0;->f:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    :goto_4
    const/high16 v4, 0x10000

    if-gt v2, v4, :cond_12

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "type_ids_size:   "

    invoke-static {v6}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "type_ids_off:    "

    invoke-static {v2, v6, p2, v10, v7}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0, v6, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_7
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    .line 21
    iget-object v0, p1, Le/a/b/b/c/m;->h:Le/a/b/b/c/k0;

    .line 22
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v2, v0, Le/a/b/b/c/k0;->f:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    :goto_5
    if-gt v2, v4, :cond_11

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "proto_ids_size:  "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "proto_ids_off:   "

    invoke-static {v2, v4, p2, v10, v6}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v4, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_9
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    .line 23
    iget-object v0, p1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 24
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v2, v0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    :goto_6
    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "field_ids_size:  "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "field_ids_off:   "

    invoke-static {v2, v4, p2, v10, v6}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v4, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_b
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    .line 25
    iget-object v0, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 26
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v2, v0, Le/a/b/b/c/f0;->f:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Le/a/b/b/c/l0;->c()I

    move-result v0

    :goto_7
    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "method_ids_size: "

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "method_ids_off:  "

    invoke-static {v2, v4, p2, v10, v6}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v4, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_d
    invoke-virtual {p2, v2}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    .line 27
    iget-object p1, p1, Le/a/b/b/c/m;->k:Le/a/b/b/c/g;

    .line 28
    invoke-virtual {p1}, Le/a/b/b/c/l0;->g()V

    iget-object v0, p1, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {p1}, Le/a/b/b/c/l0;->c()I

    move-result v5

    :goto_8
    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "class_defs_size: "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "class_defs_off:  "

    invoke-static {v0, p1, p2, v10, v2}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v5, p1, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_f
    invoke-virtual {p2, v0}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v5}, Le/a/b/f/c;->k(I)V

    .line 29
    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "data_size:       "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "data_off:        "

    invoke-static {v3, p1, p2, v10, v0}, Le/a/c/a/a;->n(ILjava/lang/StringBuilder;Le/a/b/f/c;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1, p1, p2, v10}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_10
    invoke-virtual {p2, v3}, Le/a/b/f/c;->k(I)V

    invoke-virtual {p2, v1}, Le/a/b/f/c;->k(I)V

    return-void

    .line 30
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "too many proto ids"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_12
    new-instance p1, Le/a/a/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many type references: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; max is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Le/a/b/a/a/a;->a()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1

    .line 32
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method
