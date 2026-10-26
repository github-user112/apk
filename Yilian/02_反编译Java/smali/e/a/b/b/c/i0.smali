.class public final Le/a/b/b/c/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/f/k;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b/f/k;",
        "Ljava/lang/Comparable<",
        "Le/a/b/b/c/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/b/d/c/s;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/b/c/i0;

    .line 1
    iget-object p1, p1, Le/a/b/b/c/i0;->a:Le/a/b/d/c/s;

    const/4 p1, 0x0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Le/a/b/b/c/i0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Le/a/b/b/c/i0;

    iget-object p1, p1, Le/a/b/b/c/i0;->a:Le/a/b/d/c/s;

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
