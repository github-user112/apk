.class public Le/c/b/b/n$c;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/b/b/n;


# direct methods
.method public constructor <init>(Le/c/b/b/n;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    invoke-virtual {v0}, Le/c/b/b/n;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    invoke-virtual {v0, p1}, Le/c/b/b/n;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Le/c/b/b/k;

    invoke-direct {v1, v0}, Le/c/b/b/k;-><init>(Le/c/b/b/n;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    .line 1
    invoke-virtual {v0, p1}, Le/c/b/b/n;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    invoke-static {v0, p1}, Le/c/b/b/n;->a(Le/c/b/b/n;I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Le/c/b/b/n$c;->a:Le/c/b/b/n;

    .line 1
    iget v0, v0, Le/c/b/b/n;->h:I

    return v0
.end method
