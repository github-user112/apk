.class public Le/c/b/b/q0;
.super Le/c/b/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Le/c/b/b/r0;


# direct methods
.method public constructor <init>(Le/c/b/b/r0;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/q0;->d:Le/c/b/b/r0;

    invoke-direct {p0}, Le/c/b/b/b;-><init>()V

    iget-object p1, p0, Le/c/b/b/q0;->d:Le/c/b/b/r0;

    iget-object p1, p1, Le/c/b/b/r0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Le/c/b/b/q0;->c:Ljava/util/Iterator;

    return-void
.end method
