.class public Le/c/a/b/p/e$a;
.super Le/c/a/b/p/e$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/b/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Le/c/a/b/p/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/c/a/b/p/e$f;-><init>(Le/c/a/b/p/e;Le/c/a/b/p/b;)V

    return-void
.end method
