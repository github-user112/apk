.class public Le/c/b/b/t$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Le/c/b/b/t$a;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Le/c/b/b/t$a;->b:I

    iput-boolean v0, p0, Le/c/b/b/t$a;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Le/c/b/b/t$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Le/c/b/b/t$a;->b:I

    iput-boolean p1, p0, Le/c/b/b/t$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Le/c/b/b/t;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/t<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/c/b/b/t$a;->c:Z

    iget v1, p0, Le/c/b/b/t$a;->b:I

    iget-object v2, p0, Le/c/b/b/t$a;->a:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1
    sget-object v0, Le/c/b/b/l0;->g:Le/c/b/b/t;

    check-cast v0, Le/c/b/b/l0;

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v0, :cond_1

    aget-object v1, v2, v4

    aget-object v4, v2, v0

    invoke-static {v1, v4}, Ld/s/y;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Le/c/b/b/l0;

    invoke-direct {v1, v3, v2, v0}, Le/c/b/b/l0;-><init>([I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto/16 :goto_3

    :cond_1
    array-length v5, v2

    shr-int/2addr v5, v0

    invoke-static {v1, v5}, Le/c/b/a/f;->e(II)I

    invoke-static {v1}, Le/c/b/b/u;->h(I)I

    move-result v5

    if-ne v1, v0, :cond_2

    .line 2
    aget-object v4, v2, v4

    aget-object v0, v2, v0

    invoke-static {v4, v0}, Ld/s/y;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v5, -0x1

    new-array v5, v5, [I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge v4, v1, :cond_5

    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v7, 0x0

    aget-object v9, v2, v8

    add-int/2addr v7, v0

    aget-object v7, v2, v7

    invoke-static {v9, v7}, Ld/s/y;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Le/c/b/a/f;->p(I)I

    move-result v10

    :goto_1
    and-int/2addr v10, v3

    aget v11, v5, v10

    if-ne v11, v6, :cond_3

    aput v8, v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    aget-object v12, v2, v11

    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple entries with same key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v0, v11

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v3, v5

    .line 3
    :goto_2
    new-instance v0, Le/c/b/b/l0;

    invoke-direct {v0, v3, v2, v1}, Le/c/b/b/l0;-><init>([I[Ljava/lang/Object;I)V

    :goto_3
    return-object v0
.end method

.method public final b(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Le/c/b/b/t$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v1, v0

    invoke-static {v1, p1}, Le/c/b/b/q$b;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le/c/b/b/t$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/b/b/t$a;->c:Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Le/c/b/b/t$a;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Le/c/b/b/t$a<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Le/c/b/b/t$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Le/c/b/b/t$a;->b(I)V

    invoke-static {p1, p2}, Ld/s/y;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Le/c/b/b/t$a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/t$a;->b:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/c/b/b/t$a;->b:I

    return-object p0
.end method
