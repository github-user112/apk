.class public final Le/a/b/d/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/f/g;


# instance fields
.field public final a:I

.field public final b:Le/a/b/d/b/f;

.field public final c:Le/a/b/f/f;

.field public final d:I


# direct methods
.method public constructor <init>(ILe/a/b/d/b/f;Le/a/b/f/f;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_10

    :try_start_0
    invoke-virtual {p2}, Le/a/b/f/i;->e()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    iget-object v0, p2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_f

    add-int/lit8 v1, v0, -0x2

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 2
    invoke-virtual {p2, v1}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v3

    .line 3
    iget-object v3, v3, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 4
    iget v3, v3, Le/a/b/d/b/n;->e:I

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insns["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is a branch or can throw"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 7
    iget v0, v0, Le/a/b/d/b/n;->e:I

    if-eq v0, v2, :cond_e

    .line 8
    :try_start_1
    invoke-virtual {p3}, Le/a/b/f/i;->e()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_d

    if-ltz p4, :cond_c

    .line 9
    iget v1, p3, Le/a/b/f/f;->c:I

    iget-boolean v3, p3, Le/a/b/f/f;->d:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v5, p3, Le/a/b/f/f;->b:[I

    aget v5, v5, v3

    if-ne v5, p4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    neg-int v3, v1

    goto :goto_4

    :cond_4
    move v3, v1

    const/4 v5, -0x1

    :goto_2
    add-int/lit8 v6, v5, 0x1

    if-le v3, v6, :cond_6

    sub-int v6, v3, v5

    shr-int/2addr v6, v2

    add-int/2addr v6, v5

    iget-object v7, p3, Le/a/b/f/f;->b:[I

    aget v7, v7, v6

    if-gt p4, v7, :cond_5

    move v3, v6

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    if-eq v3, v1, :cond_8

    iget-object v1, p3, Le/a/b/f/f;->b:[I

    aget v1, v1, v3

    if-ne p4, v1, :cond_7

    goto :goto_4

    :cond_7
    neg-int v1, v3

    goto :goto_3

    :cond_8
    neg-int v1, v1

    :goto_3
    add-int/lit8 v3, v1, -0x1

    :goto_4
    if-ltz v3, :cond_9

    move v0, v3

    :cond_9
    if-ltz v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    .line 10
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "primarySuccessor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " not in successors "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_6
    iput p1, p0, Le/a/b/d/b/a;->a:I

    iput-object p2, p0, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    iput-object p3, p0, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    iput p4, p0, Le/a/b/d/b/a;->d:I

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Le/a/b/d/b/a;->a:I

    return v0
.end method

.method public b()Le/a/b/d/b/e;
    .locals 2

    iget-object v0, p0, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    .line 1
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/b/d/b/a;->a:I

    invoke-static {v1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
