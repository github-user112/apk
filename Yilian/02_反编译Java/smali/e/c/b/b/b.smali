.class public abstract Le/c/b/b/b;
.super Le/c/b/b/w0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/w0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Le/c/b/b/b$a;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/b/w0;-><init>()V

    sget-object v0, Le/c/b/b/b$a;->b:Le/c/b/b/b$a;

    iput-object v0, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    sget-object v0, Le/c/b/b/b$a;->d:Le/c/b/b/b$a;

    iget-object v1, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    .line 1
    sget-object v1, Le/c/b/b/b$a;->c:Le/c/b/b/b$a;

    iput-object v0, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    move-object v0, p0

    check-cast v0, Le/c/b/b/q0;

    .line 2
    :cond_1
    iget-object v4, v0, Le/c/b/b/q0;->c:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Le/c/b/b/q0;->c:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Le/c/b/b/q0;->d:Le/c/b/b/r0;

    iget-object v5, v5, Le/c/b/b/r0;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3
    :cond_2
    iput-object v1, v0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    const/4 v4, 0x0

    .line 4
    :goto_1
    iput-object v4, p0, Le/c/b/b/b;->b:Ljava/lang/Object;

    iget-object v0, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    if-eq v0, v1, :cond_3

    sget-object v0, Le/c/b/b/b$a;->a:Le/c/b/b/b$a;

    iput-object v0, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_4
    return v3

    :cond_5
    return v2

    .line 5
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/c/b/b/b$a;->b:Le/c/b/b/b$a;

    iput-object v0, p0, Le/c/b/b/b;->a:Le/c/b/b/b$a;

    iget-object v0, p0, Le/c/b/b/b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Le/c/b/b/b;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
