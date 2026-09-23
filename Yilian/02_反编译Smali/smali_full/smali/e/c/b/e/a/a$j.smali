.class public abstract Le/c/b/e/a/a$j;
.super Le/c/b/e/a/a;
.source ""

# interfaces
.implements Le/c/b/e/a/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/e/a/a<",
        "TV;>;",
        "Le/c/b/e/a/a$i<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/b/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-super {p0, p1}, Le/c/b/e/a/a;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-super {p0}, Le/c/b/e/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Le/c/b/e/a/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/b/e/a/a;->a:Ljava/lang/Object;

    instance-of v0, v0, Le/c/b/e/a/a$c;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    invoke-super {p0}, Le/c/b/e/a/a;->isDone()Z

    move-result v0

    return v0
.end method
