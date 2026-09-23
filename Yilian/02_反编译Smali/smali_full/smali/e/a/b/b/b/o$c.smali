.class public Le/a/b/b/b/o$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/b/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Le/a/b/d/b/m;

.field public d:[I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Le/a/b/b/b/o$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    iput-object v0, p0, Le/a/b/b/b/o$c;->d:[I

    iput p1, p0, Le/a/b/b/b/o$c;->e:I

    return-void
.end method

.method public static e(Le/a/b/d/b/k;)Le/a/b/d/b/k;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le/a/b/d/b/k;->getType()Le/a/b/d/d/c;

    move-result-object v0

    sget-object v1, Le/a/b/d/d/c;->p:Le/a/b/d/d/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Le/a/b/d/d/c;->s:Le/a/b/d/d/c;

    .line 1
    iget p0, p0, Le/a/b/d/b/k;->a:I

    .line 2
    invoke-static {p0, v0}, Le/a/b/d/b/k;->i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    iget-object v0, p0, Le/a/b/b/b/o$c;->d:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Le/a/b/b/b/o$c;->e:I

    if-ne p1, v3, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v3, p0, Le/a/b/b/b/o$c;->e:I

    if-lt p1, v3, :cond_7

    if-nez v0, :cond_2

    iget-object p1, p0, Le/a/b/b/b/o$c;->d:[I

    array-length p1, p1

    if-lt p2, p1, :cond_6

    :cond_2
    add-int/2addr p2, v1

    new-instance p1, Le/a/b/d/b/m;

    invoke-direct {p1, p2}, Le/a/b/d/b/m;-><init>(I)V

    new-array p2, p2, [I

    const/4 v1, -0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    if-nez v0, :cond_5

    iget-object v0, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    .line 1
    iget-object v1, v0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v1, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 2
    invoke-virtual {v0, v3}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v4}, Le/a/b/d/b/m;->g(Le/a/b/d/b/k;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3
    :cond_4
    iget-object v0, p0, Le/a/b/b/b/o$c;->d:[I

    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object p1, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    iput-object p2, p0, Le/a/b/b/b/o$c;->d:[I

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final b(ILe/a/b/b/b/o$a;Le/a/b/d/b/k;)V
    .locals 0

    .line 1
    iget p3, p3, Le/a/b/d/b/k;->a:I

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(ILe/a/b/b/b/o$a;Le/a/b/d/b/k;)V
    .locals 3

    sget-object v0, Le/a/b/b/b/o$a;->a:Le/a/b/b/b/o$a;

    if-eq p2, v0, :cond_1

    .line 1
    iget v0, p3, Le/a/b/d/b/k;->a:I

    .line 2
    iget-object v1, p0, Le/a/b/b/b/o$c;->d:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/b/o$b;

    .line 3
    iget v2, v1, Le/a/b/b/b/o$b;->a:I

    if-ne v2, p1, :cond_0

    .line 4
    iget-object v2, v1, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 5
    invoke-virtual {v2, p3}, Le/a/b/d/b/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Le/a/b/b/b/o$b;->f(Le/a/b/b/b/o$a;)Le/a/b/b/b/o$b;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    invoke-virtual {p1, p3}, Le/a/b/d/b/m;->h(Le/a/b/d/b/k;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Le/a/b/b/b/o$c;->d(ILe/a/b/d/b/k;Le/a/b/b/b/o$a;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(ILe/a/b/d/b/k;Le/a/b/b/b/o$a;)V
    .locals 7

    .line 1
    iget v0, p2, Le/a/b/d/b/k;->a:I

    .line 2
    invoke-static {p2}, Le/a/b/b/b/o$c;->e(Le/a/b/d/b/k;)Le/a/b/d/b/k;

    move-result-object p2

    invoke-virtual {p0, p1, v0}, Le/a/b/b/b/o$c;->a(II)V

    iget-object v1, p0, Le/a/b/b/b/o$c;->d:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    iget-object v4, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/o$b;

    if-nez v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v5, v4, Le/a/b/b/b/o$b;->a:I

    if-eq v5, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_4

    .line 5
    :cond_2
    iget-object v4, v4, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    invoke-virtual {v4, p2}, Le/a/b/d/b/k;->g(Le/a/b/d/b/k;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_4
    :goto_2
    iget-object v4, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    invoke-virtual {v4, p2}, Le/a/b/d/b/m;->h(Le/a/b/d/b/k;)V

    iget-object v4, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Le/a/b/b/b/o$c;->b:I

    add-int/2addr v4, v1

    iput v4, p0, Le/a/b/b/b/o$c;->b:I

    .line 7
    iget v4, p2, Le/a/b/d/b/k;->a:I

    move-object v5, v3

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    .line 8
    iget-object v5, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/b/b/o$b;

    if-nez v5, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    iget-object v6, v5, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    .line 10
    iget v6, v6, Le/a/b/d/b/k;->a:I

    if-ne v6, v4, :cond_5

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    .line 11
    iget-object v2, p0, Le/a/b/b/b/o$c;->d:[I

    aput v0, v2, v4

    .line 12
    iget v2, v5, Le/a/b/b/b/o$b;->a:I

    if-ne v2, p1, :cond_8

    .line 13
    iget-object v2, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    sget-object v4, Le/a/b/b/b/o$a;->b:Le/a/b/b/b/o$a;

    invoke-virtual {v5, v4}, Le/a/b/b/b/o$b;->f(Le/a/b/b/b/o$a;)Le/a/b/b/b/o$b;

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    return-void

    .line 14
    :cond_9
    invoke-virtual {p0, p1, p3, p2}, Le/a/b/b/b/o$c;->b(ILe/a/b/b/b/o$a;Le/a/b/d/b/k;)V

    goto :goto_6

    :goto_5
    throw v3

    :goto_6
    goto :goto_5
.end method

.method public f(ILe/a/b/d/b/k;)V
    .locals 8

    .line 1
    iget v0, p2, Le/a/b/d/b/k;->a:I

    .line 2
    invoke-static {p2}, Le/a/b/b/b/o$c;->e(Le/a/b/d/b/k;)Le/a/b/d/b/k;

    move-result-object p2

    invoke-virtual {p0, p1, v0}, Le/a/b/b/b/o$c;->a(II)V

    iget-object v1, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    invoke-virtual {v1, v0}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v1

    invoke-virtual {p2, v1}, Le/a/b/d/b/k;->g(Le/a/b/d/b/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    .line 3
    iget-object v3, v2, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3

    iget-object v6, v2, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v6, v6, v4

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, Le/a/b/d/b/k;->k(Le/a/b/d/b/k;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_4

    .line 4
    sget-object v2, Le/a/b/b/b/o$a;->d:Le/a/b/b/b/o$a;

    invoke-virtual {p0, p1, v2, v6}, Le/a/b/b/b/o$c;->c(ILe/a/b/b/b/o$a;Le/a/b/d/b/k;)V

    :cond_4
    iget-object v2, p0, Le/a/b/b/b/o$c;->d:[I

    aget v2, v2, v0

    const-string v3, "spec == null"

    const-string v4, "spec.getLocalItem() == null"

    const-string v6, "address < 0"

    if-nez v1, :cond_a

    if-ltz v2, :cond_6

    iget-object v1, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/b/b/o$b;

    .line 5
    iget v7, v1, Le/a/b/b/b/o$b;->a:I

    if-ne v7, p1, :cond_6

    .line 6
    iget-object v7, v1, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    invoke-virtual {v7, p2}, Le/a/b/d/b/k;->g(Le/a/b/d/b/k;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7
    iget-object p1, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Le/a/b/b/b/o$c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/a/b/b/b/o$c;->b:I

    iget-object p1, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    invoke-virtual {p1, p2}, Le/a/b/d/b/m;->g(Le/a/b/d/b/k;)V

    iget-object p1, p0, Le/a/b/b/b/o$c;->d:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_5
    sget-object v5, Le/a/b/b/b/o$a;->c:Le/a/b/b/b/o$a;

    invoke-virtual {v1, v5}, Le/a/b/b/b/o$b;->f(Le/a/b/b/b/o$a;)Le/a/b/b/b/o$b;

    iget-object v5, p0, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-lez v0, :cond_7

    iget-object v1, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Le/a/b/d/b/k;->j()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Le/a/b/b/b/o$a;->f:Le/a/b/b/b/o$a;

    invoke-virtual {p0, p1, v2, v1}, Le/a/b/b/b/o$c;->c(ILe/a/b/b/b/o$a;Le/a/b/d/b/k;)V

    :cond_7
    invoke-virtual {p2}, Le/a/b/d/b/k;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v1, Le/a/b/b/b/o$a;->e:Le/a/b/b/b/o$a;

    invoke-virtual {p0, p1, v1, v0}, Le/a/b/b/b/o$c;->c(ILe/a/b/b/b/o$a;Le/a/b/d/b/k;)V

    .line 8
    :cond_8
    iget p2, p2, Le/a/b/d/b/k;->a:I

    if-ltz p1, :cond_9

    .line 9
    :try_start_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_a
    iget p2, v1, Le/a/b/d/b/k;->a:I

    if-ltz p1, :cond_b

    .line 11
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
