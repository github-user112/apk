.class public abstract Le/c/b/b/c0;
.super Ljava/util/AbstractMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field public transient b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/c0;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Le/c/b/b/f$a;

    .line 1
    new-instance v1, Le/c/b/b/f$a$a;

    invoke-direct {v1, v0}, Le/c/b/b/f$a$a;-><init>(Le/c/b/b/f$a;)V

    .line 2
    iput-object v1, p0, Le/c/b/b/c0;->a:Ljava/util/Set;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/c0;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Le/c/b/b/b0;

    invoke-direct {v0, p0}, Le/c/b/b/b0;-><init>(Ljava/util/Map;)V

    .line 2
    iput-object v0, p0, Le/c/b/b/c0;->b:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
