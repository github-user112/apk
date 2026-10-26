.class public final Le/c/b/b/l0$b;
.super Le/c/b/b/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/u<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient c:Le/c/b/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/t<",
            "TK;*>;"
        }
    .end annotation
.end field

.field public final transient d:Le/c/b/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/s<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/b/b/t;Le/c/b/b/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/b/t<",
            "TK;*>;",
            "Le/c/b/b/s<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/b/u;-><init>()V

    iput-object p1, p0, Le/c/b/b/l0$b;->c:Le/c/b/b/t;

    iput-object p2, p0, Le/c/b/b/l0$b;->d:Le/c/b/b/s;

    return-void
.end method


# virtual methods
.method public a()Le/c/b/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/s<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/l0$b;->d:Le/c/b/b/s;

    return-object v0
.end method

.method public b([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/b/b/l0$b;->d:Le/c/b/b/s;

    .line 2
    invoke-virtual {v0, p1, p2}, Le/c/b/b/s;->b([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Le/c/b/b/l0$b;->c:Le/c/b/b/t;

    invoke-virtual {v0, p1}, Le/c/b/b/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Le/c/b/b/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/w0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/b/b/l0$b;->d:Le/c/b/b/s;

    .line 2
    invoke-virtual {v0}, Le/c/b/b/s;->n()Le/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/l0$b;->g()Le/c/b/b/w0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Le/c/b/b/l0$b;->c:Le/c/b/b/t;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
