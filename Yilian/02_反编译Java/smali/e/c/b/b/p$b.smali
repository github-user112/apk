.class public final Le/c/b/b/p$b;
.super Le/c/b/b/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/c/b/b/p;-><init>(Le/c/b/b/p$a;)V

    iput p1, p0, Le/c/b/b/p$b;->d:I

    return-void
.end method


# virtual methods
.method public a(II)Le/c/b/b/p;
    .locals 0

    return-object p0
.end method

.method public b(JJ)Le/c/b/b/p;
    .locals 0

    return-object p0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Le/c/b/b/p;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Le/c/b/b/p;"
        }
    .end annotation

    return-object p0
.end method

.method public d(ZZ)Le/c/b/b/p;
    .locals 0

    return-object p0
.end method

.method public e(ZZ)Le/c/b/b/p;
    .locals 0

    return-object p0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Le/c/b/b/p$b;->d:I

    return v0
.end method
