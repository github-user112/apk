.class public Le/c/b/b/n$e;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/b/b/n;


# direct methods
.method public constructor <init>(Le/c/b/b/n;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/n$e;->a:Le/c/b/b/n;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Le/c/b/b/n$e;->a:Le/c/b/b/n;

    invoke-virtual {v0}, Le/c/b/b/n;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/n$e;->a:Le/c/b/b/n;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Le/c/b/b/m;

    invoke-direct {v1, v0}, Le/c/b/b/m;-><init>(Le/c/b/b/n;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Le/c/b/b/n$e;->a:Le/c/b/b/n;

    .line 1
    iget v0, v0, Le/c/b/b/n;->h:I

    return v0
.end method
