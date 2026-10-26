.class public Le/a/b/b/c/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Le/a/b/b/b/t$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/b/b/c/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/b/b/t$a;

    check-cast p2, Le/a/b/b/b/t$a;

    .line 1
    iget p1, p1, Le/a/b/b/b/t$a;->a:I

    iget p2, p2, Le/a/b/b/b/t$a;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
