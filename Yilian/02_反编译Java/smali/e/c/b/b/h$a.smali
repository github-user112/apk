.class public Le/c/b/b/h$a;
.super Le/c/b/b/g0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/g0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/b/b/h;


# direct methods
.method public constructor <init>(Le/c/b/b/h;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/h$a;->a:Le/c/b/b/h;

    invoke-direct {p0}, Le/c/b/b/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/h$a;->a:Le/c/b/b/h;

    check-cast v0, Le/c/b/b/f;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Le/c/b/b/e;

    invoke-direct {v1, v0}, Le/c/b/b/e;-><init>(Le/c/b/b/f;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
