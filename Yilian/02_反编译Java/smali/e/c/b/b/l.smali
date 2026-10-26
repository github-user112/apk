.class public Le/c/b/b/l;
.super Le/c/b/b/n$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/n<",
        "TK;TV;>.b<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/c/b/b/n;


# direct methods
.method public constructor <init>(Le/c/b/b/n;)V
    .locals 1

    iput-object p1, p0, Le/c/b/b/l;->e:Le/c/b/b/n;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/c/b/b/n$b;-><init>(Le/c/b/b/n;Le/c/b/b/k;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/c/b/b/n$d;

    iget-object v1, p0, Le/c/b/b/l;->e:Le/c/b/b/n;

    invoke-direct {v0, v1, p1}, Le/c/b/b/n$d;-><init>(Le/c/b/b/n;I)V

    return-object v0
.end method
