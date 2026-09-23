.class public abstract Le/a/b/b/b/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public final b:Le/a/b/b/b/j;

.field public final c:Le/a/b/d/b/q;

.field public final d:Le/a/b/d/b/l;


# direct methods
.method public constructor <init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Le/a/b/b/b/h;->a:I

    iput-object p1, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    iput-object p2, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    iput-object p3, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/b/b/x;
    .locals 5

    invoke-virtual {p1}, Le/a/b/d/b/k;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Le/a/b/d/b/k;->getType()Le/a/b/d/d/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/d/d/c;->j()Z

    move-result v0

    .line 1
    iget v2, p1, Le/a/b/d/b/k;->a:I

    iget v3, p2, Le/a/b/d/b/k;->a:I

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Le/a/b/b/b/k;->j:Le/a/b/b/b/j;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Le/a/b/b/b/k;->d:Le/a/b/b/b/j;

    goto :goto_1

    :cond_2
    sget-object v0, Le/a/b/b/b/k;->g:Le/a/b/b/b/j;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Le/a/b/b/b/k;->k:Le/a/b/b/b/j;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Le/a/b/b/b/k;->e:Le/a/b/b/b/j;

    goto :goto_1

    :cond_5
    sget-object v0, Le/a/b/b/b/k;->h:Le/a/b/b/b/j;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object v0, Le/a/b/b/b/k;->l:Le/a/b/b/b/j;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Le/a/b/b/b/k;->f:Le/a/b/b/b/j;

    goto :goto_1

    :cond_8
    sget-object v0, Le/a/b/b/b/k;->i:Le/a/b/b/b/j;

    :goto_1
    new-instance v1, Le/a/b/b/b/x;

    invoke-static {p1, p2}, Le/a/b/d/b/l;->l(Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Le/a/b/b/b/x;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Le/a/b/b/b/h;->a:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget v0, p0, Le/a/b/b/b/h;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%04x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Z)Ljava/lang/String;
.end method

.method public g(Le/a/b/e/a;)Le/a/b/b/b/h;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v1, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 3
    new-instance v2, Le/a/b/d/b/l;

    invoke-direct {v2, v1}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/a/b/e/a;->b(Le/a/b/d/b/k;)Le/a/b/d/b/k;

    move-result-object v5

    .line 4
    invoke-virtual {v2, v4, v5}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v3, v2, Le/a/b/f/i;->a:Z

    .line 6
    invoke-virtual {v2, v0}, Le/a/b/f/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 7
    :goto_1
    invoke-virtual {p0, v0}, Le/a/b/b/b/h;->j(Le/a/b/d/b/l;)Le/a/b/b/b/h;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Le/a/b/b/b/j;)Le/a/b/b/b/h;
.end method

.method public abstract i(I)Le/a/b/b/b/h;
.end method

.method public abstract j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
.end method

.method public abstract k(Le/a/b/f/a;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Le/a/b/b/b/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    invoke-virtual {v2}, Le/a/b/b/b/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 1
    iget-object v3, v2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const-string v5, " "

    const-string v6, ", "

    .line 2
    invoke-virtual {v2, v5, v6, v3, v4}, Le/a/b/f/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Le/a/b/b/b/h;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
