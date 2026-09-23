.class public final Le/a/b/d/c/c$a;
.super Le/a/b/f/d;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/d/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/f/d;",
        "Ljava/lang/Comparable<",
        "Le/a/b/d/c/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/d/c/c$a;

    invoke-virtual {p0, p1}, Le/a/b/d/c/c$a;->i(Le/a/b/d/c/c$a;)I

    move-result p1

    return p1
.end method

.method public i(Le/a/b/d/c/c$a;)I
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 2
    invoke-virtual {p0, v4}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/d/c/a;

    invoke-virtual {p1, v4}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/d/c/a;

    invoke-virtual {v5, v6}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v0, v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v3
.end method
