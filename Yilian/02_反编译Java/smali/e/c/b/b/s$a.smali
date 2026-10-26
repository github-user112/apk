.class public final Le/c/b/b/s$a;
.super Le/c/b/b/q$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/q$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Le/c/b/b/q$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Le/c/b/b/s$a;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Le/c/b/b/s$a<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Le/c/b/b/q$a;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Le/c/b/b/q$a;->a:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    array-length v2, v1

    invoke-static {v2, v0}, Le/c/b/b/q$b;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le/c/b/b/q$a;->a:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Le/c/b/b/q$a;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Le/c/b/b/q$a;->a:[Ljava/lang/Object;

    :goto_0
    iput-boolean v3, p0, Le/c/b/b/q$a;->c:Z

    .line 3
    :cond_1
    iget-object v0, p0, Le/c/b/b/q$a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/q$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/c/b/b/q$a;->b:I

    aput-object p1, v0, v1

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public c()Le/c/b/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/s<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/c/b/b/q$a;->c:Z

    iget-object v0, p0, Le/c/b/b/q$a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/q$a;->b:I

    invoke-static {v0, v1}, Le/c/b/b/s;->i([Ljava/lang/Object;I)Le/c/b/b/s;

    move-result-object v0

    return-object v0
.end method
