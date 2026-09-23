.class public final Le/a/b/b/c/v;
.super Le/a/b/b/c/s0;
.source ""


# instance fields
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b/b/c/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/b/c/m;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Le/a/b/b/c/s0;-><init>(Ljava/lang/String;Le/a/b/b/c/m;I)V

    new-instance p1, Le/a/b/b/c/u;

    invoke-direct {p1}, Le/a/b/b/c/u;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/a/b/b/c/x;->g(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/b/b/c/v;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Le/a/b/b/c/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/b/b/c/v;->f:Ljava/util/List;

    return-object v0
.end method

.method public l()V
    .locals 0

    return-void
.end method
