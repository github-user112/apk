.class public abstract La/c/a/p$e;
.super La/c/a/p;
.source ""

# interfaces
.implements La/c/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "La/c/a/p$e<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "La/c/a/p<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public b:La/c/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/c/a/p;-><init>()V

    .line 1
    new-instance v0, La/c/a/n;

    invoke-direct {v0}, La/c/a/n;-><init>()V

    .line 2
    iput-object v0, p0, La/c/a/p$e;->b:La/c/a/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()La/c/a/x;
    .locals 1

    invoke-super {p0}, La/c/a/p;->getDefaultInstanceForType()La/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final makeImmutable()V
    .locals 2

    invoke-super {p0}, La/c/a/p;->makeImmutable()V

    iget-object v0, p0, La/c/a/p$e;->b:La/c/a/n;

    .line 1
    iget-boolean v1, v0, La/c/a/n;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v1}, La/c/a/c0;->g()V

    const/4 v1, 0x1

    iput-boolean v1, v0, La/c/a/n;->b:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic newBuilderForType()La/c/a/x$a;
    .locals 1

    invoke-super {p0}, La/c/a/p;->newBuilderForType()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()La/c/a/x$a;
    .locals 1

    invoke-super {p0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public visit(La/c/a/p$k;La/c/a/p;)V
    .locals 1

    check-cast p2, La/c/a/p$e;

    .line 1
    invoke-super {p0, p1, p2}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V

    iget-object v0, p0, La/c/a/p$e;->b:La/c/a/n;

    iget-object p2, p2, La/c/a/p$e;->b:La/c/a/n;

    invoke-interface {p1, v0, p2}, La/c/a/p$k;->m(La/c/a/n;La/c/a/n;)La/c/a/n;

    move-result-object p1

    iput-object p1, p0, La/c/a/p$e;->b:La/c/a/n;

    return-void
.end method
