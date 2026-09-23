.class public final Le/c/c/d/d/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/c/c/d/d/a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/c/d/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/c/d/d/a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/c/d/d/c;->a:Le/c/c/d/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/c/d/d/c;->b:Ljava/util/List;

    new-instance v1, Le/c/c/d/d/b;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Le/c/c/d/d/b;-><init>(Le/c/c/d/d/a;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
