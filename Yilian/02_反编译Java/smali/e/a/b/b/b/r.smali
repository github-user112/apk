.class public final Le/a/b/b/b/r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/a/b/b/b/s;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/b/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b/b/a;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/a/b/b/b/s;

    invoke-direct {v0, p1, p2, p4, p5}, Le/a/b/b/b/s;-><init>(Le/a/b/b/a;III)V

    iput-object v0, p0, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/b/b/b/r;->b:Ljava/util/ArrayList;

    return-void
.end method
