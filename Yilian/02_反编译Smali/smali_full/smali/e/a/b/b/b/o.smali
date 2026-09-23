.class public final Le/a/b/b/b/o;
.super Le/a/b/f/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/b/o$c;,
        Le/a/b/b/b/o$b;,
        Le/a/b/b/b/o$a;
    }
.end annotation


# static fields
.field public static final c:Le/a/b/b/b/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/b/b/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/b/b/o;-><init>(I)V

    sput-object v0, Le/a/b/b/b/o;->c:Le/a/b/b/b/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    return-void
.end method

.method public static j(Le/a/b/b/b/i;)Le/a/b/b/b/o;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 2
    new-instance v1, Le/a/b/b/b/o$c;

    invoke-direct {v1, v0}, Le/a/b/b/b/o$c;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Le/a/b/b/b/i;->j(I)Le/a/b/b/b/h;

    move-result-object v4

    instance-of v5, v4, Le/a/b/b/b/p;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Le/a/b/b/b/p;

    .line 3
    iget-object v5, v5, Le/a/b/b/b/p;->e:Le/a/b/d/b/m;

    .line 4
    invoke-virtual {v4}, Le/a/b/b/b/h;->c()I

    move-result v4

    .line 5
    sget-object v6, Le/a/b/b/b/o$a;->b:Le/a/b/b/b/o$a;

    iget-object v7, v5, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v7, v7

    add-int/lit8 v8, v7, -0x1

    .line 6
    invoke-virtual {v1, v4, v8}, Le/a/b/b/b/o$c;->a(II)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    iget-object v9, v1, Le/a/b/b/b/o$c;->c:Le/a/b/d/b/m;

    invoke-virtual {v9, v8}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v9

    invoke-virtual {v5, v8}, Le/a/b/d/b/m;->f(I)Le/a/b/d/b/k;

    move-result-object v10

    invoke-static {v10}, Le/a/b/b/b/o$c;->e(Le/a/b/d/b/k;)Le/a/b/d/b/k;

    move-result-object v10

    if-nez v9, :cond_0

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_0
    if-nez v10, :cond_1

    .line 7
    invoke-virtual {v1, v4, v9, v6}, Le/a/b/b/b/o$c;->d(ILe/a/b/d/b/k;Le/a/b/b/b/o$a;)V

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v10, v9}, Le/a/b/d/b/k;->g(Le/a/b/d/b/k;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 9
    invoke-virtual {v1, v4, v9, v6}, Le/a/b/b/b/o$c;->d(ILe/a/b/d/b/k;Le/a/b/b/b/o$a;)V

    .line 10
    :goto_2
    invoke-virtual {v1, v4, v10}, Le/a/b/b/b/o$c;->f(ILe/a/b/d/b/k;)V

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11
    :cond_3
    instance-of v5, v4, Le/a/b/b/b/q;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Le/a/b/b/b/q;

    .line 12
    iget-object v5, v5, Le/a/b/b/b/q;->e:Le/a/b/d/b/k;

    .line 13
    invoke-virtual {v4}, Le/a/b/b/b/h;->c()I

    move-result v4

    invoke-virtual {v1, v4, v5}, Le/a/b/b/b/o$c;->f(ILe/a/b/d/b/k;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const p0, 0x7fffffff

    .line 14
    invoke-virtual {v1, p0, v2}, Le/a/b/b/b/o$c;->a(II)V

    iget-object p0, v1, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget v0, v1, Le/a/b/b/b/o$c;->b:I

    sub-int v0, p0, v0

    if-nez v0, :cond_6

    sget-object p0, Le/a/b/b/b/o;->c:Le/a/b/b/b/o;

    goto :goto_7

    :cond_6
    new-array v3, v0, [Le/a/b/b/b/o$b;

    if-ne p0, v0, :cond_7

    iget-object p0, v1, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object p0, v1, Le/a/b/b/b/o$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/o$b;

    if-eqz v4, :cond_8

    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v1

    move v1, v5

    goto :goto_4

    :cond_9
    :goto_5
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p0, Le/a/b/b/b/o;

    invoke-direct {p0, v0}, Le/a/b/b/b/o;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_a

    aget-object v4, v3, v1

    .line 15
    invoke-virtual {p0, v1, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 16
    :cond_a
    iput-boolean v2, p0, Le/a/b/f/i;->a:Z

    :goto_7
    return-object p0
.end method


# virtual methods
.method public i(I)Le/a/b/b/b/o$b;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/b/b/o$b;

    return-object p1
.end method
