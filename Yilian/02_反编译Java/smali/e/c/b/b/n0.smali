.class public final Le/c/b/b/n0;
.super Le/c/b/b/j0;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/j0<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:Le/c/b/b/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/b/n0;

    invoke-direct {v0}, Le/c/b/b/n0;-><init>()V

    sput-object v0, Le/c/b/b/n0;->a:Le/c/b/b/n0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/b/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Le/c/b/b/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Le/c/b/b/j0<",
            "TS;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/c/b/b/i0;->a:Le/c/b/b/i0;

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
