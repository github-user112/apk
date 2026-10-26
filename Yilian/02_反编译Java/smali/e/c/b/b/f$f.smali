.class public Le/c/b/b/f$f;
.super Le/c/b/b/f$j;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/f<",
        "TK;TV;>.j;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/List;Le/c/b/b/f$i;)V
    .locals 0
    .param p1    # Le/c/b/b/f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Le/c/b/b/f<",
            "TK;TV;>.i;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Le/c/b/b/f$j;-><init>(Le/c/b/b/f;Ljava/lang/Object;Ljava/util/List;Le/c/b/b/f$i;)V

    return-void
.end method
