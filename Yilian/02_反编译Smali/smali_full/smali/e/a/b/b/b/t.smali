.class public final Le/a/b/b/b/t;
.super Le/a/b/f/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/b/t$a;
    }
.end annotation


# static fields
.field public static final c:Le/a/b/b/b/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/b/b/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/b/b/t;-><init>(I)V

    sput-object v0, Le/a/b/b/b/t;->c:Le/a/b/b/b/t;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    return-void
.end method

.method public static i(Le/a/b/b/b/i;I)Le/a/b/b/b/t;
    .locals 14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, Le/a/b/d/b/q;->d:Le/a/b/d/b/q;

    .line 1
    iget-object v3, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v3, v3

    .line 2
    new-array v4, v3, [Le/a/b/b/b/t$a;

    const/4 v5, 0x0

    move-object v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v6, v3, :cond_7

    invoke-virtual {p0, v6}, Le/a/b/b/b/i;->j(I)Le/a/b/b/b/h;

    move-result-object v10

    instance-of v11, v10, Le/a/b/b/b/e;

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    .line 3
    :cond_2
    iget-object v11, v10, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 4
    invoke-virtual {v11, v1}, Le/a/b/d/b/q;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 5
    iget v12, v11, Le/a/b/d/b/q;->c:I

    iget v13, v8, Le/a/b/d/b/q;->c:I

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    if-ne p1, v2, :cond_5

    if-nez v9, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    new-instance v8, Le/a/b/b/b/t$a;

    invoke-virtual {v10}, Le/a/b/b/b/h;->c()I

    move-result v9

    invoke-direct {v8, v9, v11}, Le/a/b/b/b/t$a;-><init>(ILe/a/b/d/b/q;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    new-instance p0, Le/a/b/b/b/t;

    invoke-direct {p0, v7}, Le/a/b/b/b/t;-><init>(I)V

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v7, :cond_8

    aget-object v0, v4, p1

    .line 7
    invoke-virtual {p0, p1, v0}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 8
    :cond_8
    iput-boolean v5, p0, Le/a/b/f/i;->a:Z

    return-object p0

    .line 9
    :cond_9
    sget-object p0, Le/a/b/b/b/t;->c:Le/a/b/b/b/t;

    return-object p0
.end method
